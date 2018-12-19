unit UBaixaProducao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons,
  Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, DBTables, DBCtrls, RzTabs, rsDBUtils;

type
  TfBaixaProducao2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ceTalao: TCurrencyEdit;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    tPedidoItem2: TTable;
    tPedidoItem2Pedido: TIntegerField;
    tPedidoItem2Item: TIntegerField;
    tPedidoItem2DtReprogramacao: TDateField;
    tPedidoItem2Obs: TStringField;
    Panel2: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Panel3: TPanel;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label8: TLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    TabSheet3: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure ceTalaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ceTalaoChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    function Filtra_Talao: Boolean;

    procedure Chamar_Form(Tipo : Integer); //1=Entrada Saida   2=Parada

  public
    { Public declarations }

  end;

var
  fBaixaProducao2: TfBaixaProducao2;

implementation

uses UDM1, UDMTalao, dmdCadProduto, UConsTalaoFB, UBaixaProducaoMov;

{$R *.dfm}

procedure TfBaixaProducao2.Chamar_Form(Tipo : Integer); //1=Entrada Saida   2=Parada
begin
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'E' then
    Raise Exception.Create('Setor já encerrado!');

  fBaixaProducaoMov := TfBaixaProducaoMov.Create(Self);
  DMTalao.tTalaoMov.Last;
  if (DMTalao.tTalaoMovDTSAIDA.AsDateTime < 10) and (DMTalao.tTalaoMovDTENTRADA.AsDateTime > 10) then
    begin
      fBaixaProducaoMov.ceFuncionario.AsInteger := DMTalao.tTalaoMovCODFUNCIONARIO.AsInteger;
      fBaixaProducaoMov.ceQtdEntrada.AsInteger  := DMTalao.tTalaoMovQTDENTRADA.AsInteger;
      fBaixaProducaoMov.dteEntrada.Date         := DMTalao.tTalaoMovDTENTRADA.AsDateTime;
      fBaixaProducaoMov.rzdtHrEntrada.Time      := DMTalao.tTalaoMovHRENTRADA.AsDateTime;
    end
  else
    fBaixaProducaoMov.ceQtdEntrada.AsInteger  := DMTalao.tTalaoQTDEMPROCESSO.AsInteger;
  if Tipo = 1 then
    fBaixaProducaoMov.lblEvento.Caption := 'Entrada/Saída'
  else
  if Tipo = 2 then
    fBaixaProducaoMov.lblEvento.Caption    := 'Parada';
  fBaixaProducaoMov.ceQtdQuebras.Visible := (Tipo = 1);
  fBaixaProducaoMov.lblQuebras.Visible   := (Tipo = 1);
  fBaixaProducaoMov.btnParada.Enabled    := (Tipo = 2);
  fBaixaProducaoMov.btnQuebras.Enabled   := (Tipo = 1);
  fBaixaProducaoMov.ShowModal;
end;

function TfBaixaProducao2.Filtra_Talao: Boolean;
begin
  Result := False;

  DMTalao.tTalao.Close;
  DMTalao.Talao.CommandText := ctTalao
                             + ' WHERE TALAO = ' + ceTalao.Text;
  DMTalao.tTalao.Open;
  if DMTalao.tTalao.IsEmpty then
    begin
      ShowMessage('Talão não encontrado!');
      ceTalao.SelectAll;
      exit;
    end;

  dmCadProduto.cdsProduto.Close;
  dmCadProduto.sdsProduto.CommandText := ctProduto
                                       + ' WHERE CODIGO = ' + DMTalao.tTalaoCODPRODUTO.AsString;
  dmCadProduto.cdsProduto.Open;
  if dmCadProduto.cdsProduto.IsEmpty then
    begin
      ShowMessage('Produto não encontrado!');
      ceTalao.SelectAll;
      exit;
    end;

  Result := True;
end;

procedure TfBaixaProducao2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DmTalao);
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBaixaProducao2.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaProducao2.ceTalaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (ceTalao.AsInteger > 0) then
    begin
      if Filtra_Talao then
        begin
          Panel2.Visible         := True;
          Panel3.Visible         := True;
          RzPageControl1.Visible := True;
        end;
    end;

end;

procedure TfBaixaProducao2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'A' then
    Background := clYellow
  else
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'E' then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'P' then
    Background := clAqua;
end;

procedure TfBaixaProducao2.ceTalaoChange(Sender: TObject);
begin
  Panel2.Visible         := False;
  Panel3.Visible         := False;
  RzPageControl1.Visible := False;
end;

procedure TfBaixaProducao2.BitBtn2Click(Sender: TObject);
begin
  Chamar_Form(1);
end;

procedure TfBaixaProducao2.BitBtn4Click(Sender: TObject);
begin
  Chamar_Form(2);
end;

procedure TfBaixaProducao2.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DMTalao      := TDMTalao.Create(nil);
  dmCadProduto := TdmCadProduto.Create(nil);
end;

end.
