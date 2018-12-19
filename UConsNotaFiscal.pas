unit UConsNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, CurrEdit, Mask, ToolEdit, RXLookup, Grids,
  DBGrids, Db, DBTables, RXDBCtrl;

type
  TfConsNotaFiscal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label8: TLabel;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    dsqNota: TDataSource;
    qNota: TQuery;
    qNotaNumNota: TIntegerField;
    qNotaDtEmissao: TDateField;
    qNotaCodNatOper: TSmallintField;
    qNotaCondPgto: TStringField;
    qNotaCodVendedor: TIntegerField;
    qNotaBaseIcms: TFloatField;
    qNotaVlrIcms: TFloatField;
    qNotaVlrIpi: TFloatField;
    qNotaVlrTotalNota: TFloatField;
    qNotaVlrTotalItens: TFloatField;
    qNotaSaidaEntrada: TStringField;
    qNotaBcoCobr: TIntegerField;
    qNotaTipoCobr: TStringField;
    qNotaPrazoPgto: TIntegerField;
    qNotaVlrTotalDupl: TFloatField;
    qNotaNome: TStringField;
    qNotaEndereco: TStringField;
    qNotaBairro: TStringField;
    qNotaUf: TStringField;
    qNotaCep: TStringField;
    qNotaTelefone: TStringField;
    qNotaCgcCpf: TStringField;
    qNotaCodCidade: TIntegerField;
    qNotaPlaca: TStringField;
    qNotaUFPlaca: TStringField;
    qNotaCodTransp: TIntegerField;
    qNotaCancelada: TBooleanField;
    qNotalkNomeCidade: TStringField;
    qNotalkNomeTransp: TStringField;
    qNotalkNomeVendedor: TStringField;
    qNotalkCodNatOper: TStringField;
    RxDBGrid1: TRxDBGrid;
    tNotaFiscalItens: TTable;
    dsNotaFiscalItens: TDataSource;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qNotaFilial: TIntegerField;
    tNotaFiscalItensFilial: TIntegerField;
    tNotaFiscalItensNumNota: TIntegerField;
    tNotaFiscalItensItem: TSmallintField;
    tNotaFiscalItensCodProduto: TIntegerField;
    tNotaFiscalItensCodCor: TIntegerField;
    tNotaFiscalItensClasFiscal: TStringField;
    tNotaFiscalItensUnidade: TStringField;
    tNotaFiscalItensQtd: TFloatField;
    tNotaFiscalItensIcms: TFloatField;
    tNotaFiscalItensIpi: TFloatField;
    tNotaFiscalItensSitTrib: TSmallintField;
    tNotaFiscalItensVlrUnit: TFloatField;
    tNotaFiscalItensVlrTotal: TFloatField;
    tNotaFiscalItensDesconto: TFloatField;
    tNotaFiscalItensVlrDesconto: TFloatField;
    tNotaFiscalItensBaseIcms: TFloatField;
    tNotaFiscalItensVlrIcms: TFloatField;
    tNotaFiscalItensVlrIpi: TFloatField;
    tNotaFiscalItensNatOper: TSmallintField;
    tNotaFiscalItensIcmsIpi: TBooleanField;
    tNotaFiscalItensNumPedido: TIntegerField;
    tNotaFiscalItensItemPedido: TIntegerField;
    tNotaFiscalItensDescricao: TStringField;
    tNotaFiscalItensReferencia: TStringField;
    tNotaFiscalItensComissaoMod: TFloatField;
    tNotaFiscalItensCodComissao: TIntegerField;
    tNotaFiscalItensCodGrade: TIntegerField;
    tNotaFiscalItensNumMovEst: TIntegerField;
    tNotaFiscalItensGeraDupl: TBooleanField;
    tNotaFiscalItensMaterial: TBooleanField;
    tNotaFiscalItensEstoque: TBooleanField;
    tNotaFiscalItensNumNotaDevForn: TIntegerField;
    tNotaFiscalItensCodFornDev: TIntegerField;
    tNotaFiscalItensItemDev: TIntegerField;
    tNotaFiscalItensNumOC: TStringField;
    tNotaFiscalItensNumOS: TStringField;
    tNotaFiscalItensCodBarraRotulo: TStringField;
    tNotaFiscalItensVale: TBooleanField;
    tNotaFiscalItenslkNomeCor: TStringField;
    qNotaNumSeq: TIntegerField;
    tNotaFiscalItensNumSeq: TIntegerField;
    Label5: TLabel;
    Edit1: TEdit;
    qNotaVoltouNota: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fConsNotaFiscal: TfConsNotaFiscal;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsNotaFiscal.Consulta;
var
  vSeparador : String;
begin
  qNota.Close;
  qNota.SQL.Clear;
  qNota.SQL.Add('SELECT Dbnotafiscal.Filial, Dbnotafiscal.NumNota, Dbnotafiscal.DtEmissao, Dbnotafiscal.CodNatOper, Dbnotafiscal.CondPgto, ');
  qNota.SQL.Add('Dbnotafiscal.CodVendedor, Dbnotafiscal.BaseIcms, Dbnotafiscal.VlrIcms, Dbnotafiscal.VlrIpi, ');
  qNota.SQL.Add('Dbnotafiscal.VlrTotalNota, Dbnotafiscal.VlrTotalItens, Dbnotafiscal.SaidaEntrada, Dbnotafiscal.BcoCobr, Dbnotafiscal.TipoCobr, ');
  qNota.SQL.Add('Dbnotafiscal.PrazoPgto, Dbnotafiscal.VlrTotalDupl, Dbcliente.Nome, Dbcliente.Endereco, Dbcliente.Bairro, ');
  qNota.SQL.Add('Dbcliente.Uf, Dbcliente.Cep, Dbcliente.Telefone, Dbcliente.CgcCpf, Dbcliente.CodCidade, Dbnotafiscal.Placa, ');
  qNota.SQL.Add('Dbnotafiscal.UFPlaca, Dbnotafiscal.CodTransp, Dbnotafiscal.Cancelada, dbNotaFiscal.NumSeq, dbNotaFiscal.VoltouNota');
  qNota.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qNota.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qNota.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qNota.SQL.Add('WHERE Dbnotafiscal.Filial = ' + IntToStr(RxDBLookupCombo2.KeyValue));
  if Edit3.Text <> '' then
    qNota.SQL.Add(' AND Dbcliente.Nome LIKE ''%' + Edit3.Text + '%''');
  if (DateEdit1.Date > 1) or (DateEdit2.Date > 1) then
    begin
      if DateEdit1.Date < 1 then
        DateEdit1.Text := DateEdit2.Text;
      if DateEdit2.Date < 1 then
        DateEdit2.Text := DateEdit1.Text;
      qNota.SQL.Add(' AND Dbnotafiscal.DtEmissao BETWEEN :DataI AND :DataF');
      qNota.ParamByName('DataI').AsDate := DateEdit1.Date;
      qNota.ParamByName('DataF').AsDate := DateEdit2.Date;
    end;
  if Edit1.Text <> '' then
    begin
      qNota.SQL.Add('  AND (dbNotaFiscal.Serie = :Serie) ');
      qNota.ParamByName('Serie').AsString := Edit1.Text;
    end;
  if CurrencyEdit1.Value > 0 then
    qNota.SQL.Add(' AND Dbnotafiscal.NumNota = ' + CurrencyEdit1.Text);
  if RxDBLookupCombo1.Text <> '' then
    qNota.SQL.Add(' AND Dbnotafiscal.CodVendedor = ' + IntToStr(RxDBLookupCombo1.KeyValue));
  qNota.SQL.Add('ORDER BY dbnotafiscal.NumNota');
  qNota.Open;
end;

procedure TfConsNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qNota.Active then
    begin
      if qNotaNumNota.AsInteger > 0 then
        begin
          DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumSeq';
          DM1.tNotaFiscal.FindKey([qNotaFilial.AsInteger,qNotaNumSeq.AsInteger]);
        end;
    end;
  qNota.Close;
  Action := CaFree;
end;

procedure TfConsNotaFiscal.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      RxDBGrid1.DataSource := dsNotaFiscalItens;
      Consulta;
    end
  else
    ShowMessage('Falta informar a filial!');
end;

procedure TfConsNotaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F5 then
    BitBtn1Click(Sender);
end;

procedure TfConsNotaFiscal.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return  then
    Close;
end;

procedure TfConsNotaFiscal.DBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaFiscal.FormShow(Sender: TObject);
begin
  if DM1.tFilialCodigo.AsInteger > 0 then
    RxDBLookupCombo2.KeyValue := DM1.tFilialCodigo.AsInteger;
end;

procedure TfConsNotaFiscal.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1Click(Sender);
end;

end.
