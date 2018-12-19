unit UPrevPrevComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Menus, DBTables, StdCtrls, Buttons, RxLookup, Mask, ToolEdit,
  RXCtrls, ExtCtrls, DBFilter;

type
  TfPrevPrevComissao = class(TForm)
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxSpeedButton2: TRxSpeedButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn2: TBitBtn;
    RxDBFilter1: TRxDBFilter;
    tCReceberParc: TTable;
    dsCReceberParc: TDataSource;
    tCReceberParclkCliente: TStringField;
    tCReceberParcNumCReceber: TIntegerField;
    tCReceberParcParcCReceber: TIntegerField;
    tCReceberParcVlrParcCReceber: TFloatField;
    tCReceberParcDtVencCReceber: TDateField;
    tCReceberParcQuitParcCReceber: TBooleanField;
    tCReceberParcJurosParcCReceber: TFloatField;
    tCReceberParcDtPagParcCReceber: TDateField;
    tCReceberParcCodCli: TIntegerField;
    tCReceberParcNumNota: TIntegerField;
    tCReceberParcDesconto: TFloatField;
    tCReceberParcPgtoParcial: TFloatField;
    tCReceberParcRestParcela: TFloatField;
    tCReceberParcContaDupl: TSmallintField;
    tCReceberParcSelecionado: TBooleanField;
    tCReceberParcCodVendedor: TIntegerField;
    tCReceberParcBaixada: TBooleanField;
    tCReceberParcPercComissao: TFloatField;
    tCReceberParcVlrComissao: TFloatField;
    tCReceberParcPlanoContas: TIntegerField;
    tCReceberParcAgencia: TStringField;
    tCReceberParcTitPortador: TStringField;
    tCReceberParcCodTipoCobranca: TIntegerField;
    tCReceberParcDespesas: TFloatField;
    tCReceberParcAbatimentos: TFloatField;
    tCReceberParcCodConta: TIntegerField;
    tCReceberParcPgCartorio: TBooleanField;
    tCReceberParcDiasAtraso: TFloatField;
    tCReceberParcLetraCambio: TBooleanField;
    tCReceberParcNroLancExtComissao: TIntegerField;
    tCReceberParcJurosPagos: TFloatField;
    tCReceberParcCancelado: TBooleanField;
    tCReceberParcTitProtestado: TBooleanField;
    tCReceberParcDtGerado: TDateField;
    tCReceberParcTipoDoc: TStringField;
    tCReceberParcVlrDevolucao: TFloatField;
    tCReceberParcArqGerado: TBooleanField;
    tCReceberParcTransferencia: TBooleanField;
    tCReceberParcNumTitBanco: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevPrevComissao: TfPrevPrevComissao;

implementation

uses UDM1, URelPrevComissao;

{$R *.DFM}

procedure TfPrevPrevComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  Action := Cafree;
end;

procedure TfPrevPrevComissao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPrevComissao.RxSpeedButton2Click(Sender: TObject);
begin
  if ((DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ')) and (DateEdit1.Date <= DateEdit2.Date) and (RxDBLookupCombo1.Text <> '')then
    begin
      tCReceberParc.Filtered := False;
      tCReceberParc.Filter   := 'CodVendedor = ''' +IntToStr(RxDBLookupCombo1.KeyValue)+ ''' and DtVencCReceber >= ''' +DateEdit1.Text+ ''' and DtVencCReceber <= ''' +DateEdit2.Text+''' and RestParcela > 0';
      tCReceberParc.Filtered := True;
      fRelPrevComissao := TfRelPrevComissao.Create(self);
      fRelPrevComissao.RLReport1.Preview;
      fRelPrevComissao.RLReport1.Free;
    end
  else
    ShowMessage('Todos os campos devem estar preenchidos!');
end;

procedure TfPrevPrevComissao.FormShow(Sender: TObject);
begin
  RxDBFilter1.Active := True;
end;

procedure TfPrevPrevComissao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  Dm1.tVendedor.IndexFieldNames := 'Nome';
end;

end.
