unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, ExtCtrls, DBCtrls, StdCtrls, Buttons,
  Mask, ToolEdit, CurrEdit, ComCtrls, Db, DBTables, RXLookup, Grids, DBGrids, DBVGrids, MemTable, RxDBComb, ExtDlgs,
  DBFilter, JPEG, RXCtrls, Menus, RXDBCtrl, rsDBUtils, SqlExpr;

type
  TfProduto = class(TForm)
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    tProdutoIns: TTable;
    SpeedButton4: TSpeedButton;
    tProdutoInsCodigo: TIntegerField;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    SpeedButton5: TSpeedButton;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    tProdutoMatIns: TTable;
    tProdutoMatInsCodProduto: TIntegerField;
    tProdutoMatInsItem: TIntegerField;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    tProdutoMatInsCodCorProd: TIntegerField;
    tProdutoCorCop: TTable;
    dsProdutoCorCop: TDataSource;
    tProdutoCorCopCodProduto: TIntegerField;
    tProdutoCorCopCodCor: TIntegerField;
    tProdutoCorCoplkNomeCor: TStringField;
    tProdutoMatCop: TTable;
    dsProdutoMatCop: TDataSource;
    tProdutoMatCopCodProduto: TIntegerField;
    tProdutoMatCopCodCorProd: TIntegerField;
    tProdutoMatCopItem: TIntegerField;
    tProdutoMatCopCodMaterial: TIntegerField;
    tProdutoMatCopCodGrade: TIntegerField;
    tProdutoMatCopCodCor: TIntegerField;
    tProdutoMatCopQtd: TFloatField;
    tProdutoMatCopVlrUnitario: TFloatField;
    tProdutoMatCopVlrTotal: TFloatField;
    Query1: TQuery;
    dsQuery1: TDataSource;
    Label16: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Edit1: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    SpeedButton7: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBGrid1: TDBGrid;
    StaticText1: TStaticText;
    BitBtn13: TBitBtn;
    TabSheet2: TTabSheet;
    StaticText3: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText2: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    StaticText6: TStaticText;
    CurrencyEdit3: TCurrencyEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    DBGrid2: TDBGrid;
    StaticText7: TStaticText;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    RxDBFilter1: TRxDBFilter;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Image1: TImage;
    Bevel5: TBevel;
    RxSpeedButton1: TRxSpeedButton;
    RxDBFilter2: TRxDBFilter;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    DBMemo1: TDBMemo;
    Label26: TLabel;
    RadioGroup1: TRadioGroup;
    tProdutoMatCopImpTalao: TStringField;
    qMat: TQuery;
    qsMat: TDataSource;
    Label29: TLabel;
    BitBtn20: TBitBtn;
    DBEdit17: TDBEdit;
    OpenPictureDialog2: TOpenPictureDialog;
    StaticText12: TStaticText;
    tProdutoMatCopUnidade: TStringField;
    RadioGroup2: TRadioGroup;
    TabSheet3: TTabSheet;
    StaticText8: TStaticText;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Edit3: TEdit;
    StaticText9: TStaticText;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    GroupBox4: TGroupBox;
    RxDBGrid3: TRxDBGrid;
    tProdutoMatCopConsumo: TStringField;
    tProdutoConsumoCop: TTable;
    tProdutoConsumoCopCodProduto: TIntegerField;
    tProdutoConsumoCopCodCorProduto: TIntegerField;
    tProdutoConsumoCopItemMaterial: TIntegerField;
    tProdutoConsumoCopCodGrade: TIntegerField;
    tProdutoConsumoCopConsumo: TFloatField;
    dsProdutoConsumoCop: TDataSource;
    tProdutoConsumoItemCop: TTable;
    tProdutoConsumoItemCopCodProduto: TIntegerField;
    tProdutoConsumoItemCopCodCorProduto: TIntegerField;
    tProdutoConsumoItemCopItemMaterial: TIntegerField;
    tProdutoConsumoItemCopCodGrade: TIntegerField;
    tProdutoConsumoItemCopPosicao: TIntegerField;
    tProdutoConsumoItemCopConsumo: TFloatField;
    DBCheckBox4: TDBCheckBox;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Edit4: TEdit;
    Label18: TLabel;
    RxDBFilter3: TRxDBFilter;
    tProdutoM: TTable;
    dsProdutoM: TDataSource;
    tProdutoMCodigo: TIntegerField;
    tProdutoMCodGrupo: TIntegerField;
    tProdutoMCodSubGrupo: TIntegerField;
    tProdutoMReferencia: TStringField;
    tProdutoMNome: TStringField;
    tProdutoMUnidade: TStringField;
    tProdutoMCodClasFiscal: TStringField;
    tProdutoMCodSitTrib: TIntegerField;
    tProdutoMLancaGrade: TBooleanField;
    tProdutoMCodGrade: TIntegerField;
    tProdutoMQParTalao: TFloatField;
    tProdutoMPesoLiquido: TFloatField;
    tProdutoMPesoBruto: TFloatField;
    tProdutoMInativo: TBooleanField;
    tProdutoMAliqIcms: TFloatField;
    tProdutoMAliqIPI: TFloatField;
    tProdutoMNomeExp: TStringField;
    tProdutoMDescMaterial: TStringField;
    tProdutoMReferencia2: TStringField;
    tProdutoMVlrAtelier: TFloatField;
    tProdutoMNomeModelo: TStringField;
    tProdutoMFotoJpeg: TBlobField;
    tProdutoMObs: TMemoField;
    tProdutoMEndEtiq: TStringField;
    tProdutoMLancaCor: TBooleanField;
    tProdutoMPrecoGrade: TBooleanField;
    tProdutoMVlrVenda: TFloatField;
    tProdutoMProdMat: TStringField;
    tProdutoMPrecoCusto: TFloatField;
    tProdutoMPosseMat: TStringField;
    tProdutoMEstoque: TBooleanField;
    tProdutoMDtAlteracao: TDateField;
    tProdutoMMaterialOutros: TStringField;
    tProdutoMPrecoCor: TBooleanField;
    tProdutoMCodFornecedor: TIntegerField;
    tProdutoMEstMinimo: TFloatField;
    Query1Nome: TStringField;
    Query1Codigo: TIntegerField;
    DBCheckBox5: TDBCheckBox;
    Label5: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit15: TDBEdit;
    RxDBLookupCombo13: TRxDBLookupCombo;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxSpeedButton2: TRxSpeedButton;
    RxSpeedButton3: TRxSpeedButton;
    TabSheet5: TTabSheet;
    RxDBGrid2: TRxDBGrid;
    Label24: TLabel;
    BitBtn21: TBitBtn;
    RxSpeedButton4: TRxSpeedButton;
    BitBtn16: TBitBtn;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    Label27: TLabel;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    Label30: TLabel;
    BitBtn22: TBitBtn;
    DBEdit20: TDBEdit;
    OpenPictureDialog3: TOpenPictureDialog;
    tProdutoInsReferencia: TStringField;
    tProdutoInsReferencia2: TStringField;
    tProdutoInsDescMaterial: TStringField;
    Label47: TLabel;
    DBEdit30: TDBEdit;
    SpeedButton2: TSpeedButton;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label31: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure RadioGroup2Exit(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure TabSheet2Hide(Sender: TObject);
    procedure TabSheet3Exit(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure RxSpeedButton3Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure RxSpeedButton4Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
  private
    { Private declarations }
    vItemMat : Integer;
    vFotoJpeg : string;
    vConfirma : String[1];

    procedure Habilita;
    procedure Opcoes;
    procedure Posiciona_Foto;
  public
    { Public declarations }
  end;

var
  fProduto: TfProduto;

implementation

uses UGrupos, UDM1, UFornecedores, UGrade, UCor, UClasFiscal, USitTributaria, UMaterial, URelFichaTecnica, UDM2, USetor,
  UProdutoConsumo, UConsPreco, UAltEstMinimo, UProdutoTempo, UCopiaProduto, uIntegracao, UOrigemProd, UDMTabImposto,
  DmdDatabase;

{$R *.DFM}

procedure TfProduto.Habilita;
begin
  Panel2.Enabled            := not(Panel2.Enabled);
  Panel4.Enabled            := not(Panel4.Enabled);
  Panel6.Enabled            := not(Panel6.Enabled);
  BitBtn1.Enabled           := not(BitBtn1.Enabled);
  BitBtn2.Enabled           := not(BitBtn2.Enabled);
  BitBtn3.Enabled           := not(BitBtn3.Enabled);
  BitBtn4.Enabled           := not(BitBtn4.Enabled);
  BitBtn5.Enabled           := not(BitBtn5.Enabled);
  BitBtn6.Enabled           := not(BitBtn6.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  BitBtn8.Enabled           := not(BitBtn8.Enabled);
  BitBtn9.Enabled           := not(BitBtn9.Enabled);
  BitBtn13.Enabled          := not(BitBtn13.Enabled);
  BitBtn14.Enabled          := not(BitBtn14.Enabled);
  BitBtn10.Enabled          := not(BitBtn10.Enabled);
  BitBtn11.Enabled          := not(BitBtn11.Enabled);
  BitBtn12.Enabled          := not(BitBtn12.Enabled);
  BitBtn15.Enabled          := not(BitBtn15.Enabled);
  BitBtn17.Enabled          := not(BitBtn17.Enabled);
  BitBtn18.Enabled          := not(BitBtn18.Enabled);
  BitBtn19.Enabled          := not(BitBtn19.Enabled);
  BitBtn21.Enabled          := not(BitBtn21.Enabled);
  CurrencyEdit1.Enabled     := not(CurrencyEdit1.Enabled);
  CurrencyEdit2.Enabled     := not(CurrencyEdit2.Enabled);
  CurrencyEdit3.Enabled     := not(CurrencyEdit3.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  RxDBLookupCombo1.Enabled  := not(RxDBLookupCombo1.Enabled);
  RxDBLookupCombo2.Enabled  := not(RxDBLookupCombo2.Enabled);
  RxDBLookupCombo3.Enabled  := not(RxDBLookupCombo3.Enabled);
  RxDBLookupCombo11.Enabled := not(RxDBLookupCombo11.Enabled);
  RxDBLookupCombo12.Enabled := not(RxDBLookupCombo12.Enabled);
  Edit3.Enabled             := not(Edit3.Enabled);
  SpeedButton7.Enabled      := not(SpeedButton7.Enabled);
  RxDBGrid2.ReadOnly        := not(RxDBGrid2.ReadOnly);
  BitBtn22.Enabled          := not(BitBtn22.Enabled);
  DBEdit20.Enabled          := not(DBEdit20.Enabled);
end;

procedure TfProduto.Opcoes;
begin
  BitBtn14.Visible          := DBCheckBox4.Checked;
  RxDBLookupCombo12.Visible := DBCheckBox4.Checked;
  StaticText7.Visible       := DBCheckBox4.Checked;
  GroupBox1.Enabled         := DBCheckBox4.Checked;
  Label18.Visible           := not(DBCheckBox4.Checked);
end;

procedure Grava_Imagem_JPEG(Tabela:TTable;Campo:TBlobField;Foto:TImage;Dialog:TOpenPictureDialog);
var
  BS : TBlobStream;
  MinhaImagem : TJPEGImage;
begin
  Dialog.InitialDir := 'C:\';
  Dialog.Execute;
  if Dialog.FileName <> '' then
    begin
      if not (DM1.tProduto.State in [dsEdit, dsInsert]) then
        DM1.tProduto.Edit;
      BS := TBlobStream.Create((Campo as TBlobField), BMWrite);
      MinhaImagem := TJPEGImage.Create;
      MinhaImagem.LoadFromFile(Dialog.FileName);
      MinhaImagem.SaveToStream(BS);
      Foto.Picture.Assign(MinhaImagem);
      BS.Free;
      MinhaImagem.Free;
    end;
end;

procedure Le_Imagem_JPEG(Campo:TBlobField;Foto:TImage);
var
  BS : TBlobStream;
  MinhaImagem : TJPEGImage;
begin
  if Campo.AsString <> '' then
    begin
      BS := TBlobStream.Create((Campo as TBlobField), BMRead);
      MinhaImagem := TJPEGImage.Create;
      MinhaImagem.LoadFromStream(BS);
      Foto.Picture.Assign(MinhaImagem);
      BS.Free;
      MinhaImagem.Free;
    end
  else
    Foto.Picture.LoadFromFile('C:\');
end;

procedure TfProduto.Posiciona_Foto;
begin
  {if DM1.tProdutoFotoJpeg.IsNull then
    Image1.Picture := nil
  else
    Le_Imagem_JPEG(DM1.tProdutoFotoJpeg,Image1);}

  if (DM1.tProdutoEndFotoTalao.AsString <> '') and (FileExists(DM1.tProdutoEndFotoTalao.AsString)) then
    Image1.Picture.LoadFromFile(Dm1.tProdutoEndFotoTalao.AsString);
end;

procedure TfProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tProduto.Filtered := False;
  RxDBFilter1.Active    := False;
  RxDBFilter2.Active    := False;
  RxDBFilter3.Active    := False;

  if DMTabImposto.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMTabImposto);

  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfProduto.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfProduto.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioGrupos.AsBoolean then
    begin
      fGrupos := TfGrupos.Create(Self);
      fGrupos.ShowModal;
      DM1.tGrupo.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de grupos!');
end;

procedure TfProduto.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsProduto.AsBoolean then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      tProdutoIns.IndexFieldNames  := 'Codigo';
      tProdutoIns.Refresh;
      tProdutoIns.Last;
      DM1.tProduto.Refresh;
      DM1.tProduto.Insert;
      DM1.tProdutoCodigo.AsInteger       := tProdutoInsCodigo.AsInteger + 1;
      DM1.tProdutoInativo.AsBoolean      := False;
      DM1.tProdutoLancaGrade.AsBoolean   := False;
      DM1.tProdutoPrecoGrade.AsBoolean   := False;
      DM1.tProdutoLancaCor.AsBoolean     := False;
      DM1.tProdutoEstoque.AsBoolean      := True;
      DM1.tProdutoPrecoCor.AsBoolean     := False;
      DM1.tProdutoUnidade.AsString       := 'PC';
      DM1.tProdutoProdMat.AsString       := 'P';
      DM1.tProdutoDtAlteracao.AsDateTime := Date;
      DM1.tProduto.Post;
      DM1.tProduto.Edit;

      DM1.tParametrosSetor.First;
      while not DM1.tParametrosSetor.Eof do
        begin
          DM1.tProdutoSetor.Insert;
          DM1.tProdutoSetorCodProduto.AsInteger      := DM1.tProdutoCodigo.AsInteger;
          DM1.tProdutoSetorItem.AsInteger            := DM1.tParametrosSetorOrdem.AsInteger;
          DM1.tProdutoSetorCodSetor.AsInteger        := DM1.tParametrosSetorCodSetor.AsInteger;
          DM1.tProdutoSetorTempo.AsInteger           := 0;
          DM1.tProdutoSetorTempoRegMaquina.AsInteger := 0;
          DM1.tProdutoSetor.Post;
          DM1.tParametrosSetor.Next;
        end;
      BitBtn2.Tag  := 0;
      BitBtn15.Tag := 0;
      vItemMat     := 0;
      Habilita;
      Opcoes;
      DBEdit1.SetFocus;
      PageControl1.ActivePage := TabSheet1;
      RadioGroup2.Enabled     := True;
      DBCheckBox4Click(Sender);
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfProduto.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltProduto.AsBoolean then
    begin
      BitBtn2.Tag  := 1;
      BitBtn15.Tag := 0;
      vItemMat     := 0;
      vFotoJpeg    := DM1.tProdutoFotoJpeg.AsString;
      DM1.tProduto.Edit;
      Habilita;
      DBEdit1.SetFocus;
      RadioGroup2.Enabled := True;
      DBCheckBox4Click(Sender);
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfProduto.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 1 then
    begin
      DM1.tProdutoFotoJpeg.AsString := vFotoJpeg;
      Posiciona_Foto;
      DM1.tProduto.Cancel;
      Habilita;
      PageControl1.ActivePage := TabSheet1;
      BitBtn2.Tag := 0;
    end
  else
  if BitBtn2.Tag = 0 then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProdutoCor.First;
      while not DM1.tProdutoCor.Eof do
        DM1.tProdutoCor.Delete;
      DM1.tProdutoMat.First;
      while not DM1.tProdutoMat.Eof do
        begin
          DM1.tProdutoConsumo.First;
          while not DM1.tProdutoConsumo.Eof do
            begin
              DM1.tProdutoConsumoItem.First;
              while not DM1.tProdutoConsumoItem.Eof do
                DM1.tProdutoConsumoItem.Delete;
              DM1.tProdutoConsumo.Delete;
            end;
          DM1.tProdutoMat.Delete;
        end;
      DM1.tProdutoCli.First;
      while not DM1.tProdutoCli.Eof do
        DM1.tProdutoCli.Delete;
      DM1.tProdutoSetor.First;
      while not DM1.tProdutoSetor.Eof do
        DM1.tProdutoSetor.Delete;
      DM1.tProduto.Delete;
      Habilita;
      PageControl1.ActivePage := TabSheet1;
      BitBtn2.Tag := 0;
    end;
end;

procedure TfProduto.BitBtn3Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if DM1.tUsuarioExcProduto.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tProduto.IndexFieldNames := 'Codigo';
          DM1.tProdutoCor.First;
          while not DM1.tProdutoCor.Eof do
            DM1.tProdutoCor.Delete;
          DM1.tProdutoMat.First;
          while not DM1.tProdutoMat.Eof do
            begin
              DM1.tProdutoConsumo.First;
              while not DM1.tProdutoConsumo.Eof do
                begin
                  DM1.tProdutoConsumoItem.First;
                  while not DM1.tProdutoConsumoItem.Eof do
                    DM1.tProdutoConsumoItem.Delete;
                  DM1.tProdutoConsumo.Delete;
                end;
              DM1.tProdutoMat.Delete;
            end;
          DM1.tProdutoCli.First;
          while not DM1.tProdutoCli.Eof do
            DM1.tProdutoCli.Delete;
          DM1.tProdutoSetor.First;
          while not DM1.tProdutoSetor.Eof do
            DM1.tProdutoSetor.Delete;
          vCodigo := DM1.tProdutoCodigo.AsInteger;
          DM1.tProduto.Delete;

          Prc_Excluir_Produto_FB(vCodigo);
        end;
     end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfProduto.BitBtn5Click(Sender: TObject);
begin
  if Dm1.tProdutoUnidade.AsString <> '' then
    begin
      if DM1.tProduto.State in [dsEdit,dsInsert] then
        DM1.tProduto.Post;

      Prc_Gravar_Produto_FB(DM1.tProdutoCodigo.AsInteger);

      DM1.tProduto.Refresh;
      Habilita;
      BitBtn1.SetFocus;
      BitBtn2.Tag := 0;
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Campo Unidade não pode ficar em branco!');
end;

procedure TfProduto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tProduto.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o produto antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfProduto.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioClasFiscal.AsBoolean then
    begin
      fClasFiscal := TfClasFiscal.Create(Self);
      fClasFiscal.ShowModal;
      DM1.tClasFiscal.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Clas.fiscal!');
end;

procedure TfProduto.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
      DM1.tSitTributaria.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Sit.Tributaria!');
end;

procedure TfProduto.BitBtn7Click(Sender: TObject);
begin
  if not (RxDBLookupCombo2.Text <> '') then
    ShowMessage('É obrigatório informar o nome da cor!')
  else
    begin
      DM1.tProdutoCor.SetKey;
      DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      if RxDBLookupCombo2.Text <> '' then
        DM1.tProdutoCorCodCor.AsInteger     := RxDBLookupCombo2.KeyValue;
      if DM1.tProdutoCor.GotoKey then
        begin
          ShowMessage('Esta cor já esta lançada para a referência!');
          RxDBLookupCombo2.ClearValue;
          RxDBLookupCombo2.SetFocus;
        end
      else
        begin
          DM1.tProdutoCor.Insert;
          DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
          if RxDBLookupCombo2.Text <> '' then
            DM1.tProdutoCorCodCor.AsInteger := RxDBLookupCombo2.KeyValue;
          DM1.tProdutoCor.Post;
          RxDBLookupCombo2.ClearValue;
          PageControl1.ActivePage := TabSheet2;
        end;
    end;
end;

procedure TfProduto.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo2.SetFocus;
end;

procedure TfProduto.BitBtn9Click(Sender: TObject);
begin
  if not DM1.tProdutoCor.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir esta cor?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tProdutoMat.First;
          while not DM1.tProdutoMat.Eof do
            begin
              DM1.tProdutoConsumo.First;
              while not DM1.tProdutoConsumo.Eof do
                begin
                  DM1.tProdutoConsumoItem.First;
                  while not DM1.tProdutoConsumoItem.Eof do
                    DM1.tProdutoConsumoItem.Delete;
                  DM1.tProdutoConsumo.Delete;
                end;
              DM1.tProdutoMat.Delete;
            end;
          DM1.tProdutoCli.First;
          while not DM1.tProdutoCli.Eof do
            DM1.tProdutoCli.Delete;
          DM1.tProdutoCor.Delete;
        end;
    end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfProduto.GroupBox2Exit(Sender: TObject);
begin
  Opcoes;
end;

procedure TfProduto.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if BitBtn15.Tag = 0 then
    begin
      CurrencyEdit2.Value := tProdutoMPrecoCusto.AsCurrency;
      if tProdutoMLancaGrade.AsBoolean then
        begin
          RadioGroup2.ItemIndex := 0;
          RadioGroup2.Enabled   := False;
          CurrencyEdit1.Enabled := True;
        end
      else
        begin
          RadioGroup2.ItemIndex := 1;
          RadioGroup2.Enabled   := True;
          CurrencyEdit1.Enabled := False;
        end;
    end;
end;

procedure TfProduto.CurrencyEdit2Exit(Sender: TObject);
begin
 if tProdutoMPrecoGrade.AsBoolean = False then
   CurrencyEdit3.Value := CurrencyEdit1.Value * CurrencyEdit2.Value;
end;

procedure TfProduto.BitBtn10Click(Sender: TObject);
var
  vCodCorAux, vUltItem : Integer;
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      tProdutoM.IndexFieldNames := 'Codigo';
      tProdutoM.FindKey([RxDBLookupCombo1.KeyValue]);
    end;
  if (tProdutoMLancaCor.AsBoolean) and (RxDBLookupCombo3.Text = '') and
     (RxDBLookupCombo1.Value <> '') then
    begin
      ShowMessage('Este material é obrigado a informar a cor!');
      RxDBLookupCombo3.SetFocus;
    end
  else
  if (RxDBLookupCombo1.Value <> '') then
    begin
      vCodCorAux := 0;
      if DM1.tProdutoLancaCor.AsBoolean then
        vCodCorAux := DM1.tProdutoCorCodCor.AsInteger;
      if ((RadioGroup2.ItemIndex = 0) and (CurrencyEdit1.Value > 0)) or
         (RadioGroup2.ItemIndex = 1) then
        begin
          // Grava os materiais do produto
          DM1.tProdutoMat.Refresh;
          DM1.tProdutoMat.Last;
          vUltItem := DM1.tProdutoMatItem.AsInteger;
          if BitBtn15.Tag = 1 then
            begin
              DM1.tProdutoMat.SetKey;
              DM1.tProdutoMatCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoMatCodCorProd.AsInteger := vCodCorAux;
              DM1.tProdutoMatItem.AsInteger       := vItemMat;
              if DM1.tProdutoMat.GotoKey then
                DM1.tProdutoMat.Edit
              else
                begin
                  DM1.tProdutoMat.Insert;
                  DM1.tProdutoMatCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoMatCodCorProd.AsInteger := vCodCorAux;
                  DM1.tProdutoMatItem.AsInteger       := vUltItem + 1;
                end;
            end
          else
            begin
              DM1.tProdutoMat.Insert;
              DM1.tProdutoMatCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoMatCodCorProd.AsInteger := vCodCorAux;
              DM1.tProdutoMatItem.AsInteger       := vUltItem + 1;
            end;
          if RxDBLookupCombo1.Text <> '' then
            DM1.tProdutoMatCodMaterial.AsInteger := RxDBLookupCombo1.KeyValue;
          DM1.tProdutoMatCodGrade.AsInteger     := tProdutoMCodGrade.AsInteger;
          Case RadioGroup1.ItemIndex of
            0 : DM1.tProdutoMatImpTalao.AsString := 'S';
            1 : DM1.tProdutoMatImpTalao.AsString := 'N';
          end;
          if RxDBLookupCombo3.Text <> '' then
            DM1.tProdutoMatCodCor.AsInteger := RxDBLookupCombo3.KeyValue
          else
            DM1.tProdutoMatCodCor.AsInteger := 0;
          DM1.tProdutoMatQtd.AsFloat            := CurrencyEdit1.Value;
          DM1.tProdutoMatVlrUnitario.AsCurrency := CurrencyEdit2.Value;
          DM1.tProdutoMatVlrTotal.AsCurrency    := CurrencyEdit3.Value;
          DM1.tProdutoMatUnidade.AsString       := Edit4.Text;
          Case RadioGroup2.ItemIndex of
            0 : DM1.tProdutoMatConsumo.AsString := 'G';
            1 : DM1.tProdutoMatConsumo.AsString := 'T';
          end;
          DM1.tProdutoMat.Post;
          // Grava a quantidade por tamanho dos materiais
          if RadioGroup2.ItemIndex = 1 then
            begin
              fProdutoConsumo := TfProdutoConsumo.Create(Self);
              fProdutoConsumo.ShowModal;
            end
          else
            begin
              DM1.tProdutoConsumo.First;
              while not DM1.tProdutoConsumo.Eof do
                begin
                  DM1.tProdutoConsumoItem.First;
                  while not DM1.tProdutoConsumoItem.Eof do
                    DM1.tProdutoConsumoItem.Delete;
                  DM1.tProdutoConsumo.Delete;
                end;
            end;
          //*****************
          BitBtn11Click(Sender);
        end
      else
        ShowMessage('Não foi informado o consumo');
    end;
end;

procedure TfProduto.BitBtn12Click(Sender: TObject);
begin
  if not DM1.tProdutoMat.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tProdutoConsumo.First;
          while not DM1.tProdutoConsumo.Eof do
            begin
              DM1.tProdutoConsumoItem.First;
              while not DM1.tProdutoConsumoItem.Eof do
                DM1.tProdutoConsumoItem.Delete;
              DM1.tProdutoConsumo.Delete;
            end;
          DM1.tProdutoMat.Delete;
        end;
    end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfProduto.BitBtn11Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo3.ClearValue;
  Edit4.Text;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  RxDBLookupCombo1.SetFocus;
  Query1.Close;
  RadioGroup2.Enabled := True;
  BitBtn15.Tag := 0;
  vItemMat     := 0;
end;

procedure TfProduto.TabSheet2Enter(Sender: TObject);
begin
  if DBCheckBox4.Checked then
    begin
      if DM1.tProdutoCorCodCor.AsInteger < 1 then
        begin
          ShowMessage('Falta informar a cor!');
          PageControl1.ActivePageIndex := 0;
        end
      else
        begin
          StaticText7.Caption      := DM1.tProdutoCorlkNomeCor.AsString;
          DM1.tProdutoMat.Filtered := False;
          DM1.tProdutoMat.Filter   := 'CodCorProd = '''+DM1.tProdutoCorCodCor.AsString+'''';
          DM1.tProdutoMat.Filtered := True;
        end;
    end
  else
    DM1.tProdutoMat.Filtered := False;
end;

procedure TfProduto.BitBtn13Click(Sender: TObject);
begin
  Grava_Imagem_JPEG(DM1.tProduto,DM1.tProdutoFotoJpeg,Image1,OpenPictureDialog1);
end;

procedure TfProduto.BitBtn14Click(Sender: TObject);
begin
  if (RxDBLookupCombo12.Text <> '') and (DM1.tProdutoMat.RecordCount < 1) then
    begin
   // Grava os materiais do produto
      tProdutoMatCop.First;
      while not tProdutoMatCop.EOF do
        begin
          DM1.tProdutoMat.Insert;
          DM1.tProdutoMatCodProduto.AsInteger   := DM1.tProdutoCodigo.AsInteger;
          DM1.tProdutoMatCodCorProd.AsInteger   := DM1.tProdutoCorCodCor.AsInteger;
          DM1.tProdutoMatItem.AsInteger         := tProdutoMatCopItem.AsInteger;
          DM1.tProdutoMatCodMaterial.AsInteger  := tProdutoMatCopCodMaterial.AsInteger;
          DM1.tProdutoMatImpTalao.AsString      := tProdutoMatCopImpTalao.AsString;
          DM1.tProdutoMatCodGrade.AsInteger     := tProdutoMatCopCodGrade.AsInteger;
          DM1.tProdutoMatCodCor.AsInteger       := tProdutoMatCopCodCor.AsInteger;
          DM1.tProdutoMatQtd.AsCurrency         := tProdutoMatCopQtd.AsCurrency;
          DM1.tProdutoMatVlrUnitario.AsCurrency := tProdutoMatCopVlrUnitario.AsCurrency;
          DM1.tProdutoMatVlrTotal.AsCurrency    := tProdutoMatCopVlrTotal.AsCurrency;
          DM1.tProdutoMatConsumo.AsString       := tProdutoMatCopConsumo.AsString;
          DM1.tProdutoMatUnidade.AsString       := tProdutoMatCopUnidade.AsString;
          DM1.tProdutoMat.Post;

          //*** Grava o consumo por grade (quando o consumo for por tamanho)
          tProdutoConsumoCop.First;
          while not tProdutoConsumoCop.Eof do
            begin
              DM1.tProdutoConsumo.Insert;
              DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoMatCodProduto.AsInteger;
              DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoMatCodCorProd.AsInteger;
              DM1.tProdutoConsumoItemMaterial.AsInteger  := tProdutoConsumoCopItemMaterial.AsInteger;
              DM1.tProdutoConsumoCodGrade.AsInteger      := tProdutoConsumoCopCodGrade.AsInteger;
              DM1.tProdutoConsumoConsumo.AsFloat         := tProdutoConsumoCopConsumo.AsFloat;
              DM1.tProdutoConsumo.Post;
              tProdutoConsumoItemCop.First;
              while not tProdutoConsumoItemCop.Eof do
                begin
                  DM1.tProdutoConsumoItem.Insert;
                  DM1.tProdutoConsumoItemCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoConsumoItemCodCorProduto.AsInteger := DM1.tProdutoCorCodCor.AsInteger;
                  DM1.tProdutoConsumoItemItemMaterial.AsInteger  := tProdutoConsumoItemCopItemMaterial.AsInteger;
                  DM1.tProdutoConsumoItemCodGrade.AsInteger      := tProdutoConsumoItemCopCodGrade.AsInteger;
                  DM1.tProdutoConsumoItemPosicao.AsInteger       := tProdutoConsumoItemCopPosicao.AsInteger;
                  DM1.tProdutoConsumoItemConsumo.AsFloat         := tProdutoConsumoItemCopConsumo.AsFloat;
                  DM1.tProdutoConsumoItem.Post;
                  tProdutoConsumoItemCop.Next;
                end;
              tProdutoConsumoCop.Next;
            end;
          tProdutoMatCop.Next;
        end;
    end;
  RxDBLookupCombo12.ClearValue;
end;

procedure TfProduto.BitBtn15Click(Sender: TObject);
begin
  if not DM1.tProdutoMat.IsEmpty then
    begin
      if RxDBLookupCombo1.Text = '' then
        begin
          BitBtn15.Tag := 1;
          if DM1.tProdutoMatCodMaterial.AsInteger > 0 then
            RxDBLookupCombo1.KeyValue := DM1.tProdutoMatCodMaterial.AsInteger;
          if DM1.tProdutoMatCodCor.AsInteger > 0 then
            RxDBLookupCombo3.KeyValue := DM1.tProdutoMatCodCor.AsInteger;
          if DM1.tProdutoMatImpTalao.AsString = 'S' then
            RadioGroup1.ItemIndex := 0
          else
            RadioGroup1.ItemIndex := 1;
          Edit4.Text                := DM1.tProdutoMatUnidade.AsString;
          CurrencyEdit1.Value       := DM1.tProdutoMatQtd.AsCurrency;
          CurrencyEdit2.Value       := DM1.tProdutoMatVlrUnitario.AsCurrency;
          CurrencyEdit3.Value       := DM1.tProdutoMatVlrTotal.AsCurrency;
          vItemMat                  := DM1.tProdutoMatItem.AsInteger;
          Query1.Active  := True;
          RadioGroup2.Enabled := False;
          if DM1.tProdutoMatConsumo.AsString = 'G' then
            begin
              RadioGroup2.ItemIndex := 0;
              CurrencyEdit1.Enabled := True;
            end
          else
            begin
              RadioGroup2.ItemIndex := 1;
              CurrencyEdit1.Enabled := False;
            end;
          RadioGroup1.SetFocus;
        end
      else
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfProduto.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('SELECT Nome, dbCor.Codigo');
      Query1.SQL.Add('FROM dbCor, dbProdutoCor');
      Query1.SQL.Add('WHERE dbCor.Codigo = CodCor');
      Query1.SQL.Add('AND CodProduto = :x0');
      Query1.SQL.Add('ORDER BY Nome');
      Query1.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      Query1.Open;
    end
  else
    Query1.Close;
end;

procedure TfProduto.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
  Edit1.Text := RxDBLookupCombo4.Text;
end;

procedure TfProduto.RxDBLookupCombo4Change(Sender: TObject);
begin
  Edit1.Text := RxDBLookupCombo4.Text;
end;

procedure TfProduto.Edit1Change(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
  DM1.tProduto.FindKey([Edit1.Text]);
  Posiciona_Foto;
  BitBtn14.Visible          := DM1.tProdutoLancaCor.AsBoolean;
  RxDBLookupCombo12.Visible := DM1.tProdutoLancaCor.AsBoolean;
  StaticText7.Visible       := DM1.tProdutoLancaCor.AsBoolean;
  GroupBox1.Enabled         := DM1.tProdutoLancaCor.AsBoolean;
  Label18.Visible           := not(DM1.tProdutoLancaCor.AsBoolean);
  Label17.Visible := not(DM1.tProdutoPrecoGrade.AsBoolean);
  DBEdit9.Visible := not(DM1.tProdutoPrecoGrade.AsBoolean);
end;

procedure TfProduto.DBEdit1Exit(Sender: TObject);
var
  Texto1: String[1];
  i: Integer;
begin
  i := 0;
  while i <= Length(DM1.tProdutoReferencia.AsString) do
  begin
    inc(i);
    Texto1 := Copy(DM1.tProdutoReferencia.AsString,i,1);
    if Texto1 = ' ' then
    begin
      ShowMessage('O código da referência não pode conter espaços');
      i := Length(DM1.tProdutoReferencia.AsString) + 1;
      DM1.tProdutoReferencia.Clear;
      DBEdit1.SetFocus;
    end;
  end;
  if DM1.tProdutoReferencia.AsString <> '' then
    begin
      if tProdutoIns.Locate('Referencia2',DM1.tProdutoReferencia.AsString,[loCaseInsensitive]) then
        begin
          if tProdutoInsCodigo.AsInteger <> DM1.tProdutoCodigo.AsInteger then
            begin
              ShowMessage('Referência cadastrada como R.C200!');
              DM1.tProdutoReferencia.Clear;
              DBEdit1.SetFocus;
            end;
        end;
    end;
end;

procedure TfProduto.DBEdit12Exit(Sender: TObject);
var
  Texto1 : String[1];
  i : Integer;
begin
  i := 0;
  while i <= Length(DM1.tProdutoReferencia2.AsString) do
    begin
      inc(i);
      Texto1 := Copy(DM1.tProdutoReferencia2.AsString,i,1);
      if Texto1 = ' ' then
        begin
          ShowMessage('O código da referência não pode conter espaços');
          i := Length(DM1.tProdutoReferencia2.AsString) + 1;
          DM1.tProdutoReferencia2.Clear;
          DBEdit12.SetFocus;
        end;
    end;
  if (DM1.tProdutoReferencia2.AsString <> '') and (DM1.tProdutoReferencia2.AsString = DM1.tProdutoReferencia.AsString) then
    begin
      ShowMessage('Referência C200 igual a Referência!');
      DM1.tProdutoReferencia2.Clear;
      DBEdit12.SetFocus;
    end
  else
  if DM1.tProdutoReferencia2.AsString <> '' then
    begin
      if tProdutoIns.Locate('Referencia',DM1.tProdutoReferencia2.AsString,[loCaseInsensitive]) then
        begin
          ShowMessage('Referência já esta cadastrada!');
          DM1.tProdutoReferencia2.Clear;
          DBEdit12.SetFocus;
        end;
    end
  else
  if DM1.tProdutoReferencia2.AsString <> '' then
    begin
      if tProdutoIns.Locate('Referencia2',DM1.tProdutoReferencia2.AsString,[loCaseInsensitive]) then
        begin
          ShowMessage('Referência já esta cadastrada como R.C200!');
          DM1.tProdutoReferencia2.Clear;
          DBEdit12.SetFocus;
        end;
    end;
end;

procedure TfProduto.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Posiciona_Foto;
  BitBtn14.Visible          := DM1.tProdutoLancaCor.AsBoolean;
  RxDBLookupCombo12.Visible := DM1.tProdutoLancaCor.AsBoolean;
  StaticText7.Visible       := DM1.tProdutoLancaCor.AsBoolean;
  GroupBox1.Enabled         := DM1.tProdutoLancaCor.AsBoolean;
  Label18.Visible           := not(DM1.tProdutoLancaCor.AsBoolean);
  Label17.Visible := not(DM1.tProdutoPrecoGrade.AsBoolean);
  DBEdit9.Visible := not(DM1.tProdutoPrecoGrade.AsBoolean);
end;

procedure TfProduto.RxDBLookupCombo5Change(Sender: TObject);
begin
  Posiciona_Foto;
  BitBtn14.Visible          := DM1.tProdutoLancaCor.AsBoolean;
  RxDBLookupCombo12.Visible := DM1.tProdutoLancaCor.AsBoolean;
  StaticText7.Visible       := DM1.tProdutoLancaCor.AsBoolean;
  GroupBox1.Enabled         := DM1.tProdutoLancaCor.AsBoolean;
  Label18.Visible           := not(DM1.tProdutoLancaCor.AsBoolean);
  Label17.Visible := not(DM1.tProdutoPrecoGrade.AsBoolean);
  DBEdit9.Visible := not(DM1.tProdutoPrecoGrade.AsBoolean);
end;

procedure TfProduto.Image1DblClick(Sender: TObject);
begin
  if DM1.tProdutoFotoJpeg.AsString <> '' then
    if MessageDlg('Deseja realmente excluir esta figura?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
      begin
        Image1.Picture.Assign(nil);
        DM1.tProdutoFotoJpeg.Clear;
      end;
end;

procedure TfProduto.RxDBLookupCombo4Exit(Sender: TObject);
begin
  Edit1.Text := RxDBLookupCombo4.Text;
end;

procedure TfProduto.DBEdit11Exit(Sender: TObject);
begin
  if tProdutoIns.Locate('Referencia;DescMaterial',VarArrayOf([DM1.tProdutoReferencia.AsString,DM1.tProdutoDescMaterial.AsString]),[loCaseInsensitive]) then
    begin
      if tProdutoInsCodigo.AsInteger <> DM1.tProdutoCodigo.AsInteger then
        begin
          ShowMessage('Referência com este material já cadastrada');
          DM1.tProdutoDescMaterial.Clear;
          DBEdit11.SetFocus;
        end;
    end;
end;

procedure TfProduto.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog3.Execute;
  DM1.tProdutoEndFotoTalao.AsString := OpenPictureDialog3.FileName;
  Posiciona_Foto;
end;

procedure TfProduto.RadioGroup2Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      if RadioGroup2.ItemIndex = 0 then
        begin
          CurrencyEdit1.Enabled := True;
          CurrencyEdit1.SetFocus;
        end
      else
        begin
          CurrencyEdit1.Value   := 0;
          CurrencyEdit1.Enabled := False;
        end;
    end;
end;

procedure TfProduto.DBGrid2DblClick(Sender: TObject);
begin
  if (DM1.tProdutoMatConsumo.AsString = 'T') and (DM1.tProdutoMatCodMaterial.AsInteger > 0) and
     (DM1.tProduto.State in [dsEdit]) then
    begin
      fProdutoConsumo := TfProdutoConsumo.Create(Self);
      fProdutoConsumo.ShowModal;
    end;
end;

procedure TfProduto.BitBtn17Click(Sender: TObject);
begin
  if (RxDBLookupCombo11.Text = '') or (Edit3.Text = '') then
    ShowMessage('Falta informar o cliente ou o código do produto')
  else
  if (RxDBLookupCombo14.Text <> '') and (RxDBLookupCombo13.Text = '') then
    ShowMessage('Falta informar a grade!')
  else
    begin
      if DM1.tProdutoCli.Locate('CodCliente;CodProdCli',VarArrayOf([RxDBLookupCombo11.KeyValue,Edit3.Text]),[locaseinsensitive]) then
        ShowMessage('Este produto do cliente já esta cadastrado')
      else
        begin
          DM1.tProdutoCli.Insert;
          DM1.tProdutoCliCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
          if DM1.tProdutoLancaCor.AsBoolean then
            DM1.tProdutoCliCodCor.AsInteger     := DM1.tProdutoCorCodCor.AsInteger
          else
            DM1.tProdutoCliCodCor.AsInteger     := 0;
          DM1.tProdutoCliCodCliente.AsInteger := RxDBLookupCombo11.KeyValue;
          DM1.tProdutoCliCodProdCli.AsString  := Edit3.Text;
          if (RxDBLookupCombo13.Text <> '') and (RxDBLookupCombo14.Text <> '') then
            begin
              DM1.tProdutoCliCodGrade.AsInteger := RxDBLookupCombo13.KeyValue;
              DM1.tProdutoCliPosicao.AsInteger  := RxDBLookupCombo14.KeyValue;
            end;
          DM1.tProdutoCli.Post;
        end;
      BitBtn18Click(Sender);
    end;
  RxDBLookupCombo11.SetFocus;
end;

procedure TfProduto.BitBtn18Click(Sender: TObject);
begin
  RxDBLookupCombo11.ClearValue;
  RxDBLookupCombo13.ClearValue;
  RxDBLookupCombo14.ClearValue;
  Edit3.Clear;
end;

procedure TfProduto.BitBtn19Click(Sender: TObject);
begin
  if not DM1.tProdutoCli.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        DM1.tProdutoCli.Delete;
    end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfProduto.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfProduto.RxSpeedButton1Click(Sender: TObject);
var
  vProd : Integer;
begin
  vProd := DM1.tProdutoCodigo.AsInteger;
  DM1.tProduto.Filtered := False;
  DM1.tProduto.Filter   := 'Codigo = '''+IntToStr(vProd)+'''';
  DM1.tProduto.Filtered := True;
  fRelFichaTecnica      := TfRelFichaTecnica.Create(Self);
  fRelFichaTecnica.QuickRep1.Preview;
  fRelFichaTecnica.QuickRep1.Free;
  DM1.tProduto.Filtered := False;
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.FindKey([vProd]);
end;

procedure TfProduto.DBCheckBox4Click(Sender: TObject);
begin
  Opcoes;
end;

procedure TfProduto.TabSheet3Enter(Sender: TObject);
begin
  if DBCheckBox4.Checked then
  begin
    DM1.tProdutoCli.Filtered := False;
    DM1.tProdutoCli.Filter   := 'CodCor = '''+DM1.tProdutoCorCodCor.AsString+'''';
    DM1.tProdutoCli.Filtered := True;
  end
  else
    DM1.tProdutoCli.Filtered := False;
end;

procedure TfProduto.TabSheet2Exit(Sender: TObject);
begin
  DM1.tProdutoMat.Filtered := False;
end;

procedure TfProduto.TabSheet2Hide(Sender: TObject);
begin
  DM1.tProdutoMat.Filtered := False;
end;

procedure TfProduto.TabSheet3Exit(Sender: TObject);
begin
  DM1.tProdutoCli.Filtered := False;
end;

procedure TfProduto.RxSpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioTabPreco.AsBoolean then
    begin
      fConsPreco := TfConsPreco.Create(Self);
      fConsPreco.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a entrar neste formulário!');
end;

procedure TfProduto.RxSpeedButton3Click(Sender: TObject);
begin
  fAltEstMinimo := TfAltEstMinimo.Create(Self);
  fAltEstMinimo.ShowModal;
end;

procedure TfProduto.BitBtn21Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este Setor?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    DM1.tProdutoSetor.Delete;
end;

procedure TfProduto.RxSpeedButton4Click(Sender: TObject);
begin
  fProdutoTempo := TfProdutoTempo.Create(Self);
  fProdutoTempo.ShowModal;
end;

procedure TfProduto.BitBtn16Click(Sender: TObject);
begin
  fCopiaProduto := TfCopiaProduto.Create(Self);
  fCopiaProduto.ShowModal;
end;

procedure TfProduto.FormCreate(Sender: TObject);
begin
  if not Assigned(DMTabImposto) then
    DMTabImposto := TDMTabImposto.Create(Self);

  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tParametrosSetor,Name);
  qMat.open;
  PageControl1.ActivePage := TabSheet1;
  RxDBFilter1.Active := True;
  RxDBFilter3.Active := True;
  //Le_Imagem_JPEG(DM1.tProdutoFotoJpeg,Image1);
  Posiciona_Foto;
end;

procedure TfProduto.RxDBLookupCombo6Enter(Sender: TObject);
begin
  DM1.tGrupo.IndexFieldNames := 'Nome';
end;

procedure TfProduto.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCor.IndexFieldNames := 'Nome';
end;

procedure TfProduto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  tProdutoM.IndexFieldNames := 'Nome';
end;

procedure TfProduto.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tProduto.Refresh;
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfProduto.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioRegimeTrib.AsBoolean then
  begin
    fOrigemProd := TfOrigemProd.Create(Self);
    fOrigemProd.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir o formulário!');
end;

procedure TfProduto.DBEdit30Exit(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  //Lei 12.741/12
  if trim(DBEdit30.Text) = '' then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := ' SELECT * FROM TAB_IBPT '
                     + ' WHERE CODIGO = ' + QuotedStr(RxDBLookupCombo8.Text)
                     + '   AND EX = ' + QuotedStr(DBEdit30.Text);
  sds.Open;
  if sds.IsEmpty then
  begin
    MessageDlg('*** Excessão não encontrada na NCM, favor verificar!', mtError, [mbOk], 0);
    DBEdit30.SetFocus;
  end;
  FreeAndNil(sds);
end;

end.
