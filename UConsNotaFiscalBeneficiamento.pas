unit UConsNotaFiscalBeneficiamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Mask, DBCtrls, RxLookup, Grids, DBGrids,
  RXDBCtrl, Buttons, ToolEdit, CurrEdit, Db, DBTables, DBFilter, MemTable,
  Variants, ALed;
  
type
  TfConsNotaFiscalBeneficiamento = class(TForm)
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxLabel1: TRxLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RxDBGrid2: TRxDBGrid;
    dsNEntradaNDevolvida: TDataSource;
    RadioGroup1: TRadioGroup;
    Label20: TLabel;
    ALed4: TALed;
    qNotaFiscal: TQuery;
    qNotaFiscalNumNota: TIntegerField;
    qNotaFiscalDtEmissao: TDateField;
    qNotaFiscalItem: TSmallintField;
    qNotaFiscalCodProduto: TIntegerField;
    qNotaFiscalReferencia: TStringField;
    qNotaFiscalNomeProduto: TStringField;
    qNotaFiscalCodCor: TIntegerField;
    qNotaFiscalCodCli: TIntegerField;
    qNotaFiscalNomeCor: TStringField;
    qNotaFiscalCodNatOper: TStringField;
    qNotaFiscalNomeCliente: TStringField;
    qNotaFiscalUnidade: TStringField;
    qNotaFiscalQtd: TFloatField;
    qNotaFiscalVlrUnit: TFloatField;
    qNotaFiscalVlrTotal: TFloatField;
    qNotaFiscalQtdRestante: TFloatField;
    qNotaFiscalQtdDevolvida: TFloatField;
    dsqNotaFiscal: TDataSource;
    tNEntradaNDevolvida: TTable;
    tNEntradaNDevolvidaCodForn: TIntegerField;
    tNEntradaNDevolvidaNumNEntr: TIntegerField;
    tNEntradaNDevolvidaItem: TIntegerField;
    tNEntradaNDevolvidaNumNotaSaida: TIntegerField;
    tNEntradaNDevolvidaItemNotaSaida: TIntegerField;
    tNEntradaNDevolvidaQtd: TFloatField;
    tNEntradaNDevolvidaDtEmissao: TDateField;
    tNEntradaNDevolvidaDtEntrada: TDateField;
    qNotaFiscalclVlrTotalRestante: TFloatField;
    qCliente: TQuery;
    dsqCliente: TDataSource;
    qClienteCodCli: TIntegerField;
    qClienteNomeCliente: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure qNotaFiscalCalcFields(DataSet: TDataSet);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsNotaFiscalBeneficiamento: TfConsNotaFiscalBeneficiamento;

implementation

uses UDM1, URelNotaFiscalBeneficiamento;

{$R *.DFM}

procedure TfConsNotaFiscalBeneficiamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCliente.Close;
  qNotaFiscal.Close;
  Action := CaFree;
end;

procedure TfConsNotaFiscalBeneficiamento.BitBtn1Click(Sender: TObject);
begin
  RxDBGrid2.DataSource := nil;
  qCliente.Close;
  qNotaFiscal.Close;
  //Monta SQL dos clientes
  qCliente.SQL.Clear;
  qCliente.SQL.Add('SELECT DISTINCT Dbnotafiscal.CodCli, Dbcliente.Nome NomeCliente');
  qCliente.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qCliente.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qCliente.SQL.Add('   ON (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qCliente.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qCliente.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qCliente.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qCliente.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');
  qCliente.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qCliente.SQL.Add('   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');

  //qCliente.SQL.Add('WHERE   (Dbnatoperacao.ControlarRetorno = True)');

  qCliente.SQL.Add('WHERE   (0=0)');

  if RadioGroup1.ItemIndex = 0 then
    qCliente.SQL.Add('   AND  (Dbnotafiscalitens.QtdRestante > 0)')
  else
  if RadioGroup1.ItemIndex = 1 then
    qCliente.SQL.Add('   AND  (Dbnotafiscalitens.QtdRestante <= 0)');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qCliente.SQL.Add('  AND (Dbnotafiscal.CodCli = :CodCli)');
      qCliente.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
    end;

{  if RxDBLookupCombo3.Text <> '' then
    begin
      qCliente.SQL.Add('  AND (dbProduto.CodGrupo = :CodGrupo)');
      qCliente.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo3.KeyValue;
    end;
}

  qCliente.SQL.Add('ORDER BY dbCliente.Nome');
  qCliente.Open;

  //Monta SQL das notas
  qNotaFiscal.SQL.Clear;
  qNotaFiscal.SQL.Add('SELECT Dbnotafiscal.NumNota, Dbnotafiscal.DtEmissao, Dbnotafiscalitens.Item, Dbnotafiscalitens.CodProduto, ');
  qNotaFiscal.SQL.Add(' Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbnotafiscalitens.CodCor, Dbnotafiscal.CodCli, Dbcor.Nome NomeCor, Dbnatoperacao.CodNatOper, ');
  qNotaFiscal.SQL.Add(' Dbcliente.Nome NomeCliente, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Qtd, Dbnotafiscalitens.VlrUnit, Dbnotafiscalitens.VlrTotal, ');
  qNotaFiscal.SQL.Add(' Dbnotafiscalitens.QtdRestante, Dbnotafiscalitens.QtdDevolvida');
  qNotaFiscal.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qNotaFiscal.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qNotaFiscal.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qNotaFiscal.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');
  qNotaFiscal.SQL.Add('   FULL JOIN "Dbcor.DB" Dbcor');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscalitens.CodCor = Dbcor.Codigo)');
  qNotaFiscal.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');

//  qNotaFiscal.SQL.Add('WHERE   (Dbnatoperacao.ControlarRetorno = True)');
  qNotaFiscal.SQL.Add('WHERE  (0=0)');

  if RadioGroup1.ItemIndex = 0 then
    qNotaFiscal.SQL.Add('   AND  (Dbnotafiscalitens.QtdRestante > 0)')
  else
  if RadioGroup1.ItemIndex = 1 then
    qNotaFiscal.SQL.Add('   AND  (Dbnotafiscalitens.QtdRestante <= 0)');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qNotaFiscal.SQL.Add('  AND (Dbnotafiscal.CodCli = :CodCli)');
      qNotaFiscal.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
    end;

{  if RxDBLookupCombo3.Text <> '' then
    begin
      qNotaFiscal.SQL.Add('  AND (dbProduto.CodGrupo = :CodGrupo)');
      qNotaFiscal.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo3.KeyValue;
    end;
}

  qNotaFiscal.SQL.Add('ORDER BY dbCliente.Nome, dbNotaFiscal.NumNota');
  qNotaFiscal.Open;
  RxDBGrid2.DataSource := dsNEntradaNDevolvida;
end;

procedure TfConsNotaFiscalBeneficiamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsNotaFiscalBeneficiamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaFiscalBeneficiamento.BitBtn3Click(Sender: TObject);
begin
  ShowMessage(IntToStr(qNotaFiscal.RecordCount));

  fRelNotaFiscalBeneficiamento := TfRelNotaFiscalBeneficiamento.Create(Self);
  fRelNotaFiscalBeneficiamento.RLReport1.Preview;
  fRelNotaFiscalBeneficiamento.RLReport1.Free;
  qNotaFiscal.Filtered := False;
end;

procedure TfConsNotaFiscalBeneficiamento.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qNotaFiscal.RecordCount > 0 then
    begin
      if qNotaFiscalQtdRestante.AsFloat > 0 then
        begin
          AFont.Color := clBlack;
          Background  := clWhite;
        end
      else
        begin
          AFont.Color := clWindow;
          Background  := clTeal;
        end;
    end;
end;

procedure TfConsNotaFiscalBeneficiamento.qNotaFiscalCalcFields(
  DataSet: TDataSet);
begin
  qNotaFiscalclVlrTotalRestante.AsFloat := StrToFloat(FormatFloat('0.00',qNotaFiscalQtdRestante.AsFloat * qNotaFiscalVlrUnit.AsFloat));
end;

procedure TfConsNotaFiscalBeneficiamento.RxDBLookupCombo3Enter(
  Sender: TObject);
begin
  DM1.tGrupo.IndexFieldNames := 'Nome';
end;

end.

