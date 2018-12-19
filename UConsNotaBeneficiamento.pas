unit UConsNotaBeneficiamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Mask, DBCtrls, RxLookup, Grids, DBGrids,
  RXDBCtrl, Buttons, ToolEdit, CurrEdit, Db, DBTables, DBFilter, MemTable,
  Variants, ALed;
  
type
  TfConsNotaBeneficiamento = class(TForm)
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    qNotaEntrada: TQuery;
    dsqNotaEntrada: TDataSource;
    qNotaEntradaCodForn: TIntegerField;
    qNotaEntradaNomeForn: TStringField;
    qNotaEntradaNumNEntr: TIntegerField;
    qNotaEntradaDtEmissaoNEntr: TDateField;
    qNotaEntradaVlrTotalNEntr: TFloatField;
    qNotaEntradaDtEntrada: TDateField;
    qNotaEntradaCodMaterial: TIntegerField;
    qNotaEntradaQtd: TFloatField;
    qNotaEntradaVlrUnit: TFloatField;
    qNotaEntradaVlrTotalItens: TFloatField;
    qNotaEntradaCodCor: TIntegerField;
    qNotaEntradaUnidade: TStringField;
    qNotaEntradaQtdRestante: TFloatField;
    qNotaEntradaQtdDevolvida: TFloatField;
    qNotaEntradalkNomeMaterial: TStringField;
    qNotaEntradalkNomeCor: TStringField;
    qNotaEntradaItem: TSmallintField;
    qNotaEntradaSitTrib: TSmallintField;
    RxLabel1: TRxLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qNotaEntradaclVlrTotalRestante: TFloatField;
    BitBtn3: TBitBtn;
    RxDBGrid2: TRxDBGrid;
    tNotaFiscalNDevolvida: TTable;
    tNotaFiscalNDevolvidaNumNota: TIntegerField;
    tNotaFiscalNDevolvidaItem: TIntegerField;
    tNotaFiscalNDevolvidaCodFornecedor: TIntegerField;
    tNotaFiscalNDevolvidaNumNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaItemNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaQtd: TFloatField;
    dsNotaFiscalNDevolvida: TDataSource;
    tNotaFiscal: TTable;
    tNotaFiscalNDevolvidalkDtEmissao: TDateField;
    RadioGroup1: TRadioGroup;
    Label20: TLabel;
    ALed4: TALed;
    tNotaFiscalFilial: TIntegerField;
    tNotaFiscalNumSeq: TIntegerField;
    tNotaFiscalDtEmissao: TDateField;
    tNotaFiscalCodNatOper: TSmallintField;
    tNotaFiscalCodCli: TIntegerField;
    tNotaFiscalCondPgto: TStringField;
    tNotaFiscalCodVendedor: TIntegerField;
    tNotaFiscalCodVenda: TSmallintField;
    tNotaFiscalNumPedido: TIntegerField;
    tNotaFiscalBaseIcms: TFloatField;
    tNotaFiscalVlrIcms: TFloatField;
    tNotaFiscalVlrIpi: TFloatField;
    tNotaFiscalVlrTotalNota: TFloatField;
    tNotaFiscalVlrTotalItens: TFloatField;
    tNotaFiscalPercDesc: TFloatField;
    tNotaFiscalVlrTotalDesc: TFloatField;
    tNotaFiscalVlrFrete: TFloatField;
    tNotaFiscalVlrSeguro: TFloatField;
    tNotaFiscalOutrasDesp: TFloatField;
    tNotaFiscalQtd: TIntegerField;
    tNotaFiscalEspecie: TStringField;
    tNotaFiscalMarca: TStringField;
    tNotaFiscalNumero: TStringField;
    tNotaFiscalPesoBruto: TFloatField;
    tNotaFiscalPesoLiquido: TFloatField;
    tNotaFiscalPlaca: TStringField;
    tNotaFiscalUFPlaca: TStringField;
    tNotaFiscalEmitDest: TStringField;
    tNotaFiscalCodTransp: TIntegerField;
    tNotaFiscalObs: TMemoField;
    tNotaFiscalSaidaEntrada: TStringField;
    tNotaFiscalDuplImp: TBooleanField;
    tNotaFiscalCancelada: TBooleanField;
    tNotaFiscalDtSaidaEnt: TDateField;
    tNotaFiscalHoraSaida: TTimeField;
    tNotaFiscalTipoCobr: TStringField;
    tNotaFiscalBcoCobr: TIntegerField;
    tNotaFiscalImpressa: TBooleanField;
    tNotaFiscalLocalEntrega: TBooleanField;
    tNotaFiscalInss: TBooleanField;
    tNotaFiscalIrf: TBooleanField;
    tNotaFiscalVlrInss: TFloatField;
    tNotaFiscalVlrIrf: TFloatField;
    tNotaFiscalCustoPerc: TFloatField;
    tNotaFiscalCustoFinanc: TFloatField;
    tNotaFiscalPrazoPgto: TIntegerField;
    tNotaFiscalEntrada: TFloatField;
    tNotaFiscalPercComissao: TFloatField;
    tNotaFiscalDtEntr: TDateField;
    tNotaFiscalIcmsIpi: TBooleanField;
    tNotaFiscalPlanoContas: TIntegerField;
    tNotaFiscalSituacao: TIntegerField;
    tNotaFiscalDescDupl: TFloatField;
    tNotaFiscalNumNotaOrigem: TIntegerField;
    tNotaFiscalNumNotaDevol: TIntegerField;
    tNotaFiscalNroLancExtComissao: TIntegerField;
    tNotaFiscalTipoNota: TStringField;
    tNotaFiscalDescricaoDesc: TStringField;
    tNotaFiscalSuspensa: TBooleanField;
    tNotaFiscalExtComDif: TIntegerField;
    tNotaFiscalDescTransf: TMemoField;
    tNotaFiscalExportacao: TBooleanField;
    tNotaFiscalObsAux: TMemoField;
    tNotaFiscalPercIssqn: TFloatField;
    tNotaFiscalVlrMObra: TFloatField;
    tNotaFiscalVlrIssqn: TFloatField;
    tNotaFiscalNumNotaDevFor: TIntegerField;
    tNotaFiscalCodForn: TIntegerField;
    tNotaFiscalPercTransf: TFloatField;
    tNotaFiscalVlrTotalDupl: TFloatField;
    tNotaFiscalVlrTransf: TFloatField;
    tNotaFiscalNumNota: TIntegerField;
    tNotaFiscalNFeRecibo: TStringField;
    tNotaFiscalNFeProtocolo: TStringField;
    tNotaFiscalNFeChaveAcesso: TStringField;
    tNotaFiscalNFeProtocoloCancelada: TStringField;
    tNotaFiscalSerie: TStringField;
    tNotaFiscalTipoEnvioNF: TStringField;
    tNotaFiscalNFeCodBarraCont: TStringField;
    tNotaFiscalVlrPis: TFloatField;
    tNotaFiscalVlrCofins: TFloatField;
    tNotaFiscalTipoNotaNFeRef: TStringField;
    tNotaFiscalVlrTaxaCiscomex: TFloatField;
    tNotaFiscalVlrOutros: TFloatField;
    tNotaFiscalVlrImpImportacao: TFloatField;
    tNotaFiscalICMSVlrSubst: TFloatField;
    tNotaFiscalICMSBaseSubst: TFloatField;
    tNotaFiscalMotivoCanc: TStringField;
    tNotaFiscalUsuario: TStringField;
    tNotaFiscalDtCad: TDateField;
    tNotaFiscalHrCad: TTimeField;
    tNotaFiscalPercIcmsSimples: TFloatField;
    tNotaFiscalVlrIcmsSimples: TFloatField;
    tNotaFiscalCodVendedor2: TIntegerField;
    tNotaFiscalPercComissao2: TFloatField;
    tNotaFiscalVersaoNFe: TStringField;
    tNotaFiscalFinalidade: TStringField;
    tNotaFiscalDtContingencia: TDateField;
    tNotaFiscalHrContingencia: TTimeField;
    tNotaFiscalMotivoContingencia: TStringField;
    tNotaFiscalIdentVersaoEmissao: TStringField;
    tNotaFiscalCodRegimeTrib: TIntegerField;
    tNotaFiscalRNTC: TStringField;
    tNotaFiscalIdentifVagaoBalsa: TStringField;
    tNotaFiscalTipoIdentifVagaoBalsa: TStringField;
    tNotaFiscalUFEmbExp: TStringField;
    tNotaFiscalLocalEmbExp: TStringField;
    tNotaFiscalVlrDuplicataOutros: TFloatField;
    tNotaFiscalPisCofinsSomarOutrasDesp: TBooleanField;
    tNotaFiscalTipoDesconto: TStringField;
    tNotaFiscalGeraDupl_PisCofins: TBooleanField;
    tNotaFiscalGeraDupl_OutrosValores: TBooleanField;
    tNotaFiscalGeraDupl_Frete: TBooleanField;
    tNotaFiscalGeraDupl_Seguro: TBooleanField;
    tNotaFiscalAliqICMS_PisCofins: TFloatField;
    tNotaFiscalAliqICMS_OutrosValores: TFloatField;
    tNotaFiscalAliqICMS_Frete: TFloatField;
    tNotaFiscalPercDescontoOrig: TFloatField;
    tNotaFiscalBaseIcmsSimples: TFloatField;
    tNotaFiscalBaseIcmsOutros: TFloatField;
    tNotaFiscalVlrIcmsOutros: TFloatField;
    tNotaFiscalRefTipo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qNotaEntradaCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsNotaBeneficiamento: TfConsNotaBeneficiamento;

implementation

uses UDM1, URelNotaBeneficiamento;

{$R *.DFM}

procedure TfConsNotaBeneficiamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qNotaEntrada.Close;
  Action := CaFree;
end;

procedure TfConsNotaBeneficiamento.BitBtn1Click(Sender: TObject);
begin
  RxDBGrid2.DataSource := nil;
  qNotaEntrada.Close;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qNotaEntrada.SQL.Clear;
      qNotaEntrada.SQL.Add('SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbnentrada.NumNEntr, Dbnentrada.DtEmissaoNEntr,');
      qNotaEntrada.SQL.Add(' Dbnentrada.VlrTotalNEntr, Dbnentrada.DtEntrada, Dbnentradaitens.CodMaterial, Dbnentradaitens.Qtd,');
      qNotaEntrada.SQL.Add(' Dbnentradaitens.VlrUnit, Dbnentradaitens.VlrTotalItens, Dbnentradaitens.CodCor, Dbnentradaitens.Unidade,');
      qNotaEntrada.SQL.Add(' Dbnentradaitens.QtdRestante, Dbnentradaitens.QtdDevolvida, Dbnentradaitens.Item, Dbnentradaitens.SitTrib');
      qNotaEntrada.SQL.Add('FROM "DBNENTRADA.DB" Dbnentrada');
      qNotaEntrada.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
      qNotaEntrada.SQL.Add('   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)');
      qNotaEntrada.SQL.Add('   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens');
      qNotaEntrada.SQL.Add('   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)');
      qNotaEntrada.SQL.Add('   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)');
      qNotaEntrada.SQL.Add('WHERE   (Dbnentrada.CodForn = :CodFornecedor)');
      if RadioGroup1.ItemIndex = 0 then
        qNotaEntrada.SQL.Add('   AND  (Dbnentradaitens.QtdRestante > 0)')
      else
      if RadioGroup1.ItemIndex = 1 then
        qNotaEntrada.SQL.Add('   AND  (Dbnentradaitens.QtdRestante <= 0)');
      qNotaEntrada.SQL.Add('ORDER BY Dbnentrada.CodForn, Dbnentrada.NumNEntr');
      qNotaEntrada.ParamByName('CodFornecedor').AsInteger := RxDBLookupCombo2.KeyValue;
      qNotaEntrada.Open;
      RxDBGrid2.DataSource := dsNotaFiscalNDevolvida;
    end
  else
    ShowMessage('Falta informar a cliente!');
end;

procedure TfConsNotaBeneficiamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfConsNotaBeneficiamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaBeneficiamento.qNotaEntradaCalcFields(
  DataSet: TDataSet);
begin
  qNotaEntradaclVlrTotalRestante.AsFloat := StrToFloat(FormatFloat('0.00',qNotaEntradaQtdRestante.AsFloat * qNotaEntradaVlrUnit.AsFloat));
end;

procedure TfConsNotaBeneficiamento.BitBtn3Click(Sender: TObject);
begin
  fRelNotaBeneficiamento := TfRelNotaBeneficiamento.Create(Self);
  fRelNotaBeneficiamento.RLReport1.Preview;
  fRelNotaBeneficiamento.RLReport1.Free;
end;

procedure TfConsNotaBeneficiamento.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qNotaEntradaQtdRestante.AsFloat > 0 then
    begin
      AFont.Color := clBlack;
      Background  := clWhite;
    end
  else
    begin
      AFont.Color := clBlack;
      Background  := clTeal;
    end;
end;

procedure TfConsNotaBeneficiamento.FormShow(Sender: TObject);
begin
  tNotaFiscalNDevolvida.Open;
end;

end.

