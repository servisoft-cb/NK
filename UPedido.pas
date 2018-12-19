unit UPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask,
  ToolEdit, CurrEdit, ComCtrls, rsDBUtils, Db, DBTables, RXLookup, Grids, DBGrids, RXDBCtrl, MemTable, Variants, Menus,
  RXCtrls, DBFilter, ALed, ShellApi;

type
  TfPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    tPedidoItemIns: TTable;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBDateEdit1: TDBDateEdit;
    Label8: TLabel;
    DBText2: TDBText;
    tAuxPedidoGrade: TTable;
    dsAuxPedidoGrade: TDataSource;
    tPedidoItemInsPedido: TIntegerField;
    tPedidoItemInsItem: TIntegerField;
    Label9: TLabel;
    SpeedButton6: TSpeedButton;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    SpeedButton7: TSpeedButton;
    Label12: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label13: TLabel;
    DBDateEdit3: TDBDateEdit;
    tPedidoMaterialIns: TTable;
    tPedidoMaterialInsPedido: TIntegerField;
    tPedidoMaterialInsItemPed: TIntegerField;
    tAuxPedidoGradeCodGrade: TIntegerField;
    tAuxPedidoGradePosicao: TIntegerField;
    tAuxPedidoGradeQtd: TFloatField;
    tAuxPedidoGradeVlrUnitario: TFloatField;
    tAuxPedidoGradeVlrTotal: TFloatField;
    tAuxPedidoGradelkTamanho: TStringField;
    tPedidoDescontoIns: TTable;
    tPedidoDescontoInsPedido: TIntegerField;
    tPedidoDescontoInsItem: TIntegerField;
    Label15: TLabel;
    DBText3: TDBText;
    Label16: TLabel;
    DBText4: TDBText;
    tPedidoIns: TTable;
    tPedidoInsPedido: TIntegerField;
    mPedidoItem: TMemoryTable;
    mPedidoItemCor: TStringField;
    mPedidoItemTotPares: TIntegerField;
    mPedidoItemPar1: TIntegerField;
    mPedidoItemPar2: TIntegerField;
    mPedidoItemPar3: TIntegerField;
    mPedidoItemPar4: TIntegerField;
    mPedidoItemPar5: TIntegerField;
    mPedidoItemPar6: TIntegerField;
    mPedidoItemPar7: TIntegerField;
    mPedidoItemPar8: TIntegerField;
    mPedidoItemPar9: TIntegerField;
    mPedidoItemPar10: TIntegerField;
    mPedidoItemPar11: TIntegerField;
    mPedidoItemPar12: TIntegerField;
    mPedidoItemPar13: TIntegerField;
    mPedidoItemPar14: TIntegerField;
    mPedidoItemPar15: TIntegerField;
    mPedidoItemPreco: TFloatField;
    mPedidoItemPrecoTotal: TFloatField;
    mPedidoGrade: TMemoryTable;
    mPedidoGradeTam1: TStringField;
    mPedidoGradeTam2: TStringField;
    mPedidoGradeTam3: TStringField;
    mPedidoGradeTam4: TStringField;
    mPedidoGradeTam5: TStringField;
    mPedidoGradeTam6: TStringField;
    mPedidoGradeTam7: TStringField;
    mPedidoGradeTam8: TStringField;
    mPedidoGradeTam9: TStringField;
    mPedidoGradeTam10: TStringField;
    mPedidoGradeTam11: TStringField;
    mPedidoGradeTam12: TStringField;
    mPedidoGradeTam13: TStringField;
    mPedidoGradeTam14: TStringField;
    mPedidoGradeTam15: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    RxSpeedButton2: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    Panel6: TPanel;
    BitBtn10: TBitBtn;
    Panel8: TPanel;
    Panel10: TPanel;
    BitBtn15: TBitBtn;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    tAuxPedidoMat: TTable;
    dsAuxPedidoMat: TDataSource;
    tAuxPedidoMatItem: TIntegerField;
    tAuxPedidoMatCodCor: TIntegerField;
    tAuxPedidoMatCodMaterial: TIntegerField;
    tAuxPedidoMatConsumoPr: TFloatField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tProdutoCor: TTable;
    dsProdutoCor: TDataSource;
    tProdutoCorCodProduto: TIntegerField;
    tProdutoCorCodCor: TIntegerField;
    tProdutoCorlkNomeCor: TStringField;
    Label18: TLabel;
    RadioGroup1: TRadioGroup;
    Label21: TLabel;
    DBText7: TDBText;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    qCorRef: TQuery;
    dsqCorRef: TDataSource;
    RxDBFilter1: TRxDBFilter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText9: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    Panel9: TPanel;
    Label39: TLabel;
    RxDBGrid1: TRxDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    tGradeItem: TTable;
    dsGradeItem: TDataSource;
    tGradeItemCodGrade: TIntegerField;
    tGradeItemPosicao: TIntegerField;
    tGradeItemTamanho: TStringField;
    tPedidoGrade: TTable;
    tPedidoGradePedido: TIntegerField;
    tPedidoGradeItemPed: TIntegerField;
    tPedidoGradeCodGrade: TIntegerField;
    tPedidoGradePosicao: TIntegerField;
    tPedidoGradeQtd: TFloatField;
    tPedidoGradeVlrUnitario: TFloatField;
    tPedidoGradeVlrTotal: TFloatField;
    tPedidoGradelkTamanho: TStringField;
    tPedido2: TTable;
    dsPedido2: TDataSource;
    tPedido2Pedido: TIntegerField;
    tPedido2DtEmissao: TDateField;
    tPedido2CodCliente: TIntegerField;
    tPedido2CodTransp: TIntegerField;
    tPedido2CodRedespacho: TIntegerField;
    tPedido2CodCondPgto: TIntegerField;
    tPedido2TipoFrete: TStringField;
    tPedido2CodVendedor: TIntegerField;
    tPedido2PercComissao: TFloatField;
    tPedido2DtIniEmbarque: TDateField;
    tPedido2DtFinEmbarque: TDateField;
    tPedido2CodNatOper: TIntegerField;
    tPedido2Situacao: TIntegerField;
    tPedido2NumLote: TIntegerField;
    tPedido2QtdPares: TFloatField;
    tPedido2VlrTotal: TFloatField;
    tPedido2VlrMercadoria: TFloatField;
    tPedido2VlrDesconto: TFloatField;
    tPedido2GerarLote: TStringField;
    tPedido2Cancelado: TBooleanField;
    tPedido2Suspenso: TBooleanField;
    tPedido2Impresso: TBooleanField;
    tPedido2PesoBruto: TFloatField;
    tPedido2PesoLiquido: TFloatField;
    tPedido2Selecionado: TBooleanField;
    tPedido2Copiado: TBooleanField;
    tPedido2Obs: TMemoField;
    StaticText2: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    BitBtn18: TBitBtn;
    Label19: TLabel;
    BitBtn13: TBitBtn;
    DBEdit8: TDBEdit;
    tPedido2QtdParesCanc: TFloatField;
    tPedido2QtdParesFat: TFloatField;
    tPedido2QtdParesRest: TFloatField;
    tPedido2QtdFatAut: TFloatField;
    tPedido2QtdFatMan: TFloatField;
    tPedido2PedCliDif: TStringField;
    tAuxPedidoGradePedido: TIntegerField;
    tAuxPedidoMatPedido: TIntegerField;
    tClientes: TTable;
    dsClientes: TDataSource;
    tClientesCodigo: TIntegerField;
    tClientesNome: TStringField;
    tClientesFantasia: TStringField;
    tClientesEndereco: TStringField;
    tClientesBairro: TStringField;
    tClientesCidade: TStringField;
    tClientesUf: TStringField;
    BitBtn20: TBitBtn;
    TabSheet3: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBText8: TDBText;
    DBText5: TDBText;
    Label26: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    tPedido2ImpRotulo: TBooleanField;
    tPedido2ImpCalcLote: TBooleanField;
    tPedido2ObsRotulo: TMemoField;
    mPedidoItemReferencia: TStringField;
    tClientesCep: TStringField;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    BitBtn19: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    StaticText6: TStaticText;
    Edit5: TEdit;
    RxDBLookupCombo9: TRxDBLookupCombo;
    Bevel8: TBevel;
    tAuxPedidoMatImpTalao: TStringField;
    StaticText8: TStaticText;
    RxDBLookupCombo10: TRxDBLookupCombo;
    qCorRefCodCor: TIntegerField;
    qCorRefNome: TStringField;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxLabel1: TRxLabel;
    RxDBFilter2: TRxDBFilter;
    tPedido2Stock: TStringField;
    tPedido2LoteExp: TBooleanField;
    tPedido2Dolar: TBooleanField;
    tPedido2POCliente: TStringField;
    tPedido2Invoice: TStringField;
    tPedido2Carimbo: TStringField;
    tPedido2QtdParesRep: TFloatField;
    tPedido2VlrReposicao: TFloatField;
    tPedido2Mercado: TStringField;
    tAuxPedidoMatTipoConsumo: TStringField;
    tAuxPedMatCons: TTable;
    tAuxPedMatConsPedido: TIntegerField;
    tAuxPedMatConsItem: TIntegerField;
    tAuxPedMatConsCodGrade: TIntegerField;
    tAuxPedMatConsPosicao: TIntegerField;
    tAuxPedMatConsConsumo: TFloatField;
    StaticText5: TStaticText;
    DateEdit1: TDateEdit;
    tPedido2NumProgramacao: TIntegerField;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Panel12: TPanel;
    ALed1: TALed;
    ALed2: TALed;
    ALed3: TALed;
    ALed4: TALed;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Edit1: TEdit;
    Label36: TLabel;
    Label2: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    StaticText7: TStaticText;
    Edit4: TEdit;
    BitBtn7: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    SpeedButton8: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn11: TBitBtn;
    RadioGroup2: TRadioGroup;
    ALed5: TALed;
    Label14: TLabel;
    StaticText10: TStaticText;
    CurrencyEdit3: TCurrencyEdit;
    BitBtn12: TBitBtn;
    CheckBox1: TCheckBox;
    StaticText11: TStaticText;
    ALed6: TALed;
    Label20: TLabel;
    tPedido2PedidoCliente: TStringField;
    tPedido2Cia: TIntegerField;
    tPedido2Estoque: TBooleanField;
    SpeedButton11: TSpeedButton;
    tPedidoMaterialInsOrdem: TIntegerField;
    tPedidoInsPedidoCliente: TStringField;
    tPedidoInsPedCliDif: TStringField;
    Label27: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure tAuxPedidoGradeBeforeInsert(DataSet: TDataSet);
    procedure GroupBox2Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BitBtn13Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn10Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure p(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Enter(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8Exit(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo10Exit(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure RxDBLookupCombo11Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBRadioGroup2Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo12Enter(Sender: TObject);
    procedure RxDBLookupCombo12Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn11Click(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure CheckBox1Enter(Sender: TObject);
    procedure CheckBox1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure RxDBLookupCombo9Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    vCodSitTrib : Integer;
    vReprogramacao : Boolean;
    vObsItem : String;
    vNumTalaoAlt : Integer;

    Obs  : Array [1..5] of String[75];
    T, Cor, vControle, vItemPed : Integer;
    vDescMat : String;
    vDtReprogramacao, vDtEmbarque : TDateTime;

    procedure Habilita;
//    procedure Habilita_Item;
    procedure Calc_desc_Item;
    procedure Grava_Material;
    procedure Imprime_Pedido;
    procedure Verifica_Pedido;
    procedure Move_Itens;
    procedure Grava_tPedidoLog;
    { Private declarations }
  public
    { Public declarations }
    vEdit: String[1];  // N = Inserção do pedido
                       // S = Alteracao do pedido
                       // C = Consulta dos pares da grade da referencia

    procedure Calc_Vlr_Pedido;
  end;

var
  fPedido: TfPedido;

implementation

uses UGrupos, UDM1, UCliente, UGrade, UCondPgto, UTransp, UPedidoItemCanc, UMaterial, UPedidoGrade, UVendedor, UNatOperacao, UPedidoMat,
  UPedidoDesconto, URelPedido, Printers, UCopiaPedidos, UEscImpressora, UProduto, UConsPedido, USitTributaria, UConsPedidoNota, UDtReprog,
  UTalao, UPedidoItemObs, UVerificaCliente;

{$R *.DFM}

procedure TfPedido.Grava_tPedidoLog;
var
  vNumAux : Integer;
begin
  DM1.tPedidoLog.Refresh;
  DM1.tPedidoLog.Last;
  vNumAux := DM1.tPedidoLogNumMov.AsInteger;

  DM1.tPedidoLog.Insert;
  DM1.tPedidoLogNumMov.AsInteger     := vNumAux + 1;
  DM1.tPedidoLogPedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
  DM1.tPedidoLogItemPedido.AsInteger := DM1.tPedidoItemItem.AsInteger;
  DM1.tPedidoLogNumTalao.AsInteger   := DM1.tPedidoItemNumTalao.AsInteger;
  DM1.tPedidoLogQtdTalao.AsFloat     := DM1.tPedidoItemQtdPares.AsFloat;
  DM1.tPedidoLogCodProduto.AsInteger := DM1.tPedidoItemCodProduto.AsInteger;
  DM1.tPedidoLogCodCor.AsInteger     := DM1.tPedidoItemCodCor.AsInteger;
  DM1.tPedidoLogTipo.AsString        := 'ALT';
  DM1.tPedidoLog.Post;
end;

procedure TfPedido.Move_Itens;
begin
  if vCodSitTrib > 0 then
    RxDBLookupCombo12.KeyValue := vCodSitTrib
  else
  if DM1.tProdutoCodSitTrib.AsInteger > 0 then
    RxDBLookupCombo12.KeyValue := DM1.tProdutoCodSitTrib.AsInteger;
  CurrencyEdit3.AsInteger := DM1.tProdutoCodigo.AsInteger;
  RxDBLookupCombo10.KeyValue := DM1.tProdutoCodigo.AsInteger;
  RxDBLookupCombo11.KeyValue := DM1.tProdutoCodigo.AsInteger;
  CurrencyEdit1.Enabled   := not(DM1.tProdutoLancaGrade.AsBoolean);
  // monta a query da cor da referência
  qCorRef.Close;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo3.ReadOnly := not(DM1.tProdutoLancaCor.AsBoolean);
  RxDBLookupCombo3.TabStop  := DM1.tProdutoLancaCor.AsBoolean;
  if DM1.tProdutoLancaCor.AsBoolean then
    begin
      DM1.tProdutoCor.Refresh;
      qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qCorRef.Open;
      if BitBtn16.Tag = 1 then
        RxDBLookupCombo3.KeyValue := Cor;
    end
  else
    //Quando não existe cor procura o preço por aqui
    begin
      DM1.tTabPreco.SetKey;
      DM1.tTabPrecoCodCliente.AsInteger := DM1.tPedidoCodCliente.AsInteger;
      DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tTabPrecoCodCor.AsInteger     := 0;
      if DM1.tTabPreco.GotoKey then
        //if (vEdit <> 'S') then
        if BitBtn16.Tag <> 1 then
          CurrencyEdit2.Value := DM1.tTabPrecoPreco.AsFloat;
    end;
  if CurrencyEdit2.Value <= 0 then
    CurrencyEdit2.Value := DM1.tProdutoVlrVenda.AsFloat;
end;

procedure TfPedido.Habilita;
begin
  GroupBox1.Enabled      := not(GroupBox1.Enabled);
  DBMemo1.Enabled        := not(DBMemo1.Enabled);
  Panel2.Enabled         := not(Panel2.Enabled);
  Panel4.Enabled         := not(Panel4.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn2.Enabled        := not(BitBtn2.Enabled);
  BitBtn3.Enabled        := not(BitBtn3.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn6.Enabled        := not(BitBtn6.Enabled);
  BitBtn10.Enabled       := not(BitBtn10.Enabled);
  BitBtn20.Enabled       := not(BitBtn20.Enabled);
  RxSpeedButton2.Enabled := not(RxSpeedButton2.Enabled);
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
  RadioGroup1.Enabled    := not(RadioGroup1.Enabled);
  RadioGroup2.Enabled    := not(RadioGroup2.Enabled);
  CurrencyEdit1.Enabled  := False;
end;

procedure TfPedido.Calc_desc_Item;
var
 vAux, vVlrDesc, vVlrTotal : Real;
begin
//  vAux      := 0;
  vVlrDesc  := 0;
  vVlrTotal := DM1.tPedidoItemPreco.AsFloat;
  DM1.tPedidoItemVlrDesconto.AsFloat := 0;
  DM1.tPedidoDesconto.First;
  while not DM1.tPedidoDesconto.EOF do
    begin
      vAux := StrToFloat(FormatFloat('0.00',(vVlrTotal * DM1.tPedidoDescontoPercDesconto.AsFloat / 100)));
      vVlrTotal := vVlrTotal - vAux;
      vVlrDesc := vVlrDesc + vAux;
      DM1.tPedidoDesconto.Next;
    end;
  DM1.tPedidoItemVlrDesconto.AsFloat := vVlrDesc;
  DM1.tPedidoItemVlrTotal.AsFloat    := vVlrTotal * DM1.tPedidoItemQtdPares.AsInteger;
  if DM1.tPedidoItemReposicao.AsBoolean then
    DM1.tPedidoVlrReposicao.AsFloat  := DM1.tPedidoVlrReposicao.AsFloat + DM1.tPedidoItemVlrTotal.AsFloat
  else
    begin
      DM1.tPedidoVlrDesconto.AsFloat   := DM1.tPedidoVlrDesconto.AsFloat + (vVlrDesc * DM1.tPedidoItemQtdPares.AsInteger);
      DM1.tPedidoVlrTotal.AsFloat      := DM1.tPedidoVlrMercadoria.AsFloat - DM1.tPedidoVlrDesconto.AsFloat;
    end;
end;

procedure TfPedido.Calc_Vlr_Pedido;
var
 vAux, vVlrDesc, vVlrTotal : Real;
begin
  DM1.tPedidoVlrDesconto.AsFloat   := 0;
  DM1.tPedidoVlrMercadoria.AsFloat := 0;
  DM1.tPedidoVlrReposicao.AsFloat  := 0;
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
    begin
      if (not DM1.tPedidoItemCancelado.AsBoolean) and (not DM1.tPedidoItemReposicao.AsBoolean) then
        begin
          DM1.tPedidoItem.Edit;
          vVlrDesc  := 0;
          vVlrTotal := DM1.tPedidoItemPreco.AsFloat;
          DM1.tPedidoItemVlrDesconto.AsFloat := 0;
          DM1.tPedidoDesconto.First;
          while not DM1.tPedidoDesconto.EOF do
            begin
              vAux := StrToFloat(FormatFloat('0.00',(vVlrTotal * DM1.tPedidoDescontoPercDesconto.AsFloat / 100)));
              vVlrTotal := vVlrTotal - vAux;
              vVlrDesc := vVlrDesc + vAux;
              DM1.tPedidoDesconto.Next;
            end;

          DM1.tPedidoVlrMercadoria.AsFloat   := DM1.tPedidoVlrMercadoria.AsFloat +
                                               (DM1.tPedidoItemPreco.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
          DM1.tPedidoItemVlrDesconto.AsFloat := vVlrDesc;
          DM1.tPedidoItemVlrTotal.AsFloat    := vVlrTotal * DM1.tPedidoItemQtdPares.AsInteger;
          DM1.tPedidoVlrDesconto.AsFloat     := DM1.tPedidoVlrDesconto.AsFloat + (vVlrDesc * DM1.tPedidoItemQtdPares.AsInteger);
          DM1.tPedidoVlrTotal.AsFloat        := DM1.tPedidoVlrMercadoria.AsFloat - DM1.tPedidoVlrDesconto.AsFloat;
          DM1.tPedidoItem.Post;
        end
      else
      if DM1.tPedidoItemReposicao.AsBoolean then
        begin
          DM1.tPedidoItem.Edit;
          vVlrDesc  := 0;
          vVlrTotal := DM1.tPedidoItemPreco.AsFloat;
          DM1.tPedidoItemVlrDesconto.AsFloat := 0;
          DM1.tPedidoDesconto.First;
          while not DM1.tPedidoDesconto.EOF do
            begin
              vAux := StrToFloat(FormatFloat('0.00',(vVlrTotal * DM1.tPedidoDescontoPercDesconto.AsFloat / 100)));
              vVlrTotal := vVlrTotal - vAux;
              vVlrDesc := vVlrDesc + vAux;
              DM1.tPedidoDesconto.Next;
            end;
          DM1.tPedidoItemVlrDesconto.AsFloat := vVlrDesc;
          DM1.tPedidoItemVlrTotal.AsFloat    := vVlrTotal * DM1.tPedidoItemQtdPares.AsInteger;
          DM1.tPedidoVlrReposicao.AsFloat    := DM1.tPedidoVlrReposicao.AsFloat + DM1.tPedidoItemVlrTotal.AsFloat;
          DM1.tPedidoItem.Post;
        end;
      DM1.tPedidoItem.Next;
    end;
end;

procedure TfPedido.Grava_Material;
var
 vQtdPar, vQtdParFat, vQtdParCanc, vQtdParRep : Real;
begin
// Faz a gravação dos materiais nos itens dos pedidos, para gerar os talões
  DM1.tProduto.IndexFieldNames := 'Codigo';
  vQtdPar     := 0;
  vQtdParFat  := 0;
  vQtdParCanc := 0;
  vQtdParRep  := 0;
  DM1.tPedidoItem.First;
  DM1.tPedidoDtIniEmbarque.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
  DM1.tPedidoDtFinEmbarque.AsDateTime := 0;
  while not DM1.tPedidoItem.EOF do
    begin
      if DM1.tPedidoItemDtReprogramacao.AsDateTime < DM1.tPedidoDtIniEmbarque.AsDateTime then
        DM1.tPedidoDtIniEmbarque.AsDateTime := DM1.tPedidoItemDtReprogramacao.AsDateTime;
      if DM1.tPedidoItemDtReprogramacao.AsDateTime > DM1.tPedidoDtFinEmbarque.AsDateTime then
        DM1.tPedidoDtFinEmbarque.AsDateTime := DM1.tPedidoItemDtReprogramacao.AsDateTime;
      if DM1.tPedidoItemCancelado.AsBoolean then
        vQtdParCanc := vQtdParCanc + DM1.tPedidoItemQtdParesCanc.AsFloat
      else
        begin
          if DM1.tPedidoItemReposicao.AsBoolean then
            vQtdParRep := vQtdParRep + DM1.tPedidoItemQtdPares.AsFloat
          else
            vQtdPar    := vQtdPar + DM1.tPedidoItemQtdPares.AsFloat;
          vQtdParFat := vQtdParFat + DM1.tPedidoItemQtdParesFat.AsFloat;
        end;
      DM1.tPedidoItem.Next;
    end;
  DM1.tPedidoQtdPares.AsFloat     := vQtdPar;
  DM1.tPedidoQtdParesCanc.AsFloat := vQtdParCanc;
  DM1.tPedidoQtdParesFat.AsFloat  := vQtdParFat;
  DM1.tPedidoQtdParesRest.AsFloat := vQtdPar - vQtdParFat;
  DM1.tPedidoQtdParesRep.AsFloat  := vQtdParRep;
end;

procedure TfPedido.Verifica_Pedido;
begin
  if DM1.tPedidoCancelado.AsBoolean = False then
    Panel9.SendToBack
  else
    Panel9.BringToFront;
  if (DM1.tPedidoCopiado.AsBoolean) or (DM1.tPedidoQtdParesFat.AsInteger > 0) then
    begin
      BitBtn18.Enabled := True;
      BitBtn18.Visible := True;
    end
  else
    begin
      BitBtn18.Enabled := False;
      BitBtn18.Visible := False;
    end;

  if (DM1.tPedidoGerarLote.AsString = '1') or (DM1.tPedidoLoteExp.AsBoolean = True) then
    begin
      BitBtn19.Enabled := True;
      BitBtn19.Visible := True;
      if (DM1.tPedidoLoteExp.AsBoolean = False) and (DM1.tPedidoNumLote.AsInteger > 0) then
        BitBtn19.Caption := 'Lote Nº.: ' + DM1.tPedidoNumLote.AsString
      else
        BitBtn19.Caption := 'LOTE GERADO';
    end
  else
    begin
      BitBtn19.Enabled := False;
      BitBtn19.Visible := False;
    end;
end;

procedure TfPedido.Imprime_Pedido;
var
  F : TextFile;
  Linha, Pagina : integer;
  Texto1, Texto2, Texto3, Texto4 : string;
  vImprimir : Boolean;
procedure Cabecalho;
var
  i : integer;
begin
  Pagina := Pagina + 1;
  if Pagina > 1 then
    begin
      while linha < 66 do
        begin
          Linha := Linha + 1;
          Writeln(F);
        end;
    end;
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#18);
  DM1.tEmpresa.First;
  Texto1 := DM1.tEmpresaEmpresa.AsString;

  for i := 1 to 65 - Length(Texto1) do
    Texto1 := Texto1 + ' ';

  Texto1 := Texto1 + 'Pag: ';
  Writeln(F,Format('%s%5d',[Texto1,Pagina]));
  Texto1 := '                                      Data Hora Impressao: ';
  Texto1 := Texto1 + DateToStr(Date) + ' ' + FormatDateTime('HH:MM',Now);
  Writeln(F,Texto1);

  Texto1 := 'PEDIDO No: ' + DM1.tPedidoPedido.AsString;
  for i := 1 to 26 - length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'SITUACAO: ';
  Texto1 := Texto1 + DM1.tPedidoSituacao.AsString;
  for i := 1 to 53 - length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'DT.EMISSAO: ' + DM1.tPedidoDtEmissao.AsString;
  Writeln(F,Texto1);

  texto1 := '';
  texto1 := DM1.tPedidoPedidoCliente.AsString;
  for i := 1 to 20 - Length(texto1) do
    texto1 := texto1 + ' ';
  texto1 := 'Pedido Cliente (O.C): ' + texto1;
  Writeln(F,Texto1);

  Texto1 := '';
  for i := 1 to 8 do
    Texto1 := Texto1 + '----------';
  Writeln(F,Texto1);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  Texto1 := 'CLIENTE        : ' + DM1.tPedidoCodCliente.AsString + ' - ' + DM1.tPedidolkNomeCliente.AsString;
  for i := 1 to 71 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := 'TELEFONE  : ' + DM1.tPedidolkTelefone.AsString;
  for i := 3 to 34 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := ' FAX: ' + DM1.tPedidolkFax.AsString;
  Writeln(F,Texto1);
  Texto1 := 'ENDERECO       : ' + DM1.tPedidolkEndereco.AsString;
  for i := 1 to 71 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := 'CEP       : ' + DM1.tPedidolkCep.AsString;
  Writeln(F,Texto1);
  Texto1 := 'BAIRRO         : ' + DM1.tPedidolkBairro.AsString;
  for i := 1 to 71 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := 'ESTADO    : ' + DM1.tPedidolkUf.AsString;
  Writeln(F,Texto1);
  Texto1 := 'CIDADE         : ' + DM1.tPedidolkCidade.AsString;
  for i := 1 to 71 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := 'CNPJ      : ' + DM1.tPedidolkCgcCpf.AsString;
  Writeln(F,Texto1);
  Texto1 := 'VENDEDOR       : ' + DM1.tPedidolkNomeVendedor.AsString;
  for i := 1 to 71 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := 'INSCR.EST.: ' + DM1.tPedidolkInscrEst.AsString;
  Writeln(F,Texto1);
  Texto1 := 'TRANSPORTADORA : ' + DM1.tPedidolkTransp.AsString;
  for i := 1 to 71 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := 'CONDICOES : ' + DM1.tPedidolkCondPgto.AsString;
  Writeln(F,Texto1);
  Texto1 := 'DT.INIC.EMBARQ.: ' + DM1.tPedidoDtIniEmbarque.AsString;
  for i := 1 to 30 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Texto1 := 'DT.FIN.EMB: ' + DM1.tPedidoDtFinEmbarque.AsString;
  for i := 1 to 41 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Write(F,Texto1);
  Writeln(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#18);
  Texto1 := '';
  for i := 1 to 8 do
    Texto1 := Texto1 + '----------';
  Writeln(F,Texto1);
  Writeln(F,Format('%33s%s',['','ITENS DO PEDIDO']));
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);

  case RadioGroup2.ItemIndex of
    0 : Writeln(F,'Codigo Referencia           Produto      N.OS                                Quantidade Dt.Entrega   Vlr.Unitario      Vlr.Total');
    1 : Writeln(F,'Codigo Referencia           Produto      N.OS                                Quantidade Dt.Entrega');
  end;
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Linha := 16;

  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#18);
end;
procedure Detalhes;
var
  i : Integer;
begin
 Write(F,#15);
 DM1.tPedidoItem.First;
 while not DM1.tPedidoItem.Eof do
   begin
     if not DM1.tPedidoItemCancelado.AsBoolean then
       begin
         if Linha > 61 then
           Cabecalho;
         Write(F,#15);
         texto2 := DM1.tPedidoItemCodProduto.AsString;
         for i := 1 to 6 - Length(texto2) do
           texto2 := ' ' + texto2;
         texto1 := texto2 + ' ';

         texto2 := DM1.tPedidoItemlkReferencia.AsString;
         for i := 1 to 20 - Length(texto2) do
           texto2 := texto2 + ' ';
         texto1 := texto1 + texto2 + ' ';

         texto2 := DM1.tPedidoItemlkNomeProduto.AsString;
         for i := 1 to 101 - Length(texto2) do
           texto2 := texto2 + ' ';
         texto1 := texto1 + texto2;

         Writeln(F,texto1);
         Linha := Linha + 1;

         texto1 := '   .......';
         texto2 := DM1.tPedidoItemlkDescMaterial.AsString;
         for i := 1 to 10 - Length(texto2) do
           texto2 := texto2 + ' ';
         texto1 := texto1 + texto2 + '  ';

         texto2 := DM1.tPedidoItemlkCor.AsString;
         for i := 1 to 15 - Length(texto2) do
           texto2 := texto2 + ' ';
         texto1 := texto1 + texto2 + '  ';

         texto2 := DM1.tPedidoItemNumOS.AsString;
         for i := 1 to 30 - Length(texto2) do
           texto2 := texto2 + ' ';
         texto1 := texto1 + texto2 + ' ';

         texto2 := FormatFloat('###,###,##0.00000',DM1.tPedidoItemQtdPares.AsFloat);
         for i := 1 to 17 - Length(texto2) do
           texto2 := ' ' + texto2;
         texto1 := texto1 + texto2 + ' ';

         texto2 := DM1.tPedidoItemDtReprogramacao.AsString;
         for i := 1 to 10 - Length(texto2) do
           texto2 := texto2 + ' ';
         texto1 := texto1 + texto2 + ' ';

         if RadioGroup2.ItemIndex = 0 then
           begin
             texto2 := FormatFloat('##,###,##0.000',DM1.tPedidoItemPreco.AsFloat);
             for i := 1 to 14 - Length(texto2) do
               texto2 := ' ' + texto2;
             texto1 := texto1 + texto2 + ' ';

             texto2 := FormatFloat('###,###,##0.00',DM1.tPedidoItemVlrTotal.AsFloat);
             for i := 1 to 14 - Length(texto2) do
               texto2 := ' ' + texto2;
             texto1 := texto1 + texto2;
           end;
         Writeln(F,texto1);
         Linha := Linha + 1;

         if DM1.tPedidoItemObs.AsString <> '' then
           begin
             texto1 := '   ....... OBS: ' + DM1.tPedidoItemObs.AsString;
             Writeln(F,texto1);
             Linha := Linha + 1;
           end;

         if DM1.tPedidoGrade.RecordCount > 0 then
           begin
             if DM1.tPedidoItemlkLargura.AsString = '' then
               texto3 := ' '
             else
               texto3 := DM1.tPedidoItemlkLargura.AsString;
             texto3 := '   ' + texto3 + '   Tam:';
             Texto2 := '';
             Texto4 := '       Qtd:';
             DM1.tPedidoGrade.First;
             while not DM1.tPedidoGrade.EOF do
               begin
                 DM1.tGrade.IndexFieldNames := 'Codigo';
                 DM1.tGrade.FindKey([DM1.tPedidoGradeCodGrade.AsInteger]);
                 if DM1.tPedidoGradeQtd.AsInteger > 0 then
                   begin
                     Texto2 := '';
                     if tGradeItem.Locate('CodGrade;Posicao',VarArrayOf([DM1.tPedidoGradeCodGrade.AsInteger,DM1.tPedidoGradePosicao.AsInteger]),[loCaseInsensitive]) then
                       Texto2 := tGradeItemTamanho.AsString;
                     for i := 1 to 4 - length(Texto2) do
                       texto2 := ' ' + texto2;
                     Texto3 := Texto3 + ' ' + Texto2;
                     Texto2 := DM1.tPedidoGradeQtd.AsString;
                     for i := 1 to 4 - length(DM1.tPedidoGradeQtd.AsString) do
                       Texto2 := ' ' + texto2;
                     texto4 := texto4 + ' ' + texto2;
                   end;
                 DM1.tPedidoGrade.Next
               end;
             Writeln(F,texto3);
             Writeln(F,texto4);
             Linha := Linha + 2;
           end;
       end;
     DM1.tPedidoItem.Next;
   end;
  if not DM1.tImpressoraVisualizar.AsBoolean then
   Write(F,#18);
end;
procedure Sumario;
var
  i : Integer;
begin
  if linha > 55 then
    cabecalho;
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  if RadioGroup2.ItemIndex = 0 then
    begin
      Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
      Linha := Linha + 1;

      Texto2 := ' ';
      DM1.tPedidoDesconto.First;
      while not DM1.tPedidoDesconto.EOF do
        begin
          if Texto2 = ' ' then
            begin
              Texto2 := Texto2 + DM1.tPedidoDescontoPercDesconto.AsString;
              DM1.tPedidoDesconto.Next;
            end
          else
            begin
              Texto2 := Texto2 + ' + ' + DM1.tPedidoDescontoPercDesconto.AsString;
              DM1.tPedidoDesconto.Next;
            end;
        end;
      Texto1 := '     %DESC.:' + Texto2;
      Writeln(F,Format('%s%22.2n%1s%s%'+IntToStr(51-Length(Texto1))+'s%s%18.2n',
                      ['VLR.TOTAL MERCS.:',DM1.tPedidoVlrMercadoria.AsFloat,'',Texto1,'','VLR.TOTAL DO DESCONTO:',DM1.tPedidoVlrDesconto.AsFloat]));
      Linha := Linha + 1;
    end;
  Texto1 := '';
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#18);
  for i := 1 to 8 do
    Texto1 := Texto1 + '----------';
  Writeln(F,Texto1);
  Linha := Linha + 1;

  //Inteiro := DM1.tPedidoQtdPares.AsInteger;
  if RadioGroup2.ItemIndex = 0 then
    begin
      texto1 := 'VALOR TOTAL DO PEDIDO:' + FormatFloat('###,###,###,##0.00',DM1.tPedidoVlrTotal.AsFloat);
      Writeln(F,texto1);
      Linha := Linha + 1;
      Texto1 := '';
      for i := 1 to 8 do
        Texto1 := Texto1 + '----------';
      Writeln(F,Texto1);
      Linha := Linha + 1;
    end;
  Writeln(F,Format('%s',['OBSERVACOES:']));
  Linha := Linha + 1;

  Texto1 := '';
  Texto2 := '';
  T := 1;
  for i := 1 to 650 do
    begin
      Texto2 := Copy(DM1.tPedidoObs.AsString,i,1);
      if (Texto2 = #$D) or (Texto2 = #$A) then
        Texto1 := Texto1 + ' '
      else
        Texto1 := Texto1 + Copy(DM1.tPedidoObs.AsString,i,1);
    end;
  for i := 1 to 5 do
    begin
      Obs[i] := Copy(Texto1,T, 75);
      T      := T + 75;
    end;
  for i := 1 to 5 do
    Writeln(F,'  ' + Obs[i]);
  Linha := Linha + 5;
  Texto1 := '';
  for i := 1 to 8 do
    Texto1 := Texto1 + '----------';
  Writeln(F,Texto1);
  Linha := Linha + 1;
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);

  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#18);
  Texto1 := '';

  //Foi tirado dia 08/01/2008, Edilene pediu
  {while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;}
end;
begin
  vImprimir := True;
  if DM1.tPedidoImpresso.AsBoolean = True then
    begin
      if MessageDlg('Esse pedido já foi impresso, deseja imprimí-lo novamente?',mtConfirmation,[mbOK,mbNO],0) = mrNO then
        vImprimir := False;
    end;
  if vImprimir then
    begin
      fEscImpressora := TfEscImpressora.Create(Self);
      fEscImpressora.ShowModal;
      AssignFile(F,DM1.tImpressoraEndereco.AsString);
      ReWrite(F);
      Linha  := 0;
      Pagina := 0;
      Cabecalho;
      Detalhes;
      Sumario;
      CloseFile(F);
      DM1.tPedido.Edit;
      DM1.tPedidoImpresso.AsBoolean := True;
      DM1.tPedido.Post;
      if DM1.tImpressoraVisualizar.AsBoolean then
        begin
          Texto2 := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
          //WinExec(PChar(Texto2),SW_MAXIMIZE);
          ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);
        end;
    end;
end;

procedure TfPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPedido.BitBtn6Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  Close;
end;

procedure TfPedido.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
      DM1.tCliente.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfPedido.BitBtn1Click(Sender: TObject);
begin
  vCodSitTrib  := 0;
  BitBtn2.Tag  := 0;
  BitBtn4.Tag  := 1;
  BitBtn16.Tag := 0;
  if DM1.tUsuarioInsPedido.AsBoolean then
    begin
      vReprogramacao    := False;
      vObsItem          := '';
      vNumTalaoAlt      := 0;
      vItemPed          := 0;
      BitBtn18.Enabled  := False;
      BitBtn18.Visible  := False;
      BitBtn15.Enabled            := True;
      DM1.tPedido.Refresh;
      tPedidoIns.Refresh;
      DM1.tPedido.IndexFieldNames := 'Pedido';
      tPedidoIns.IndexFieldNames  := 'Pedido';
      tPedidoIns.Refresh;
      tPedidoIns.Last;
      DM1.tPedido.Insert;
      DM1.tPedidoDolar.AsBoolean        := False;
      DM1.tPedidoCancelado.AsBoolean    := False;
      DM1.tPedidoSuspenso.AsBoolean     := False;
      DM1.tPedidoImpCalcLote.AsBoolean  := True;
      if DM1.tPedidoCancelado.AsBoolean = False then
        Panel9.SendToBack
      else
        Panel9.BringToFront;
      DM1.tPedidoPedido.AsInteger      := tPedidoInsPedido.AsInteger + 1;
      DM1.tPedidoDtEmissao.AsDateTime  := Date;
      DM1.tPedidoTipoFrete.AsString    := 'F';
      DM1.tPedidoSituacao.AsInteger    := 1;
      DM1.tPedidoGerarLote.AsString    := '2';
      DM1.tPedidoVlrDesconto.AsFloat   := 0;
      DM1.tPedidoSelecionado.AsBoolean := False;
      DM1.tPedidoCopiado.AsBoolean     := False;
      DM1.tPedidoCancelado.AsBoolean   := False;
      DM1.tPedidoLoteExp.AsBoolean     := False;
      DM1.tPedidoEstoque.AsBoolean     := False;
      DM1.tPedido.Post;
      DM1.tPedido.Edit;
      vEdit := 'N';
      Habilita;
      RxDBLookupCombo4.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfPedido.BitBtn2Click(Sender: TObject);
begin
  vReprogramacao    := False;
  vObsItem          := '';
  vCodSitTrib       := 0;
  vNumTalaoAlt      := 0;
  vItemPed          := 0;
  DM1.tPedido.IndexFieldNames := 'Pedido';
  vEdit := 'N';
  BitBtn2.Tag  := 1;
  BitBtn4.Tag  := 0;
  BitBtn16.Tag := 0;
  PageControl1.ActivePage := TabSheet1;
  if DM1.tUsuarioAltPedido.AsBoolean then
    begin
      if DM1.tPedidoCancelado.AsBoolean <> True then
        begin
          DM1.tPedido.Edit;
          Habilita;
          RxDBLookupCombo4.SetFocus;
        end
      else
        ShowMessage('Este pedido foi cancelado e não pode ser alterado!');
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfPedido.BitBtn4Click(Sender: TObject);
begin
  if BitBtn4.Tag = 0 then
    begin
      DM1.tPedido.Cancel;
      BitBtn2.Tag := 0;
      Habilita;
      RxDBLookupCombo3.ClearValue;
      RxDBLookupCombo11.ClearValue;
      CurrencyEdit1.Clear;
      CurrencyEdit2.Clear;
      RxDBLookupCombo12.ClearValue;
      Edit5.Clear;
      BitBtn15.Enabled := False;
    end;
  if BitBtn4.Tag = 1 then
    begin
      DM1.tPedidoItem.First;
      while not DM1.tPedidoItem.Eof do
        begin
          DM1.tPedidoGrade.First;
          while not DM1.tPedidoGrade.Eof do
            DM1.tPedidoGrade.Delete;
          DM1.tPedidoMaterial.First;
          while not DM1.tPedidoMaterial.Eof do
            DM1.tPedidoMaterial.Delete;
          DM1.tPedidoItem.Delete;
        end;
      DM1.tPedidoDesconto.First;
      while not DM1.tPedidoDesconto.Eof do
        DM1.tPedidoDesconto.Delete;
      DM1.tPedido.Delete;
      DM1.tPedido.Refresh;
      Habilita;
    end;
  RxDBLookupCombo4.Color := clWindow;
end;

procedure TfPedido.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  BitBtn2.Tag := 0;
  if DM1.tUsuarioExcPedido.AsBoolean then
    begin
      if DM1.tPedidoQtdParesFat.AsInteger > 0 then
        ShowMessage('Pedido não pode ser excluido, já esta faturado!')
      else
      if DM1.tPedidoGerarLote.AsString = '1' then
        ShowMessage('Pedido não pode ser excluido, já foi gerado Lote!')
      else
        begin
          vExcluir := True;
          DM1.tPedidoItem.First;
          while not DM1.tPedidoItem.Eof do
            begin
              if DM1.tPedidoItemNumTalao.AsInteger > 0 then
                vExcluir := False
              else
              if DM1.tPedidoItemDtBaixa.AsDateTime > 1 then
                vExcluir := False;
              DM1.tPedidoItem.Next;
            end;
          if not vExcluir then
            ShowMessage('Pedido com talão ou item já produzido!')
          else
            begin
              if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
                begin
                  DM1.tPedidoItem.First;
                  while not DM1.tPedidoItem.Eof do
                    begin
                      DM1.tPedidoGrade.First;
                      while not DM1.tPedidoGrade.Eof do
                        DM1.tPedidoGrade.Delete;
                      DM1.tPedidoMaterial.First;
                      while not DM1.tPedidoMaterial.Eof do
                        begin
                          DM1.tPedidoConsumo.First;
                          while not DM1.tPedidoConsumo.Eof do
                            DM1.tPedidoConsumo.Delete;
                          DM1.tPedidoMaterial.Delete;
                        end;
                      DM1.tPedidoItem.Delete;
                    end;
                  DM1.tPedidoDesconto.First;
                  while not DM1.tPedidoDesconto.Eof do
                    DM1.tPedidoDesconto.Delete;
                  DM1.tPedido.Delete;
                  DM1.tPedido.Refresh;
                end
            end;
        end;
      DM1.tPedido.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfPedido.BitBtn5Click(Sender: TObject);
var
  vGrava : Boolean;
begin
  if DM1.tPedidoPedidoCliente.AsString <> ''then
    begin
      vGrava := True;
      if (DM1.tCliente.Locate('Codigo',DM1.tPedidoCodCliente.AsInteger,[loCaseInsensitive])) and
         (DM1.tClienteLiberacao.AsString = 'V') then
        begin
          vGrava := False;
          if DM1.tCondPgto.Locate('Codigo',DM1.tPedidoCodCondPgto.AsInteger,[loCaseInsensitive]) then
            if DM1.tCondPgtoPrazoVista.AsString = 'V' then
              vGrava := True;
        end;
      if not vGrava then
        if MessageDlg('Esse cliente esta indicado só para venda a vista, confirma o pedido sem ser a vista?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
          vGrava := True;
      if vGrava then
        begin
          BitBtn2.Tag := 0;
          PageControl1.ActivePage := TabSheet1;
          if DM1.tPedido.State in [dsEdit,dsInsert] then
            begin
              if DM1.tPedidoSituacao.AsString = '' then
                begin
                  ShowMessage('Não foi preenchido a situação!');
                  DBRadioGroup2.SetFocus;
                end
              else
                begin
                  Calc_Vlr_Pedido;
                  Grava_Material;  // Grava os materiais nos itens dos pedidos, vai servir para a
                                  // montagem dos lotes.
                  DM1.tPedido.Post;
                  Habilita;
                  BitBtn1.SetFocus;
                  BitBtn15.Enabled := False;
                  RxDBLookupCombo4.Color := clWindow;
                end;
            end;
        end;

    end
  else
    begin
      ShowMessage('O Campo "Nº Pedido do Cliente", não pode estar vazio!');
      DBEdit2.SetFocus;
    end;
end;

procedure TfPedido.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cond.pagto.!');
end;

procedure TfPedido.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
//  DM1.tPedido.IndexFieldNames := 'Pedido';
end;

procedure TfPedido.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tPedido.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o pedido antes de fechar esta janela');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tPedido.State in [dsBrowse]) then
    begin
      fConsPedido := TfConsPedido.Create(Self);
      fConsPedido.ShowModal;
    end;
  if (Key = Vk_F8) then
    Edit1.SetFocus;
  Verifica_Pedido;
end;

procedure TfPedido.BitBtn7Click(Sender: TObject);
begin
  if (RxDBLookupCombo11.Text <> '') and (CurrencyEdit1.Value > 0) and (DateEdit1.Date > 0) then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo11.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          if not(CurrencyEdit2.Value > 0) then
            RxDBLookupCombo3Exit(Sender);
          if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo3.Text = '') then
            ShowMessage('Neste produto é obrigatório informar a cor!')
          else
          if CurrencyEdit2.Value > 0 then
            begin
              tAuxPedidoGrade.First;
              DM1.tPedidoItem.Refresh;
              tPedidoItemIns.Refresh;
              tPedidoItemIns.Last;
              DM1.tPedidoItem.Insert;
              DM1.tPedidoItemPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
              if BitBtn16.Tag = 1 then
                DM1.tPedidoItemItem.AsInteger      := vItemPed
              else
                DM1.tPedidoItemItem.AsInteger      := tPedidoItemInsItem.AsInteger + 1;
              DM1.tPedidoItemCodProduto.AsInteger  := DM1.tProdutoCodigo.AsInteger;
              DM1.tPedidoItemUnidade.AsString      := DM1.tProdutoUnidade.AsString;
              if DM1.tProdutoLancaGrade.AsBoolean then
                DM1.tPedidoItemCodGrade.AsInteger  := tAuxPedidoGradeCodGrade.AsInteger
              else
                DM1.tPedidoItemCodGrade.AsInteger  := 0;
              if DM1.tProdutoLancaCor.AsBoolean then
                DM1.tPedidoItemCodCor.AsInteger    := RxDBLookupCombo3.KeyValue
              else
                DM1.tPedidoItemCodCor.AsInteger    := 0;
              if RxDBLookupCombo12.Text <> '' then
                DM1.tPedidoItemSitTrib.AsInteger := RxDBLookupCombo12.KeyValue
              else
                DM1.tPedidoItemSitTrib.AsInteger := 0;
              DM1.tPedidoItemQtdPares.AsFloat        := CurrencyEdit1.Value;
              DM1.tPedidoItemReposicao.AsBoolean     := False;
              DM1.tPedidoItemQtdParesRest.AsFloat    := CurrencyEdit1.Value;
              DM1.tPedidoItemPreco.AsFloat           := CurrencyEdit2.Value;
              DM1.tPedidoItemReprogramacao.AsBoolean := vReprogramacao;
              DM1.tPedidoItemFabrica.AsString        := Edit4.Text;
              if DateEdit1.Date > 1 then
                DM1.tPedidoItemDtEmbarque.AsDateTime := DateEdit1.Date;
              //if vEdit = 'S' then
              if BitBtn16.Tag = 1 then
                begin
                  if vDtReprogramacao = vDtEmbarque then
                    DM1.tPedidoItemDtReprogramacao.AsDateTime := DateEdit1.Date
                  else
                    DM1.tPedidoItemDtReprogramacao.AsDateTime := vDtReprogramacao;
                end
              else
                DM1.tPedidoItemDtReprogramacao.AsDateTime := DateEdit1.Date;
              if DM1.tPedidoItemDtEmbarque.AsDateTime > DM1.tPedidoItemDtReprogramacao.AsDateTime then
                DM1.tPedidoItemDtReprogramacao.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;

              DM1.tPedidoItemNumOS.AsString      := Edit5.Text;
              DM1.tPedidoItemCancelado.AsBoolean := False;
              if DM1.tPedidoItemReposicao.AsBoolean then
                DM1.tPedidoQtdParesRep.AsFloat := DM1.tPedidoQtdParesRep.AsFloat + CurrencyEdit1.Value
              else
                begin
                  DM1.tPedidoQtdPares.AsFloat      := DM1.tPedidoQtdPares.AsFloat + CurrencyEdit1.Value;
                  DM1.tPedidoQtdParesRest.AsFloat  := DM1.tPedidoQtdParesRest.AsFloat + CurrencyEdit1.Value;
                  DM1.tPedidoVlrMercadoria.AsFloat := DM1.tPedidoVlrMercadoria.AsFloat +
                                                      (DM1.tPedidoItemPreco.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
                  DM1.tPedidoPesoBruto.AsFloat     := DM1.tPedidoPesoBruto.AsFloat + DM1.tPedidoItemlkPesoBruto.AsFloat *
                                                      DM1.tPedidoItemQtdPares.AsFloat;
                  DM1.tPedidoPesoLiquido.AsFloat   := DM1.tPedidoPesoLiquido.AsFloat + DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                                      DM1.tPedidoItemQtdPares.AsFloat;
                end;
              Calc_Desc_Item;
              DM1.tPedidoItemVlrTotal.AsFloat     := DM1.tPedidoItemQtdPares.AsFloat *
                                                     (DM1.tPedidoItemPreco.AsFloat - DM1.tPedidoItemVlrDesconto.AsFloat);
              DM1.tPedidoItemGerarTalao.AsBoolean := CheckBox1.Checked;
              DM1.tPedidoItemNumTalao.AsInteger   := vNumTalaoAlt;

              if DM1.tPedidoItemNumTalao.AsInteger > 0 then
                begin
                  if DM1.tTalao.Locate('Talao',DM1.tPedidoItemNumTalao.AsInteger,[loCaseInsensitive]) then
                    begin
                      DM1.tTalao.Edit;
                      DM1.tTalaoQuantidade.AsFloat := DM1.tPedidoItemQtdPares.AsFloat;
                      DM1.tTalao.Post;
                    end;
                end;

              if vObsItem <> '' then
                DM1.tPedidoItemObs.AsString := vObsItem;
              fPedidoItemObs := TfPedidoItemObs.Create(Self);
              fPedidoItemObs.ShowModal;

              DM1.tPedidoItem.Post;
        // grava a grade nos itens
              if DM1.tProdutoLancaGrade.AsBoolean then
                begin
                  tAuxPedidoGrade.First;
                  while not tAuxPedidoGrade.Eof do
                    begin
                      DM1.tPedidoGrade.Insert;
                      DM1.tPedidoGradePedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
                      DM1.tPedidoGradeItemPed.AsInteger    := DM1.tPedidoItemItem.AsInteger;
                      DM1.tPedidoGradeCodGrade.AsInteger   := tAuxPedidoGradeCodGrade.AsInteger;
                      DM1.tPedidoGradePosicao.AsInteger    := tAuxPedidoGradePosicao.AsInteger;
                      DM1.tPedidoGradeQtd.AsFloat          := tAuxPedidoGradeQtd.asFloat;
                      DM1.tPedidoGradeQtdParesRest.AsFloat := tAuxPedidoGradeQtd.asFloat;
                      DM1.tPedidoGradeVlrUnitario.AsFloat  := tAuxPedidoGradeVlrUnitario.asFloat;
                      DM1.tPedidoGradeVlrTotal.AsFloat     := tAuxPedidoGradeQtd.AsFloat * tAuxPedidoGradeVlrUnitario.asFloat;
                      DM1.tPedidoGrade.Post;
                      tAuxPedidoGrade.Next;
                    end;
                  tAuxPedidoGrade.First;
                  while not tAuxPedidoGrade.Eof do
                    tAuxPedidoGrade.Delete;
                end;
        // Grava os materiais da referência
              //if vEdit = 'S' then
              if BitBtn16.Tag = 1 then
                begin
                  tAuxPedidoMat.Refresh;
                  tAuxPedidoMat.First;
                  while not tAuxPedidoMat.EOF do
                    begin
                      tPedidoMaterialIns.Refresh;
                      tPedidoMaterialIns.Last;
                      DM1.tPedidoMaterial.Refresh;
                      DM1.tPedidoMaterial.Insert;
                      DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
                      DM1.tPedidoMaterialItemPed.AsInteger     := DM1.tPedidoItemItem.AsInteger;
                      DM1.tPedidoMaterialOrdem.AsInteger       := tPedidoMaterialInsOrdem.AsInteger + 1;
                      DM1.tPedidoMaterialCodCor.AsInteger      := tAuxPedidoMatCodCor.AsInteger;
                      DM1.tPedidoMaterialCodMaterial.AsInteger := tAuxPedidoMatCodMaterial.AsInteger;
                      DM1.tPedidoMaterialConsumoPr.AsFloat     := tAuxPedidoMatConsumoPr.AsFloat;
                      DM1.tPedidoMaterialImpTalao.AsString     := tAuxPedidoMatImpTalao.AsString;
                      DM1.tPedidoMaterialTipoConsumo.AsString  := tAuxPedidoMatTipoConsumo.AsString;
                      if tAuxPedidoMatTipoConsumo.AsString = 'T' then
                        begin
                          tAuxPedMatCons.First;
                          while not tAuxPedMatCons.Eof do
                            begin
                              DM1.tPedidoConsumo.Insert;
                              DM1.tPedidoConsumoPedido.AsInteger   := DM1.tPedidoPedido.AsInteger;
                              DM1.tPedidoConsumoItemPed.AsInteger  := DM1.tPedidoItemItem.AsInteger;
                              DM1.tPedidoConsumoOrdem.AsInteger    := DM1.tPedidoMaterialOrdem.AsInteger;
                              DM1.tPedidoConsumoCodGrade.AsInteger := DM1.tPedidoItemCodGrade.AsInteger;
                              DM1.tPedidoConsumoPosicao.AsInteger  := tAuxPedMatConsPosicao.AsInteger;
                              DM1.tPedidoConsumoConsumo.AsFloat    := tAuxPedMatConsConsumo.AsFloat;
                              DM1.tPedidoConsumo.Post;
                              tAuxPedMatCons.Next;
                            end;
                        end;
                      DM1.tPedidoMaterial.Post;
                      tAuxPedidoMat.Next;
                    end;
                end
              else
                begin
                  DM1.tProduto.IndexFieldNames := 'Codigo';
                  DM1.tProdutoMat.Filtered := False;
                  DM1.tProdutoMat.Filter   := 'CodCorProd = '''+DM1.tPedidoItemCodCor.AsString+'''';
                  DM1.tProdutoMat.Filtered := True;
                  DM1.tProdutoMat.First;
                  while not DM1.tProdutoMat.EOF do
                    begin
                      tPedidoMaterialIns.Refresh;
                      tPedidoMaterialIns.Last;
                      DM1.tPedidoMaterial.Refresh;
                      DM1.tPedidoMaterial.Insert;
                      DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
                      DM1.tPedidoMaterialItemPed.AsInteger     := DM1.tPedidoItemItem.AsInteger;
                      DM1.tPedidoMaterialOrdem.AsInteger       := tPedidoMaterialInsOrdem.AsInteger + 1;
                      DM1.tPedidoMaterialCodCor.AsInteger      := DM1.tProdutoMatCodCor.AsInteger;
                      DM1.tPedidoMaterialCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
                      DM1.tPedidoMaterialConsumoPr.AsFloat     := DM1.tProdutoMatQtd.AsFloat;
                      DM1.tPedidoMaterialImpTalao.AsString     := DM1.tProdutoMatImpTalao.AsString;
                      DM1.tPedidoMaterialTipoConsumo.AsString  := DM1.tProdutoMatConsumo.AsString;
                      if DM1.tProdutoMatConsumo.AsString = 'T' then
                        begin
                          DM1.tProdutoConsumo.SetKey;
                          DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoMatCodProduto.AsInteger;
                          DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoMatCodCorProd.AsInteger;
                          DM1.tProdutoConsumoItemMaterial.AsInteger  := DM1.tProdutoMatItem.AsInteger;
                          DM1.tProdutoConsumoCodGrade.AsInteger      := DM1.tPedidoItemCodGrade.AsInteger;
                          if DM1.tProdutoConsumo.GotoKey then
                            begin
                              DM1.tProdutoConsumoItem.First;
                              while not DM1.tProdutoConsumoItem.Eof do
                                begin
                                  DM1.tPedidoConsumo.Insert;
                                  DM1.tPedidoConsumoPedido.AsInteger   := DM1.tPedidoPedido.AsInteger;
                                  DM1.tPedidoConsumoItemPed.AsInteger  := DM1.tPedidoItemItem.AsInteger;
                                  DM1.tPedidoConsumoOrdem.AsInteger    := DM1.tPedidoMaterialOrdem.AsInteger;
                                  DM1.tPedidoConsumoCodGrade.AsInteger := DM1.tProdutoConsumoItemCodGrade.AsInteger;
                                  DM1.tPedidoConsumoPosicao.AsInteger  := DM1.tProdutoConsumoItemPosicao.AsInteger;
                                  DM1.tPedidoConsumoConsumo.AsFloat    := DM1.tProdutoConsumoItemConsumo.AsFloat;
                                  DM1.tPedidoConsumo.Post;
                                  DM1.tProdutoConsumoItem.Next;
                                end;
                            end;
                        end;
                      DM1.tPedidoMaterial.Post;
                      DM1.tProdutoMat.Next
                    end;
                end;
              CurrencyEdit1.Value := 0;
              CurrencyEdit2.Value := 0;
              CurrencyEdit3.Value := 0;
              vDtEmbarque         := 0;
              vDtReprogramacao    := 0;
              vReprogramacao      := False;
              vNumTalaoAlt        := 0;
              DateEdit1.Clear;
              RxDBLookupCombo11.ClearValue;
              RxDBLookupCombo10.ClearValue;
              RxDBLookupCombo3.ClearValue;
              RxDBLookupCombo12.ClearValue;
              Edit5.Clear;
              vObsItem := '';
              vItemPed := 0;
              BitBtn16.Tag := 0;
              vEdit := 'N';
              CurrencyEdit3.SetFocus;
            end
          else
            begin
              ShowMessage('Preço não pode ser zero');
              CurrencyEdit2.SetFocus;
            end;
        end
      else
        begin
          ShowMessage('Produto não cadastrado!');
          CurrencyEdit3.SetFocus;
        end;
    end
  else
    ShowMessage('Você deve informar "Referência", "Material", "Cor", "qtd." maior que zero, ' + #13 +
                '"Dt. de embarque" e "vlr. unitário" maior que zero, para confirmar a inserção de um item!');
end;

procedure TfPedido.BitBtn8Click(Sender: TObject);
begin
  vObsItem         := '';
  vReprogramacao   := False;
  vDtEmbarque      := 0;
  vDtReprogramacao := 0;
  vItemPed         := 0;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo10.ClearValue;
  RxDBLookupCombo11.ClearValue;
  RxDBLookupCombo12.ClearValue;
  Edit5.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  DateEdit1.Clear;
  CurrencyEdit1.Enabled := False;
  BitBtn16.Tag := 0;
  vEdit        := 'N';
  vNumTalaoAlt := 0;
  BitBtn16.Tag := 0;
  tAuxPedidoMat.First;
  while not tAuxPedidoMat.EOF do
    begin
      tAuxPedMatCons.First;
      while not tAuxPedMatCons.Eof do
        tAuxPedMatCons.Delete;
      tAuxPedidoMat.Delete;
    end;
  RxDBLookupCombo11.SetFocus;
end;

procedure TfPedido.BitBtn9Click(Sender: TObject);
begin
  if DM1.tPedidoGerarLote.AsString <> '1' then
    begin
      if DM1.tPedidoItemQtdParesFat.AsFloat > 0 then
        ShowMessage('Este item já foi faturado')
      else
      if DM1.tPedidoItemLoteGer.AsBoolean then
        ShowMessage('Este item já foi gerado lote')
      else
      if DM1.tPedidoItemNumTalao.AsInteger > 0 then
        ShowMessage('Esse item possui talão!')
      else
      if MessageDlg('Deseja realmente excluir este produto do pedido?',mtConfirmation,
         [mbOK,mbNo],0) = mrOK then
        begin
          if DM1.tPedidoItemReposicao.AsBoolean then
            begin
              DM1.tPedidoQtdParesRep.AsFloat  := DM1.tPedidoQtdParesRep.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoVlrReposicao.AsFloat := DM1.tPedidoVlrReposicao.AsFloat - DM1.tPedidoItemVlrTotal.AsFloat;
              DM1.tPedidoGrade.First;
              while not DM1.tPedidoGrade.Eof do
                DM1.tPedidoGrade.Delete;
              DM1.tPedidoMaterial.First;
              while not DM1.tPedidoMaterial.Eof do
                DM1.tPedidoMaterial.Delete;
            end
          else
            begin
              DM1.tPedidoQtdPares.AsFloat      := DM1.tPedidoQtdPares.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoQtdParesRest.AsFloat  := DM1.tPedidoQtdParesRest.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoQtdParesCanc.AsFloat  := DM1.tPedidoQtdParesCanc.AsFloat - DM1.tPedidoItemQtdParesCanc.AsFloat;
              DM1.tPedidoVlrMercadoria.AsFloat := DM1.tPedidoVlrMercadoria.AsFloat -
                                                  (DM1.tPedidoItemPreco.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
              DM1.tPedidoPesoBruto.AsFloat     := DM1.tPedidoPesoBruto.AsFloat - DM1.tPedidoItemlkPesoBruto.AsFloat *
                                                  DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoPesoLiquido.AsFloat   := DM1.tPedidoPesoLiquido.AsFloat - DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                                  DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoVlrDesconto.AsFloat   := DM1.tPedidoVlrDesconto.AsFloat -
                                                  (DM1.tPedidoItemVlrDesconto.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
              DM1.tPedidoVlrTotal.AsFloat      := DM1.tPedidoVlrMercadoria.AsFloat - DM1.tPedidoVlrDesconto.AsFloat;
              DM1.tPedidoGrade.First;
              while not DM1.tPedidoGrade.Eof do
                DM1.tPedidoGrade.Delete;
              DM1.tPedidoMaterial.First;
              while not DM1.tPedidoMaterial.Eof do
                DM1.tPedidoMaterial.Delete;
            end;
          DM1.tPedidoItem.Delete;
        end;
    end
  else
    ShowMessage('Lote já gerado, item não pode ser excluido')
end;

procedure TfPedido.DBLookupComboBox1DropDown(Sender: TObject);
begin
  DM1.tPedido.Refresh;
  DM1.tPedido.IndexFieldNames := 'Pedido';
end;

procedure TfPedido.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
    begin
      fTransp := TfTransp.Create(Self);
      fTransp.ShowModal;
      DM1.tPedidoCodTransp.Clear;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de transportadora!');
end;

procedure TfPedido.tAuxPedidoGradeBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  if vEdit <> 'C' then
    begin
      icount := fPedido.tAuxPedidoGrade.RecordCount;
      if icount >= DM1.tGradeItem.RecordCount then
        begin
         fPedidoGrade.BitBtn5.SetFocus;
         Abort;
       end;
    end;
end;

procedure TfPedido.GroupBox2Enter(Sender: TObject);
begin
  if DM1.tPedidolkPrazoVista.AsString = 'V' then
    ShowMessage('Condição de pagamento é à vista');
end;

procedure TfPedido.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
    begin
      fVendedor := TfVendedor.Create(Self);
      fVendedor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de vendedor!');
end;

procedure TfPedido.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
    begin
      fNatOperacao := TfNatOperacao.Create(Self);
      fNatOperacao.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de transportadora!');
end;

procedure TfPedido.BitBtn13Click(Sender: TObject);
begin
  fPedidoDesconto := TfPedidoDesconto.Create(Self);
  fPedidoDesconto.ShowModal;
end;

procedure TfPedido.SpeedButton8Click(Sender: TObject);
begin
  fPedidoMat := TfPedidoMat.Create(Self);
  fPedidoMat.ShowModal;
  vEdit := 'N';
end;

procedure TfPedido.BitBtn13Exit(Sender: TObject);
begin
  if DM1.tPedido.State in [dsInsert,dsEdit] then
    begin
      DM1.tPedidoVlrDesconto.AsFloat  := 0;
      DM1.tPedidoVlrReposicao.AsFloat := 0;
      DM1.tPedidoItem.First;
      while not DM1.tPedidoItem.EOF do
        begin
          if not (DM1.tPedidoItemCancelado.AsBoolean) then
            begin
              DM1.tPedidoItem.Edit;
              Calc_Desc_Item;
              DM1.tPedidoItem.Post;
            end;
          DM1.tPedidoItem.Next;
        end;
    end;
end;

procedure TfPedido.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tClasFiscal,Name);
  oDBUtils.ActiveDataSet(True,dm1.tSitTributaria,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProduto,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProdutoCor,Name);
  oDBUtils.ActiveDataSet(True,dm1.tTalao,Name);
  oDBUtils.ActiveDataSet(True,dm1.tTalaoGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tTalaoHist,Name);
  oDBUtils.ActiveDataSet(True,dm1.tTabPreco,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoDesconto,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoNota,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProdutoMat,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoMaterial,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProdutoConsumo,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProdutoConsumoItem,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoConsumo,Name);
end;

procedure TfPedido.Imprimir1Click(Sender: TObject);
var
  NumPed: Integer;
begin
  case RadioGroup1.ItemIndex of
    0: Imprime_Pedido;
    1: begin
          RxDBFilter1.Active := True;
          if DM1.tPedidoImpresso.AsBoolean then
            begin
              if MessageDlg('Esse pedido já foi impresso, deseja imprimi-lo novamente?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
                begin
                  NumPed := DM1.tPedidoPedido.AsInteger;
                  DM1.tPedido.Filtered := False;
                  DM1.tPedido.Filter   := 'Pedido = '''+IntToStr(NumPed)+'''';
                  DM1.tPedido.Filtered := True;
                  fRelPedido := tfRelPedido.Create(Self);
                  fRelPedido.QuickRep1.Print;
                  fRelPedido.QuickRep1.Free;
                  DM1.tPedido.Filtered := False;
                  DM1.tPedido.FindKey([NumPed]);
                  DM1.tPedido.Edit;
                  DM1.tPedidoImpresso.AsBoolean := True;
                  DM1.tPedido.Post;
                end;
            end
          else
            begin
              NumPed := DM1.tPedidoPedido.AsInteger;
              DM1.tPedido.Filtered := False;
              DM1.tPedido.Filter   := 'Pedido = '''+IntToStr(NumPed)+'''';
              DM1.tPedido.Filtered := True;
              fRelPedido := tfRelPedido.Create(Self);
              fRelPedido.QuickRep1.Print;
              fRelPedido.QuickRep1.Free;
              DM1.tPedido.Filtered := False;
              DM1.tPedido.FindKey([NumPed]);
              DM1.tPedido.Edit;
              DM1.tPedidoImpresso.AsBoolean := True;
              DM1.tPedido.Post;
            end;
          RxDBFilter1.Active := False;
        end;
  end;
end;

procedure TfPedido.Visualizar1Click(Sender: TObject);
var
  NumPed: Integer;
begin
  RxDBFilter1.Active := True;
  NumPed := DM1.tPedidoPedido.AsInteger;
  DM1.tPedido.Filtered := False;
  DM1.tPedido.Filter   := 'Pedido = '''+IntToStr(NumPed)+'''';
  DM1.tPedido.Filtered := True;
  fRelPedido := tfRelPedido.Create(Self);
  fRelPedido.QuickRep1.Preview;
  fRelPedido.QuickRep1.Free;
  DM1.tPedido.Filtered := False;
  DM1.tPedido.FindKey([NumPed]);
  RxDBFilter1.Active := False;
end;

procedure TfPedido.PopupMenu1Popup(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : PopupMenu1.Items.Items[1].Enabled := False;
    1 : PopupMenu1.Items.Items[1].Enabled := True;
  end;
end;

procedure TfPedido.FormShow(Sender: TObject);
begin
  RxDBFilter2.Active := True;

  tPedido2.open;
  tProdutoCor.open;
  tAuxPedMatCons.open;
  tClientes.open;
  tPedidoIns.open;
  tPedidoItemIns.open;
  tAuxPedidoGrade.open;
  tPedidoMaterialIns.open;
  tPedidoDescontoIns.open;
  dm1.tPedidoCanc.Open;

  mPedidoItem.open;
  mPedidoGrade.open;
  tAuxPedidoMat.open;
  tGradeItem.open;
  tPedidoGrade.open;

  Label19.Caption := RxDBLookupCombo4.LookupDisplay;
  PageControl1.ActivePage := TabSheet1;
  if DM1.tPedidoCancelado.AsBoolean = False then
    Panel9.SendToBack
  else
    Panel9.BringToFront;
  if (DM1.tPedidoCopiado.AsBoolean) or (DM1.tPedidoQtdParesFat.AsInteger > 0) then
    begin
      BitBtn18.Enabled := True;
      BitBtn18.Visible := True;
    end
  else
    begin
      BitBtn18.Enabled := False;
      BitBtn18.Visible := False;
    end;
end;

procedure TfPedido.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Verifica_Pedido;
end;

procedure TfPedido.BitBtn10Click(Sender: TObject);
begin
  if DM1.tPedidoQtdParesFat.AsInteger > 0 then
    ShowMessage('Pedido não pode ser cancelado, já foi faturado')
  else
    begin
      if DM1.tPedidoCancelado.AsBoolean = False then
        begin
          if MessageDlg('Deseja realmente cancelar este pedido?',mtWarning,[mbOK,mbNO],0) = mrOK then
            begin
              if MessageDlg('                                  ATENÇÃO'
                            +#13#13+
                            'Após cancelado, esta operação não mais poderá ser desfeita!'+#13+
                            '  Clique no botão "Não" para sair sem cancelar o pedido.',mtInformation,
                            [mbOK,mbNO],0) = mrOK then
                begin
                  DM1.tPedido.Edit;
                  DM1.tPedidoCancelado.AsBoolean    := True;
                  DM1.tPedidoQtdParesCanc.AsInteger := DM1.tPedidoQtdParesCanc.AsInteger + DM1.tPedidoQtdParesRest.AsInteger;
                  DM1.tPedidoQtdParesRest.AsInteger := 0;
                  DM1.tPedido.Post;
                  Verifica_Pedido;
                end;
            end;
        end
      else
        ShowMessage('Este pedido já foi cancelado!');
    end;
end;

procedure TfPedido.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tPedidoGerarLote.AsString = '1' then
    ShowMessage('Lote já gerado, item não pode ser excluido')
  else
  if DM1.tPedidoItemQtdParesCanc.AsInteger > 0 then
    ShowMessage('Item já esta cancelado!')
  else
  if DM1.tPedidoItemReposicao.AsBoolean then
    ShowMessage('Este item é reposição, não pode ser cancelado, só excluido!')
  else
  if DM1.tPedidoItemQtdParesFat.AsInteger > 0 then
    ShowMessage('Item já esta faturado, não pode ser cancelado!')
  else
  if MessageDlg('Deseja realmente cancelar o item '+DM1.tPedidoItemItem.AsString+' ?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
    begin
      DM1.tPedidoItem.Edit;
      DM1.tPedidoItemCancelado.AsBoolean    := True;
      DM1.tPedidoVlrMercadoria.AsFloat      := DM1.tPedidoVlrMercadoria.AsFloat -
                                              (DM1.tPedidoItemPreco.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
      DM1.tPedidoPesoBruto.AsFloat          := DM1.tPedidoPesoBruto.AsFloat - DM1.tPedidoItemlkPesoBruto.AsFloat *
                                              DM1.tPedidoItemQtdPares.AsFloat;
      DM1.tPedidoPesoLiquido.AsFloat        := DM1.tPedidoPesoLiquido.AsFloat - DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                              DM1.tPedidoItemQtdPares.AsFloat;
      DM1.tPedidoQtdPares.AsFloat           := DM1.tPedidoQtdPares.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
      DM1.tPedidoQtdParesRest.AsFloat       := DM1.tPedidoQtdParesRest.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
      DM1.tPedidoQtdParesCanc.AsFloat       := DM1.tPedidoQtdParesCanc.AsFloat + DM1.tPedidoItemQtdPares.AsFloat;
      DM1.tPedidoVlrDesconto.AsFloat        := DM1.tPedidoVlrDesconto.AsFloat -
                                              (DM1.tPedidoItemVlrDesconto.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
      DM1.tPedidoVlrTotal.AsFloat           := DM1.tPedidoVlrMercadoria.AsFloat - DM1.tPedidoVlrDesconto.AsFloat;
      DM1.tPedidoItemQtdParesCanc.AsInteger := DM1.tPedidoItemQtdPares.AsInteger;
      DM1.tPedidoItemQtdParesRest.AsInteger := 0;
      DM1.tPedidoItem.Post;
    end;
end;

procedure TfPedido.RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  AFont.Color := clBlack;
  if not DM1.tPedidoItemGerarTalao.AsBoolean then
    Background  := clInfoBk
  else
  if (DM1.tPedidoItemGerarTalao.AsBoolean) and (DM1.tPedidoItemNumTalao.AsInteger < 1) then
      Background  := $00C8E9A3;
  if DM1.tPedidoItemQtdPares.AsInteger <= 0 then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if not (DM1.tPedidoItemCancelado.AsBoolean) and (DM1.tPedidoItemQtdParesRest.AsFloat <= 0) and (DM1.tPedidoItemQtdParesFat.AsFloat > 0) then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end
  else
  if (Dm1.tPedidoItemDtBaixa.AsDateTime > 1) then
    Background  := clYellow
  else
  if (DM1.tPedidoItemReposicao.AsBoolean) or (DM1.tPedidoItemReprogramacao.AsBoolean) then
    Background  := clAqua;
end;

procedure TfPedido.BitBtn15Click(Sender: TObject);
begin
  fCopiaPedidos := TfCopiaPedidos.Create(Self);
  fCopiaPedidos.ShowModal;
end;

procedure TfPedido.BitBtn16Click(Sender: TObject);
var
 i : Integer;
begin
  if DM1.tPedidoItem.IsEmpty then
    exit;

  if Dm1.tPedidoItemQtdParesFat.AsFloat > 0 then
    begin
      ShowMessage('Item já faturado, não pode ser alterado!');
      exit;
    end;


  if Dm1.tPedidoItemNumTalao.AsInteger > 0 then
    begin
      if MessageDlg('Já foi gerado talão,  Deseja alterar este item?', mtConfirmation,[mbOk,mbNo],0)=mrNO then
        exit;
      if (DM1.tTalao.Locate('Talao',DM1.tPedidoItemNumTalao.AsInteger,[loCaseInsensitive])) and
         (DM1.tTalaoQtdProduzida.AsFloat > 0) then
        begin
          ShowMessage('Talão já possui qtde. produzida!');
          exit;
        end;
    end;

  if DM1.tPedidoItemQtdParesFat.AsInteger > 0 then
    ShowMessage('Item do pedido já esta faturado!')
  else
  if DM1.tPedidoItemQtdParesCanc.AsInteger > 0 then
    ShowMessage('Item do pedido já esta cancelado!')
  else
    begin
      if RxDBLookupCombo11.Text = '' then
        begin
          BitBtn16.Tag := 1;
          vEdit    := 'S';
          vItemPed := DM1.tPedidoItemItem.AsInteger;
          CurrencyEdit3.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
          RxDBLookupCombo11.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
          if DM1.tPedidoItemSitTrib.AsInteger > 0 then
            RxDBLookupCombo12.KeyValue := DM1.tPedidoItemSitTrib.AsInteger;
          Edit4.Text                   := DM1.tPedidoItemFabrica.AsString;
          Edit5.Text                   := DM1.tPedidoItemNumOS.AsString;
          CurrencyEdit1.Value          := DM1.tPedidoItemQtdPares.AsCurrency;
          CurrencyEdit2.Value          := DM1.tPedidoItemPreco.AsCurrency;
          DateEdit1.Date               := DM1.tPedidoItemDtEmbarque.AsDateTime;
          CheckBox1.Checked            := DM1.tPedidoItemGerarTalao.AsBoolean;
          vDtEmbarque                  := DM1.tPedidoItemDtEmbarque.AsDateTime;
          vDtReprogramacao             := DM1.tPedidoItemDtReprogramacao.AsDateTime;
          Cor                          := DM1.tPedidoItemCodCor.AsInteger;
          vDescMat                     := DM1.tPedidoItemlkDescMaterial.AsString;
          vReprogramacao               := DM1.tPedidoItemReprogramacao.AsBoolean;
          vObsItem                     := DM1.tPedidoItemObs.AsString;
          vNumTalaoAlt                 := DM1.tPedidoItemNumTalao.AsInteger;
          BitBtn16.Tag := 1;
          RxDBLookupCombo11Exit(Sender);
          if DM1.tPedidoItemCodCor.AsInteger > 0 then
            begin
              qCorRef.Active               := False;
              qCorRef.Params[0].AsInteger  := DM1.tProdutoCodigo.AsInteger;
              qCorRef.Active               := True;
              RxDBLookupCombo3.KeyValue    := Cor;
            end;
          if DM1.tPedidoItemReposicao.AsBoolean then
            begin
              DM1.tPedidoQtdParesRep.AsFloat  := DM1.tPedidoQtdParesRep.AsFloat - CurrencyEdit1.Value;
              DM1.tPedidoVlrReposicao.AsFloat := DM1.tPedidoVlrReposicao.AsFloat - DM1.tPedidoItemVlrTotal.AsFloat;
            end
          else
            begin
              DM1.tPedidoQtdPares.AsFloat      := DM1.tPedidoQtdPares.AsFloat - CurrencyEdit1.Value;
              DM1.tPedidoQtdParesRest.AsFloat  := DM1.tPedidoQtdParesRest.AsFloat - CurrencyEdit1.Value;
              DM1.tPedidoPesoBruto.AsFloat     := DM1.tPedidoPesoBruto.AsFloat - (DM1.tPedidoItemlkPesoBruto.AsFloat *
                                                  DM1.tPedidoItemQtdPares.AsFloat);
              DM1.tPedidoPesoLiquido.AsFloat   := DM1.tPedidoPesoLiquido.AsFloat - (DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                                  DM1.tPedidoItemQtdPares.AsFloat);
              DM1.tPedidoVlrMercadoria.AsFloat := DM1.tPedidoVlrMercadoria.AsFloat -
                                                  (DM1.tPedidoItemPreco.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
              DM1.tPedidoVlrDesconto.AsFloat   := DM1.tPedidoVlrDesconto.AsFloat -
                                                  (DM1.tPedidoItemVlrDesconto.AsFloat * DM1.tPedidoItemQtdPares.AsInteger);
              DM1.tPedidoVlrTotal.AsFloat      := DM1.tPedidoVlrMercadoria.AsFloat - DM1.tPedidoVlrDesconto.AsFloat;
            end;
    // grava a grade nos itens
          tAuxPedidoGrade.First;
          while not tAuxPedidoGrade.Eof do
            tAuxPedidoGrade.Delete;
          DM1.tPedidoGrade.First;
          if DM1.tPedidoItemCodGrade.AsInteger > 0 then
            begin
              DM1.tGrade.IndexFieldNames := 'Codigo';
              DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
            end;
          while not DM1.tPedidoGrade.Eof do
            begin
              tAuxPedidoGrade.Insert;
              tAuxPedidoGradePedido.AsInteger    := DM1.tPedidoGradePedido.AsInteger;
              tAuxPedidoGradeCodGrade.AsInteger  := DM1.tPedidoGradeCodGrade.AsInteger;
              tAuxPedidoGradePosicao.AsInteger   := DM1.tPedidoGradePosicao.AsInteger;
              tAuxPedidoGradeQtd.asFloat         := DM1.tPedidoGradeQtd.AsFloat;
              tAuxPedidoGradeVlrUnitario.asFloat := DM1.tPedidoGradeVlrUnitario.AsFloat;
              tAuxPedidoGrade.Post;
              DM1.tPedidoGrade.Delete;
            end;
    // grava os materiais na tabela auxiliar
          tAuxPedidoMat.First;
          while not tAuxPedidoMat.EOF do
            begin
              tAuxPedMatCons.First;
              while not tAuxPedMatCons.Eof do
                tAuxPedMatCons.Delete;
              tAuxPedidoMat.Delete;
            end;
          i := 0;
          DM1.tPedidoMaterial.First;
          while not DM1.tPedidoMaterial.EOF do
            begin
              inc(i);
              tAuxPedidoMat.Insert;
              tAuxPedidoMatPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
              tAuxPedidoMatItem.AsInteger        := i;
              tAuxPedidoMatCodCor.AsInteger      := DM1.tPedidoMaterialCodCor.AsInteger;
              tAuxPedidoMatCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
              tAuxPedidoMatConsumoPr.AsFloat     := DM1.tPedidoMaterialConsumoPr.AsFloat;
              tAuxPedidoMatImpTalao.AsString     := DM1.tPedidoMaterialImpTalao.AsString;
              tAuxPedidoMatTipoConsumo.AsString  := DM1.tPedidoMaterialTipoConsumo.AsString;
              if DM1.tPedidoMaterialTipoConsumo.AsString = 'T' then
                begin
                  DM1.tPedidoConsumo.First;
                  while not DM1.tPedidoConsumo.Eof do
                    begin
                      tAuxPedMatCons.Insert;
                      tAuxPedMatConsPedido.AsInteger   := DM1.tPedidoPedido.AsInteger;
                      tAuxPedMatConsItem.AsInteger     := i;
                      tAuxPedMatConsCodGrade.AsInteger := DM1.tPedidoConsumoCodGrade.AsInteger;
                      tAuxPedMatConsPosicao.AsInteger  := DM1.tPedidoConsumoPosicao.AsInteger;
                      tAuxPedMatConsConsumo.AsFloat    := DM1.tPedidoConsumoConsumo.AsFloat;
                      tAuxPedMatCons.Post;
                      DM1.tPedidoConsumo.Delete;
                    end;
                end;
              tAuxPedidoMat.Post;
              DM1.tPedidoMaterial.Delete;
            end;
          Grava_tPedidoLog;  
          DM1.tPedidoItem.Delete;
        end
      else
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
    end;
  CurrencyEdit3.SetFocus;
end;

procedure TfPedido.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tPedido.IndexFieldNames := 'PedidoCliente';
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedido.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPedido.IndexFieldNames := 'Pedido';
  Edit2.Text := RxDBLookupCombo2.Text;
end;

procedure TfPedido.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioProduto.AsBoolean then
    begin
      RxDBFilter2.Active := False;
      fProduto := TfProduto.Create(Self);
      fProduto.ShowModal;
      RxDBFilter2.Active := True;
      DM1.tProduto.Refresh;
      DM1.tProdutoCor.Refresh;
      DM1.tProdutoMat.Refresh;
      if (RxDBLookupCombo11.Text <> '') and (BitBtn16.Tag <> 1) then
        begin
          DM1.tProduto.Locate('Codigo',RxDBLookupCombo11.KeyValue,[loCaseInsensitive]);
          qCorRef.Active              := False;
          qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
          qCorRef.Active              := True;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfPedido.Edit2Change(Sender: TObject);
begin
  try
    DM1.tPedido.IndexFieldNames := 'Pedido';
    DM1.tPedido.FindNearest([Edit2.Text]);
    Verifica_Pedido;
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfPedido.RxDBLookupCombo2Change(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo2.Text;
end;

procedure TfPedido.Edit3Change(Sender: TObject);
begin
  try
    DM1.tPedido.IndexFieldNames := 'PedidoCliente';
    DM1.tPedido.FindNearest([Edit3.Text]);
    Verifica_Pedido;
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfPedido.RxDBLookupCombo1Change(Sender: TObject);
begin
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedido.DBDateEdit1Exit(Sender: TObject);
begin
  if DM1.tPedidoDtEmissao.AsString = '' then
    begin
      ShowMessage('Data de emissão não pode ser vazia!');
      DBDateEdit1.SetFocus;
      DBDateEdit1.Date := Date;
    end;
end;

procedure TfPedido.RxDBGrid1DblClick(Sender: TObject);
begin
  vEdit := 'C';
  BitBtn16.Tag := 2;
// grava a grade nos itens
  tAuxPedidoGrade.First;
  while not tAuxPedidoGrade.Eof do
    tAuxPedidoGrade.Delete;
  DM1.tPedidoGrade.First;
  while not DM1.tPedidoGrade.Eof do
    begin
      tAuxPedidoGrade.Insert;
      tAuxPedidoGradeCodGrade.AsInteger   := DM1.tPedidoGradeCodGrade.AsInteger;
      tAuxPedidoGradePosicao.AsInteger    := DM1.tPedidoGradePosicao.AsInteger;
      tAuxPedidoGradeQtd.asFloat          := DM1.tPedidoGradeQtd.AsFloat;
      tAuxPedidoGradeVlrUnitario.asFloat  := DM1.tPedidoGradeVlrUnitario.AsFloat;
      tAuxPedidoGrade.Post;
      DM1.tPedidoGrade.Next;
    end;
  fPedidoGrade := TfPedidoGrade.Create(Self);
  fPedidoGrade.ShowModal;
  vEdit        := 'N';
  BitBtn16.Tag := 0;
// Apaga a tabela auxiliar
  tAuxPedidoGrade.First;
  while not tAuxPedidoGrade.Eof do
    tAuxPedidoGrade.Delete;
end;

procedure TfPedido.SpeedButton10Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
      DM1.tSitTributaria.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfPedido.RxDBLookupCombo4Enter(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet3;
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPedido.RxDBLookupCombo4Exit(Sender: TObject);
begin
  vCodSitTrib := 0;
  Dm1.tCliente.IndexFieldNames   := 'Codigo';
  PageControl1.ActivePage        := TabSheet1;
  RxDBLookupCombo4.LookupDisplay := 'Nome';
  Label19.Caption                := RxDBLookupCombo4.LookupDisplay;
  if RxDBLookupCombo4.Text <> '' then
    begin
      DM1.tCliente.SetKey;
      DM1.tClienteCodigo.AsInteger   := RxDBLookupCombo4.KeyValue;
      if DM1.tCliente.GotoKey then
        begin
          RxDBLookupCombo4.Color := clWindow;
          if DM1.tClienteLiberacao.AsString = 'V' then
            begin
              ShowMessage('Cliente com restrição, venda só a vista!');
              RxDBLookupCombo4.Color := clRed;
            end;
          fVerificaCliente := TfVerificaCliente.Create(Self);
          fVerificaCliente.qConsulta.Close;
          fVerificaCliente.qConsulta.ParamByName('CodCli').AsInteger := RxDBLookupCombo4.KeyValue;
          fVerificaCliente.qConsulta.Open;
          fVerificaCliente.qConsulta.First;
          if fVerificaCliente.qConsulta.RecordCount > 0 then
            begin
              if fVerificaCliente.qConsultaDtVencCReceber.AsDateTime < Date then
                begin
                  ShowMessage('Cliente com títulos em atraso!');
                  RxDBLookupCombo4.Color := clRed;
                end
              else
                ShowMessage('Cliente com títulos em aberto, a vencer!');
            end;
          fVerificaCliente.Destroy;

          DM1.tUF.SetKey;
          DM1.tUFSigla.AsString := DM1.tClienteUf.AsString;
          if DM1.tUF.GotoKey then
            vCodSitTrib := DM1.tUFCodSitTrib.AsInteger;
          if (DM1.tPedidoCodVendedor.AsInteger <= 0) and (DM1.tClienteCodVendedor.AsInteger > 0) then
            begin
              DM1.tPedidoPercComissao.AsFloat := 0;
              DM1.tPedidoCodVendedor.AsInteger := DM1.tClienteCodVendedor.AsInteger;
              if DM1.tVendedor2.Locate('Codigo',DM1.tClienteCodVendedor.AsInteger,([Locaseinsensitive])) then
                DM1.tPedidoPercComissao.AsFloat := DM1.tVendedorPercComissao.AsFloat;
            end;
          if (DM1.tPedidoCodCondPgto.AsInteger <= 0) and (DM1.tClienteCodCondPgto.AsInteger > 0) then
            DM1.tPedidoCodCondPgto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
          if DM1.tClienteUf.AsString <> DM1.tEmpresaEstado.AsString then
            DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatVendaF.AsInteger
          else
            DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatVenda.AsInteger;
        end;
    end;
end;

procedure TfPedido.p(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if RxDBLookupCombo4.Text <> '' then
    DM1.tPedidoCodCliente.AsInteger := RxDBLookupCombo4.KeyValue;
end;

procedure TfPedido.PageControl1Enter(Sender: TObject);
begin
//  if PageControl1.ActivePage = TabSheet3 then
//    begin
//      DM1.tCliente.IndexFieldNames := 'Codigo';
//      DM1.tCliente.FindKey([DM1.tPedidoCodCliente.AsInteger]);
//    end;
end;

procedure TfPedido.BitBtn18Click(Sender: TObject);
begin
  fConsPedidoNota := TfConsPedidoNota.Create(Self);
  fConsPedidoNota.ShowModal;
end;

procedure TfPedido.RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo4.LookupDisplay = 'Nome' then
        begin
           RxDBLookupCombo4.CloseUp(True);
           RxDBLookupCombo4.LookupDisplay := 'Fantasia';
           Dm1.tCliente.IndexFieldNames   := 'Fantasia';
           Dm1.tCliente.Refresh;
        end
      else
        begin
          RxDBLookupCombo4.CloseUp(True);
          RxDBLookupCombo4.LookupDisplay := 'Nome';
          Dm1.tCliente.IndexFieldNames   := 'Nome';
          Dm1.tCliente.Refresh;
        end;
      Label19.Caption := RxDBLookupCombo4.LookupDisplay;
    end;
end;

procedure TfPedido.DBEdit8Exit(Sender: TObject);
var
  vPedCliente : String;
  vDigito     : String;
begin
  if DBEdit2.Text <> '' then
    begin
      vPedCliente := DBEdit2.Text;
      vDigito     := DBEdit8.Text;
      tPedidoIns.IndexFieldNames := 'PedidoCliente;PedCliDif';
      tPedidoIns.SetKey;
      tPedidoInsPedidoCliente.AsString := vPedCliente;
      tPedidoInsPedCliDif.AsString     := vDigito;
      if (tPedidoIns.GotoKey) and (tPedidoInsPedido.AsInteger <> DM1.tPedidoPedido.AsInteger) then
        begin
          ShowMessage('Já existe esse nº de pedido de cliente p/ o mesmo cliente em outro pedido!');
          DBEdit2.Clear;
          DBEdit2.SetFocus;
        end;
    end;
end;

procedure TfPedido.BitBtn20Click(Sender: TObject);
var
  vCancAux : Boolean;
begin
  vCancAux := True;
  fPedidoItemCanc := TfPedidoItemCanc.Create(Self);
  fPedidoItemCanc.Tag := 0;
  if DM1.tPedidoItemQtdPares.AsFloat <= 0 then
  begin
    ShowMessage('Item já está cancelado!');
  end
  else
  if DM1.tPedidoItemQtdParesRest.AsFloat <= 0 then
  begin
    ShowMessage('Não existe quantidade para cancelar!');
  end
  else
  if MessageDlg('Deseja cancelar o item '+DM1.tPedidoItemItem.AsString+'?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
    begin
      vCancAux := False;
      fPedidoItemCanc.CurrencyEdit1.ReadOnly := False;
      fPedidoItemCanc.Edit1.ReadOnly         := False;
      fPedidoItemCanc.BitBtn5.Enabled        := True;
    end;
    
  if vCancAux then
    begin
      fPedidoItemCanc.CurrencyEdit1.ReadOnly := True;
      fPedidoItemCanc.Edit1.ReadOnly         := True;
      fPedidoItemCanc.BitBtn5.Enabled        := False;
    end;
  fPedidoItemCanc.ShowModal;
end;

procedure TfPedido.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.LookupDisplay = 'Nome' then
    DM1.tCliente.IndexFieldNames := 'Nome'
  else
    Dm1.tCliente.IndexFieldNames := 'Fantasia';
end;

procedure TfPedido.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfPedido.RxDBLookupCombo6Exit(Sender: TObject);
begin
  if DM1.tPedidoCodVendedor.AsInteger > 0 then
    DM1.tPedidoPercComissao.AsFloat := DM1.tVendedorPercComissao.AsFloat;
end;

procedure TfPedido.RxDBLookupCombo10Exit(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
    Move_itens;
end;

procedure TfPedido.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfPedido.RxDBLookupCombo11Exit(Sender: TObject);
begin
  if RxDBLookupCombo11.Text <> '' then
    Move_Itens;
end;

procedure TfPedido.DBEdit7Enter(Sender: TObject);
begin
  if DM1.tPedidoItem.IsEmpty then
    begin
      ShowMessage('Não há item registrado para inserir observação!');
      DBMemo1.SetFocus;
    end;
end;

procedure TfPedido.DBRadioGroup2Exit(Sender: TObject);
begin
  //*** deixar invisivel este campo a Artesul não vai usar
end;

procedure TfPedido.Edit5Exit(Sender: TObject);
var
 i : Integer;
begin
  i := 0;
  while i <= Length(Edit5.Text) do
    begin
      inc(i);
      if Copy(Edit5.Text,i,1) = ' ' then
        begin
          ShowMessage('O campo não pode conter espaços entre os caracteres');
          Edit5.SetFocus;
          Edit5.Clear;
          i := Length(Edit5.Text) + 1;
        end;
    end;
end;

procedure TfPedido.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if (RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo11.Text <> '') then
    begin
      DM1.tTabPreco.SetKey;
      DM1.tTabPrecoCodCliente.AsInteger := DM1.tPedidoCodCliente.AsInteger;
      DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tTabPrecoCodCor.AsInteger     := RxDBLookupCombo3.KeyValue;
      if DM1.tTabPreco.GotoKey then
        begin
          if (vEdit <> 'S') or not(CurrencyEdit2.Value > 0) then
            CurrencyEdit2.Value := DM1.tTabPrecoPreco.AsFloat;
        end;
    end;
end;

procedure TfPedido.RxDBLookupCombo12Enter(Sender: TObject);
begin
  DM1.tSitTributaria.IndexFieldNames := 'CodSit;SitTributaria';
end;

procedure TfPedido.RxDBLookupCombo12Exit(Sender: TObject);
begin
  DM1.tSitTributaria.IndexFieldNames := 'Codigo';
end;

procedure TfPedido.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tPedidoItemCancelado.AsBoolean then
    ShowMessage('Item cancelado!')
  else
  if DM1.tPedidoItemQtdParesRest.AsFloat = 0 then
    ShowMessage('Item já faturado, não pode ser reprogramado!')
  else
  if DM1.tPedidoItemQtdParesRest.AsFloat > 0 then
    begin
      DM1.tPedidoItem.Edit;
      fDtReprog := TfDtReprog.Create(Self);
      fDtReprog.ShowModal;
    end;
end;

procedure TfPedido.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Edit1.Text <> '') then
    if DM1.tPedidoItem.Locate('NumOS',Edit1.Text,[loCaseInsensitive]) then
      RxDBGrid1.SetFocus;
end;

procedure TfPedido.BitBtn11Click(Sender: TObject);
begin
  if DM1.tPedido.State in [dsBrowse] then
  begin
    fTalao := TfTalao.Create(Self);
    fTalao.ShowModal;
  end;
end;

procedure TfPedido.CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit3.AsInteger > 0 then
        RxDBLookupCombo10.SetFocus
      else
        RxDBLookupCombo11.SetFocus;
    end;
end;

procedure TfPedido.CurrencyEdit3Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit3.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit3.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo11.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo10.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto não cadastrado!');
          CurrencyEdit3.SetFocus;
          CurrencyEdit3.Clear;
        end;
    end;
end;

procedure TfPedido.BitBtn12Click(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
  begin
    DM1.tProduto.IndexFieldNames := 'Codigo';
    DM1.tProduto.SetKey;
    DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo10.KeyValue;
    if (DM1.tProduto.GotoKey) and (DM1.tProdutoLancaGrade.AsBoolean) then
    begin
      fPedidoGrade := TfPedidoGrade.Create(Self);
      fPedidoGrade.ShowModal;
    end
    else
      ShowMessage('Produto não possui grade!');
  end;
end;

procedure TfPedido.CheckBox1Enter(Sender: TObject);
begin
  CheckBox1.Color := clAqua;
end;

procedure TfPedido.CheckBox1Exit(Sender: TObject);
begin
  CheckBox1.Color := clBtnFace;
end;

procedure TfPedido.DBEdit2Exit(Sender: TObject);
begin
  DM1.tPedidoPedidoCliente.AsString := Trim(DBEdit2.Text);
end;

procedure TfPedido.SpeedButton11Click(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    begin
      fVerificaCliente := TfVerificaCliente.Create(Self);
      fVerificaCliente.qConsulta.Close;
      fVerificaCliente.qConsulta.ParamByName('CodCli').AsInteger := RxDBLookupCombo4.KeyValue;
      fVerificaCliente.qConsulta.Open;
      fVerificaCliente.ShowModal;
      fVerificaCliente.qConsulta.Close;
    end;
end;

procedure TfPedido.RxDBLookupCombo9Enter(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfPedido.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfPedido.DBEdit3Exit(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  CurrencyEdit3.SetFocus;
end;

end.
