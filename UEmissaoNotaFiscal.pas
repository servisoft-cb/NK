unit UEmissaoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Buttons, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ComCtrls, Variants,
  RXCtrls, RXLookup, DbTables, Db, RxCalc, ToolEdit, CurrEdit, MemTable, DBFilter, Math, RXDBCtrl, DBClient, Menus, RzButton, rsDBUtils, RxDBComb,
  SMDBGrid;

type
  TfEmissaoNotaFiscal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    RxCalculator1: TRxCalculator;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel7: TPanel;
    Label29: TLabel;
    SpeedButton8: TSpeedButton;
    Label30: TLabel;
    DBEdit24: TDBEdit;
    Label31: TLabel;
    DBComboBox1: TDBComboBox;
    Label32: TLabel;
    Label35: TLabel;
    DBEdit28: TDBEdit;
    DBEdit25: TDBEdit;
    Label33: TLabel;
    DBEdit26: TDBEdit;
    Label36: TLabel;
    DBEdit29: TDBEdit;
    Label34: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    Panel8: TPanel;
    DBMemo1: TDBMemo;
    Panel9: TPanel;
    DBGrid2: TDBGrid;
    SpeedButton11: TSpeedButton;
    Label40: TLabel;
    DBEdit4: TDBEdit;
    Label41: TLabel;
    DBEdit5: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label43: TLabel;
    SpeedButton16: TSpeedButton;
    Label38: TLabel;
    DBEdit7: TDBEdit;
    BitBtn8: TBitBtn;
    RxDBFilter2: TRxDBFilter;
    Label46: TLabel;
    DBDateEdit1: TDBDateEdit;
    TabSheet5: TTabSheet;
    Panel10: TPanel;
    tNotaFiscalIns: TTable;
    tNotaFiscalInsNumNota: TIntegerField;
    tNotaFiscalInsFilial: TIntegerField;
    tNotaFiscalItensIns: TTable;
    tNotaFiscalItensInsNumNota: TIntegerField;
    tNotaFiscalItensInsItem: TSmallintField;
    tNotaFiscalParcIns: TTable;
    tNotaFiscalParcInsParcela: TSmallintField;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    BitBtn7: TBitBtn;
    TabSheet1: TTabSheet;
    Label28: TLabel;
    DBEdit12: TDBEdit;
    Label42: TLabel;
    DBEdit13: TDBEdit;
    Label49: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit22: TDBEdit;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
    tPedidoItemPedido: TIntegerField;
    tPedidoItemItem: TIntegerField;
    tPedidoItemCodProduto: TIntegerField;
    tPedidoItemCodCor: TIntegerField;
    tPedidoItemCodGrade: TIntegerField;
    tPedidoItemQtdPares: TFloatField;
    tPedidoItemQtdParesFat: TFloatField;
    tPedidoItemQtdParesRest: TFloatField;
    tPedidoItemPreco: TFloatField;
    tPedidoItemVlrTotal: TFloatField;
    tPedidoItemCancelado: TBooleanField;
    tPedidoItemCopiado: TBooleanField;
    tPedidoItemSelecionado: TBooleanField;
    tPedidoItemQtdParesCanc: TFloatField;
    tPedidoItemVlrDesconto: TFloatField;
    tPedidoItemSitTrib: TSmallintField;
    Label53: TLabel;
    RxDBGrid1: TRxDBGrid;
    Panel4: TPanel;
    Label39: TLabel;
    TabSheet6: TTabSheet;
    DBMemo2: TDBMemo;
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoItemQtdFatMan: TFloatField;
    TabSheet7: TTabSheet;
    Panel11: TPanel;
    DBMemo3: TDBMemo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    tAuxNotaFiscalGrade: TTable;
    dsAuxNotaFiscalGrade: TDataSource;
    tAuxNotaFiscalGradeCodGrade: TIntegerField;
    tAuxNotaFiscalGradePosicao: TIntegerField;
    tAuxNotaFiscalGradeQtd: TFloatField;
    tAuxNotaFiscalGradelkTamanho: TStringField;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label65: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    BitBtn12: TBitBtn;
    SpeedButton22: TSpeedButton;
    RxLabel5: TRxLabel;
    tAuxNotaFiscalGradelkLargura: TStringField;
    SpeedButton23: TSpeedButton;
    RxLabel6: TRxLabel;
    Label55: TLabel;
    RxDBLookupCombo16: TRxDBLookupCombo;
    SpeedButton24: TSpeedButton;
    Label66: TLabel;
    DBEdit36: TDBEdit;
    Label7: TLabel;
    DBEdit10: TDBEdit;
    BitBtn13: TBitBtn;
    BitBtn6: TBitBtn;
    Label50: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton19: TSpeedButton;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    mOC: TMemoryTable;
    mOCNumOS: TStringField;
    dsmOC: TDataSource;
    mOCNumOC: TStringField;
    TabSheet9: TTabSheet;
    Panel14: TPanel;
    Label8: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit43: TDBEdit;
    RxDBGrid3: TRxDBGrid;
    BitBtn18: TBitBtn;
    qUltNota: TQuery;
    qUltNotaNumNota: TIntegerField;
    StaticText2: TStaticText;
    tValeItens2: TTable;
    tValeItens2NumVale: TIntegerField;
    tValeItens2Item: TIntegerField;
    tValeItens2CodProduto: TIntegerField;
    tValeItens2CodCor: TIntegerField;
    tValeItens2Qtd: TFloatField;
    tValeItens2Unidade: TStringField;
    tValeItens2VlrUnitario: TFloatField;
    tValeItens2VlrTotal: TFloatField;
    tValeItens2CodSitTrib: TIntegerField;
    tValeItens2AliqIcms: TFloatField;
    tValeItens2AliqIPI: TFloatField;
    tValeItens2NumPedido: TIntegerField;
    tValeItens2ItemPedido: TIntegerField;
    tValeItens2NumMovEst: TIntegerField;
    tValeItens2Faturado: TBooleanField;
    tValeItens2QtdRestante: TFloatField;
    tValeItens2QtdFaturada: TFloatField;
    tValeItens2lkPedidoCliente: TStringField;
    tValeItens2lkNumOS: TStringField;
    SpeedButton5: TSpeedButton;
    Label9: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    SpeedButton7: TSpeedButton;
    tNotaFiscalParcInsFilial: TIntegerField;
    tNotaFiscalParcInsNumSeq: TIntegerField;
    tNotaFiscalItensInsFilial: TIntegerField;
    tNotaFiscalItensInsNumSeq: TIntegerField;
    tNotaFiscalInsNumSeq: TIntegerField;
    SpBtProcesso: TRxSpeedButton;
    pmProcessos: TPopupMenu;
    NFeDanfe1: TMenuItem;
    Cancelar1: TMenuItem;
    SpBtImprimir: TRxSpeedButton;
    pmImprimir: TPopupMenu;
    GeraNotaEDI1: TMenuItem;
    ImprimirBoleto1: TMenuItem;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    DBEdit35: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit3: TDBEdit;
    NFe: TTabSheet;
    BitBtn20: TBitBtn;
    Panel12: TPanel;
    Label54: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit23: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    RzButton1: TRzButton;
    tNotaFiscalInsDtEmissao: TDateField;
    tNotaFiscalInsCustoFinanc: TFloatField;
    tNotaFiscalItensInsVlrIpi: TFloatField;
    tNotaFiscalItensInsBaseIcms: TFloatField;
    tNotaFiscalItensInsIcms: TFloatField;
    tNotaFiscalItensInsVlrIcms: TFloatField;
    tNotaFiscalParcInsVlrVenc: TFloatField;
    RzButton4: TRzButton;
    Label17: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit11: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label18: TLabel;
    Label25: TLabel;
    DBEdit50: TDBEdit;
    Label60: TLabel;
    Label62: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    DBEdit51: TDBEdit;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    Label12: TLabel;
    Label15: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    DBText3: TDBText;
    Label16: TLabel;
    DBText1: TDBText;
    Label61: TLabel;
    DBEdit6: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    RxDBComboBox4: TRxDBComboBox;
    BitBtn15: TBitBtn;
    Label63: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label64: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    qTotalItem: TQuery;
    qTotalItemVlrTotal: TFloatField;
    qTotalItemQtdItens: TIntegerField;
    qTotalItemGeraDupl: TBooleanField;
    TabSheet8: TTabSheet;
    Panel13: TPanel;
    Label67: TLabel;
    DBMemo4: TDBMemo;
    BitBtn3: TBitBtn;
    lbContingencia: TLabel;
    BitBtn9: TBitBtn;
    Label56: TLabel;
    DBEdit31: TDBEdit;
    CartaCorreo1: TMenuItem;
    SpeedButton4: TSpeedButton;
    Bevel1: TBevel;
    gbxTributos: TGroupBox;
    Label73: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    Label78: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    TabSheet10: TTabSheet;
    SMDBGrid1: TSMDBGrid;
    BitBtn11: TBitBtn;
    BitBtn10: TBitBtn;
    Label57: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    TabSheet11: TTabSheet;
    Panel15: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label75: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit32: TDBEdit;
    DBEdit57: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure DBRadioGroup5Change(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9Exit(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure RxDBLookupCombo7Exit(Sender: TObject);
    procedure RxDBLookupCombo7DropDown(Sender: TObject);
    procedure RxDBLookupCombo8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure tAuxNotaFiscalGradeBeforeInsert(DataSet: TDataSet);
    procedure RxDBLookupCombo10Exit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure RxDBLookupCombo16Enter(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure DBEdit36Enter(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn18Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure NFeDanfe1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure GeraNotaEDI1Click(Sender: TObject);
    procedure ImprimirBoleto1Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzButton4Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure RxDBLookupCombo9Change(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CartaCorreo1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
    vPercICMSSimples, vVlrTotalDupl: Real;
    vDataAnt: TDateTime;

    function  Calcula_Juros(ValorTotal, Taxa : Currency; Periodo : Integer) : Currency;
    procedure Baixa_Estoque;
    procedure Grava_Pgto;
    procedure Habilita_Desabilita;
    procedure Verifica_Nota_Cancelada;
    procedure Compara_Valor_Parcelas;
    procedure Limpa_Parcelas;
    procedure Faz_Desconto_ICMS;
    procedure Desfaz_Desconto_ICMS;
    procedure Calcula_ICMS_CustoF(Gerar : Boolean);
    procedure Grava_ExtComissao;
    procedure Lanc_Diferenca;
    procedure Exclui_ValesAnt;
    procedure Grava_NumSeq;
    procedure Volta_Pedido;

    //procedure Grava_NumNota;
    procedure Cancelamento(Cancelar : Boolean); //True = Cancelada    False = Denegada   
    function Verifica_Dados : Boolean;

    //NFe 2.00
    function Cancelar: Boolean;

  public
    { Public declarations }
    vPercPis, vPercCofins, vVlrPis, vVlrCofins, vVlrTributo, vPercTributo: Real;
    vCodPis, vCodCofins, vTipoPis, vTipoCofins, vOrigemMerc: String;
    vSomaVlrTotalProd: Boolean;
    //3.10
    vCodCliente_Ant : Integer;
    vPercImportacao : Real;
    vSoma_Automatico_Imp : Boolean;
    vVlrAduaneira : Real;

    //NFe 2.00
    //procedure Calcula_Desconto(Desconto : Boolean; VlrDescAnt : Currency);

    procedure Verifica_Natureza(Codigo : String);
    procedure Verifica_Parcelas;
    procedure Verifica_UF;

    procedure Incrementa_Estoque;
    procedure Desfaz_ExtComissao;
    procedure Exclui_Vales;

  end;

var
  fEmissaoNotaFiscal: TfEmissaoNotaFiscal;
  vBaseICMS, vValorICMS, vBaseOutrasDesp, vICMSOutrasDesp, vValorIPI, vValorSeguroTemp, vValorFreteTemp, vAliqICMS, vValorFreteICMS,
  vValorMObra, vValorParcelas, vIRF: Currency;
  vTextoSitTrib, vValorParcelaTot: String;
  vSiglaUF: String[2];
  vNatureza, vUsaIPI, vExisteNEntrada: Boolean;
  vConsumo: Real;
  vItemNota, vNumNotaDevItem, vCodForncDevItem, vItemDev, vCodSitTrib: Integer;

implementation

uses UDM1, UVendedor, UCliente, UTransp, UUf, UContas, UIndexador,  UPlanoContas, UProduto, UBuscaPedido, UConsNotaFiscal, uCalculos,
  UNatOperacao, UCondPgto, UEscImpressora, UMaterial, USitTributaria, UObsAux, UDM2, UNotaFiscalGrade,
  UTipoCobranca, UNotaFiscalItens, UGeraNotaEdi, UNotaFiscalOC, UGeraNotaEdiAzaleia, UPrevBoletos, UBuscaVale, UImpOC, UNotaFiscalOBS,
  UNotaFiscalNDevolvida, UConsNotaVale, UVerificaCliente, USenhaControle, uNFe, UGeracoes, UEscFilial, UNotaFiscalCancelada, UNFeDados,
  UNotaFiscalConfirma, UDMNotaFiscal, UInfDescontoNota, UNotaFiscalOutrasDespesas, UNotaFiscalLacre, UNotaFiscalReboque, UNotaFiscalContingencia,
  UDMTabImposto, uNotaFiscalAjustarIcms, UNotaFiscalCCe, UNotaFiscalRef,
  UDMTabEnqIPI;

{$R *.DFM}

{
Campo tipo
-> D - Lancamento por Duplicata
-> N - Lancamento por Nota
-> P - Lancamento por Pedido
-> M - Lancamento Manual
-> F - Lancamento por Diferenca de Valores na baixa do pedido
}

//NFe 2.00
{procedure TfEmissaoNotaFiscal.Calcula_Desconto(Desconto : Boolean; VlrDescAnt : Currency);
var
  vBaseICMS, vValorAliq, vBaseItemDesc : Currency;
  vAux : Currency;
begin
  DM1.tNotaFiscalVlrTotalItens.AsCurrency := DM1.tNotaFiscalVlrTotalItens.AsCurrency +
                                             VlrDescAnt - DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
  DM1.tNotaFiscalVlrTotalNota.AsCurrency  := DM1.tNotaFiscalVlrTotalNota.AsCurrency +
                                             VlrDescAnt - DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
  DM1.tNotaFiscalVlrTotalDupl.AsCurrency  := DM1.tNotaFiscalVlrTotalDupl.AsCurrency +
                                             VlrDescAnt - DM1.tNotaFiscalVlrTotalDesc.AsCurrency;

  tNotaFiscalItensIns.IndexFieldNames := 'Filial;NumSeq;Item';
  tNotaFiscalItensIns.Refresh;
  tNotaFiscalItensIns.First;
  DM1.tNotaFiscalBaseICMS.AsCurrency := 0;
  DM1.tNotaFiscalVlrICMS.AsCurrency  := 0;
  vValorAliq := 0;
  if DBEdit16.Text <> '' then
    begin
      if vAliqICMS > 0  then
        vValorAliq := vAliqICMS;
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalVlrFrete.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := StrToCurr(FormatFloat('0.00',DM1.tNotaFiscalBaseICMS.AsCurrency * vValorAliq / 100));
    end;
  while not tNotaFiscalItensIns.EOF do
    begin
      if Desconto then
        begin
          //case RxDBComboBox3.ItemIndex of
          case RxDBComboBox3.ItemIndex of
            0 : vAux := tNotaFiscalItensInsVlrIPI.AsCurrency;
            1 : vAux := 0;
          end;
          vBaseICMS := tNotaFiscalItensInsBaseIcms.AsCurrency - vAux;
          DM1.tNotaFiscalBaseICMS.AsCurrency  := DM1.tNotaFiscalBaseICMS.AsCurrency +
                                                 StrToCurr(FormatCurr('0.00',vAux + vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100));
          vBaseItemDesc                       := StrToCurr(FormatCurr('0.00',vAux + vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100));
          DM1.tNotaFiscalVlrICMS.AsCurrency   := DM1.tNotaFiscalVlrICMS.AsCurrency +
                                                 StrToCurr(FormatCurr('0.00',vBaseItemDesc * tNotaFiscalItensInsIcms.AsCurrency / 100));
        end
      else
        begin
          DM1.tNotaFiscalBaseICMS.AsCurrency := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseICMS.AsCurrency +
                                                tNotaFiscalItensInsBaseIcms.AsCurrency));
          DM1.tNotaFiscalVlrICMS.AsCurrency  := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrICMS.AsCurrency +
                                                tNotaFiscalItensInsVlrIcms.AsCurrency));
        end;
      tNotaFiscalItensIns.Next;
    end;
end;}

function TfEmissaoNotaFiscal.Verifica_Dados : Boolean;
var
  vVlrParc : Real;
begin
  Result := False;

  //NFe 2.00
  if DM1.tNotaFiscalDtEmissao.AsDateTime < 10 then
  begin
    ShowMessage('Data de emissão não foi informada!');
    exit;
  end;
  //NFe 2.00
  if not(DM1.tNotaFiscalEmitDest.AsString = '1') and not(DM1.tNotaFiscalEmitDest.AsString = '2') and
     not(DM1.tNotaFiscalEmitDest.AsString = '3') and not(DM1.tNotaFiscalEmitDest.AsString = '9') then
  begin
    ShowMessage('Não foi informado o tipo do frete!');
    exit;
  end;

  if Length(Trim(DM1.tNotaFiscalPlaca.AsString)) > 7 then
    begin
      ShowMessage('Placa só pode conter letras e números!');
      exit;
    end;
  if (DM1.tClienteBairro.AsString = '') or (DM1.tClienteNumEnd.AsString = '') then
    begin
      ShowMessage('Cliente não possui bairro ou o nº no endereço!');
      exit;
    end;
  if not DM1.tCidade.Locate('Codigo',DM1.tClienteCodCidade.AsInteger,([Locaseinsensitive])) then
    begin
      ShowMessage('Cidade não cadastrada!');
      exit;
    end;
  if DM1.tCidadeCodMunicipio.AsString = '' then
    begin
      ShowMessage('Código do município não cadastrado!');
      exit;
    end;
  if (DM1.tNotaFiscalCodTransp.AsInteger > 0) and (DM1.tNotaFiscalPlaca.AsString <> '') and (DM1.tNotaFiscalUFPlaca.AsString = '') then
    begin
      ShowMessage('Foi informada a placa e faltou a UF!');
      exit;
    end;
  if (DM1.tNotaFiscalCodTransp.AsInteger > 0) and (DM1.tNotaFiscalPlaca.AsString = '') and (DM1.tNotaFiscalUFPlaca.AsString <> '') then
    begin
      ShowMessage('Foi informada a UF da placa e faltou a placa!');
      exit;
    end;
  if (DM1.tNotaFiscalCodTransp.AsInteger > 0) and (DM1.tTransp.Locate('Codigo',DM1.tNotaFiscalCodTransp.AsInteger,([Locaseinsensitive]))) then
    begin
      if (Trim(Copy(DM1.tTranspCNPJ.AsString,1,2)) = '') or (DM1.tTranspCodCidade.AsInteger < 1) or
         (Trim(DM1.tTranspEndereco.AsString) = '') then
        begin
          ShowMessage('Faltou informar o CNPJ ou o endereço completo da transportadora!');
          exit;
        end;
    end;
  if StrToFloat(FormatFloat('0.000000',DM1.tNotaFiscalPesoBruto.AsFloat)) < StrToFloat(FormatFloat('0.000000',DM1.tNotaFiscalPesoLiquido.AsFloat)) then
    begin
      ShowMessage('Peso bruto não pode ser menor que peso líquido!');
      exit;
    end;

  if (DM1.tNotaFiscalQtd.AsInteger < 1) and (MessageDlg('Nota sem volume, confirma?',mtWarning,[mbOK,mbNO],0) = mrNo) then
    exit;

  if (DM1.tClienteUf.AsString <> DM1.tFilialEstado.AsString) and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTransf.AsFloat)) > 0) then
    begin
      ShowMessage('Nota Fiscal fora do estado e possui transferência de ICMS!');
      exit;
    end;

  vVlrParc := 0;
  DM1.tNotaFiscalParc.First;
  while not DM1.tNotaFiscalParc.Eof do
    begin
      vVlrParc := vVlrParc + DM1.tNotaFiscalParcVlrVenc.AsFloat;
      DM1.tNotaFiscalParc.Next;
    end;

  if (DM1.tNotaFiscalCondPgto.AsString <> 'P') and (StrToFloat(FormatFloat('0.00',vVlrParc)) > 0) then
  begin
    ShowMessage('Condição de pagamento diferente de A Prazo, não pode conter parcelas!');
    exit;
  end;

  vVlrParc := StrToFloat(FormatFloat('0.00',vVlrParc)) + StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalEntrada.AsFloat));

  if (DM1.tNotaFiscalCondPgto.AsString = 'P') and (StrToFloat(FormatFloat('0.00',vVlrParc)) <> StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat))) then
  begin
    ShowMessage('Valor das parcelas diferente do valor da duplicata!');
    exit;
  end;

  Result := True;
end;

procedure TfEmissaoNotaFiscal.Grava_NumSeq;
var
  vNumAux : Integer;
  vflag : Boolean;
begin
  DM1.tNotaFiscal.Refresh;
  tNotaFiscalIns.Refresh;
  tNotaFiscalIns.Last;
  vflag := False;
  vNumAux := tNotaFiscalInsNumSeq.AsInteger;
  tNotaFiscalIns.Refresh;
  vDataAnt := tNotaFiscalInsDtEmissao.AsDateTime;

  DM1.tNotaFiscal.Insert;
  DM1.tNotaFiscalFilial.AsInteger        := Dm1.tFilialCodigo.AsInteger;
  DM1.tNotaFiscalDtEmissao.AsDateTime    := Date;
  DM1.tNotaFiscalDtEntr.AsDateTime       := Date;
  DM1.tNotaFiscalIcmsIpi.AsBoolean       := DM1.tParametrosIcmsIpi.AsBoolean;
  DM1.tNotaFiscalSituacao.AsInteger      := 1;
  DM1.tNotaFiscalEspecie.AsString        := 'VOLUMES';
  DM1.tNotaFiscalTipoNota.AsInteger      := 1;
  DM1.tNotaFiscalDescricaoDesc.AsString  := '';
  DM1.tNotaFiscalCondPgto.AsString       := 'P';
  DM1.tNotaFiscalExportacao.AsBoolean    := False;
  DM1.tNotaFiscalUsuario.AsString        := DM1.tUsuarioUsuario.AsString;
  DM1.tNotaFiscalDtCad.AsDateTime        := Date;
  DM1.tNotaFiscalHrCad.AsDateTime        := Time;
  DM1.tNotaFiscalCancelada.AsBoolean     := False;

  while vflag = False do
    begin
      vNumAux := vNumAux + 1;
      try
        DM1.tNotaFiscalNumSeq.AsInteger := vNumAux;
        DM1.tNotaFiscal.Post;
        DM1.tNotaFiscal.Refresh;
        tNotaFiscalIns.Refresh;
        DM1.tNotaFiscal.Locate('Filial;NumSeq',VarArrayOf([DM1.tNotaFiscalFilial.AsInteger,vNumAux]),[locaseinsensitive]);
        DM1.tNotaFiscal.Edit;
        vflag := True;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível gravar, ' + E.Message + '! Clique para continuar!');
          vFlag := False;
        end;
      end;
    end;
end;

function TfEmissaoNotaFiscal.Calcula_Juros(ValorTotal, Taxa : Currency; Periodo : Integer) : Currency;
begin
  Result := ValorTotal * Power(1 + Taxa / 100, Periodo) * (Taxa / 100) / (Power(1 + Taxa / 100, Periodo)-1);
end;

procedure TfEmissaoNotaFiscal.Exclui_ValesAnt;
begin
  Dm1.tVale.Filtered := False;
  Dm1.tVale.Filter   := 'NumNota = '''+IntToStr(Dm1.tNotaFiscalNumNota.AsInteger)+'''';
  Dm1.tvale.Filtered := True;
  Dm1.tVale.IndexFieldNames := 'NumVale';
  Dm1.tVale.First;
  while not Dm1.tVale.Eof do
  begin
    DM1.tValeItens.First;
    while not DM1.tValeItens.Eof do
    begin
      DM1.tValeItens.Edit;
      DM1.tValeItensQtdFaturada.AsFloat := 0;
      DM1.tValeItensQtdRestante.AsFloat := DM1.tValeItensQtd.AsFloat;
      DM1.tValeItensFaturado.AsBoolean  := False;
      DM1.tValeItens.Post;
      DM1.tValeItens.Next;
    end;
    Dm1.tVale.Edit;
    Dm1.tValeNumNota.Clear;
    Dm1.tValeNumSeqNota.Clear;
    Dm1.tValeFaturado.AsBoolean := False;
    Dm1.tVale.Post;
  end;
  Dm1.tVale.Filtered := False;
end;

procedure TfEmissaoNotaFiscal.Exclui_Vales;
begin
  if DM1.tNotaFiscalVale.RecordCount > 0 then
    begin
      DM1.tNotaFiscalVale.First;
      while not DM1.tNotaFiscalVale.Eof do
        begin
          if DM1.tVale.Locate('NumVale',DM1.tNotaFiscalValeNumVale.AsInteger,[loCaseInsensitive]) then
            begin
              if DM1.tValeItens.Locate('NumVale;Item;',VarArrayOf([DM1.tNotaFiscalValeNumVale.AsInteger,DM1.tNotaFiscalValeItemVale.AsInteger]),[locaseinsensitive]) then
                begin
                  DM1.tValeItens.Edit;
                  DM1.tValeItensQtdFaturada.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tValeItensQtdFaturada.AsFloat - DM1.tNotaFiscalValeQtd.AsFloat));
                  DM1.tValeItensQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tValeItensQtdRestante.AsFloat + DM1.tNotaFiscalValeQtd.AsFloat));
                  DM1.tValeItensFaturado.AsBoolean  := False;
                  DM1.tValeItens.Post;
                  DM1.tValeItens.Refresh;
                  DM1.tVale.Edit;
                  DM1.tValeFaturado.AsBoolean := False;
                  DM1.tVale.Post;
                end;
            end;
          DM1.tNotaFiscalVale.Delete;
        end;
    end;
  DM1.tVale.Refresh;
  DM1.tValeItens.Refresh;
end;

procedure TfEmissaoNotaFiscal.Verifica_Natureza(Codigo : String);
begin
  vNatureza := True;
  if Codigo <> '' then
    begin
      if (DM1.tNotaFiscalSaidaEntrada.AsString = 'E') and ((Copy(Codigo,1,1) = '5') or (Copy(Codigo,1,1) = '6') or (Copy(Codigo,1,1) = '7')) then
        begin
          ShowMessage('Natureza é de saída!');
          vNatureza := False;
        end
      else
      if (DM1.tNotaFiscalSaidaEntrada.AsString = 'S') and ((Copy(Codigo,1,1) = '1') or (Copy(Codigo,1,1) = '2') or (Copy(Codigo,1,1) = '3')) then
        begin
          ShowMessage('Natureza é de entrada!');
          vNatureza := False;
        end
      else
      if RxDBLookupCombo8.Text <> '' then
        begin
          if (vSiglaUF <> DM1.tEmpresaEstado.AsString) and ((Copy(Codigo,1,1) = '1') or (Copy(Codigo,1,1) = '5')) then
            begin
              ShowMessage('Natureza inválida para o estado!');
              vNatureza := False;
            end
          else
          if (vSiglaUF = DM1.tEmpresaEstado.AsString) and ((Copy(Codigo,1,1) <> '5') and (Copy(Codigo,1,1) <> '1')) then
            begin
              ShowMessage('Natureza inválida para o estado!');
              vNatureza := False;
            end;
        end;
    end;
end;

procedure TfEmissaoNotaFiscal.Volta_Pedido;
begin
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.EOF do
    begin
      if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
        begin
          DM1.tPedido.IndexFieldNames := 'Pedido';
          DM1.tPedido.SetKey;
          DM1.tPedidoPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
          if DM1.tPedido.GotoKey then
            begin
              DM1.tPedido.Edit;
              DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
              DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
              DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
              DM1.tPedidoCopiado.AsBoolean    := False;
              DM1.tPedido.Post;
              DM1.tPedidoItem.SetKey;
              DM1.tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
              DM1.tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
              if DM1.tPedidoItem.GotoKey then
                begin
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoItemCopiado.AsBoolean    := False;
                  DM1.tPedidoItem.Post;
                  DM1.tNotaFiscalGrade.First;
                  while not DM1.tNotaFiscalGrade.Eof do
                    begin
                      if DM1.tPedidoGrade.Locate('Pedido;ItemPed;CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,
                                                 DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                        begin
                          DM1.tPedidoGrade.Edit;
                          DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                          DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                          DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + DM1.tNotaFiscalGradeQtd.AsFloat;
                          DM1.tPedidoGrade.Post;
                        end;
                      DM1.tNotaFiscalGrade.Next;
                    end;
                  DM1.tPedidoNota.First;
                  while not DM1.tPedidoNota.Eof do
                    begin
                      if (DM1.tPedidoNotaNumSeqNota.AsInteger = DM1.tNotaFiscalItensNumSeq.AsInteger) and
                         (DM1.tPedidoNotaItemNota.AsInteger = DM1.tNotaFiscalItensItem.AsInteger) and
                         (DM1.tPedidoNotaFilialNota.AsInteger = DM1.tNotaFiscalItensFilial.AsInteger) and
                         (DM1.tPedidoNotaTipo.AsString = 'N') then
                       DM1.tPedidoNota.Delete
                     else
                       DM1.tPedidoNota.Next;
                    end;
                end;
            end;
        end;

      //Estorna a nota de entrada devolvida e apaga a tabela dbNotaFiscalNDevolvida
      DM1.tNEntrada.IndexFieldNames      := 'NumNEntr;CodForn;Serie';
      DM1.tNEntradaItens.IndexFieldNames := 'CodForn;NumNEntr;Serie;Item';
      DM1.tNotaFiscalNDevolvida.First;
      while not DM1.tNotaFiscalNDevolvida.Eof do
        begin
          DM1.tNEntrada.SetKey;
          DM1.tNEntradaNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
          DM1.tNEntradaCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
          DM1.tNEntradaSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
          if DM1.tNEntrada.GotoKey then
            begin
              DM1.tNEntradaItens.SetKey;
              DM1.tNEntradaItensNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
              DM1.tNEntradaItensCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
              DM1.tNEntradaItensSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
              DM1.tNEntradaItensItem.AsInteger     := DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger;
              if DM1.tNEntradaItens.GotoKey then
                begin
                  DM1.tNEntradaItens.Edit;
                  DM1.tNEntradaItensQtdRestante.AsFloat  := DM1.tNEntradaItensQtdRestante.AsFloat + DM1.tNotaFiscalNDevolvidaQtd.AsFloat;
                  DM1.tNEntradaItensQtdDevolvida.AsFloat := DM1.tNEntradaItensQtdDevolvida.AsFloat - DM1.tNotaFiscalNDevolvidaQtd.AsFloat;
                  DM1.tNEntradaItens.Post;
                end;
            end;
          DM1.tNotaFiscalNDevolvida.Delete;
        end;
      DM1.tNotaFiscalItens.Next;
    end;
end;

procedure TfEmissaoNotaFiscal.Verifica_UF;
begin
  vCodSitTrib := 0;
  DM1.tUF.SetKey;
  DM1.tUFSigla.AsString := DM1.tNotaFiscallkUF.AsString;
  if DM1.tUF.GotoKey then
    begin
      vAliqICMS   := DM1.tUFPercentual.AsFloat;
      vCodSitTrib := DM1.tUFCodSitTrib.AsInteger;
    end;
  vSiglaUF := DM1.tNotaFiscallkUF.AsString;
end;    

procedure TfEmissaoNotaFiscal.Lanc_Diferenca;
var
 vValorBase : Currency;
 vNumAux : Integer;
begin
{******************* Não apagar esta procedure ************************}
{**********************************************************************}
  {DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.EOF do
    begin
      if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (DM1.tNotaFiscalItensItemPedido.AsInteger > 0) then
        begin
          tPedidoItem.SetKey;
          tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
          tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
          if tPedidoItem.GotoKey then
            begin
              if (tPedidoItemPreco.AsCurrency - tPedidoItemVlrDesconto.AsCurrency) > DM1.tNotaFiscalItensVlrUnit.AsCurrency then
                begin
                  tExtComissaoIns.Refresh;
                  tExtComissaoIns.Last;
                  DM1.tExtComissao.Insert;
                  DM1.tExtComissaoNroLancamento.AsInteger := tExtComissaoInsNroLancamento.AsInteger + 1;
                  DM1.tExtComissaoCodVendedor.AsInteger   := DM1.tNotaFiscalCodVendedor.AsInteger;
                  DM1.tExtComissaoDtReferencia.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
                  DM1.tExtComissaoParcDoc.AsInteger       := 0;
                  DM1.tExtComissaoCodCliente.AsInteger    := DM1.tNotaFiscalCodCli.AsInteger;
                  if DM1.tNotaFiscalSaidaEntrada.AsString = 'S' then
                    begin
                      DM1.tExtComissaoFuncao.AsString  := 'E';
                      DM1.tExtComissaoNroDoc.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
                    end
                  else
                    begin
                      DM1.tExtComissaoFuncao.AsString := 'D';
                      DM1.tExtComissaoNroDoc.AsInteger := DM1.tNotaFiscalNumNotaOrigem.AsInteger;
                    end;
                  DM1.tExtComissaoVlrBase.AsFloat      := DM1.tNotaFiscalItensQtd.AsFloat * ((tPedidoItemPreco.AsFloat - tPedidoItemVlrDesconto.AsFloat)- DM1.tNotaFiscalItensVlrUnit.AsFloat);
                  DM1.tExtComissaoPercDescDupl.AsFloat := DM1.tNotaFiscalItensDesconto.AsFloat;
                  DM1.tExtComissaoPercComissao.AsFloat := DM1.tNotaFiscalPercComissao.AsFloat;
                  DM1.tExtComissaoVlrComissao.AsFloat  := StrToFloat(FormatFloat('0.00',(DM1.tExtComissaoVlrBase.AsFloat * DM1.tExtComissaoPercComissao.AsFloat / 100)));
                  DM1.tExtComissaoTipo.AsString        := 'F';
                  DM1.tExtComissaoSuspensa.AsBoolean   := False;
                  DM1.tExtComissao.Post;
                  DM1.tNotaFiscalExtComDif.AsInteger := DM1.tExtComissaoNroLancamento.AsInteger;
                end;
            end;
        end;
      DM1.tNotaFiscalItens.Next;
    end;}

{*** Antes gerava a comissão pelo item conforme bloco acima (foi alterado dia 14/08/01 ***}
{*****************************************************************************************}

  vValorBase := 0;
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.EOF do
    begin
      if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (DM1.tNotaFiscalItensItemPedido.AsInteger > 0) then
        begin
          tPedidoItem.SetKey;
          tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
          tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
          if tPedidoItem.GotoKey then
            begin
              if (tPedidoItemPreco.AsCurrency - tPedidoItemVlrDesconto.AsCurrency) > DM1.tNotaFiscalItensVlrUnit.AsCurrency then
                vValorBase := vValorBase + (DM1.tNotaFiscalItensQtd.AsCurrency * ((tPedidoItemPreco.AsFloat - tPedidoItemVlrDesconto.AsCurrency) - DM1.tNotaFiscalItensVlrUnit.AsCurrency));
            end;
        end;
      DM1.tNotaFiscalItens.Next;
    end;
  if vValorBase > 0 then
    begin
      DM1.tExtComissao.Refresh;
      DM1.tExtComissao.Last;
      vNumAux := DM1.tExtComissaoNroLancamento.AsInteger;
      DM1.tExtComissao.Insert;
      DM1.tExtComissaoNroLancamento.AsInteger := vNumAux + 1;
      DM1.tExtComissaoCodVendedor.AsInteger   := DM1.tNotaFiscalCodVendedor.AsInteger;
      DM1.tExtComissaoDtReferencia.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tExtComissaoParcDoc.AsInteger       := 0;
      DM1.tExtComissaoCodCliente.AsInteger    := DM1.tNotaFiscalCodCli.AsInteger;
      if DM1.tNotaFiscalSaidaEntrada.AsString = 'S' then
        begin
          DM1.tExtComissaoFuncao.AsString  := 'E';
          DM1.tExtComissaoNroDoc.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
        end
      else
        begin
          DM1.tExtComissaoFuncao.AsString := 'D';
          DM1.tExtComissaoNroDoc.AsInteger := DM1.tNotaFiscalNumNotaOrigem.AsInteger;
        end;
      DM1.tExtComissaoVlrBase.AsFloat      := vValorBase;
      DM1.tExtComissaoPercDescDupl.AsFloat := DM1.tNotaFiscalDescDupl.AsFloat;
      DM1.tExtComissaoPercComissao.AsFloat := DM1.tNotaFiscalPercComissao.AsFloat;
      DM1.tExtComissaoVlrComissao.AsFloat  := StrToFloat(FormatFloat('0.00',(DM1.tExtComissaoVlrBase.AsFloat * DM1.tExtComissaoPercComissao.AsFloat / 100)));
      DM1.tExtComissaoTipo.AsString        := 'F';
      DM1.tExtComissaoSuspensa.AsBoolean   := False;
      DM1.tExtComissaoFilial.AsInteger     := DM1.tNotaFiscalFilial.AsInteger;
      DM1.tExtComissaoNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tExtComissaoSerie.AsString       := DM1.tNotaFiscalSerie.AsString;
      DM1.tExtComissao.Post;
      DM1.tNotaFiscalExtComDif.AsInteger := DM1.tExtComissaoNroLancamento.AsInteger;
    end;
end;

procedure TfEmissaoNotaFiscal.Habilita_Desabilita;
begin
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  Panel11.Enabled           := not(Panel11.Enabled);
  Panel10.Enabled           := not(Panel10.Enabled);
  Panel1.Enabled            := not(Panel1.Enabled);
  Panel6.Enabled            := not(Panel6.Enabled);
  Panel7.Enabled            := not(Panel7.Enabled);
  Panel8.Enabled            := not(Panel8.Enabled);
  Panel9.Enabled            := not(Panel9.Enabled);
  Panel13.Enabled           := not(Panel13.Enabled);
  //Panel14.Enabled           := not(Panel14.Enabled);
  BitBtn1.Enabled           := not(BitBtn1.Enabled);
  BitBtn2.Enabled           := not(BitBtn2.Enabled);
  BitBtn4.Enabled           := not(BitBtn4.Enabled);
  BitBtn5.Enabled           := not(BitBtn5.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  BitBtn18.Enabled          := not(BitBtn18.Enabled);
  BitBtn10.Enabled          := not(BitBtn10.Enabled);
  BitBtn11.Enabled          := not(BitBtn11.Enabled);
  RxDBComboBox5.Enabled     := not(RxDBComboBox5.Enabled);
  SpBtProcesso.Enabled      := not(SpBtProcesso.Enabled);
  SpBtImprimir.Enabled      := not(SpBtImprimir.Enabled);
  //NFe 2.00
  RxDBComboBox4.Enabled  := not(RxDBComboBox4.Enabled);
end;

procedure TfEmissaoNotaFiscal.Grava_Pgto;
begin
  if DM1.tNotaFiscalCondPgto.AsString = 'N' then
    exit;

  if RxDBLookupCombo4.Text <> '' then
    vCodConta := RxDBLookupCombo4.KeyValue
  else
  if DM1.tClienteCodBancoBoleto.AsInteger > 0 then
    vCodConta := DM1.tClienteCodBancoBoleto.AsInteger
  else
    vCodConta := 0;
  if RxDBLookupCombo16.Text <> '' then
    vCodTipoCobranca := RxDBLookupCombo16.KeyValue
  else
  if DM1.tClienteCodTipoCobranca.AsInteger > 0 then
    vCodTipoCobranca := DM1.tClienteCodTipoCobranca.AsInteger
  else
    vCodTipoCobranca := 0;
  //Chama a unit UGeracoes
  Grava_CReceber;
end;

procedure TfEmissaoNotaFiscal.Desfaz_ExtComissao;
begin
  if DM1.tNotaFiscalNroLancExtComissao.AsInteger > 0 then
    begin
      DM1.tExtComissao.IndexFieldNames := 'NroLancamento';
      DM1.tExtComissao.SetKey;
      DM1.tExtComissaoNroLancamento.AsInteger := DM1.tNotaFiscalNroLancExtComissao.AsInteger;
      if DM1.tExtComissao.GotoKey then
        DM1.tExtComissao.Delete;
    end;
  if DM1.tNotaFiscalExtComDif.AsInteger > 0 then
    begin
      DM1.tExtComissao.IndexFieldNames := 'NroLancamento';
      DM1.tExtComissao.SetKey;
      DM1.tExtComissaoNroLancamento.AsInteger := DM1.tNotaFiscalExtComDif.AsInteger;
      if DM1.tExtComissao.GotoKey then
        DM1.tExtComissao.Delete;
    end;
end;

procedure TfEmissaoNotaFiscal.Grava_ExtComissao;
var
  vNumAux : Integer;
begin
  DM1.tExtComissao.Refresh;
  DM1.tExtComissao.Last;
  vNumAux := DM1.tExtComissaoNroLancamento.AsInteger;
  DM1.tExtComissao.Insert;
  DM1.tExtComissaoNroLancamento.AsInteger := vNumAux + 1;
  DM1.tExtComissaoCodVendedor.AsInteger   := DM1.tNotaFiscalCodVendedor.AsInteger;
  DM1.tExtComissaoDtReferencia.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
  DM1.tExtComissaoParcDoc.AsInteger       := 0;
  DM1.tExtComissaoCodCliente.AsInteger    := DM1.tNotaFiscalCodCli.AsInteger;
  if DM1.tNotaFiscalSaidaEntrada.AsString = 'S' then
    begin
      DM1.tExtComissaoFuncao.AsString  := 'E';
      DM1.tExtComissaoNroDoc.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
    end
  else
    begin
      DM1.tExtComissaoFuncao.AsString  := 'D';
      DM1.tExtComissaoNroDoc.AsInteger := DM1.tNotaFiscalNumNotaOrigem.AsInteger;
    end;
  DM1.tExtComissaoVlrBase.AsFloat      := DM1.tNotaFiscalVlrTotalDupl.AsFloat + Dm1.tNotaFiscalVlrTransf.AsFloat;
  DM1.tExtComissaoPercDescDupl.AsFloat := DM1.tNotaFiscalDescDupl.AsFloat;
  DM1.tExtComissaoPercComissao.AsFloat := DM1.tNotaFiscalPercComissao.AsFloat;
  DM1.tExtComissaoVlrComissao.AsFloat  := StrToFloat(FormatFloat('0.00',(DM1.tExtComissaoVlrBase.AsFloat * DM1.tExtComissaoPercComissao.AsFloat / 100)));
  DM1.tExtComissaoTipo.AsString        := 'N';
  DM1.tExtComissaoSuspensa.AsBoolean   := False;
  DM1.tExtComissaoFilial.AsInteger     := DM1.tNotaFiscalFilial.AsInteger;
  DM1.tExtComissaoNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
  DM1.tExtComissaoSerie.AsString       := DM1.tNotaFiscalSerie.AsString;
  DM1.tExtComissao.Post;
  DM1.tNotaFiscalNroLancExtComissao.AsInteger := DM1.tExtComissaoNroLancamento.AsInteger;
end;

procedure TfEmissaoNotaFiscal.Verifica_Parcelas;
var
  vValorTotalStr : String;
begin
  if (DM1.tNotaFiscalParcDtVenc.AsString = '') or
     (DM1.tNotaFiscalParcVlrVenc.AsString = '') then
    begin
      DM1.tNotaFiscalParc.Cancel;
      vValorTotalStr := FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat);
      Compara_Valor_Parcelas;
      if vValorParcelaTot <> vValorTotalStr then
        ShowMessage('Valor das Parcelas não confere com Total da Nota Fiscal!');
      Abort;
    end
  else
    begin
      if DM1.tNotaFiscalParc.State = dsInsert then
        begin
          tNotaFiscalParcIns.Refresh;
          tNotaFiscalParcIns.Last;
          DM1.tNotaFiscalParcParcela.AsInteger := tNotaFiscalParcInsParcela.AsInteger + 1;
        end;
    end;
end;

procedure TfEmissaoNotaFiscal.Baixa_Estoque;
var
  vNumMovEst : Integer;
begin
  DM1.tEstoqueMatMov.Filtered := False;
  DM1.tEstoqueMatMov.Filter   := 'NumNota = '''+DM1.tNotaFiscalNumNota.AsString+''' and TipoMov = '''+'NTS'+''' and Serie = '''+ DM1.tNotaFiscalSerie.AsString +'''';
  DM1.tEstoqueMatMov.Filtered := True;
  DM1.tEstoqueMatMov.First;
  while not DM1.tEstoqueMatMov.Eof do
    DM1.tEstoqueMatMov.Delete;
  DM1.tEstoqueMatMov.Filtered := False;

  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
    begin
      if not Dm1.tNotaFiscalItensVale.AsBoolean then
        begin
          if (DM1.tNotaFiscalItensEstoque.AsBoolean) then
            begin
              vNumMovEst := 0;
              if DM1.tNotaFiscalItensCodProduto.AsInteger > 0 then
                begin
                  if DM1.tNotaFiscalItensNumMovEst.AsInteger > 0 then
                    begin
                      DM1.tEstoqueMatMov.SetKey;
                      DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNotaFiscalItensNumMovEst.AsInteger;
                      if DM1.tEstoqueMatMov.GotoKey then
                        begin
                          DM1.tEstoqueMatMov.Refresh;
                          DM2.tEstoqueMatMov2.Refresh;
                          DM2.tEstoqueMatMov2.Last;
                          vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
                        end
                      else
                        vNumMovEst := DM1.tNotaFiscalItensNumMovEst.AsInteger;
                    end
                  else
                    begin
                      DM1.tEstoqueMatMov.Refresh;
                      DM2.tEstoqueMatMov2.Refresh;
                      DM2.tEstoqueMatMov2.Last;
                      vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
                    end;
                  DM1.tEstoqueMatMov.Insert;
                  DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
                  DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
                  DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tNotaFiscalItensCodCor.AsInteger;
                  DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tNotaFiscalDtEmissao.AsDateTime;
                  DM1.tEstoqueMatMovES.AsString           := DM1.tNotaFiscalSaidaEntrada.AsString;
                  DM1.tEstoqueMatMovTipoMov.AsString      := 'NTS';
                  DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tNotaFiscalItensNumNota.AsInteger;
                  DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tNotaFiscalCodCli.AsInteger;
                  DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tNotaFiscalItensVlrUnit.AsFloat;
                  DM1.tEstoqueMatMovQtd.AsFloat           := DM1.tNotaFiscalItensQtd.AsFloat;
                  if DM1.tEstoqueMatMovES.AsString = 'E' then
                    DM1.tEstoqueMatMovQtd2.AsFloat        := StrToFloat(FormatFloat('0.00000',DM1.tNotaFiscalItensQtd.AsFloat))
                  else
                    DM1.tEstoqueMatMovQtd2.AsFloat        := StrToFloat(FormatFloat('0.00000',DM1.tNotaFiscalItensQtd.AsFloat * -1));
                  DM1.tEstoqueMatMovUnidade.AsString      := DM1.tNotaFiscalItensUnidade.AsString;
                  DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tNotaFiscalItensIcms.AsFloat;
                  DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tNotaFiscalItensIpi.AsFloat;
                  DM1.tEstoqueMatMovVlrDesconto.AsFloat   := (DM1.tNotaFiscalItensVlrDesconto.AsFloat / DM1.tNotaFiscalItensQtd.AsFloat);
                  DM1.tEstoqueMatMovSerie.AsString        := DM1.tNotaFiscalSerie.AsString;
                  DM1.tEstoqueMatMovNumSeqNota.AsInteger  := DM1.tNotaFiscalNumSeq.AsInteger;
                  DM1.tEstoqueMatMov.Post;
                  if DM1.tNotaFiscalGrade.RecordCount > 0 then
                    begin
                      DM1.tNotaFiscalGrade.First;
                      while not DM1.tNotaFiscalGrade.Eof do
                        begin
                          DM1.tEstoqueMatMovGrade.Insert;
                          DM1.tEstoqueMatMovGradeNumMov.AsInteger := vNumMovEst;
                          DM1.tEstoqueMatMovGradeTamanho.AsString := DM1.tNotaFiscalGradelkTamanho.AsString;
                          DM1.tEstoqueMatMovGradeQtd.AsFloat      := DM1.tNotaFiscalGradeQtd.AsFloat;
                          if DM1.tEstoqueMatMovES.AsString = 'E' then
                            DM1.tEstoqueMatMovGradeQtd2.AsFloat    := DM1.tNotaFiscalGradeQtd.AsFloat
                          else
                            DM1.tEstoqueMatMovGradeQtd2.AsFloat    := DM1.tNotaFiscalGradeQtd.AsFloat * -1;
                          DM1.tEstoqueMatMovGrade.Post;
                          DM1.tNotaFiscalGrade.Next;
                        end;
                    end;
                end;
              DM1.tNotaFiscalItens.Edit;
              DM1.tNotaFiscalItensNumMovEst.AsInteger := vNumMovEst;
              DM1.tNotaFiscalItens.Post;
            end;
        end;
      DM1.tNotaFiscalItens.Next;
    end;
end;

procedure TfEmissaoNotaFiscal.Incrementa_Estoque;
begin
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
    begin
      if not Dm1.tNotaFiscalItensVale.AsBoolean then
        begin
          if (DM1.tNotaFiscalItensEstoque.AsBoolean) then
            begin
              if DM1.tNotaFiscalItensCodProduto.AsInteger > 0 then
                begin
                  //*** Exclui o movimento do estoque
                  DM1.tEstoqueMatMov.SetKey;
                  DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNotaFiscalItensNumMovEst.AsInteger;
                  if DM1.tEstoqueMatMov.GotoKey then
                    begin
                      DM1.tEstoqueMatMovGrade.First;
                      while not DM1.tEstoqueMatMovGrade.Eof do
                        DM1.tEstoqueMatMovGrade.Delete;
                      DM1.tEstoqueMatMov.Delete;
                    end;
                end;
            end;
        end;
      DM1.tNotaFiscalItens.Next;
    end;
end;

procedure TfEmissaoNotaFiscal.Verifica_Nota_Cancelada;
begin
  //NFe 2.00
  //03/04/2012 = Foi incluida a opção da nota denegada
  if not(DM1.tNotaFiscalCancelada.AsBoolean) and not(DM1.tNotaFiscalNFeDenegada.AsBoolean) then
    Panel4.SendToBack
  else
  begin
    if DM1.tNotaFiscalNFeDenegada.AsBoolean then
      Label39.Caption := 'NOTA DENEGADA'
    else
    if (Trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) <> '') or (DM1.tNotaFiscalSerie.AsString = 'UN') then
      Label39.Caption := 'NOTA CANCELADA'
    else
      Label39.Caption := '... Aguardando cancelamento';
    Panel4.BringToFront;
  end;
  //NFe 2.00
  lbContingencia.Visible := (((Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5')) and
                            (Trim(DM1.tNotaFiscalNFeProtocolo.AsString) = '') and
                            (Trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) <> ''));
end;

procedure TfEmissaoNotaFiscal.Compara_Valor_Parcelas;
begin
  vValorParcelas := 0;
  if DM1.tNotaFiscalParc.State in [dsEdit,dsInsert] then
    DM1.tNotaFiscalParc.Post;
  tNotaFiscalParcIns.First;
  while not tNotaFiscalParcIns.Eof do
    begin
      if tNotaFiscalParcInsParcela.AsInteger < 10 then
        vValorParcelas := vValorParcelas + tNotaFiscalParcInsVlrVenc.AsFloat;
      tNotaFiscalParcIns.Next;
    end;
  vValorParcelas   := vValorParcelas + DM1.tNotaFiscalEntrada.AsCurrency;
  vValorParcelaTot := FormatFloat('0.00',vValorParcelas);
end;

procedure TfEmissaoNotaFiscal.Limpa_Parcelas;
begin                                        
  DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
  DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
  DM1.tNotaFiscalCustoPerc.Clear;
  DM1.tNotaFiscalCustoFinanc.Clear;
  if not DM1.tNotaFiscalParc.IsEmpty then
    while not DM1.tNotaFiscalParc.EOF do
      DM1.tNotaFiscalParc.Delete;
end;

procedure TfEmissaoNotaFiscal.Faz_Desconto_ICMS;
var
  vBaseICMS, vValorAliq, vBaseItemDesc : Currency;
begin
  tNotaFiscalItensIns.Refresh;
  tNotaFiscalItensIns.First;
  DM1.tNotaFiscalBaseICMS.Clear;
  DM1.tNotaFiscalVlrICMS.Clear;
  vValorAliq := 0;
  if DBEdit16.Text <> '' then
    begin
      if vAliqICMS > 0  then
        vValorAliq := vAliqICMS;
      DM1.tNotaFiscalBaseICMS.AsCurrency  := DM1.tNotaFiscalVlrFrete.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency   := DM1.tNotaFiscalBaseICMS.AsCurrency *
                                             vValorAliq / 100;
    end;
  while not tNotaFiscalItensIns.EOF do
    begin
      case RxDBComboBox3.ItemIndex of
        0 : begin
              vBaseICMS := tNotaFiscalItensInsBaseIcms.AsCurrency -
                           tNotaFiscalItensInsVlrIPI.AsCurrency;
              DM1.tNotaFiscalBaseICMS.AsCurrency  := DM1.tNotaFiscalBaseICMS.AsCurrency +
                                                     tNotaFiscalItensInsVlrIPI.AsCurrency +
                                                     vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100;
              vBaseItemDesc                       := tNotaFiscalItensInsVlrIPI.AsCurrency +
                                                     vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100;
              DM1.tNotaFiscalVlrICMS.AsCurrency   := DM1.tNotaFiscalVlrICMS.AsCurrency +
                                                     vBaseItemDesc *
                                                     tNotaFiscalItensInsIcms.AsCurrency / 100;
            end;
        1 : begin
              vBaseICMS := tNotaFiscalItensInsBaseIcms.AsCurrency;
              DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalBaseICMS.AsCurrency +
                                                     vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100;
              vBaseItemDesc                      := vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100;
              DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalVlrICMS.AsCurrency +
                                                    vBaseItemDesc *
                                                    tNotaFiscalItensInsIcms.AsCurrency / 100;
            end;
      end;
      tNotaFiscalItensIns.Next;
    end;
end;

procedure TfEmissaoNotaFiscal.Desfaz_Desconto_ICMS;
var
  vValorAliq : Currency;
begin
  tNotaFiscalItensIns.IndexFieldNames := 'Filial;NumSeq;Item';
  tNotaFiscalItensIns.Refresh;
  tNotaFiscalItensIns.First;
  DM1.tNotaFiscalBaseICMS.Clear;
  DM1.tNotaFiscalVlrICMS.Clear;
  vValorAliq :=  0;
  if DBEdit16.Text <> '' then
    begin
      if vAliqICMS > 0 then
        vValorAliq := vAliqICMS;
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalVlrFrete.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalBaseICMS.AsCurrency *
                                            vValorAliq / 100;
    end
  else
    begin
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalBaseICMS.AsCurrency + 0;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalVlrICMS.AsCurrency  + 0;
    end;
  while not tNotaFiscalItensIns.EOF do
    begin
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalBaseICMS.AsCurrency +
                                            tNotaFiscalItensInsBaseIcms.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalVlrICMS.AsCurrency +
                                            tNotaFiscalItensInsVlrIcms.AsCurrency;
      tNotaFiscalItensIns.Next;
    end;
end;

procedure TfEmissaoNotaFiscal.Calcula_ICMS_CustoF(Gerar : Boolean);
begin
  if Gerar then
    begin
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalBaseICMS.AsCurrency +
                                            tNotaFiscalInsCustoFinanc.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalVlrICMS.AsCurrency +
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency *
                                            vAliqICMS / 100;
    end
  else
    begin
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalBaseICMS.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalVlrICMS.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency *
                                            vAliqICMS / 100;
    end;
end;

procedure TfEmissaoNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);

  if DMNotaFiscal.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMNotaFiscal);

  if DMTabImposto.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMTabImposto);

  if DMTabEnqIPI.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMTabEnqIPI);

  DM1.tNatOperacao.Filter   := '';
  DM1.tNatOperacao.Filtered := True;
  Action := CaFree;
end;

procedure TfEmissaoNotaFiscal.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfEmissaoNotaFiscal.SpeedButton1Click(Sender: TObject);
var
  vFiltro : String;
begin
  if DM1.tUsuarioNatOper.AsBoolean then
    begin
      //NFe 2.00
      vFiltro := DM1.tNatOperacao.Filter;
      DM1.tNatOperacao.Filtered := False;

      fNatOperacao := TfNatOperacao.Create(Self);
      fNatOperacao.ShowModal;

      //NFe 2.00
      DM1.tNatOperacao.Filtered := False;
      DM1.tNatOperacao.Filter   := vFiltro;
      DM1.tNatOperacao.Filtered := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
    begin
      fVendedor := TfVendedor.Create(Self);
      fVendedor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de vendedores!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de clientes!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
    begin
      fTransp := TfTransp.Create(Self);
      fTransp.ShowModal;
      DM1.tNotaFiscalCodTransp.Clear;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de transportadoras!');
end;

procedure TfEmissaoNotaFiscal.DBEdit18Enter(Sender: TObject);
var
  vValorAliq : Currency;
begin
  vValorAliq      := 0;
  vBaseOutrasDesp := 0;
  if vAliqICMS > 0 then
    vValorAliq := vAliqICMS;
  if DBEdit18.Text <> '' then
  begin
    if DM1.tNotaFiscalOutrasDesp.AsFloat > 0 then
      vBaseOutrasDesp := DM1.tNotaFiscalOutrasDesp.AsFloat;
    vICMSOutrasDesp := vBaseOutrasDesp * vValorAliq / 100;
  end;
end;

procedure TfEmissaoNotaFiscal.DBEdit18Exit(Sender: TObject);
var
  vValorAliq : Currency;
begin
  vValorAliq := 0;
  if vAliqICMS > 0 then
    vValorAliq := vAliqICMS;
  if DBEdit18.Text <> '' then
    begin
      DM1.tNotaFiscalBaseICMS.AsFloat     := DM1.tNotaFiscalBaseICMS.AsFloat -
                                             vBaseOutrasDesp + DM1.tNotaFiscalOutrasDesp.AsFloat;
      DM1.tNotaFiscalVlrICMS.AsFloat      := DM1.tNotaFiscalVlrICMS.AsFloat -
                                             vICMSOutrasDesp +
                                             DM1.tNotaFiscalOutrasDesp.AsFloat *
                                             vValorAliq / 100;
      DM1.tNotaFiscalVlrTotalNota.AsFloat   := DM1.tNotaFiscalVlrTotalNota.AsFloat +
                                               DM1.tNotaFiscalOutrasDesp.AsFloat - vBaseOutrasDesp;
      DM1.tNotaFiscalVlrTotalDupl.AsFloat   := DM1.tNotaFiscalVlrTotalDupl.AsFloat +
                                               DM1.tNotaFiscalOutrasDesp.AsFloat - vBaseOutrasDesp;
    end;
end;

procedure TfEmissaoNotaFiscal.DBEdit17Enter(Sender: TObject);
begin
  vValorSeguroTemp := 0;
  if DM1.tNotaFiscalVlrSeguro.AsFloat > 0 then
    vValorSeguroTemp := DM1.tNotaFiscalVlrSeguro.AsFloat;
end;

procedure TfEmissaoNotaFiscal.DBEdit17Exit(Sender: TObject);
begin
  DM1.tNotaFiscalVlrTotalNota.AsFloat := DM1.tNotaFiscalVlrTotalNota.AsFloat +
                                         DM1.tNotaFiscalVlrSeguro.AsFloat -
                                         vValorSeguroTemp;
  DM1.tNotaFiscalVlrTotalDupl.AsFloat := DM1.tNotaFiscalVlrTotalDupl.AsFloat +
                                         DM1.tNotaFiscalVlrSeguro.AsFloat -
                                         vValorSeguroTemp;
end;

procedure TfEmissaoNotaFiscal.DBEdit16Enter(Sender: TObject);
var
  vValorAliq : Currency;
begin
  vValorFreteTemp := 0;
  vValorAliq := vAliqICMS;
  if DM1.tNotaFiscalVlrFrete.AsFloat > 0 then
    vValorFreteTemp := DM1.tNotaFiscalVlrFrete.AsFloat;
  vValorFreteICMS := vValorFreteTemp * vValorAliq / 100;
end;

procedure TfEmissaoNotaFiscal.DBEdit16Exit(Sender: TObject);
var
  vValorAliq : Currency;
begin
  vValorAliq := vAliqICMS;
  if DBEdit16.Text <> '' then
    begin
      DM1.tNotaFiscalBaseICMS.AsFloat := DM1.tNotaFiscalBaseICMS.AsFloat -
                                         vValorFreteTemp +
                                         DM1.tNotaFiscalVlrFrete.AsFloat;
      DM1.tNotaFiscalVlrICMS.AsFloat  := DM1.tNotaFiscalVlrICMS.AsFloat -
                                         vValorFreteICMS +
                                         DM1.tNotaFiscalVlrFrete.AsFloat *
                                         vValorAliq / 100;
    end;
  DM1.tNotaFiscalVlrTotalNota.AsFloat := DM1.tNotaFiscalVlrTotalNota.AsFloat +
                                         DM1.tNotaFiscalVlrFrete.AsFloat -
                                         vValorFreteTemp;
  DM1.tNotaFiscalVlrTotalDupl.AsFloat := DM1.tNotaFiscalVlrTotalDupl.AsFloat +
                                         DM1.tNotaFiscalVlrFrete.AsFloat -
                                         vValorFreteTemp;
end;

procedure TfEmissaoNotaFiscal.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
    begin
      fUf := TfUf.Create(Self);
      fUf.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Estados e Alíquotas!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton9Click(Sender: TObject);
var
  vAux : Real;
begin
  if not(DM1.tNotaFiscalItens.IsEmpty) and (not(DM1.tNotaFiscalItensVale.AsBoolean) or ((DM1.tNotaFiscalItensVale.AsBoolean) and (DM1.tNotaFiscalVale.RecordCount > 0))) then
    begin
      if MessageDlg('Deseja realmente excluir este produto da nota?',mtConfirmation,
         [mbOK,mbNo],0) = mrOK then
        begin
          Limpa_Parcelas;
          DM1.tNotaFiscalPesoBruto.AsFloat     := DM1.tNotaFiscalPesoBruto.AsFloat - DM1.tNotaFiscalItenslkPesoBruto.AsFloat *
                                                  DM1.tNotaFiscalItensQtd.AsFloat;
          DM1.tNotaFiscalPesoLiquido.AsFloat   := DM1.tNotaFiscalPesoLiquido.AsFloat - DM1.tNotaFiscalItenslkPesoLiquido.AsFloat *
                                                  DM1.tNotaFiscalItensQtd.AsFloat;
          DM1.tNotaFiscalBaseICMS.AsFloat      := DM1.tNotaFiscalBaseICMS.AsFloat -
                                                  DM1.tNotaFiscalItensBaseICMS.AsFloat;
          DM1.tNotaFiscalVlrICMS.AsFloat       := DM1.tNotaFiscalVlrICMS.AsFloat -
                                                  DM1.tNotaFiscalItensVlrICMS.AsFloat;
          DM1.tNotaFiscalVlrTotalNota.AsFloat  := DM1.tNotaFiscalVlrTotalNota.AsFloat -
                                                  DM1.tNotaFiscalItensVlrTotal.AsFloat -
                                                  DM1.tNotaFiscalItensVlrIPI.AsFloat;
          if DM1.tNotaFiscalItensGeraDupl.AsBoolean then
            DM1.tNotaFiscalVlrTotalDupl.AsFloat  := DM1.tNotaFiscalVlrTotalDupl.AsFloat -
                                                    DM1.tNotaFiscalItensVlrTotal.AsFloat -
                                                    DM1.tNotaFiscalItensVlrIPI.AsFloat;
          DM1.tNotaFiscalVlrCofins.AsFloat   := DM1.tNotaFiscalVlrCofins.AsFloat - DM1.tNotaFiscalItensVlrCofins.AsFloat;
          DM1.tNotaFiscalVlrPis.AsFloat      := DM1.tNotaFiscalVlrPis.AsFloat - DM1.tNotaFiscalItensVlrPis.AsFloat;
          //DM1.tNotaFiscalVlr_Tributo.AsFloat := DM1.tNotaFiscalVlr_Tributo.AsFloat - DM1.tNotaFiscalItensVlr_Tributo.AsFloat;
          //lei 12.741/12
          DM1.tNotaFiscalVlr_Tributo.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlr_Tributo.AsFloat - DM1.tNotaFiscalItensVlr_Tributo.AsFloat));
          DM1.tNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat - DM1.tNotaFiscalItensVLR_TRIBUTOS_ESTADUAL.AsFloat));
          DM1.tNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat - DM1.tNotaFiscalItensVLR_TRIBUTOS_FEDERAL.AsFloat));
          DM1.tNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat - DM1.tNotaFiscalItensVLR_TRIBUTOS_MUNICIPAL.AsFloat));

          //Icms Simples
          if DM1.tNotaFiscalBaseIcmsSimples.AsFloat > 0 then
          begin
            DM1.tNotaFiscalBaseIcmsSimples.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalBaseIcmsSimples.AsFloat - DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat));
            DM1.tNotaFiscalVlrIcmsSimples.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrIcmsSimples.AsFloat - DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat));
          end;

         if DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalItensNatOper.AsInteger,([Locaseinsensitive])) then
           if DM1.tNatOperacaoSomaMercNF.AsBoolean then
             DM1.tNotaFiscalVlrTotalItens.AsFloat := DM1.tNotaFiscalVlrTotalItens.AsFloat -
                                                     DM1.tNotaFiscalItensVlrTotal.AsFloat;
          if DM1.tNotaFiscalItensIPI.AsFloat > 0 then
            DM1.tNotaFiscalVlrIPI.AsFloat := DM1.tNotaFiscalVlrIPI.AsFloat -
                                             DM1.tNotaFiscalItensQtd.AsFloat *
                                             DM1.tNotaFiscalItensVlrUnit.AsFloat *
                                             DM1.tNotaFiscalItensIPI.AsFloat / 100;
          if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
            begin
              DM1.tPedido.IndexFieldNames := 'Pedido';
              DM1.tPedido.SetKey;
              DM1.tPedidoPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
              if DM1.tPedido.GotoKey then
                begin
                  DM1.tPedido.Edit;
                  DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoCopiado.AsBoolean    := False;
                  DM1.tPedido.Post;
                  DM1.tPedidoItem.SetKey;
                  DM1.tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
                  DM1.tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
                  if DM1.tPedidoItem.GotoKey then
                    begin
                      DM1.tPedidoItem.Edit;
                      DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                      DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
                      DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                      DM1.tPedidoItemCopiado.AsBoolean    := False;
                      DM1.tPedidoItem.Post;
                      DM1.tNotaFiscalGrade.First;
                      while not DM1.tNotaFiscalGrade.Eof do
                        begin
                          if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                            begin
                              DM1.tPedidoGrade.Edit;
                              DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                              DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                              DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + DM1.tNotaFiscalGradeQtd.AsFloat;
                              DM1.tPedidoGrade.Post;
                            end;
                          DM1.tNotaFiscalGrade.Next;
                        end;
                      DM1.tPedidoNota.First;
                      while not DM1.tPedidoNota.Eof do
                        begin
                          if (DM1.tPedidoNotaNumSeqNota.AsInteger = DM1.tNotaFiscalItensNumNota.AsInteger) and
                             (DM1.tPedidoNotaItemNota.AsInteger = DM1.tNotaFiscalItensItem.AsInteger) and
                             (DM1.tPedidoNotaFilialNota.AsInteger = DM1.tNotaFiscalItensFilial.AsInteger) and
                             (DM1.tPedidoNotaTipo.AsString = 'N') then
                             DM1.tPedidoNota.Delete
                          else
                            DM1.tPedidoNota.Next;
                        end;
                    end;
                end;
            end;
          DM1.tNotaFiscalGrade.First;
          while not DM1.tNotaFiscalGrade.Eof do
            DM1.tNotaFiscalGrade.Delete;

          //Estorna a nota de entrada devolvida e apaga a tabela dbNotaFiscalNDevolvida
          DM1.tNEntrada.IndexFieldNames      := 'NumNEntr;CodForn;Serie';
          DM1.tNEntradaItens.IndexFieldNames := 'CodForn;NumNEntr;Serie;Item';
          DM1.tNotaFiscalNDevolvida.First;
          while not DM1.tNotaFiscalNDevolvida.Eof do
            begin
              DM1.tNEntrada.SetKey;
              DM1.tNEntradaNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
              DM1.tNEntradaCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
              DM1.tNEntradaSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
              if DM1.tNEntrada.GotoKey then
                begin
                  DM1.tNEntradaItens.SetKey;
                  DM1.tNEntradaItensNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
                  DM1.tNEntradaItensCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
                  DM1.tNEntradaItensSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
                  DM1.tNEntradaItensItem.AsInteger     := DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger;
                  if DM1.tNEntradaItens.GotoKey then
                    begin
                      DM1.tNEntradaItens.Edit;
                      DM1.tNEntradaItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdRestante.AsFloat + DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
                      DM1.tNEntradaItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdDevolvida.AsFloat - DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
                      DM1.tNEntradaItens.Post;
                    end;
                end;
              DM1.tNotaFiscalNDevolvida.Delete;
            end;

          Exclui_Vales;

          DM1.tNotaFiscalItens.Delete;

          //NFe 2.00  - 21/02/2011
          if DM1.tNotaFiscalItens.IsEmpty then
            DM1.tNotaFiscalTipoDesconto.AsString := '';
          vAux := DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
          DM1.tNotaFiscalVlrTotalDesc.Clear;
          DM1.tNotaFiscalPercDesc.Clear;

          //NFe 2.00
          //Calcula_Desconto(False,vAux);
        end;
    end
  else
    ShowMessage('Não existe item para apagar da nota ou nota copiado do vale (modo anterior)!');
  if DM1.tNotaFiscalItens.IsEmpty then
    RxDBComboBox3.Enabled := True;
end;

procedure TfEmissaoNotaFiscal.BitBtn1Click(Sender: TObject);
begin
  vPercICMSSimples := 0;
  BitBtn7.Tag := 0;
  vPedido     := 0;
  vItemPedido := 0;
  vItemNota   := 0;
  vCodSitTrib := 0;
  fEscFilial := TfEscFilial.Create(Self);
  fEscFilial.ShowModal;
  fEmissaoNotaFiscal.Caption := 'Nota Fiscal ' + Dm1.tFilialEmpresa.AsString;
  Habilita_Desabilita;

  tNotaFiscalIns.IndexFieldNames  := 'Filial;NumSeq';
  DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumSeq';

  DM1.tNotaFiscal.Refresh;
  tNotaFiscalIns.Last;

  // Rocha - NMU
  Grava_NumSeq;
  PageControl1.ActivePage := TabSheet5;
  DBEdit2.Clear;

  DBEdit1.SetFocus;
  Verifica_Nota_Cancelada;
  RxDBComboBox3.Enabled := True;
  DM1.tNotaFiscalEmitDest.AsString := '2';
end;

procedure TfEmissaoNotaFiscal.BitBtn2Click(Sender: TObject);
var
  vValorTotalStr, vNumNota : string;
  texto1 : String;
  vObs : Boolean;
  i : Integer;
begin
  if (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) < 0) or
     (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalItens.AsFloat)) < 0) or
     (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalNota.AsFloat)) < 0) then
    begin
      ShowMessage('Valor das duplicatas, total do itens ou total da nota com problema!');
      exit;
    end;

  if DM1.tNotaFiscalItens.IsEmpty then
  begin
    ShowMessage('Esta nota não possui itens');
    exit;
  end;

  if (dm1.tNotaFiscalVlrTotalDupl.AsCurrency > 0) and (dm1.tNotaFiscalCondPgto.AsString = 'N') then
  begin
    ShowMessage('Exite valor de duplicatas, condição de pagamento deve ser escolhida!');
    RxDBComboBox2.SetFocus;
    Exit;
  end;

  if (dm1.tNotaFiscalVlrTotalDupl.AsCurrency > 0) and ((dm1.tNotaFiscalCondPgto.AsString = 'P') and
     (Dm1.tNotaFiscalParc.IsEmpty)) then
  begin
    ShowMessage('Não foi gerada as parcelas de pagamento!');
    Exit;
  end;

  if (vDataAnt > 0) and (DM1.tNotaFiscalDtEmissao.AsDateTime < vDataAnt) and
     (DM1.tNotaFiscalItens.RecordCount > 0) then
    begin
      if MessageDlg('Data de emissão menor que a última nota, confirma?',mtWarning,[mbOK,mbNO],0) = mrNo then
        exit;
    end;

  if DM1.tNotaFiscalSituacao.AsString = '' then
    begin
      ShowMessage('Você deve preencher a Situação!');
      exit;
    end;
  if DM1.tNotaFiscalCodCli.AsString = '' then
    begin
      ShowMessage('Você deve selecionar um cliente!');
      exit;
    end;

  if (DM1.tNotaFiscalCondPgto.AsString <> 'P') and (DM1.tNotaFiscalPrazoPgto.AsInteger > 0) then
    begin
      ShowMessage('Cond. de pagto. a vista ou nenhum não pode ter prazo e nem parcelas!');
      exit;
    end;

  Dm1.tCliente.IndexFieldNames := 'Codigo';
  Dm1.tCliente.SetKey;
  Dm1.tClienteCodigo.AsInteger := Dm1.tNotaFiscalCodCli.AsInteger;
  if Dm1.tCliente.GotoKey then
    begin
      if (DM1.tClienteCgcCpf.AsString = '   .   .   -  ') or (DM1.tClienteCgcCpf.AsString = '  .   .   /    -  ') or (DM1.tClienteCgcCpf.AsString = '')then
        begin
          ShowMessage('Cliente sem CNPJ não pode ser confirmado!');
          exit;
        end;
    end;

  if (DM1.tClienteUf.AsString <> 'RS') and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTransf.AsFloat)) > 0) then
  begin
    ShowMessage('Nota Fiscal fora do estado e possui transferência de ICMS!');
    exit;
  end;

  if not Verifica_Dados then
    exit;

  if ((RxDBLookupCombo10.Text = '') or
        (DBEdit25.Text = '') or (DBEdit26.Text = '') or (DBEdit29.Text = '') or (DBEdit30.Text = '')) then
    if MessageDlg('Há campos em branco "Transportadora", "Qtd", "Espécie", "Peso Bruto" ou "Peso Líquido" Deseja Confirmar assim mesmo?!',mtconfirmation,[mbok,mbno],0)=mrno then
      exit;

  if (DM1.tNotaFiscalCondPgto.AsString <> 'N') and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) <= 0) then
    begin
      ShowMessage('Valor da duplicata não pode ser zerado, quando a cond.pgto for a prazo ou a vista!');
      exit;
    end;

  if (DM1.tNotaFiscalCondPgto.AsString = 'N') and (DM1.tNotaFiscalVlrTotalDupl.AsFloat > 0)  then
    begin
      ShowMessage('Condição de pagamento igual a "Nenhum", não pode conter valor de duplicata!');
      exit;
    end;

  vVlrTotalDupl := 0;
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
    begin
      if DM1.tNotaFiscalItensGeraDupl.AsBoolean then
        vVlrTotalDupl := vVlrTotalDupl + DM1.tNotaFiscalItensVlrTotal.AsFloat + DM1.tNotaFiscalItensVlrIpi.AsFloat;
      DM1.tNotaFiscalItens.Next;
    end;

  if (DM1.tNotaFiscalCondPgto.AsString <> 'N') then //
    begin
      vVlrTotalDupl := vVlrTotalDupl + DM1.tNotaFiscalVlrSeguro.AsFloat;
      vVlrTotalDupl := vVlrTotalDupl + DM1.tNotaFiscalOutrasDesp.AsFloat;
      vVlrTotalDupl := vVlrTotalDupl + DM1.tNotaFiscalVlrFrete.AsFloat;
      vVlrTotalDupl := vVlrTotalDupl - DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
      if (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrTotalDupl))) then
        begin
          ShowMessage('Valor da duplicata calculada = ' + FormatFloat('###,###,##0.00',vVlrTotalDupl) + ', diferente do total da nota!');
          fSenhaControle := TfSenhaControle.Create(Self);
          fSenhaControle.ShowModal;
          if DM1.vSenhaControle <> DM1.tParametrosSenhaExc.AsString then
            exit;
        end;
    end;

  if DM1.tCliente.Locate('Codigo',DM1.tNotaFiscalCodCli.AsInteger,[loCaseInsensitive]) then
    if (DM1.tClienteLiberacao.AsString = 'V') and (DM1.tNotaFiscalCondPgto.AsString <> 'V') then
      ShowMessage('Este cliente possui restrições, venda só a vista!');

  if (DM1.tNotaFiscalPercTransf.AsFloat > 0) and (DM1.tNotaFiscalVlrTransf.AsFloat = 0) then
    if MessageDlg('Valor Transferência do ICMS não calculado, deseja confirmar assim mesmo?!',mtconfirmation,[mbok,mbno],0)=mrno then
      exit;

  if (BitBtn7.Tag = 0) or (DM1.tNotaFiscalNumNota.AsInteger <= 0) then
    begin
      fEmissaoNotaFiscal.Tag := 0;
      fNotaFiscalConfirma := TfNotaFiscalConfirma.Create(Self);
      fNotaFiscalConfirma.ShowModal;
      if fEmissaoNotaFiscal.Tag = 2 then
        exit;
    end;

  //NFe 2.00
  DM1.tNotaFiscalVersaoNFe.AsString          := DM1.tParametrosVersaoNFe.AsString;
  DM1.tNotaFiscalIdentVersaoEmissao.AsString := DM1.tParametrosVersaoEmissaoNFe.AsString;
  DM1.tNotaFiscalCodRegimeTrib.AsInteger     := DM1.tFilialCodRegimeTrib.AsInteger;
  //*************

  //NFe 2.00
  if (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '3')  or
     (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5') then
  begin
    fNotaFiscalContingencia := TfNotaFiscalContingencia.Create(Self);
    fNotaFiscalContingencia.ShowModal;
  end;
  //*************

  //lei 12.741/12
  DM1.tNotaFiscalFONTE_TRIBUTOS.AsString  := '';
  DM1.tNotaFiscalVERSAO_TRIBUTOS.AsString := '';
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
    begin
      //*** Grava o número da nota nos itens
      //lei 12.741/12
      if trim(DM1.tNotaFiscalItensFONTE_TRIBUTO.AsString) <> '' then
        DM1.tNotaFiscalFONTE_TRIBUTOS.AsString := DM1.tNotaFiscalItensFONTE_TRIBUTO.AsString;
      if trim(DM1.tNotaFiscalItensVERSAO_TRIBUTO.AsString) <> '' then
        DM1.tNotaFiscalVERSAO_TRIBUTOS.AsString := DM1.tNotaFiscalItensVERSAO_TRIBUTO.AsString;

      if DM1.tNotaFiscalItensNumNota.AsInteger <= 0 then
      begin
        DM1.tNotaFiscalItens.Edit;
        DM1.tNotaFiscalItensNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
        DM1.tNotaFiscalItensSerie.AsString    := DM1.tNotaFiscalSerie.AsString;
        DM1.tNotaFiscalItens.Post;
      end;

      DM1.tNotaFiscalNDevolvida.First;
      while not DM1.tNotaFiscalNDevolvida.Eof do
      begin
        if DM1.tNotaFiscalNDevolvidaNumNota.AsInteger <= 0 then
        begin
          DM1.tNotaFiscalNDevolvida.Edit;
          DM1.tNotaFiscalNDevolvidaNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
          DM1.tNotaFiscalNDevolvidaSerie.AsString    := DM1.tNotaFiscalSerie.AsString;
          DM1.tNotaFiscalNDevolvida.Post;
        end;
        DM1.tNotaFiscalNDevolvida.Next;
      end;

      if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
      begin
        if DM1.tPedido.Locate('Pedido',DM1.tNotaFiscalItensNumPedido.AsInteger,[loCaseInsensitive]) then
        begin
          if DM1.tPedidoItem.Locate('Item',DM1.tNotaFiscalItensItemPedido.AsInteger,[loCaseInsensitive]) then
          begin
            if DM1.tPedidoNota.Locate('NumSeqNota;ItemNota;Tipo',VarArrayOf([DM1.tNotaFiscalNumSeq.AsInteger,DM1.tNotaFiscalItensItem.AsInteger,'N']),[locaseinsensitive]) then
            begin
              DM1.tPedidoNota.Edit;
              DM1.tPedidoNotaNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
              DM1.tPedidoNota.Post;
            end;
          end;
        end;
      end;

      DM1.tNotaFiscalItens.Next;
    end;

  if (DM1.tNotaFiscalTipoNota.AsInteger = 1) and (DM1.tNotaFiscalCodVendedor.AsInteger > 0) and
     (DM1.tNotaFiscallkTipoComissao.AsString = 'N') and (DM1.tNotaFiscalPercComissao.AsFloat > 0) then
  begin
    Grava_ExtComissao;
    Lanc_Diferenca;
  end;

  RxDBLookupCombo2Exit(Sender);

  DM1.tNotaFiscal.Post;
  RxDBLookupCombo8.Color := clWindow;

  if DM1.tNotaFiscalItens.State in [dsEdit,dsInsert] then
    DM1.tNotaFiscalItens.Post;
  //Observação da classificação fiscal
  
  Grava_Pgto;
  Baixa_Estoque;
  Habilita_Desabilita;
  RxDBLookupCombo16.ClearValue;
  BitBtn4.Enabled          := False;
  DBEdit35.Enabled         := True;
  BitBtn7.Tag := 0;

  DM1.tNotaFiscal.Refresh;
  DM1.tNotaFiscalItens.Refresh;
  DM1.tNotaFiscalParc.Refresh;
  DM1.tCReceber.Refresh;
  tNotaFiscalIns.Refresh;
  vItemNota := 0;
  if not DM1.tCReceber.Locate('CodCli;NumNota',VarArrayOf([DM1.tNotaFiscalCodCli.AsInteger,DM1.tNotaFiscalNumNota.AsInteger]),[locaseinsensitive]) then
    ShowMessage('Não gravou o contas a receber, altera a nota e verique!')
  else
  if not DM1.tCReceberParc.Locate('CodCli;NumNota',VarArrayOf([DM1.tNotaFiscalCodCli.AsInteger,DM1.tNotaFiscalNumNota.AsInteger]),[locaseinsensitive]) then
    ShowMessage('Não gravou o contas a receber, altera a nota e verique!');
end;

procedure TfEmissaoNotaFiscal.BitBtn4Click(Sender: TObject);
begin
  DBEdit35.Enabled := True;
  BitBtn7.Tag      := 1;
  tNotaFiscalIns.Refresh;
  tNotaFiscalIns.Last;
  if tNotaFiscalInsNumNota.AsInteger = DM1.tNotaFiscalNumNota.AsInteger then
    begin
      DM1.tNotaFiscalItens.First;
      if not DM1.tNotaFiscalItens.IsEmpty then
        while not DM1.tNotaFiscalItens.Eof do
         begin
           Exclui_Vales;
           if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
             begin
               DM1.tPedido.IndexFieldNames := 'Pedido';
               DM1.tPedido.SetKey;
               DM1.tPedidoPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
               if DM1.tPedido.GotoKey then
                 begin
                   DM1.tPedido.Edit;
                   DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                   DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
                   DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                   DM1.tPedidoCopiado.AsBoolean    := False;
                   DM1.tPedido.Post;
                   DM1.tPedidoItem.SetKey;
                   DM1.tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
                   DM1.tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
                   if DM1.tPedidoItem.GotoKey then
                     begin
                       DM1.tPedidoItem.Edit;
                       DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                       DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
                       DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                       DM1.tPedidoItemCopiado.AsBoolean    := False;
                       DM1.tPedidoItem.Post;
                       DM1.tNotaFiscalGrade.First;
                       while not DM1.tNotaFiscalGrade.Eof do
                         begin
                           if DM1.tPedidoGrade.Locate('Pedido;ItemPed;CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,
                                                      DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                             begin
                               DM1.tPedidoGrade.Edit;
                               DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                               DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                               DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + DM1.tNotaFiscalGradeQtd.AsFloat;
                               DM1.tPedidoGrade.Post;
                             end;
                           DM1.tNotaFiscalGrade.Next;
                         end;
                       DM1.tPedidoNota.First;
                       while not DM1.tPedidoNota.Eof do
                         begin
                           if (DM1.tPedidoNotaNumSeqNota.AsInteger = DM1.tNotaFiscalItensNumSeq.AsInteger) and
                              (DM1.tPedidoNotaItemNota.AsInteger = DM1.tNotaFiscalItensItem.AsInteger) and
                              (DM1.tPedidoNotaFilialNota.AsInteger = DM1.tNotaFiscalItensFilial.AsInteger) and
                              (DM1.tPedidoNotaTipo.AsString = 'N') then
                              DM1.tPedidoNota.Delete
                           else
                             DM1.tPedidoNota.Next;
                         end;
                     end;
                 end;
             end;
           DM1.tNotaFiscalGrade.First;
           while not DM1.tNotaFiscalGrade.Eof do
             DM1.tNotaFiscalGrade.Delete;

           //Estorna a nota de entrada devolvida e apaga a tabela dbNotaFiscalNDevolvida
           DM1.tNEntrada.IndexFieldNames      := 'NumNEntr;CodForn;Serie';
           DM1.tNEntradaItens.IndexFieldNames := 'CodForn;NumNEntr;Serie;Item';
           DM1.tNotaFiscalNDevolvida.First;
           while not DM1.tNotaFiscalNDevolvida.Eof do
             begin
               DM1.tNEntrada.SetKey;
               DM1.tNEntradaNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
               DM1.tNEntradaCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
               DM1.tNEntradaSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
               if DM1.tNEntrada.GotoKey then
                 begin
                   DM1.tNEntradaItens.SetKey;
                   DM1.tNEntradaItensNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
                   DM1.tNEntradaItensCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
                   DM1.tNEntradaItensSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
                   DM1.tNEntradaItensItem.AsInteger     := DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger;
                   if DM1.tNEntradaItens.GotoKey then
                     begin
                       DM1.tNEntradaItens.Edit;
                       DM1.tNEntradaItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdRestante.AsFloat + DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
                       DM1.tNEntradaItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdDevolvida.AsFloat - DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
                       DM1.tNEntradaItens.Post;
                     end;
                 end;
               DM1.tNotaFiscalNDevolvida.Delete;
             end;

           DM1.tNotaFiscalItens.Delete;
         end;
      Dm1.tNotaFiscalTBObs.First;
      while not Dm1.tNotaFiscalTBObs.Eof do
        Dm1.tNotaFiscalTBObs.Delete;
      DM1.tNotaFiscalParc.First;
      if not DM1.tNotaFiscalParc.IsEmpty then
        while not DM1.tNotaFiscalParc.Eof do
          DM1.tNotaFiscalParc.Delete;

      DM1.tNotaFiscalRef.First;
      while not DM1.tNotaFiscalRef.Eof do
        DM1.tNotaFiscalRef.Delete;
      DMNotaFiscal.tNotaFiscalReboque.First;
      while not DMNotaFiscal.tNotaFiscalReboque.Eof do
        DMNotaFiscal.tNotaFiscalReboque.Delete;
      DMNotaFiscal.tNotaFiscalLacre.First;
      while not DMNotaFiscal.tNotaFiscalLacre.Eof do
        DMNotaFiscal.tNotaFiscalLacre.Delete;

      //NFe 2.00
      DMNotaFiscal.tNotaFiscalTBDesconto.First;
      while not DMNotaFiscal.tNotaFiscalTBDesconto.Eof do
        DMNotaFiscal.tNotaFiscalTBDesconto.Delete;

      Cancela_CReceber('E');

      DM1.tNotaFiscal.Delete;
      Habilita_Desabilita;
    end
  else
    ShowMessage('Esta nota não pode ser cancelada, pois não é a última!');
  vItemNota := 0;
  Verifica_Nota_Cancelada;
  RxDBLookupCombo16.ClearValue;
  RxDBComboBox3.Enabled  := True;
  RxDBLookupCombo8.Color := clWindow;
end;

procedure TfEmissaoNotaFiscal.DBComboBox1Exit(Sender: TObject);
begin
  if (DBComboBox1.Text = 'RS') or (DBComboBox1.Text = 'AC') or
     (DBComboBox1.Text = 'AL') or (DBComboBox1.Text = 'AP') or
     (DBComboBox1.Text = 'AM') or (DBComboBox1.Text = 'BA') or
     (DBComboBox1.Text = 'CE') or (DBComboBox1.Text = 'DF') or
     (DBComboBox1.Text = 'ES') or (DBComboBox1.Text = 'GO') or
     (DBComboBox1.Text = 'MA') or (DBComboBox1.Text = 'MT') or
     (DBComboBox1.Text = 'MS') or (DBComboBox1.Text = 'MG') or
     (DBComboBox1.Text = 'PA') or (DBComboBox1.Text = 'PB') or
     (DBComboBox1.Text = 'PR') or (DBComboBox1.Text = 'PE') or
     (DBComboBox1.Text = 'PI') or (DBComboBox1.Text = 'RJ') or
     (DBComboBox1.Text = 'RN') or (DBComboBox1.Text = 'RO') or
     (DBComboBox1.Text = 'RR') or (DBComboBox1.Text = 'SC') or
     (DBComboBox1.Text = 'SP') or (DBComboBox1.Text = 'SE') or
     (DBComboBox1.Text = 'TO') or (DBComboBox1.Text = '') then
  else
    begin
      ShowMessage('Deve ser escolhido uma sigla válida!');
      DBComboBox1.SetFocus;
    end;
end;

procedure TfEmissaoNotaFiscal.SpeedButton11Click(Sender: TObject);
begin
  RxCalculator1.Execute;
end;

procedure TfEmissaoNotaFiscal.Cancelamento(Cancelar : Boolean);
begin
  //NFe 2.00
  Incrementa_Estoque;
  Exclui_ValesAnt;
  if Cancelar then
    Cancela_CReceber('C')
  else
    Cancela_CReceber('E');
  Volta_Pedido;
  Desfaz_ExtComissao;
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
  begin
    Exclui_Vales;
    DM1.tNotaFiscalItens.Next;
  end;
  DM1.tNotaFiscal.Edit;
  DM1.tNotaFiscalCancelada.AsBoolean := True;
  fNotaFiscalCancelada := TfNotaFiscalCancelada.Create(Self);
  fNotaFiscalCancelada.DBEdit1.ReadOnly := False;
  fNotaFiscalCancelada.ShowModal;
  DM1.tNotaFiscal.Post;

  vItemNota := 0;
  Verifica_Nota_Cancelada;
end;

procedure TfEmissaoNotaFiscal.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  DM1.tNotaFiscal.Refresh;
  Verifica_Nota_Cancelada;
  if PageControl1.ActivePage = TabSheet1 then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
    end;
end;

procedure TfEmissaoNotaFiscal.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TfEmissaoNotaFiscal.RadioButton1Click(Sender: TObject);
begin
  RxDBLookupCombo7.ClearValue;
  RxDBLookupCombo7.DataField := 'CodNatOper';
  if MessageDlg('Deseja realmente excluir os produtos com natureza de operação?',mtConfirmation,
     [mbOK,mbNo],0) = mrOK then
    begin
      DM1.tNotaFiscalItens.Filtered := False;
      DM1.tNotaFiscalItens.Filter   := 'NatOper = '''+IntToStr(RxDBLookupCombo7.KeyValue)+'''';
      DM1.tNotaFiscalItens.Filtered := True;
      DM1.tNotaFiscalItens.First;
      while not DM1.tNotaFiscalItens.EOF do
        begin
          DM1.tNotaFiscalBaseICMS.AsFloat      := DM1.tNotaFiscalBaseICMS.AsFloat -
                                                  DM1.tNotaFiscalItensBaseICMS.AsFloat;
          DM1.tNotaFiscalVlrICMS.AsFloat       := DM1.tNotaFiscalVlrICMS.AsFloat -
                                                  DM1.tNotaFiscalItensVlrICMS.AsFloat;
          DM1.tNotaFiscalVlrTotalNota.AsFloat  := DM1.tNotaFiscalVlrTotalNota.AsFloat -
                                                  DM1.tNotaFiscalItensVlrTotal.AsFloat;
          if DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalItensNatOper.AsInteger,([Locaseinsensitive])) then
            if DM1.tNatOperacaoSomaMercNF.AsBoolean then
              DM1.tNotaFiscalVlrTotalItens.AsFloat := DM1.tNotaFiscalVlrTotalItens.AsFloat -
                                                      DM1.tNotaFiscalItensVlrTotal.AsFloat;
          if DM1.tNotaFiscalItensIPI.AsFloat > 0 then
             DM1.tNotaFiscalVlrIPI.AsFloat := DM1.tNotaFiscalVlrIPI.AsFloat -
                                              DM1.tNotaFiscalItensQtd.AsFloat *
                                              DM1.tNotaFiscalItensVlrUnit.AsFloat *
                                              DM1.tNotaFiscalItensIPI.AsFloat / 100;
          DM1.tNotaFiscalGrade.First;
          while not DM1.tNotaFiscalGrade.Eof do
            DM1.tNotaFiscalGrade.Delete;

          DM1.tNotaFiscalItens.Delete;
        end;
      DM1.tNotaFiscalItens.Filtered := False;
    end;
end;

procedure TfEmissaoNotaFiscal.DBRadioGroup5Change(Sender: TObject);
begin
  if not DM1.tParametrosControlaNFe.AsBoolean then
  begin
    if DM1.tNotaFiscal.State in [dsEdit,dsInsert] then
      if DBRadioGroup5.Value = 'True' then
        DM1.tNotaFiscalObs.AsString := DM1.tNotaFiscalObs.AsString + ' ' +
                                     'Local de Entrega:' +
                                     DM1.tNotaFiscallkEndEntrega.AsString + ', ' + DM1.tNotaFiscallkNumEndEntregaCli.AsString + ' ' +
                                     DM1.tNotaFiscallkBairroEntrega.AsString + ' ' +
                                     DM1.tNotaFiscallkCidEntrega.AsString + ' ' +
                                     DM1.tNotaFiscallkCepEntrega.AsString + ' ' +
                                     DM1.tNotaFiscallkUFEntrega.AsString;
  end;
end;

procedure TfEmissaoNotaFiscal.BitBtn8Click(Sender: TObject);
var
  vValorDividir, vValorPrest, vValorVariavel : Currency;
  vValorVarTotal, vValorNotaTotal : string;
  vParcela : Integer;
begin
  if RxDBLookupCombo2.Text = '' then
    ShowMessage('Deve haver um prazo de pagamento escolhido!')
  else
    begin
      if DM1.tCondPgtoPrazoVista.AsString = 'V' then
        ShowMessage('Esta condição não pode gerar contas!')
      else
        begin
          DM1.tNotaFiscalParc.First;
          if not DM1.tNotaFiscalParc.IsEmpty then
            while not DM1.tNotaFiscalParc.Eof do
              DM1.tNotaFiscalParc.Delete;
          vValorDividir := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                           DM1.tNotaFiscalEntrada.AsCurrency;
          vValorPrest   := vValorDividir / DM1.tCondPgtoItem.RecordCount;
          DM1.tCondPgtoItem.First;
          vParcela := 0;
          while not DM1.tCondPgtoItem.EOF do
            begin
              DM1.tNotaFiscalParc.Insert;
              Inc(vParcela);
              DM1.tNotaFiscalParcFilial.AsInteger  := DM1.tNotaFiscalFilial.AsInteger;
              DM1.tNotaFiscalParcNumSeq.AsInteger  := DM1.tNotaFiscalNumSeq.AsInteger;
              DM1.tNotaFiscalParcParcela.AsInteger := vParcela;
              DM1.tNotaFiscalParcVlrVenc.AsString  := FormatFloat('0.00',vValorPrest);
              DM1.tNotaFiscalParcDtVenc.AsDateTime := DM1.tNotaFiscalDtEntr.AsDateTime + DM1.tCondPgtoItemQtdDias.AsInteger;
              if RxDBLookupCombo16.Text <> '' then
                DM1.tNotaFiscalParcCodTipoCobr.AsInteger := RxDBLookupCombo16.KeyValue;
              if RxDBLookupCombo4.Text <> '' then
                DM1.tNotaFiscalParcCodConta.AsInteger := RxDBLookupCombo4.KeyValue;
              DM1.tNotaFiscalParc.Post;
              DM1.tCondPgtoItem.Next;
            end;
          vValorVariavel := 0;
          DM1.tNotaFiscalParc.First;
          while not DM1.tNotaFiscalParc.Eof do
            begin
              if DM1.tNotaFiscalParcParcela.AsInteger < 10 then
                vValorVariavel := vValorVariavel + DM1.tNotaFiscalParcVlrVenc.AsCurrency;
              DM1.tNotaFiscalParc.Next;
            end;
          vValorVarTotal  := FormatFloat('0.00',vValorVariavel);
          vValorNotaTotal := FormatFloat('0.00',vValorDividir);
          vValorVariavel  := StrToFloat(vValorNotaTotal) - StrToFloat(vValorVarTotal);
          // Verifica parcelas C200
        if DM1.tNotaFiscalSituacao.AsString = '2' then
          DM1.tNotaFiscalParc.RecNo := DM1.tCondPgtoItem.RecordCount
        else
          DM1.tNotaFiscalParc.Last;
          DM1.tNotaFiscalParc.Edit;
          DM1.tNotaFiscalParcVlrVenc.AsCurrency := DM1.tNotaFiscalParcVlrVenc.AsCurrency +
                                                   vValorVariavel;
          DM1.tNotaFiscalParc.Post;

          {********** Grava parcelas C200 *************}
          {********************************************}
          if DM1.tNotaFiscalSituacao.AsString = '2' then
            begin
              vValorDividir := 0;
              DM1.tNotaFiscalItens.First;
              while not DM1.tNotaFiscalItens.Eof do
                begin
                  if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (DM1.tNotaFiscalItensItemPedido.AsInteger > 0) then
                    begin
                      tPedidoItem.SetKey;
                      tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
                      tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
                      if tPedidoItem.GotoKey then
                        begin
                          if (tPedidoItemPreco.AsCurrency - tPedidoItemVlrDesconto.AsCurrency) > DM1.tNotaFiscalItensVlrUnit.AsCurrency then
                            vValorDividir := vValorDividir + (((tPedidoItemPreco.AsCurrency - tPedidoItemVlrDesconto.AsCurrency) - DM1.tNotaFiscalItensVlrUnit.AsCurrency) *
                                             DM1.tNotaFiscalItensQtd.AsFloat);
                        end;
                    end;
                  DM1.tNotaFiscalItens.Next;
                end;
              if vValorDividir > 0 then
                begin
                  vValorPrest   := vValorDividir / DM1.tCondPgtoItem.RecordCount;
                  DM1.tCondPgtoItem.First;
                  vParcela := 10;
                  while not DM1.tCondPgtoItem.EOF do
                    begin
                      DM1.tNotaFiscalParc.Insert;
                      Inc(vParcela);
                      DM1.tNotaFiscalParcParcela.AsInteger := vParcela;
                      DM1.tNotaFiscalParcVlrVenc.AsString  := FormatFloat('0.00',vValorPrest);
                      DM1.tNotaFiscalParcDtVenc.AsDateTime := DM1.tNotaFiscalDtEntr.AsDateTime + DM1.tCondPgtoItemQtdDias.AsInteger;
                      if RxDBLookupCombo16.Text <> '' then
                        DM1.tNotaFiscalParcCodTipoCobr.AsInteger := RxDBLookupCombo16.KeyValue;
                      DM1.tNotaFiscalParc.Post;
                      DM1.tCondPgtoItem.Next;
                    end;
                  vValorVariavel := 0;
                  DM1.tNotaFiscalParc.First;
                  while not DM1.tNotaFiscalParc.Eof do
                    begin
                      if DM1.tNotaFiscalParcParcela.AsInteger > 10 then
                        vValorVariavel := vValorVariavel + DM1.tNotaFiscalParcVlrVenc.AsCurrency;
                      DM1.tNotaFiscalParc.Next;
                    end;
                  vValorVarTotal  := FormatFloat('0.00',vValorVariavel);
                  vValorNotaTotal := FormatFloat('0.00',vValorDividir);
                  vValorVariavel  := StrToFloat(vValorNotaTotal) - StrToFloat(vValorVarTotal);
                  DM1.tNotaFiscalParc.Last;
                  DM1.tNotaFiscalParc.Edit;
                  DM1.tNotaFiscalParcVlrVenc.AsCurrency := DM1.tNotaFiscalParcVlrVenc.AsCurrency +
                                                           vValorVariavel;
                  DM1.tNotaFiscalParc.Post;
                end;
            end;
        {********Fim da gravação do C200*********}
        {****************************************}
        end;
    end;
    
end;

procedure TfEmissaoNotaFiscal.DBEdit7Exit(Sender: TObject);
begin
  try
    if StrToFloat(DBEdit7.Text) <= 0 then
      DBEdit7.Clear
    else
    if StrToFloat(DBEdit7.Text) > DM1.tNotaFiscalVlrTotalDupl.AsCurrency then
      begin
        ShowMessage('Valor da entrada não pode ser maior que total da nota!');
        DBEdit7.SetFocus;
      end
    else
    if RxDBLookupCombo2.Text <> '' then
      RxDBLookupCombo2Change(Sender);
  except
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if (DM1.tNotaFiscalPrazoPgto.AsInteger > 0) and (DM1.tCondPgtoPrazoVista.AsString = 'V') then
    ShowMessage('Este prazo é à vista!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton16Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de condição de pagamentos!');
end;

procedure TfEmissaoNotaFiscal.DBRadioGroup1Change(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 1 then
  begin
    RxDBComboBox2.ItemIndex := 3;
    if not DM1.tNotaFiscalParc.IsEmpty then
    begin
      DM1.tNotaFiscalParc.First;
      while not DM1.tNotaFiscalParc.Eof do
        DM1.tNotaFiscalParc.Delete;
    end;
  end;
end;

procedure TfEmissaoNotaFiscal.DBEdit6Enter(Sender: TObject);
begin
  Calcula_ICMS_CustoF(False);
  DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
  DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
end;

procedure TfEmissaoNotaFiscal.DBEdit6Exit(Sender: TObject);
begin
  Calcula_ICMS_CustoF(True);
  DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency +
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
  DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency +
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
end;

procedure TfEmissaoNotaFiscal.DBEdit1Exit(Sender: TObject);
begin
  try
    DM1.tNotaFiscalDtEntr.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
  except
  end;
end;

procedure TfEmissaoNotaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tNotaFiscal.State in [dsBrowse]) then
    begin
      fConsNotaFiscal := TfConsNotaFiscal.Create(Self);
      fConsNotaFiscal.ShowModal;
      Verifica_Nota_Cancelada;
    end;
  if ((Shift = [ssCtrl]) and (Key = 87)) and (DM1.tNotaFiscal.State in [dsEdit,dsInsert]) then
    Panel5.Enabled := not(Panel5.Enabled);
  if ((Shift = [ssCtrl]) and (Key = 87)) and (DM1.tNotaFiscal.State in [dsBrowse]) then
    BitBtn9.Visible := not(BitBtn9.Visible);
  if ((Shift = [ssCtrl]) and (Key = 87)) and (DM1.tNotaFiscal.State in [dsBrowse]) then
  begin
    BitBtn9.Visible      := not(BitBtn9.Visible);
    SpeedButton4.Visible := not(SpeedButton4.Visible);
  end;
end;

procedure TfEmissaoNotaFiscal.DBEdit9Exit(Sender: TObject);
begin
  if DBEdit9.Text <> '' then
    begin
      Limpa_Parcelas;
      //Foi alterado o sistema para fazer o desconto encima do valor da duplicata
      //e não mais no valor dos itens   19/04/2007 (Cleomar)
      //DM1.tNotaFiscalPercDesc.AsCurrency      := DM1.tNotaFiscalVlrTotalDesc.AsCurrency *
      //                                           100 / DM1.tNotaFiscalVlrTotalItens.AsCurrency;
      DM1.tNotaFiscalPercDesc.AsCurrency      := DM1.tNotaFiscalVlrTotalDesc.AsCurrency *
                                                 100 / DM1.tNotaFiscalVlrTotalDupl.AsCurrency;
      DM1.tNotaFiscalVlrTotalItens.AsCurrency := DM1.tNotaFiscalVlrTotalItens.AsCurrency -
                                                 DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
      DM1.tNotaFiscalVlrTotalNota.AsCurrency  := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                                 DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
      DM1.tNotaFiscalVlrTotalDupl.AsCurrency  := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                                 DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
      if DM1.tNotaFiscalVlrTotalDesc.AsCurrency <> 0 then
        Faz_Desconto_ICMS;
    end;
end;

procedure TfEmissaoNotaFiscal.SpeedButton19Click(Sender: TObject);
begin
  if DM1.tUsuarioPlanoCtas.AsBoolean then
    begin
      fPlanoContas := TfPlanoContas.Create(Self);
      fPlanoContas.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de plano de contas!');
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tPlanoContas.IndexFieldNames := 'Descricao';
end;

procedure TfEmissaoNotaFiscal.BitBtn7Click(Sender: TObject);
var
 vExcluir : Boolean;
begin
  if (DM1.tNotaFiscalNFeChaveAcesso.AsString <> '') and (DM1.tNotaFiscalSerie.AsString <> 'UN') then
  begin
    ShowMessage('Nota não pode ser alterada!');
    exit;
  end;

  if (Dm1.tNotaFiscalImpressa.AsBoolean) then
    begin
      fSenhaControle := TfSenhaControle.Create(Self);
      fSenhaControle.ShowModal;
      if DM1.vSenhaControle <> DM1.tParametrosSenhaExc.AsString then
        exit;
    end;

  vCodSitTrib := 0;
  BitBtn7.Tag := 1;
  if (DM1.tNotaFiscalCancelada.AsBoolean = False) and (DM1.tNotaFiscalNumNota.AsInteger > 0) then
    begin
      vExcluir := True;
      if DM1.tNotaFiscalCodCli.AsInteger > 0 then
        begin
          DM1.tCReceber.Filtered := False;
          DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and CodCli = '''+DM1.tNotaFiscalCodCli.AsString+'''';
          DM1.tCReceber.Filtered := True;
          DM1.tCReceberParc.First;
          while not DM1.tCReceberParc.Eof do
            begin
              if (DM1.tCReceberParcPgtoParcial.AsFloat > 0) or (DM1.tCReceberParcVlrDevolucao.AsFloat > 0)  then
                vExcluir := False;
              DM1.tCReceberParc.Next;
            end;
          DM1.tCReceber.Filtered := False;
        end;
      if vExcluir = False then
        ShowMessage('Nota não pode ser alterado, tem duplicatas pagas')
      else
        begin
          Verifica_UF;
          DBEdit35.Enabled := False;
          Desfaz_ExtComissao;
          Incrementa_Estoque;
          if DM1.tNotaFiscalCodCli.AsInteger > 0 then
            Cancela_CReceber('E');
          if DM1.tClienteCodTipoCobranca.AsInteger > 0 then
            RxDBLookupCombo16.KeyValue := DM1.tClienteCodTipoCobranca.AsInteger;
          if DM1.tClienteCodBancoBoleto.AsInteger > 0 then
            RxDBLookupCombo4.KeyValue := DM1.tClienteCodBancoBoleto.AsInteger;
          DM1.tNotaFiscal.Edit;
          Habilita_Desabilita;
          BitBtn4.Enabled := False;
          DBEdit1.SetFocus;
        end;
    end;
end;

procedure TfEmissaoNotaFiscal.PageControl1Enter(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet1 then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
    end;
end;

procedure TfEmissaoNotaFiscal.TabSheet1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo7Exit(Sender: TObject);
var
  vAux : String;
begin
  Verifica_Natureza(RxDBLookupCombo7.Text);
  if not vNatureza then
    begin
      RxDBLookupCombo7.ClearValue;
      RxDBLookupCombo7.SetFocus;
    end
  else
  if RxDBLookupCombo7.Text <> '' then
    begin
      DM1.tNatOperacao.IndexFieldNames := 'Codigo';
      DM1.tNatOperacao.SetKey;
      DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo7.KeyValue;
      if not DM1.tNatOperacao.GotoKey then
        ShowMessage('Natureza não cadastrada!')
      else
        begin
          vAux := DM1.tNatOperacaoLei1.AsString + DM1.tNatOperacaoLei2.AsString + DM1.tNatOperacaoLei3.AsString;
          if Length(Trim(vAux)) > 0 then
            begin
              if not DM1.tNotaFiscalTBObs.Locate('CodObs;Item;',VarArrayOf([1,DM1.tNatOperacaoCodigo.AsInteger]),[locaseinsensitive]) then
                begin
                  DM1.tNotaFiscalTBObs.Insert;
                  DM1.tNotaFiscalTBObsFilial.AsInteger    := DM1.tNotaFiscalFilial.AsInteger;
                  DM1.tNotaFiscalTBObsNumSeq.AsInteger    := DM1.tNotaFiscalNumSeq.AsInteger;
                  DM1.tNotaFiscalTBObsCodObs.AsInteger    := 1;
                  DM1.tNotaFiscalTBObsItem.AsInteger      := DM1.tNatOperacaoCodigo.AsInteger;
                  DM1.tNotaFiscalTBObsNomeOBS.AsString    := 'Nat.Operação';
                  DM1.tNotaFiscalTBObsDescricao1.AsString := DM1.tNatOperacaoLei1.AsString;
                  DM1.tNotaFiscalTBObsDescricao2.AsString := DM1.tNatOperacaoLei2.AsString;
                  DM1.tNotaFiscalTBObsDescricao3.AsString := DM1.tNatOperacaoLei3.AsString;
                  DM1.tNotaFiscalTBObs.Post;
                end;
            end;
        end;
    end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo7DropDown(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo8.LookupDisplay = 'Nome' then
        begin
           RxDBLookupCombo8.CloseUp(True);
           RxDBLookupCombo8.LookupDisplay := 'Fantasia';
           DM1.tCliente.IndexFieldNames   := 'Fantasia';
           DM1.tCliente.Refresh;
        end
      else
      if RxDBLookupCombo8.LookupDisplay = 'Fantasia' then
        begin
          RxDBLookupCombo8.CloseUp(True);
          RxDBLookupCombo8.LookupDisplay := 'Nome';
          DM1.tCliente.IndexFieldNames   := 'Nome';
          DM1.tCliente.Refresh;
        end;
      Label53.Caption := RxDBLookupCombo8.LookupDisplay;
    end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8Exit(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
  begin
    RxDBLookupCombo8.Color := clWindow;
    DM1.tCliente.IndexFieldNames   := 'Codigo';
    DM1.tCliente.SetKey;
    DM1.tClienteCodigo.AsInteger   := RxDBLookupCombo8.KeyValue;
    DM1.tCliente.GotoKey;
    if DM1.tClienteLiberacao.AsString = 'V' then
    begin
      RxDBLookupCombo8.Color := clRed;
      ShowMessage('Cliente com restrição, venda só a vista!');
      DM1.tNotaFiscalCondPgto.AsString := 'V';
    end;
    //3.10  16/03/2015
    if RxDBLookupCombo8.KeyValue <> vCodCliente_Ant then
      DM1.tNotaFiscalTipo_Consumidor.AsInteger := DM1.tClienteTipo_Consumidor.AsInteger;
    //***********

    if DM1.tClienteCodTipoCobranca.AsInteger > 0 then
      RxDBLookupCombo16.KeyValue := DM1.tClienteCodTipoCobranca.AsInteger;
    if DM1.tClienteCodBancoBoleto.AsInteger > 0 then
      RxDBLookupCombo4.KeyValue := DM1.tClienteCodBancoBoleto.AsInteger;
    if DM1.tClienteTipoFrete.AsString = 'C' then
      DM1.tNotaFiscalEmitDest.AsInteger := 1
    else
      DM1.tNotaFiscalEmitDest.AsInteger := 2;
    fVerificaCliente := TfVerificaCliente.Create(Self);
    fVerificaCliente.qConsulta.Close;
    fVerificaCliente.qConsulta.ParamByName('CodCli').AsInteger := RxDBLookupCombo8.KeyValue;
    fVerificaCliente.qConsulta.Open;
    fVerificaCliente.qConsulta.First;
    if fVerificaCliente.qConsulta.RecordCount > 0 then
    begin
      if fVerificaCliente.qConsultaDtVencCReceber.AsDateTime < Date then
      begin
        ShowMessage('Cliente com títulos em atraso!');
        RxDBLookupCombo8.Color := clRed;
      end
      else
        ShowMessage('Cliente com títulos em aberto, a vencer!');
    end;
    fVerificaCliente.Destroy;

    RxDBLookupCombo8.LookupDisplay := 'Nome';
    Label53.Caption := RxDBLookupCombo8.LookupDisplay;
    PageControl1.ActivePage := TabSheet5;

    if DM1.tClienteTipoFrete.AsString = 'C' then
      DM1.tNotaFiscalEmitDest.AsInteger := 1
    else
    if DM1.tClienteTipoFrete.AsString = 'F' then
      DM1.tNotaFiscalEmitDest.AsInteger := 2;
    vUsaIPI := False;
    if DM1.tFilialCalculaIPI.AsBoolean then
    begin
      if (DM1.tClienteIpi.AsFloat > 0) and
         (MessageDlg('Cliente possui IPI, confirma?',mtConfirmation,[mbOK,mbNo],0) = mrOK) then
        vUsaIPI := True;
    end;

    Verifica_Natureza(RxDBLookupCombo7.Text);
    if not vNatureza then
    begin
      RxDBLookupCombo7.ClearValue;
      RxDBLookupCombo7.SetFocus;
    end
    else
    begin
      DM1.tNotaFiscalCodVendedor.AsInteger := DM1.tClienteCodVendedor.AsInteger;
      DM1.tNotaFiscalPercComissao.AsFloat  := 0;
      if DM1.tClienteCodVendedor.AsInteger > 0 then
        if DM1.tVendedor2.Locate('Codigo',DM1.tClienteCodVendedor.AsInteger,([Locaseinsensitive])) then
          DM1.tNotaFiscalPercComissao.AsFloat := DM1.tVendedorPercComissao.AsFloat;
      if (DM1.tNotaFiscalPercTransf.AsFloat < 0) or (DM1.tNotaFiscalPercTransf.AsFloat = 0) then
      begin
        if DM1.tClientePercTransf.AsFloat > 0 then
          DM1.tNotaFiscalPercTransf.AsFloat := DM1.tClientePercTransf.AsFloat;
      end;
      if (RxDBLookupCombo2.Text = '') and (DM1.tClienteCodCondPgto.AsInteger > 0) and (DM1.tNotaFiscalCondPgto.AsString = 'P') then
        DM1.tNotaFiscalPrazoPgto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
    end;

    //3.10  20/03/2015
    if DM1.tClienteUF.AsString = 'EX' then
      DM1.tNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 3
    else
    if DM1.tClienteUF.AsString = DM1.tFilialEstado.AsString then
      DM1.tNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 1
    else
      DM1.tNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 2;
    //**********
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8Enter(Sender: TObject);
begin
  PageControl1.ActivePage      := TabSheet1;
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.tAuxNotaFiscalGradeBeforeInsert(
  DataSet: TDataSet);
var
 icount : integer;
begin
  icount := tAuxNotaFiscalGrade.RecordCount;
  if icount >= DM1.tGradeItem.RecordCount then
    begin
      fNotaFiscalGrade.BitBtn5.SetFocus;
      Abort;
    end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo10Exit(Sender: TObject);
begin
  if DM1.tNotaFiscalCodCli.AsInteger <= 0 then
    begin
      ShowMessage('Você deve selecionar um "Cliente" antes de selecionar a transportadora!');
      DM1.tNotaFiscalCodTransp.Clear;
    end;
end;

procedure TfEmissaoNotaFiscal.BitBtn12Click(Sender: TObject);
begin
  if RxDBLookupCombo12.Text <> '' then
    begin
      DM1.tObsAux.IndexFieldNames := 'Codigo';
      DM1.tObsAux.SetKey;
      DM1.tObsAuxCodigo.AsInteger := RxDBLookupCombo12.KeyValue;
      if DM1.tObsAux.GotoKey then
        begin
          if DM1.tNotaFiscalObs.AsString <> '' then
            DM1.tNotaFiscalObs.AsString := DM1.tNotaFiscalObs.AsString + ', ' + DM1.tObsAuxDescricao.AsString
          else
            DM1.tNotaFiscalObs.AsString := DM1.tNotaFiscalObs.AsString + DM1.tObsAuxDescricao.AsString;
          RxDBLookupCombo12.ClearValue;
          RxDBLookupCombo12.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('É preciso ter uma obs. escolhida p/ executar esta função!');
      RxDBLookupCombo12.SetFocus;
    end;
end;

procedure TfEmissaoNotaFiscal.SpeedButton23Click(Sender: TObject);
var
  vCor : TColor;
begin
  if DM1.tNotaFiscalNDevolvida.RecordCount > 0 then
    ShowMessage('Este item não pode ser alterado, pois existe nota de entrada devolvida, só pode ser excluido!')
  else
  if DM1.tNotaFiscalVale.RecordCount > 0 then
    ShowMessage('Este item não pode ser alterado, pois existe vale, só pode ser excluido!')
  else
  //if (DM1.tNotaFiscalItensItem.AsInteger > 0) and (DM1.tNotaFiscalTipoNota.AsString = '1') and not(DM1.tNotaFiscalItensMaterial.AsBoolean) and not(Dm1.tNotaFiscalItensVale.AsBoolean)then
  //if (DM1.tNotaFiscalItensItem.AsInteger > 0) and not(DM1.tNotaFiscalItensMaterial.AsBoolean) and not(Dm1.tNotaFiscalItensVale.AsBoolean)then
  if (DM1.tNotaFiscalItensItem.AsInteger > 0) and not(Dm1.tNotaFiscalItensVale.AsBoolean)then
    begin
      vCor := RxDBLookupCombo8.Color;
      RxDBLookupCombo8.Color := clWindow;
      fNotaFiscalItens := TfNotaFiscalItens.Create(Self);
      SpeedButton23.Tag := 1;

      //NFe 2.00
      if (DM1.tNotaFiscalTipoDesconto.AsString = 'N') and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlrDescontoRateio.AsFloat)) > 0) then
      begin
        DMNotaFiscal.tNotaFiscalTBDesconto.First;
        while not DMNotaFiscal.tNotaFiscalTBDesconto.Eof do
          DMNotaFiscal.tNotaFiscalTBDesconto.Delete;
        DM1.tNotaFiscalVlrTotalDesc.AsFloat := 0;
        DM1.tNotaFiscalPercDesc.AsFloat     := 0;
      end;

      fNotaFiscalItens.Panel3.Enabled := False;
      vItemNota := DM1.tNotaFiscalItensItem.AsInteger;
      fNotaFiscalItens.RxDBLookupCombo15.KeyValue := DM1.tNotaFiscalItensNatOper.AsInteger;
      fNotaFiscalItens.CurrencyEdit6.AsInteger    := DM1.tNotaFiscalItensCodProduto.AsInteger;
      fNotaFiscalItens.RxDBLookupCombo2.KeyValue  := DM1.tNotaFiscalItensCodProduto.AsInteger;
      fNotaFiscalItens.RxDBLookupCombo1.KeyValue  := DM1.tNotaFiscalItensCodProduto.AsInteger;
      //3.10  20/03/2015
      fNotaFiscalItens.ceItemCliente.AsInteger    := DM1.tNotaFiscalItensItem_Cliente.AsInteger;

      if DM1.tNotaFiscalItensCodCor.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo4.KeyValue := DM1.tNotaFiscalItensCodCor.AsInteger;
      fNotaFiscalItens.Edit2.Text  := DM1.tNotaFiscalItensUnidade.AsString;
      fNotaFiscalItens.CurrencyEdit3.Value  := DM1.tNotaFiscalItensQtd.AsFloat;
      fNotaFiscalItens.Edit4.Text  := DM1.tNotaFiscalItensIcms.AsString;
      fNotaFiscalItens.Edit5.Text  := DM1.tNotaFiscalItensIpi.AsString;
      if DM1.tNotaFiscalItensSitTrib.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tNotaFiscalItensSitTrib.AsInteger;
      if DM1.tNotaFiscalItensClasFiscal.AsString <> '' then
        fNotaFiscalItens.RxDBLookupCombo5.KeyValue := DM1.tNotaFiscalItensClasFiscal.AsString;
      fNotaFiscalItens.CurrencyEdit4.Value := DM1.tNotaFiscalItensVlrUnit.AsFloat;
      fNotaFiscalItens.CurrencyEdit5.Value := DM1.tNotaFiscalItensVlrTotal.AsFloat;
      fNotaFiscalItens.CurrencyEdit1.Value := DM1.tNotaFiscalItensDesconto.AsFloat;
      fNotaFiscalItens.CurrencyEdit2.Value := DM1.tNotaFiscalItensVlrDesconto.AsFloat;
      fNotaFiscalItens.Edit1.Text          := DM1.tNotaFiscalItensObs.AsString;
      fNotaFiscalItens.Memo1.Lines.Text    := DM1.tNotaFiscalItensObsComplementar.Value;
      if DM1.tNotaFiscalItensCodCSTIPI.AsString <> '' then
        fNotaFiscalItens.RxDBLookupCombo6.Value := DM1.tNotaFiscalItensCodCSTIPI.AsString;
      //22/12/2015
      if DM1.tNotaFiscalItensID_ENQIPI.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo8.KeyValue := DM1.tNotaFiscalItensID_ENQIPI.AsInteger;
      //**************
      vItemPedido                  := DM1.tNotaFiscalItensItemPedido.AsInteger;
      vNumPedido                   := DM1.tNotaFiscalItensNumPedido.AsInteger;
      vNumNotaDevItem              := DM1.tNotaFiscalItensNumNotaDevForn.AsInteger;
      vCodForncDevItem             := DM1.tNotaFiscalItensCodFornDev.AsInteger;
      vItemDev                     := DM1.tNotaFiscalItensitemDev.AsInteger;
      vCodCofins        := DM1.tNotaFiscalItensCodCofins.AsString;
      vCodPis           := DM1.tNotaFiscalItensCodPis.AsString;
      vTipoPis          := DM1.tNotaFiscalItensTipoPis.AsString;
      vTipoCofins       := DM1.tNotaFiscalItensTipoCofins.AsString;
      vPercPis          := DM1.tNotaFiscalItensAliqPis.AsFloat;
      vPercCofins       := DM1.tNotaFiscalItensAliqCofins.AsFloat;
      vVlrPis           := DM1.tNotaFiscalItensVlrPis.AsFloat;
      vVlrCofins        := DM1.tNotaFiscalItensVlrCofins.AsFloat;
      vOrigemMerc       := DM1.tNotaFiscalItensOrigemProd.AsString;
      vSomaVlrTotalProd := DM1.tNotaFiscalItensSomaVlrTotalProd.AsBoolean;
      fNotaFiscalItens.ceEstadual.Value  := DM1.tNotaFiscalItensPERC_TRIBUTO_ESTADUAL.AsFloat;
      fNotaFiscalItens.ceFederal.Value   := DM1.tNotaFiscalItensPERC_TRIBUTO_FEDERAL.AsFloat;
      fNotaFiscalItens.ceMunicipal.Value := DM1.tNotaFiscalItensPERC_TRIBUTO_MUNICIPAL.AsFloat;
      fNotaFiscalItens.vFonte_Trib       := DM1.tNotaFiscalItensFONTE_TRIBUTO.AsString;
      fNotaFiscalItens.vVersao_Trib      := DM1.tNotaFiscalItensVERSAO_TRIBUTO.AsString;

      //Monta grade
      tAuxNotaFiscalGrade.First;
      while not tAuxNotaFiscalGrade.Eof do
        tAuxNotaFiscalGrade.Delete;
      DM1.tNotaFiscalGrade.First;
      if DM1.tNotaFiscalGradeItem.AsInteger > 0 then
        begin
          DM1.tGrade.IndexFieldNames := 'Codigo';
          DM1.tGrade.FindKey([DM1.tNotaFiscalGradeCodGrade.AsInteger]);
        end;
      while not DM1.tNotaFiscalGrade.Eof do
        begin
          tAuxNotaFiscalGrade.Insert;
          tAuxNotaFiscalGradeCodGrade.AsInteger := Dm1.tNotaFiscalGradeCodGrade.AsInteger;
          tAuxNotaFiscalGradePosicao.AsInteger  := Dm1.tNotaFiscalGradePosicao.AsInteger;
          tAuxNotaFiscalGradeQtd.AsFloat        := Dm1.tNotaFiscalGradeQtd.AsFloat;
          tAuxNotaFiscalGrade.Post;
          DM1.tNotaFiscalGrade.Delete;
        end;
      //**************************
      DM1.tNotaFiscalBaseICMS.AsFloat    := DM1.tNotaFiscalBaseICMS.AsFloat - DM1.tNotaFiscalItensBaseIcms.AsFloat;
      DM1.tNotaFiscalVlrICMS.AsFloat     := DM1.tNotaFiscalVlrICMS.AsFloat - DM1.tNotaFiscalItensVlrIcms.AsFloat;
      DM1.tNotaFiscalVlr_Tributo.AsFloat := DM1.tNotaFiscalVlr_Tributo.AsFloat - DM1.tNotaFiscalItensVlr_Tributo.AsFloat;

      DM1.tNotaFiscalVlrIPI.AsFloat             := DM1.tNotaFiscalVlrIPI.AsFloat - DM1.tNotaFiscalItensVlrIpi.AsFloat;
      if DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalItensNatOper.AsInteger,([Locaseinsensitive])) then
        if DM1.tNatOperacaoSomaMercNF.AsBoolean then
          DM1.tNotaFiscalVlrTotalItens.AsFloat      := DM1.tNotaFiscalVlrTotalItens.AsFloat - DM1.tNotaFiscalItensVlrTotal.AsFloat;
      DM1.tNotaFiscalVlrTotalNota.AsFloat       := DM1.tNotaFiscalVlrTotalNota.AsFloat -  DM1.tNotaFiscalItensVlrTotal.AsFloat - DM1.tNotaFiscalItensVlrIpi.AsFloat;
      if DM1.tNotaFiscalItensGeraDupl.AsBoolean then
        DM1.tNotaFiscalVlrTotalDupl.AsFloat       := DM1.tNotaFiscalVlrTotalDupl.AsFloat -  DM1.tNotaFiscalItensVlrTotal.AsFloat - DM1.tNotaFiscalItensVlrIpi.AsFloat;
      //lei 12.741/12
      DM1.tNotaFiscalVlr_Tributo.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlr_Tributo.AsFloat - DM1.tNotaFiscalItensVlr_Tributo.AsFloat));
      DM1.tNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat - DM1.tNotaFiscalItensVLR_TRIBUTOS_ESTADUAL.AsFloat));
      DM1.tNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat - DM1.tNotaFiscalItensVLR_TRIBUTOS_FEDERAL.AsFloat));
      DM1.tNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat - DM1.tNotaFiscalItensVLR_TRIBUTOS_MUNICIPAL.AsFloat));
      //*********

      //NFe 2.00  
      DM1.tNotaFiscalVlrCofins.AsFloat := DM1.tNotaFiscalVlrCofins.AsFloat - DM1.tNotaFiscalItensVlrCofins.AsFloat;
      DM1.tNotaFiscalVlrPis.AsFloat    := DM1.tNotaFiscalVlrPis.AsFloat - DM1.tNotaFiscalItensVlrPis.AsFloat;
      if DM1.tNotaFiscalTipoDesconto.AsString = 'I' then
        DM1.tNotaFiscalVlrTotalDesc.AsFloat := DM1.tNotaFiscalVlrTotalDesc.AsFloat - DM1.tNotaFiscalItensVlrDesconto.AsFloat;
      //****

      //Icms Simples
      if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalBaseIcmsSimples.AsFloat)) > 0 then
      begin
        DM1.tNotaFiscalBaseIcmsSimples.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalBaseIcmsSimples.AsFloat - DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat));
        DM1.tNotaFiscalVlrIcmsSimples.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrIcmsSimples.AsFloat - DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat));
      end;
        
      DM1.tNotaFiscalPesoBruto.AsFloat          := DM1.tNotaFiscalPesoBruto.AsFloat - (DM1.tNotaFiscalItenslkPesoBruto.AsFloat *
                                                   DM1.tNotaFiscalItensQtd.AsFloat);
      DM1.tNotaFiscalPesoLiquido.AsFloat        := DM1.tNotaFiscalPesoLiquido.AsFloat -(DM1.tNotaFiscalItenslkPesoLiquido.AsFloat *
                                                   DM1.tNotaFiscalItensQtd.AsFloat);

      if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
        begin
          DM1.tPedido.IndexFieldNames := 'Pedido';
          DM1.tPedido.SetKey;
          DM1.tPedidoPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
          if DM1.tPedido.GotoKey then
            begin
              DM1.tPedido.Edit;
              DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
              DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
              DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
              DM1.tPedidoCopiado.AsBoolean    := False;
              DM1.tPedido.Post;
              DM1.tPedidoItem.SetKey;
              DM1.tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
              DM1.tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
              if DM1.tPedidoItem.GotoKey then
                begin
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
                  DM1.tPedidoItemCopiado.AsBoolean    := False;
                  DM1.tPedidoItem.Post;
                  DM1.tNotaFiscalGrade.First;
                  while not DM1.tNotaFiscalGrade.Eof do
                    begin
                      if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                        begin
                          DM1.tPedidoGrade.Edit;
                          DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                          DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                          DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + DM1.tNotaFiscalGradeQtd.AsFloat;
                          DM1.tPedidoGrade.Post;
                        end;
                      DM1.tNotaFiscalGrade.Next;
                    end;
                  DM1.tPedidoNota.First;
                  while not DM1.tPedidoNota.Eof do
                    begin
                      if (DM1.tPedidoNotaNumSeqNota.AsInteger = DM1.tNotaFiscalItensNumSeq.AsInteger) and
                         (DM1.tPedidoNotaItemNota.AsInteger = DM1.tNotaFiscalItensItem.AsInteger) and
                         (DM1.tPedidoNotaFilialNota.AsInteger = DM1.tNotaFiscalItensFilial.AsInteger) and
                         (DM1.tPedidoNotaTipo.AsString = 'N') then
                         DM1.tPedidoNota.Delete
                      else
                        DM1.tPedidoNota.Next;
                    end;
                end;
            end;
        end;
      DM1.tNotaFiscalGrade.First;
      while not DM1.tNotaFiscalGrade.Eof do
        DM1.tNotaFiscalGrade.Delete;
      DM1.tNotaFiscalItens.Delete;
      fNotaFiscalItens.ShowModal;
      RxDBLookupCombo8.Color := vCor;
    end
  else
    ShowMessage('Não há item para ser alterado!');
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo16Enter(Sender: TObject);
begin
  DM1.tTipoCobranca.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.SpeedButton24Click(Sender: TObject);
begin
  if DM1.tUsuarioTiposCobr.AsBoolean then
    begin
      fTipoCobranca := TfTipoCobranca.Create(Self);
      fTipoCobranca.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfEmissaoNotaFiscal.DBEdit36Enter(Sender: TObject);
begin
  if DBEdit36.Text <> '' then
    DM1.tNotaFiscalVlrTotalDupl.AsFloat := DM1.tNotaFiscalVlrTotalDupl.AsFloat + DM1.tNotaFiscalVlrTransf.AsFloat;
end;

procedure TfEmissaoNotaFiscal.DBEdit36Exit(Sender: TObject);
var
  vVlrTransf, vVlrDif : Real;
  vDtVcto, vTexto : STring;
begin
  if DBEdit36.Text <> '' then
    begin
      DM1.tNotaFiscalObsAux.Clear;
      if DM1.tNotaFiscalParc.IsEmpty then
        vDtVcto := ' '
      else
        begin
          DM1.tNotaFiscalParc.First;
          vDtVcto := DM1.tNotaFiscalParcDtVenc.AsString;
        end;
      vVlrTransf                     := StrToFloat(FormatFloat('0.00',(DM1.tNotaFiscalPercTransf.AsFloat * DM1.tNotaFiscalBaseIcms.AsFloat) / 100));
      vVlrDif                        := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat - vVlrTransf));
      vTexto                         := 'R$ ' + FormatFloat('#,###,###,###,##0.00',vVlrTransf)+ ' Vencimento: Transf. ICMS' + #$D#$A +
                                        'R$ ' + FormatFloat('#,###,###,###,##0.00',vVlrDif)+ ' Vencimento: ' + vDtVcto;
      DM1.tNotaFiscalObsAux.AsString := vTexto;
      DM1.tNotaFiscalVlrTransf.AsFloat    := vVlrTransf;
      DM1.tNotaFiscalVlrTotalDupl.AsFloat := DM1.tNotaFiscalVlrTotalDupl.AsFloat - DM1.tNotaFiscalVlrTransf.AsFloat;
    end;
end;

procedure TfEmissaoNotaFiscal.BitBtn13Click(Sender: TObject);
begin
  DBEdit36Enter(Sender);
  DBEdit36Exit(Sender);
end;

procedure TfEmissaoNotaFiscal.BitBtn6Click(Sender: TObject);
var
  vCor : TColor;
begin
  if (DM1.tNotaFiscalCodNatOper.AsInteger > 0) and (DM1.tNotaFiscalCodCli.AsInteger > 0) then
    begin
      vCor := RxDBLookupCombo8.Color;
      RxDBLookupCombo8.Color := clWindow;
      SpeedButton23.Tag := 0;
      if DM1.tNotaFiscalTipoDesconto.AsString = 'N' then
      begin
        DM1.tNotaFiscalPercDesc.AsFloat     := 0;
        DM1.tNotaFiscalVlrTotalDesc.AsFloat := 0;
        DMNotaFiscal.tNotaFiscalTBDesconto.First;
        while not DMNotaFiscal.tNotaFiscalTBDesconto.Eof do
          DMNotaFiscal.tNotaFiscalTBDesconto.Delete;
      end;
      fNotaFiscalItens := TfNotaFiscalItens.Create(Self);
      fNotaFiscalItens.ShowModal;
      RxDBLookupCombo8.Color := vCor;
    end
  else
    begin
      ShowMessage('Falta informar a natureza ou o cliente!');
      RxDBLookupCombo7.SetFocus;
     end;
end;

procedure TfEmissaoNotaFiscal.RxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
  if Key = Vk_F4  then
    begin
      fNotaFiscalNDevolvida := TfNotaFiscalNDevolvida.Create(Self);
      fNotaFiscalNDevolvida.ShowModal;
    end;
  if Key = Vk_F5  then
    begin
      fConsNotaVale := TfConsNotaVale.Create(Self);
      fConsNotaVale.ShowModal;
    end;
  if (Key = Vk_F9) and not(DM1.tNotaFiscalItens.IsEmpty) then
    begin
      fNotaFiscalAjustarIcms := TfNotaFiscalAjustarIcms.Create(Self);
      fNotaFiscalAjustarIcms.ShowModal;
    end;
end;

procedure TfEmissaoNotaFiscal.BitBtn18Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  qUltNota.Open;
  qUltNota.First;
  if DM1.tNotaFiscalSerie.AsString = 'UN' then
    exit;
  if DM1.tNotaFiscalNFeChaveAcesso.AsString <> '' then
    exit;

  vExcluir := True;
  DM1.tCReceber.Filtered := False;
  if DM1.tNotaFiscalCodCli.AsInteger > 0 then
    DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and CodCli = '''+DM1.tNotaFiscalCodCli.AsString+''''
  else
    DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+'''';
  DM1.tCReceber.Filtered := True;
  if not DM1.tCReceber.IsEmpty then
    begin
      DM1.tCReceberParc.First;
      while not DM1.tCReceberParc.Eof do
        begin
          if (DM1.tCReceberParcPgtoParcial.AsFloat > 0) or (DM1.tCReceberParcVlrDevolucao.AsFloat > 0) then
            vExcluir := False;
          DM1.tCReceberParc.Next;
        end;
    end;
  DM1.tCReceber.Filtered := False;
  if vExcluir = False then
    ShowMessage('Existe parcela paga!')
  else
    begin
      if MessageDlg('Deseja realmente excluir esta nota fiscal?',mtWarning,[mbOK,mbNO],0) = mrOK then
        begin
          if MessageDlg('                                  ATENÇÃO'
                        +#13#13+
                        'Após excluída, esta operação não mais poderá ser desfeita!'+#13+
                        '  Clique no botão "Não" para sair sem excluir a nota fiscal.',mtInformation,
                        [mbOK,mbNO],0) = mrOK then
            begin
              Incrementa_Estoque;
              Exclui_ValesAnt;
              Cancela_CReceber('E');
              Volta_Pedido;
              Desfaz_ExtComissao;
              Dm1.tNotaFiscalParc.First;
              while not Dm1.tNotaFiscalParc.Eof do
                Dm1.tNotaFiscalParc.Delete;
              Dm1.tNotaFiscalItens.First;
              while not Dm1.tNotaFiscalItens.Eof do
                begin
                  Exclui_Vales;
                  Dm1.tNotaFiscalGrade.First;
                  while not Dm1.tNotaFiscalGrade.Eof do
                    Dm1.tNotaFiscalGrade.Delete;
                  Dm1.tNotaFiscalItens.Delete;
                end;
              Dm1.tNotaFiscalTBObs.First;
              while not Dm1.tNotaFiscalTBObs.Eof do
                Dm1.tNotaFiscalTBObs.Delete;
              Dm1.tNotaFiscalTBObs.First;
              while not Dm1.tNotaFiscalTBObs.Eof do
                Dm1.tNotaFiscalTBObs.Delete;
              DMNotaFiscal.tNotaFiscalTBDesconto.First;
              while not DMNotaFiscal.tNotaFiscalTBDesconto.Eof do
                DMNotaFiscal.tNotaFiscalTBDesconto.Delete;

              DM1.tNotaFiscalRef.First;
              while not DM1.tNotaFiscalRef.Eof do
                DM1.tNotaFiscalRef.Delete;
              DMNotaFiscal.tNotaFiscalReboque.First;
              while not DMNotaFiscal.tNotaFiscalReboque.Eof do
                DMNotaFiscal.tNotaFiscalReboque.Delete;
              DMNotaFiscal.tNotaFiscalLacre.First;
              while not DMNotaFiscal.tNotaFiscalLacre.Eof do
                DMNotaFiscal.tNotaFiscalLacre.Delete;

              DM1.tNotaFiscal.Delete;
            end;
        end;
    end;

  qUltNota.Close;
  vItemNota := 0;
  Verifica_Nota_Cancelada;
end;

procedure TfEmissaoNotaFiscal.SpeedButton5Click(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
    begin
      fVerificaCliente := TfVerificaCliente.Create(Self);
      fVerificaCliente.qConsulta.Close;
      fVerificaCliente.qConsulta.ParamByName('CodCli').AsInteger := RxDBLookupCombo8.KeyValue;
      fVerificaCliente.qConsulta.Open;
      fVerificaCliente.ShowModal;
      fVerificaCliente.qConsulta.Close;
    end;
end;

procedure TfEmissaoNotaFiscal.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioContas.AsBoolean then
    begin
      fContas := TfContas.Create(Self);
      fContas.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfEmissaoNotaFiscal.NFeDanfe1Click(Sender: TObject);
var
  vNumSeqAux : Integer;
  vFlag : Boolean;
begin
  if not DM1.tParametrosControlaNFe.AsBoolean then
    begin
      ShowMessage('Não autorizado a emitir NFe!');
      exit;
    end;

  if Length(Trim(DM1.tNotaFiscalPlaca.AsString)) > 7 then
    begin
      ShowMessage('Placa só pode conter letras e números!');
      exit;
    end;

  if (DM1.tNotaFiscalCondPgto.AsString = 'P') or (DM1.tNotaFiscalCondPgto.AsString = 'V') then
  begin
    vFlag := True;
    if not DM1.tCReceber.Locate('CodCli;NumNota',VarArrayOf([DM1.tNotaFiscalCodCli.AsInteger,DM1.tNotaFiscalNumNota.AsInteger]),[locaseinsensitive]) then
      vFlag := False
    else
    if not DM1.tCReceberParc.Locate('CodCli;NumNota',VarArrayOf([DM1.tNotaFiscalCodCli.AsInteger,DM1.tNotaFiscalNumNota.AsInteger]),[locaseinsensitive]) then
      vFlag := False;
    if not vFlag then
    begin
      ShowMessage('Não gravou o contas a receber, altera a nota e grave novamente!');
      exit;
    end;
  end;

  //21/09/2010
  try
    vNumSeqAux := DM1.tNotaFiscalNumSeq.AsInteger;
    DM1.tNotaFiscal.Filtered := False;
    DM1.tNotaFiscal.Filter   := 'NumSeq = '''+IntToStr(vNumSeqAux)+'''';
    DM1.tNotaFiscal.Filtered := True;

    DMNotaFiscal.vNumSeqNFe := DM1.tNotaFiscalNumSeq.AsInteger;

    fNFe := TfNFe.Create(fNFe);

    if Tag = 99 then
      fNFe.Tag := 2;

    fNFe.vPessoaTransp := DM1.tNotaFiscallkPessoaTransp.AsString;

    Gera_NFe;

    fNFe.ShowModal;
  finally
    if DM1.tNotaFiscalNFeDenegada.AsBoolean then
      Cancelamento(False);

    FreeAndNil(fNFe);
    DM1.tNotaFiscal.Filtered := False;
    DM1.tNotaFiscal.FindKey([DM1.tFilialCodigo.AsInteger,vNumSeqAux]);
  end;
end;

procedure TfEmissaoNotaFiscal.Cancelar1Click(Sender: TObject);
begin
  if DM1.tNotaFiscalNumNota.AsInteger < 1 then
    exit;
  if Trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) = '' then
    begin
      ShowMessage('Nota sem chave de acesso não pode ser cancelada!');
      exit;
    end;

  if (DM1.tNotaFiscalCancelada.AsBoolean) and (DM1.tNotaFiscalNFeProtocoloCancelada.AsString <> '') then
    begin
      fNotaFiscalCancelada := TfNotaFiscalCancelada.Create(Self);
      fNotaFiscalCancelada.DBEdit1.ReadOnly := True;
      fNotaFiscalCancelada.ShowModal;
      exit;
    end;

  if not Cancelar then
    exit;

  if MessageDlg('Deseja realmente cancelar esta nota fiscal?',mtWarning,[mbOK,mbNO],0) = mrNo then
    exit;

  if MessageDlg('                                  ATENÇÃO'
                  +#13#13+
                  'Após cancelada, esta operação não mais poderá ser desfeita!'+#13+
                  '  Clique no botão OK para cancelar a nota fiscal.',mtInformation,
                  [mbOK,mbNO],0) = mrNo then
    exit;
    
  try
    Tag := 99;
    DM1.tNotaFiscal.Edit;
    fNotaFiscalCancelada := TfNotaFiscalCancelada.Create(Self);
    fNotaFiscalCancelada.DBEdit1.ReadOnly := False;
    fNotaFiscalCancelada.ShowModal;
    DM1.tNotaFiscal.Post;

    NFeDanfe1Click(fEmissaoNotaFiscal);
    Tag := 0;

    if Trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) <> '' then
      Cancelamento(True);

  except
    on E: Exception do
      ShowMessage('problema no cancelamento, erro: ' + E.Message + '!');
  end;
  
  Verifica_Nota_Cancelada;
end;

procedure TfEmissaoNotaFiscal.GeraNotaEDI1Click(Sender: TObject);
begin
  fGeraNotaEdiAzaleia := TfGeraNotaEdiAzaleia.Create(Self);
  fGeraNotaEdiAzaleia.RadioGroup1.ItemIndex := 1;
  fGeraNotaEdiAzaleia.RadioGroup1Click(Sender);
  fGeraNotaEdiAzaleia.CurrencyEdit1.Value := Dm1.tNotaFiscalNumNota.AsInteger;
  fGeraNotaEdiAzaleia.CurrencyEdit2.Value := Dm1.tNotaFiscalNumNota.AsInteger;
  fGeraNotaEdiAzaleia.Edit2.Text := Dm1.tNotaFiscalFilial.AsString;
  fGeraNotaEdiAzaleia.RxDBLookupCombo1.KeyValue := Dm1.tNotaFiscalCodCli.AsInteger;
  fGeraNotaEdiAzaleia.ShowModal;
end;

procedure TfEmissaoNotaFiscal.ImprimirBoleto1Click(Sender: TObject);
begin
  fPrevBoletos := TfPrevBoletos.Create(Self);
  fPrevBoletos.RxDBLookupCombo1.KeyValue := DM1.tNotaFiscalCodCli.AsInteger;
  fPrevBoletos.RxDBLookupCombo1Exit(fPrevBoletos);
  fPrevBoletos.Edit1.Text := DM1.tNotaFiscalNumNota.AsString;
  fPrevBoletos.Edit2.Text := DM1.tNotaFiscalNumNota.AsString;
  fPrevBoletos.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn20Click(Sender: TObject);
begin
  //NFe 2.00
  if DM1.tNotaFiscalTipoDesconto.AsString = 'I' then
  begin
    ShowMessage('Desconto foi aplicado por item!');
    exit;
  end;

  if DM1.tNotaFiscalItens.RecordCount > 0 then
  begin
    fInfDescontoNota := TfInfDescontoNota.Create(Self);
    fInfDescontoNota.ShowModal;
    RzButton4Click(Sender);
  end
  else
  begin
    ShowMessage('Informar o desconto só depois de digitar os itens!');
    DM1.tNotaFiscalPercDesc.Clear;
    DM1.tNotaFiscalVlrTotalDesc.Clear;
  end;
end;

procedure TfEmissaoNotaFiscal.RzButton1Click(Sender: TObject);
begin
  fNotaFiscalOutrasDespesas := TfNotaFiscalOutrasDespesas.Create(Self);
  fNotaFiscalOutrasDespesas.ShowModal;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo10Enter(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.FormCreate(Sender: TObject);
begin
  if not Assigned(DMNotaFiscal) then
    DMNotaFiscal := TDMNotaFiscal.Create(Self);

  if not Assigned(DMTabImposto) then
    DMTabImposto := TDMTabImposto.Create(Self);

  if not Assigned(DMTabEnqIPI) then
    DMTabEnqIPI := TDMTabEnqIPI.Create(Self);
  DMTabEnqIPI.Abre_Tab_EnqIPI(0);

  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tClasFiscal,Name);
  oDBUtils.ActiveDataSet(True,dm1.tSitTributaria,Name);
  oDBUtils.ActiveDataSet(True,dm1.tCSTIPI,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProduto,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProdutoCor,Name);
  oDBUtils.ActiveDataSet(True,dm1.tIndexador,Name);
  oDBUtils.ActiveDataSet(True,dm1.tUF,Name);
  oDBUtils.ActiveDataSet(True,DMNotaFiscal.tNotaFiscalTBDesconto,Name);
  oDBUtils.ActiveDataSet(True,DMNotaFiscal.tNotaFiscalLacre,Name);
  oDBUtils.ActiveDataSet(True,DMNotaFiscal.tNotaFiscalReboque,Name);
  oDBUtils.ActiveDataSet(True,DM1.tNotaFiscalRef,Name);
  oDBUtils.ActiveDataSet(True,DM1.tNotaFiscalGrade,Name);
  oDBUtils.ActiveDataSet(True,DM1.tNotaFiscalVale,Name);
  oDBUtils.ActiveDataSet(True,DM1.tCondPgtoItem,Name);
  oDBUtils.ActiveDataSet(True,DM1.tVale,Name);
  oDBUtils.ActiveDataSet(True,DM1.tValeItens,Name);
  oDBUtils.ActiveDataSet(True,DM1.tCReceber,Name);
  oDBUtils.ActiveDataSet(True,DM1.tCReceberParc,Name);
  oDBUtils.ActiveDataSet(True,DM1.tCReceberParcHist,Name);
  oDBUtils.ActiveDataSet(True,DM1.tCReceberParcRem,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedido,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedidoItem,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedidoGrade,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedidoNota,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedidoDesconto,Name);
  oDBUtils.ActiveDataSet(True,DM1.tEstoqueMatMov,Name);
  oDBUtils.ActiveDataSet(True,DM1.tEstoqueMatMovGrade,Name);
  oDBUtils.ActiveDataSet(True,DM1.tProdutoCli,Name);
  oDBUtils.ActiveDataSet(True,DM1.tNEntrada,Name);
  oDBUtils.ActiveDataSet(True,DM1.tNEntradaItens,Name);
  oDBUtils.ActiveDataSet(True,DM1.tNEntradaItensGrade,Name);
  oDBUtils.ActiveDataSet(True,DM1.tObsAux2,Name);

  DMNotaFiscal.tNotaFiscalImp.Open;
  DMNotaFiscal.tNotaFiscalImpAdicao.Open;
  DMNotaFiscal.tNEntradaItens.Open;

  DM1.tNotaFiscalNDevolvida.Open;
  DM1.tNotaFiscalGrade.Open;
  DM1.tNotaFiscalVale.Open;

  DM1.tFilial_Download.Open;

  DM1.tIndexador.Last;
  DM1.tNotaFiscal.Refresh;
  DM1.tNotaFiscal.Last;
  DM1.tProduto.IndexFieldNames := 'Nome';
  Verifica_Nota_Cancelada;
  Label53.Caption := RxDBLookupCombo8.LookupDisplay;
  DM1.tParametros.First;

	screen.cursor := crDefault;

  if DM1.tParametrosNroItensNota.AsInteger < 1 then
    ShowMessage('Não foi informada a quantidade de itens da nota!');
end;

procedure TfEmissaoNotaFiscal.RzButton4Click(Sender: TObject);
begin
  Calcula_Desconto_Novo(False);
end;

procedure TfEmissaoNotaFiscal.RzButton3Click(Sender: TObject);
begin
  fNotaFiscalLacre := TfNotaFiscalLacre.Create(Self);
  fNotaFiscalLacre.ShowModal;
end;

procedure TfEmissaoNotaFiscal.RzButton2Click(Sender: TObject);
begin
  fNotaFiscalReboque := TfNotaFiscalReboque.Create(Self);
  fNotaFiscalReboque.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn15Click(Sender: TObject);
begin
  //NFe 2.0
  if (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '3') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5') then
  begin
    fNotaFiscalContingencia := TfNotaFiscalContingencia.Create(Self);
    fNotaFiscalContingencia.DBDateEdit1.ReadOnly       := (DM1.tNotaFiscalNFeProtocolo.AsString <> '');
    fNotaFiscalContingencia.RzDBDateTimeEdit2.ReadOnly := (DM1.tNotaFiscalNFeProtocolo.AsString <> '');
    fNotaFiscalContingencia.ShowModal;
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBComboBox2Change(Sender: TObject);
begin
  if DM1.tNotaFiscal.State in [dsEdit,dsInsert] then
  begin
    if (RxDBComboBox2.ItemIndex = 3) or (RxDBComboBox2.ItemIndex = 1) then
    begin
      TabSheet4.Enabled := False;
      if not DM1.tNotaFiscalParc.IsEmpty then
      begin
        DM1.tNotaFiscalParc.First;
        while not DM1.tNotaFiscalParc.Eof do
          DM1.tNotaFiscalParc.Delete;
      end;
      DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
      DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
      DM1.tNotaFiscalEntrada.Clear;
      DM1.tNotaFiscalCustoFinanc.Clear;
      DM1.tNotaFiscalCustoPerc.Clear;
      DM1.tNotaFiscalPrazoPgto.Clear;
    end
    else
    if (RxDBComboBox2.ItemIndex = 0) and (DBRadioGroup1.ItemIndex = 0) then
      TabSheet4.Enabled := True;
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8Change(Sender: TObject);
begin
  Verifica_UF;
  if DM1.tClienteEndEntrega.AsString <> '' then
    DBRadioGroup5.Enabled := True
  else
  begin
    DBRadioGroup5.Enabled := False;
    DBRadioGroup5.Value   := 'False';
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo9Change(Sender: TObject);
begin
  if RxDBLookupCombo9.Text <> '' then
    begin
      if DM1.tVendedorPercComissao.AsCurrency > 0 then
        DM1.tNotaFiscalPercComissao.AsCurrency := DM1.tVendedorPercComissao.AsCurrency;
    end
  else
    DM1.tNotaFiscalPercComissao.AsCurrency := 0;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo2Change(Sender: TObject);
var
  ValorTotal, Taxa : Currency;
  Periodo : Integer;
begin
  try
  Calcula_ICMS_CustoF(False);
  if RxDBLookupCombo2.Text <> '' then
    begin
      DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
      DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
      ValorTotal := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                    DM1.tNotaFiscalEntrada.AsCurrency;
      DM1.tNotaFiscalCustoPerc.AsCurrency   := DM1.tCondPgtoCusto.AsCurrency;
      Taxa       := DM1.tNotaFiscalCustoPerc.AsCurrency;
      Periodo := DM1.tCondPgtoItem.RecordCount;
      if Taxa > 0 then
        begin
          DM1.tNotaFiscalCustoFinanc.AsCurrency := Calcula_Juros(ValorTotal,Taxa,Periodo) *
                                                   Periodo - ValorTotal;
          Calcula_ICMS_CustoF(True);
        end
      else
        begin
          DM1.tNotaFiscalCustoPerc.Clear;
          DM1.tNotaFiscalCustoFinanc.Clear;
        end;
      DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency +
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
      DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency +
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
    end
  else
    begin
      DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
      DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                                DM1.tNotaFiscalCustoFinanc.AsCurrency;
      DM1.tNotaFiscalCustoPerc.Clear;
      DM1.tNotaFiscalCustoFinanc.Clear;
    end;
  except
  end;
end;

function TfEmissaoNotaFiscal.Cancelar: Boolean;
var
  vFlag : String;
begin
  Result := False;
  vFlag := 'S';
  if DM1.tNotaFiscalImpressa.AsBoolean then
    begin
      DM1.tCReceber.Filtered := False;
      DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and CodCli = '''+DM1.tNotaFiscalCodCli.AsString+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+'''';
      DM1.tCReceber.Filtered := True;
      if not DM1.tCReceber.IsEmpty then
        begin
          DM1.tCReceberParc.First;
          while not DM1.tCReceberParc.Eof do
            begin
              if (DM1.tCReceberParcPgtoParcial.AsFloat > 0) or (DM1.tCReceberParcVlrDevolucao.AsFloat > 0)  then
                begin
                  vFlag := 'P';
                  DM1.tCReceberParc.Last;
                end
              else
              if DM1.tCReceberParcArqGerado.AsBoolean then
                begin
                  vFlag := 'E';
                  DM1.tCReceberParc.Last;
                end;
              DM1.tCReceberParc.Next;
            end;
        end;
    end;
  DM1.tCReceber.Filtered := False;
  if vFlag = 'P' then
    exit;
  if vFlag = 'E' then
    begin
      ShowMessage('Já foi gerado arquivo para o banco com esta nota!');
      exit;
    end;
  Result := True;
end;

procedure TfEmissaoNotaFiscal.BitBtn3Click(Sender: TObject);
begin
  fNotaFiscalOBS := TfNotaFiscalOBS.Create(Self);
  fNotaFiscalOBS.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn9Click(Sender: TObject);
begin
  Grava_Pgto;
end;

procedure TfEmissaoNotaFiscal.CartaCorreo1Click(Sender: TObject);
begin
  //16/05/2012
  if (DM1.tNotaFiscalCancelada.AsBoolean) or (DM1.tNotaFiscalNFeProtocoloCancelada.AsString <> '') then
  begin
    ShowMessage('Nota Fiscal Cancelada!');
    exit;
  end;
  if trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) = '' then
  begin
    ShowMessage('Nota Fiscal sem a chave de acesso!');
    exit;
  end;

  fNotaFiscalCCe := TfNotaFiscalCCe.Create(Self);
  fNotaFiscalCCe.vFilial := DM1.tNotaFiscalFilial.AsInteger;
  fNotaFiscalCCe.vNumSeq := DM1.tNotaFiscalNumSeq.AsInteger;
  fNotaFiscalCCe.ShowModal;
end;

procedure TfEmissaoNotaFiscal.SpeedButton4Click(Sender: TObject);
begin
  if Trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) <> '' then
    Cancelamento(True);
end;

procedure TfEmissaoNotaFiscal.BitBtn11Click(Sender: TObject);
begin
  fNotaFiscalRef := TfNotaFiscalRef.Create(Self);
  fNotaFiscalRef.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn10Click(Sender: TObject);
begin
  if DM1.tNotaFiscalRef.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a nota referencia?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
    DM1.tNotaFiscalRef.Delete;
end;

end.
