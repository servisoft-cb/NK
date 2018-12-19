unit UPrevProgramacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, Db, DBTables, rsDBUtils,
  MemTable, RXLookup, DBFilter, ComCtrls, Grids, DBGrids;

type
  TfPrevProgramacao = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;                                
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qProg: TQuery;
    msRelProg: TDataSource;
    qProgqtdparesrest: TFloatField;
    qProgdtembarque: TDateField;
    qProgcor: TStringField;
    qPrognomeprod: TStringField;
    qPrognumlote: TIntegerField;
    mRelProg: TMemoryTable;
    mRelProgReferencia: TStringField;
    mRelProgQtdParesRest: TFloatField;
    mRelProgNomeProd: TStringField;
    mRelProgNomeCor: TStringField;
    mRelProgNumLote: TIntegerField;
    mRelProgDtEmbarque: TDateField;
    tPedidoGrade: TTable;
    qsProg: TDataSource;
    qProgpedido: TIntegerField;
    qProgitem: TIntegerField;
    tPedidoGradePedido: TIntegerField;
    tPedidoGradeItemPed: TIntegerField;
    tPedidoGradeCodGrade: TIntegerField;
    tPedidoGradePosicao: TIntegerField;
    tPedidoGradeQtdParesRest: TFloatField;
    qProgcodcliente: TIntegerField;
    mRelProgCodCliente: TIntegerField;
    mRelProglkCliente: TStringField;
    qProgcodproduto: TIntegerField;
    mRelProgCodProduto: TIntegerField;
    mRelProgNumOS: TStringField;
    qPrognumos: TStringField;
    mRelProgPedido: TIntegerField;
    mRelProgItemPedido: TIntegerField;
    tPedidoGradelkTamanho: TStringField;
    mRelProgCodGrade: TIntegerField;
    qProgCodGrade: TIntegerField;
    mGradeAux: TMemoryTable;
    mGradeAuxCodGrade: TIntegerField;
    qProgDtReprogramacao: TDateField;
    mRelProgDtReprogramacao: TStringField;
    mRelProgReprogramacao: TBooleanField;
    qProgReprogramacao: TBooleanField;
    qProgreferencia: TStringField;
    mRelProgPedidoCliente: TStringField;
    qProgpedidocliente: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Gerar_Itens;
  public
    { Public declarations }
  end;

var
  fPrevProgramacao: TfPrevProgramacao;

implementation

uses UDM1, URelProgramacao;

{$R *.DFM}

procedure TfPrevProgramacao.Gerar_Itens;
begin
  qProg.Close;
  qProg.ParamByName('dti').AsDate    := DateEdit1.Date;
  qProg.ParamByName('dtf').AsDate    := DateEdit2.Date;
  qProg.ParamByName('cli').AsInteger := RxDBLookupCombo1.KeyValue;
  qProg.Open;
  mGradeAux.EmptyTable;
  mRelProg.EmptyTable;
  qProg.First;
  while not qProg.Eof do
    begin
      mRelProg.Insert;
      mRelProgReferencia.AsString     := qProgreferencia.AsString;
      mRelProgQtdParesRest.AsFloat    := qProgqtdparesrest.AsFloat;
      mRelProgPedidoCliente.AsString  := qProgpedidocliente.AsString;
      mRelProgNumOS.AsString          := qPrognumos.AsString;
      mRelProgNumLote.AsInteger       := qPrognumlote.AsInteger;
      mRelProgNomeProd.AsString       := qPrognomeprod.AsString;
      mRelProgNomeCor.AsString        := qProgcor.AsString;
      mRelProgDtEmbarque.AsDateTime   := qProgdtembarque.AsDateTime;
      mRelProgDtReprogramacao.AsString := qProgDtReprogramacao.AsString;
      mRelProgCodCliente.AsInteger    := qProgcodcliente.AsInteger;
      mRelProgCodProduto.AsInteger    := qProgcodproduto.AsInteger;
      mRelProgPedido.AsInteger        := qProgpedido.AsInteger;
      mRelProgItemPedido.AsInteger    := qProgitem.AsInteger;
      mRelProgCodGrade.AsInteger      := qProgCodGrade.AsInteger;
      mRelProgReprogramacao.AsBoolean := qProgReprogramacao.AsBoolean;
      if not mRelProgReprogramacao.AsBoolean then
        mRelProgReprogramacao.AsBoolean := False;
      mRelProg.Post;
      if qProgCodGrade.AsInteger > 0 then
        begin
          if not(mGradeAux.Locate('CodGrade',qProgCodGrade.AsInteger,[loCaseInsensitive])) then
            begin
              mGradeAux.Insert;
              mGradeAuxCodGrade.AsInteger := qProgCodGrade.AsInteger;
              mGradeAux.Post;
            end;
        end;
      qProg.Next;
    end;
end;

procedure TfPrevProgramacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevProgramacao.BitBtn6Click(Sender: TObject);
begin
  if (DateEdit1.Text = '') or (DateEdit2.Text = '') or (RxDBLookupCombo1.Text = '') then
    begin
      ShowMessage('Há campos em branco!');
      Exit;
    end
  else
  if DateEdit1.Date > DateEdit2.Date then
    ShowMessage('Data inicial maior que data final')
  else
    begin
      Screen.Cursor := crHourglass;
      // fazer a chamada ao código para posterior impressão
      Gerar_Itens;
      Screen.Cursor := crDefault;
      if mRelProg.RecordCount > 0 then
        begin
          fRelProgramacao := TfRelProgramacao.Create(Self);
          fRelProgramacao.QuickRep1.Preview;
          fRelProgramacao.QuickRep1.Free;
        end
      else
        ShowMessage('Não existe dados para a impressão!');
      BitBtn1.SetFocus;
    end;
end;

procedure TfPrevProgramacao.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevProgramacao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  qProg.Close;
end;

procedure TfPrevProgramacao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevProgramacao.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
