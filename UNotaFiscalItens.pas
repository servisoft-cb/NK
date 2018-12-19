 unit UNotaFiscalItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, Buttons, StdCtrls, RxLookup, ExtCtrls, Db, DBTables, Mask, ToolEdit,
  CurrEdit, DBCtrls, DBClient, RzButton;

type
  TfNotaFiscalItens = class(TForm)
    CheckBox2: TCheckBox;
    RxDBLookupCombo15: TRxDBLookupCombo;
    Label67: TLabel;
    BitBtn15: TBitBtn;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Edit5: TEdit;
    Label13: TLabel;
    Edit4: TEdit;
    Label12: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label9: TLabel;
    Label2: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    SpeedButton7: TSpeedButton;
    CurrencyEdit3: TCurrencyEdit;
    SpeedButton17: TSpeedButton;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    BitBtn17: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    Edit1: TEdit;
    mMaterial: TClientDataSet;
    mMaterialCodMaterial: TIntegerField;
    mMaterialCodCor: TIntegerField;
    mMaterialNomeMaterial: TStringField;
    mMaterialNomeCor: TStringField;
    mMaterialQtdNota: TFloatField;
    mMaterialQtdConsumo: TFloatField;
    mMaterialCodGrade: TIntegerField;
    mMaterialItemNota: TIntegerField;
    mMaterialQtdConsumoInf: TFloatField;
    mMaterialQtdConsumoOriginal: TFloatField;
    dsmMaterial: TDataSource;
    mSelecionado: TClientDataSet;
    mSelecionadoFilial: TIntegerField;
    mSelecionadoNumNota: TIntegerField;
    mSelecionadoItem: TIntegerField;
    mSelecionadoCodFornecedor: TIntegerField;
    mSelecionadoCodMaterial: TIntegerField;
    mSelecionadoCodCor: TIntegerField;
    mSelecionadoQtdRestante: TFloatField;
    mSelecionadoQtd: TFloatField;
    mSelecionadoNomeMaterial: TStringField;
    mSelecionadoNomeCor: TStringField;
    mSelecionadoUnidade: TStringField;
    mSelecionadoSitTrib: TIntegerField;
    mSelecionadoVlrUnitario: TFloatField;
    mSelecionadoVlrTotalItens: TFloatField;
    dsmSelecionado: TDataSource;
    mAgrupado: TClientDataSet;
    mAgrupadoCodProduto: TIntegerField;
    mAgrupadoReferencia: TStringField;
    mAgrupadoNomeProduto: TStringField;
    mAgrupadoQtd: TFloatField;
    mAgrupadoVlrUnitario: TFloatField;
    mAgrupadoUnidade: TStringField;
    mAgrupadoCodSitTrib: TIntegerField;
    mAgrupadoCodCor: TIntegerField;
    mAgrupadoNomeCor: TStringField;
    dsmAgrupado: TDataSource;
    mAgrupadoCodAgrupamento: TIntegerField;
    mAgrupadoVale: TClientDataSet;
    mAgrupadoValeCodAgrupamento: TIntegerField;
    mAgrupadoValeVale: TIntegerField;
    mAgrupadoValeItem: TIntegerField;
    mAgrupadoValeQtd: TFloatField;
    dsmAgrupadoVale: TDataSource;
    mAgrupadoCodClasFiscal: TStringField;
    qVale: TQuery;
    qValeNumVale: TIntegerField;
    Memo1: TMemo;
    Label20: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    Label25: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CurrencyEdit6: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    Label4: TLabel;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RzButton1: TRzButton;
    mSelecionadoSerie: TStringField;
    mAgrupadoValeNumPedido: TIntegerField;
    mAgrupadoNumPedido: TIntegerField;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    ceFederal: TCurrencyEdit;
    ceEstadual: TCurrencyEdit;
    ceMunicipal: TCurrencyEdit;
    Label26: TLabel;
    ceItemCliente: TCurrencyEdit;
    Label27: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure RxDBLookupCombo15Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure CurrencyEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit6Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo15Exit(Sender: TObject);
    procedure mAgrupadoNewRecord(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure RxDBLookupCombo13Exit(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vCodProduto: Integer;
    vAliqIPI: Real;
    vClasFiscalAnt : String;
    procedure Limpa_Edit;
    procedure Calcula_ICMS;
    procedure Calcula_IPI;
    procedure prc_Busca_IBPT;
    function Monta_Texto(Campo: String; Tamanho: Integer) : String;
  public
    { Public declarations }
    vFonte_Trib, vVersao_Trib : String;
    procedure Move_Itens;
    procedure prc_Mover_Lei_Transparencia;
  end;

var
  fNotaFiscalItens: TfNotaFiscalItens;

implementation

uses UDM1, UEmissaoNotaFiscal, USitTributaria, UProduto, UMaterial, UNotaFiscalGrade, UEscNotaDevolPorItem2, UBuscaPedido, UNotaFiscalOC, UBuscaVale, UCSTIPI,
  UNotaFiscalAliq, uCalculos, UDMTabIBPT, UDMTabEnqIPI, USel_EnqIPI,
  uUtilPadrao;

{$R *.DFM}

procedure TfNotaFiscalItens.Calcula_IPI;
begin
{  vValorIPI  := 0;
  if Edit5.Text <> '' then
    vValorIPI  := CurrencyEdit3.Value * CurrencyEdit4.Value * StrToFloat(Edit5.Text) / 100;}
end;

procedure TfNotaFiscalItens.Calcula_ICMS;
var
  vValorDesc : Real;
  vSitTributaria : Real;
begin
  vValorDesc := 0;
  vBaseICMS := CurrencyEdit3.Value * CurrencyEdit4.Value;
  //Verifica o % desconto
  if CurrencyEdit1.Value > 0 then
    vValorDesc := vBaseICMS * CurrencyEdit1.Value / 100
  else
  if CurrencyEdit2.Value > 0 then
    vValorDesc := CurrencyEdit2.Value;
  //Verifica se soma o ipi na base so icms
  if DM1.tNotaFiscalItensIcmsIpi.AsBoolean then
    vBaseICMS  := vBaseICMS - vValorDesc + vValorIPI
  else
    vBaseICMS  := vBaseICMS - vValorDesc;
  //Lê a tabela da Situação tributária
  vSitTributaria := 0;
  if RxDBLookupCombo13.Text <> '' then
    begin
      DM1.tSitTributaria.IndexFieldNames := 'Codigo';
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := RxDBLookupCombo13.KeyValue;
      if DM1.tSitTributaria.GotoKey then
        vSitTributaria := DM1.tSitTributariaSitTributaria.AsFloat
      else
        ShowMessage('Sit. Tributária não encontrada! ICMS não será calculado!');
    end;
  if vSitTributaria > 0 then
    vBaseICMS := vBaseICMS * vSitTributaria  / 100
  else
    vBaseICMS := 0;
  //Calcula o valor do icms
  if Edit4.Text <= '0' then
    vValorICMS := vBaseICMS * vAliqICMS / 100
  else
  if Edit4.Text <> '' then
    vValorICMS := vBaseICMS * StrToFloat(Edit4.Text) / 100
  else
    begin
      vBaseICMS  := 0;
      vValorICMS := 0;
    end;
end;

procedure TfNotaFiscalItens.Limpa_Edit;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit4.Clear;
  Edit5.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  CurrencyEdit6.Clear;
  CurrencyEdit7.Clear;
  ceFederal.Clear;
  ceEstadual.Clear;
  ceMunicipal.Clear;
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo15.SetFocus;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo13.ClearValue;
  Memo1.Lines.Clear;
  vNumPedido        := 0;
  vItemPedido       := 0;
  vItemNota         := 0;
  CheckBox2.Checked := True;
  vNumNotaDevItem   := 0;
  vCodForncDevItem  := 0;
  vItemDev          := 0;
  mSelecionado.EmptyDataSet;

  fEmissaoNotaFiscal.vPercPis          := 0;
  fEmissaoNotaFiscal.vPercCofins       := 0;
  fEmissaoNotaFiscal.vVlrPis           := 0;
  fEmissaoNotaFiscal.vVlrCofins        := 0;
  fEmissaoNotaFiscal.vCodPis           := '';
  fEmissaoNotaFiscal.vCodCofins        := '';
  fEmissaoNotaFiscal.vTipoPis          := '';
  fEmissaoNotaFiscal.vTipoCofins       := '';
  fEmissaoNotaFiscal.vPercPis          := 0;
  fEmissaoNotaFiscal.vPercCofins       := 0;
  fEmissaoNotaFiscal.vOrigemMerc       := '';
  fEmissaoNotaFiscal.vSomaVlrTotalProd := True;
  fEmissaoNotaFiscal.vVlrTributo       := 0;
  fEmissaoNotaFiscal.vPercTributo      := 0;
end;

procedure TfNotaFiscalItens.Move_Itens;
var
  //12.741/12
  vDescExp : String;
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  fEmissaoNotaFiscal.Verifica_UF;
  CurrencyEdit6.AsInteger := DM1.tProdutoCodigo.AsInteger;
  Edit2.Text              := DM1.tProdutoUnidade.AsString;
  CurrencyEdit3.AsInteger := 1;
  vAliqIPI := 0;
  //Lei 12.741/12
  //Lei 12.741/12
  ceFederal.Value   := 0;
  ceEstadual.Value  := 0;
  ceMunicipal.Value := 0;
  if RxDBLookupCombo15.Text <> '' then
  begin
    DM1.tNatOperacao.IndexFieldNames := 'Codigo';
    DM1.tNatOperacao.SetKey;
    DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo15.KeyValue;
    if DM1.tNatOperacao.GotoKey then
      begin
        //NFe 2.00
        if not(Dm1.tFilialSimplesGaucho.AsBoolean) and not(Dm1.tFilialSimples.AsBoolean) then
        begin
          if (DM1.tNatOperacaoIcms.AsBoolean) and (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) then
          begin
           if vAliqICMS > 0 then
             Edit4.Text := FloatToStr(vAliqICMS)
           else
             Edit4.Text := DM1.tProdutoAliqICMS.AsString;
          end
          else
            Edit4.Clear;
        end;
        if RxDBLookupCombo13.Text <> '' then
          vCodSitTrib := RxDBLookupCombo13.KeyValue;
        if (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) or (vCodProduto <> CurrencyEdit6.AsInteger) then
        begin
          //NFe 2.0
          vCodSitTrib := 0;
          if (DM1.tFilialSimplesGaucho.AsBoolean) or (DM1.tFilialSimples.AsBoolean) then
            if DM1.tClienteCodSitTribSimples.AsInteger > 0 then
              vCodSitTrib := DM1.tClienteCodSitTribSimples.AsInteger;

          //NFe 2.00
          if vCodSitTrib <= 0 then
          begin
            if DM1.tProdutoCodSitTrib.AsInteger > 0 then
              vCodSitTrib := DM1.tProdutoCodSitTrib.AsInteger
            else
            if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
              vCodSitTrib := DM1.tNatOperacaoCodSitTrib.AsInteger
            else
            if DM1.tFilialCodSitTrib.AsInteger > 0 then
              vCodSitTrib := DM1.tFilialCodSitTrib.AsInteger;
          end;
        end;

        if DM1.tNatOperacaoIpi.AsBoolean then
          vAliqIPI := DM1.tProdutoAliqIPI.AsFloat;
        if (vAliqIPI <= 0) and (DM1.tClienteIpi.AsFloat > 0) and (vUsaIPI)  then
          vAliqIPI := DM1.tClienteIpi.AsFloat
        else
        if not vUsaIPI then
          vAliqIPI := 0;
      end;

    //NFe 2.00
    if DM1.tClienteCodCSTIPI.AsString <> '' then
      RxDBLookupCombo6.Value := DM1.tClienteCodCSTIPI.AsString
    else
    if DM1.tProdutoCodCSTIPI.AsString <> '' then
      RxDBLookupCombo6.Value := DM1.tProdutoCodCSTIPI.AsString
    else
    if DM1.tNatOperacaoCodCSTIPI.AsString <> '' then
      RxDBLookupCombo6.Value := DM1.tNatOperacaoCodCSTIPI.AsString
    else
    if DM1.tFilialCodCSTIPI.AsString <> '' then
      RxDBLookupCombo6.Value := DM1.tFilialCodCSTIPI.AsString;

    //NFe 2.0
    fEmissaoNotaFiscal.vSomaVlrTotalProd := DM1.tNatOperacaoSomaMercNF.AsBoolean;
    fEmissaoNotaFiscal.vOrigemMerc := DM1.tProdutoOrigemProd.AsString;
    if (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) or (vCodProduto <> CurrencyEdit6.AsInteger) then
    begin
      if DM1.tNatOperacaoCodPis.AsString <> '' then
      begin
        fEmissaoNotaFiscal.vCodPis  := DM1.tNatOperacaoCodPis.AsString;
        fEmissaoNotaFiscal.vTipoPis := DM1.tNatOperacaoTipoPis.AsString;
        fEmissaoNotaFiscal.vPercPis := DM1.tNatOperacaoPercPis.AsFloat;
      end
      else
      begin
        fEmissaoNotaFiscal.vCodPis  := DM1.tFilialCodPis.AsString;
        fEmissaoNotaFiscal.vTipoPis := DM1.tFilialTipoPis.AsString;
        fEmissaoNotaFiscal.vPercPis := DM1.tFilialPercPis.AsFloat;
      end;

      if DM1.tNatOperacaoCodCofins.AsString <> '' then
      begin
        fEmissaoNotaFiscal.vCodCofins  := DM1.tNatOperacaoCodCofins.AsString;
        fEmissaoNotaFiscal.vTipoCofins := DM1.tNatOperacaoTipoCofins.AsString;
        fEmissaoNotaFiscal.vPercCofins := DM1.tNatOperacaoPercCofins.AsFloat;
      end
      else
      begin
        fEmissaoNotaFiscal.vCodCofins  := DM1.tFilialCodCofins.AsString;
        fEmissaoNotaFiscal.vTipoCofins := DM1.tFilialTipoCofins.AsString;
        fEmissaoNotaFiscal.vPercCofins := DM1.tFilialPercCofins.AsFloat;
      end;
    end;

    //21/12/2015
    if DM1.tProdutoID_EnqIPI.AsInteger > 0 then
      RxDBLookupCombo8.KeyValue := DM1.tProdutoID_EnqIPI.AsInteger
    else
    if DM1.tNatOperacaoID_EnqIPI.AsInteger > 0 then
      RxDBLookupCombo8.KeyValue := DM1.tNatOperacaoID_EnqIPI.AsInteger
    else
    if DM1.tFilialID_EnqIPI.AsInteger > 0 then
      RxDBLookupCombo8.KeyValue := DM1.tFilialID_EnqIPI.AsInteger;
    //************
  end;

  if (Dm1.tFilialSimples.AsBoolean) then
    Edit5.Text := '0'
  else
  if (DM1.tClienteIPISuspenso.AsBoolean) and (DM1.tClienteDtValidadeIPI.AsDateTime < DM1.tNotaFiscalDtEmissao.AsDateTime) then
    Edit5.Text := '0'
  else
    Edit5.Text := FloatToStr(vAliqIPI);
  if vCodSitTrib > 0 then
    RxDBLookupCombo13.KeyValue := vCodSitTrib
  else
    RxDBLookupCombo13.ClearValue;

  if DM1.tProdutoCodClasFiscal.AsString <> '' then
    RxDBLookupCombo5.Value := DM1.tProdutoCodClasFiscal.Value;
  if DM1.tProdutoProdMat.AsString = 'P' then
    CurrencyEdit4.Value := DM1.tProdutoVlrVenda.AsFloat
  else
    CurrencyEdit4.Value := DM1.tProdutoPrecoCusto.AsFloat;
  CurrencyEdit5.Value := CurrencyEdit4.Value;
  //12.741/12
  prc_Mover_Lei_Transparencia;
end;

procedure TfNotaFiscalItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalItens.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
  begin
    fSitTributaria := TfSitTributaria.Create(Self);
    fSitTributaria.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalItens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    DM1.tProduto.IndexFieldNames := 'Codigo';
    DM1.tProduto.SetKey;
    DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo2.KeyValue;
    if DM1.tProduto.GotoKey then
    begin
      if DM1.tProdutoCor.RecordCount < 1 then
        begin
          Edit2.SetFocus;
          RxDBLookupCombo4.ClearValue;
        end;
    end
    else
      RxDBLookupCombo2.SetFocus;
  end
  else
    RxDBLookupCombo2.SetFocus;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) then
      CurrencyEdit4.Value := DM1.tProdutoCorPrCusto.AsFloat;
  if (RxDBLookupCombo4.Text <> '') and not(DM1.tProdutoProdMat.AsString = 'P' ) and (RxDBLookupCombo2.Text <> '')   then
    begin
      DM1.tTabPreco.SetKey;
      DM1.tTabPrecoCodCliente.AsInteger := DM1.tNotaFiscalCodCli.AsInteger;
      DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tTabPrecoCodCor.AsInteger     := RxDBLookupCombo4.KeyValue;
      if DM1.tTabPreco.GotoKey then
        begin
          if CurrencyEdit4.Value = 0 then
            CurrencyEdit4.Value := DM1.tTabPrecoPreco.AsFloat;
        end;
    end;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfNotaFiscalItens.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
      CurrencyEdit6.AsInteger   := RxDBLookupCombo1.KeyValue;
    end
  else
    begin
      RxDBLookupCombo2.ClearValue;
      CurrencyEdit6.Clear;
    end;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
    CurrencyEdit6.AsInteger   := RxDBLookupCombo2.KeyValue;
  end
  else
  begin
    RxDBLookupCombo1.ClearValue;
    CurrencyEdit6.Clear;
  end;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfNotaFiscalItens.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioProduto.AsBoolean then
    begin
      fProduto := TfProduto.Create(Self);
      fProduto.ShowModal;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalItens.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioMaterial.AsBoolean then
    begin
      fMaterial := TfMaterial.Create(Self);
      fMaterial.ShowModal;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalItens.BitBtn15Click(Sender: TObject);
begin
  fEscNotaDevolPorItem2 := TfEscNotaDevolPorItem2.Create(Self);
  fEscNotaDevolPorItem2.ShowModal;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo15Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfNotaFiscalItens.Edit2Exit(Sender: TObject);
begin
  if (DM1.tNotaFiscalSaidaEntrada.AsString = 'S') and (DM1.tProdutoLancaGrade.AsBoolean) then
    begin
      fNotaFiscalGrade := TfNotaFiscalGrade.Create(Self);
      fNotaFiscalGrade.ShowModal;
    end;
end;

procedure TfNotaFiscalItens.SpeedButton17Click(Sender: TObject);
begin
  BitBtn17.Tag := 0;
  vNumPedido   := 0;
  vItemPedido  := 0;
  fBuscaPedido := TfBuscaPedido.Create(Self);
  fBuscaPedido.RadioGroup1.ItemIndex := 0;
  fBuscaPedido.ShowModal;
end;

procedure TfNotaFiscalItens.SpeedButton7Click(Sender: TObject);
begin
  Limpa_Edit;
end;

procedure TfNotaFiscalItens.BitBtn6Click(Sender: TObject);
var
  vNumOC: String;
  vNumOS: String;
  vAuxObs: String;
  vAltera: Boolean;
  vValeFat: Boolean;
  vAux: Real;
  vTextoErro: String;
begin
  //Posiciona o Cliente
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.SetKey;
  DM1.tClienteCodigo.AsInteger := DM1.tNotaFiscalCodCli.AsInteger;
  DM1.tCliente.GotoKey;
  if vSiglaUF = '' then
    fEmissaoNotaFiscal.Verifica_UF;

  //Posiciona o Produto
  if RxDBLookupCombo1.Text <> '' then
  begin
    DM1.tProduto.IndexFieldNames := 'Codigo';
    DM1.tProduto.SetKey;
    DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo1.KeyValue;
    if not DM1.tProduto.GotoKey then
      RxDBLookupCombo1.ClearValue;
    //else
    //  fEmissaoNotaFiscal.vOrigemMerc := dm1.tProdutoOrigemProd.AsString;
  end;

  if (vSiglaUF = '') or (DM1.tNotaFiscalCodCli.AsInteger < 1) then
  begin
    ShowMessage('Cliente não informado ou sem UF!');
    Exit;
  end;

  if (DM1.tProdutoProdMat.AsString <> 'N') and (fEmissaoNotaFiscal.vOrigemMerc = '') then
  begin
    ShowMessage('Falta informar a origem!');
    Exit;
  end;

  vNumOC := '';
  vNumOS := '';
  vAltera := False;

  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Produto não foi informado!');
    Exit;
  end;

  vTextoErro := '';
  if (DM1.tProdutoProdMat.AsString <> 'N') and (RxDBLookupCombo13.Text = '') then
    vTextoErro := 'Situação tributária não foi informada!';

  if RxDBLookupCombo5.Text = '' then
    RxDBLookupCombo5.Value := DM1.tProdutoCodClasFiscal.Value;

  if (DM1.tProdutoProdMat.AsString <> 'N') and (RxDBLookupCombo5.Text = '') then
    vTextoErro := vTextoErro + #13 + 'Falta informar a classificação fiscal!';

  if DM1.tProdutoProdMat.AsString <> 'N' then
  begin
    if CurrencyEdit3.Value <= 0 then
      vTextoErro := vTextoErro + #13 + 'Falta informar a quantidade!';
    if CurrencyEdit4.Value <= 0 then
      vTextoErro := vTextoErro + #13 + 'Falta informar o valor unitário!';
    if CurrencyEdit5.Value <= 0 then
      vTextoErro := vTextoErro + #13 + 'Valor total não calculado!';
  end;

  if vTextoErro <> '' then
  begin
    ShowMessage(vTextoErro);
    Exit;
  end;

  if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo4.Text = '') then
  begin
    ShowMessage('Este produto é obrigatório informar a cor!');
    RxDBLookupCombo4.SetFocus;
    Exit;
  end;

    {  //Posiciona a Natureza
  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo15.Text <> '') then
    begin
      DM1.tNatOperacao.IndexFieldNames := 'Codigo';
      DM1.tNatOperacao.SetKey;
      DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo15.KeyValue;
      if not DM1.tNatOperacao.GotoKey then
        begin
          ShowMessage('Natureza não cadastrada!');
          exit;
        end;
      if not(DM1.tNatOperacaoIcms.AsBoolean) and (DM1.tProdutoProdMat.AsString <> 'N') then
        Edit4.Clear
      else
      if (DM1.tNatOperacaoIcms.AsBoolean) and (Edit4.Text = '') and (DM1.tProdutoProdMat.AsString <> 'N') then
        Edit4.Text := FloatToStr(vAliqICMS);
      if not(DM1.tNatOperacaoIpi.AsBoolean) and (DM1.tProdutoProdMat.AsString <> 'N') then
        Edit5.Text := '0';
    end;
} //tirado Juca 10/03/11

{  if (RxDBLookupCombo15.Text <> '') then
  begin
    vAuxObs := DM1.tNatOperacaoLei1.AsString + DM1.tNatOperacaoLei2.AsString + DM1.tNatOperacaoLei3.AsString;
    if Length(Trim(vAuxObs)) > 0 then
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
} //tirado Juca 10/03/11

  if (RxDBLookupCombo15.Text = '') or (Edit2.Text = '') or (vSiglaUF = '') then
  begin
    ShowMessage('Há campos obrigatório em branco <Nat.Operação>, <Unid.Medida> ou <Cliente sem UF>!');
    Exit;
  end;

  CurrencyEdit4Exit(Sender);

  fEmissaoNotaFiscal.tNotaFiscalItensIns.IndexFieldNames := 'Filial;NumSeq;Item';
  fEmissaoNotaFiscal.tNotaFiscalItensIns.Last;
  DM1.tNotaFiscalItens.Insert;
  if vItemNota > 0 then
    begin
      DM1.tNotaFiscalItensItem.AsInteger := vItemNota;
      vAltera := True;
    end
  else
    DM1.tNotaFiscalItensItem.AsInteger := fEmissaoNotaFiscal.tNotaFiscalItensInsItem.AsInteger + 1;
  DM1.tNotaFiscalItensNatOper.AsInteger    := RxDBLookupCombo15.KeyValue;
  DM1.tNotaFiscalItensCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
  DM1.tNotaFiscalItensReferencia.AsString  := DM1.tProdutoReferencia.AsString;
  DM1.tNotaFiscalItensDescricao.AsString   := DM1.tProdutoNome.AsString;
  DM1.tNotaFiscalItensMaterial.AsBoolean   := False;
  if DM1.tProdutoProdMat.AsString = 'M' then
    DM1.tNotaFiscalItensMaterial.AsBoolean := True;
  DM1.tNotaFiscalItensEstoque.AsBoolean    := CheckBox2.Checked;
  DM1.tNotaFiscalItensCodCor.AsInteger     := 0;
  if RxDBLookupCombo4.Text <> '' then
    DM1.tNotaFiscalItensCodCor.AsInteger := RxDBLookupCombo4.KeyValue;
  DM1.tNotaFiscalItensUnidade.AsString     := Edit2.Text;
  DM1.tNotaFiscalItensQtd.AsFloat          := CurrencyEdit3.Value;
  DM1.tNotaFiscalItensPercComissao.AsFloat := CurrencyEdit7.Value;
  DM1.tNotaFiscalItensGeraDupl.AsBoolean   := DM1.tNatOperacaoGeraDuplicata.AsBoolean;
  DM1.tNotaFiscalItensIcmsIpi.AsBoolean    := DM1.tNotaFiscalIcmsIpi.AsBoolean;
  if BitBtn17.Tag = 1 then
    Dm1.tNotafiscalItensVale.AsBoolean := True
  else
    Dm1.tNotafiscalItensVale.AsBoolean := False;

  if RxDBLookupCombo6.Text <> '' then
    DM1.tNotaFiscalItensCodCSTIPI.AsString := RxDBLookupCombo6.Value
  else
    DM1.tNotaFiscalItensCodCSTIPI.AsString := '';

  if RxDBLookupCombo5.Text <> '' then
    DM1.tNotaFiscalItensClasFiscal.AsString := RxDBLookupCombo5.Value;

  vBaseICMS  := 0;
  vValorICMS := 0;
  vValorIPI  := 0;

  if RxDBLookupCombo13.Text <> '' then
    DM1.tNotaFiscalItensSitTrib.AsInteger := RxDBLookupCombo13.KeyValue
  else
    DM1.tNotaFiscalItensSitTrib.AsInteger := 0;

  DM1.tNotaFiscalItensIcms.AsFloat := 0;
  if (Edit4.Text <> '') and (Edit4.Text <> '0') and not(Dm1.tFilialSimplesGaucho.AsBoolean) then
    if StrToFloat(Edit4.Text) > 0 then
      DM1.tNotaFiscalItensICMS.AsFloat := StrToFloat(Edit4.Text);


  DM1.tNotaFiscalItensBaseICMS.AsCurrency := StrToCurr(FormatCurr('0.00',vBaseICMS));
  DM1.tNotaFiscalItensVlrICMS.AsCurrency  := StrToCurr(FormatCurr('0.00',vValorICMS));
  DM1.tNotaFiscalBaseICMS.AsCurrency      := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseICMS.AsCurrency + vBaseICMS));
  DM1.tNotaFiscalVlrICMS.AsCurrency       := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrICMS.AsCurrency + vValorICMS));
  DM1.tNotaFiscalItensIPI.AsString        := Edit5.Text;
  DM1.tNotaFiscalItensVlrUnit.AsFloat     := CurrencyEdit4.Value;
  DM1.tNotaFiscalItensVlrTotal.AsFloat    := CurrencyEdit5.Value;
  DM1.tNotaFiscalItensDesconto.AsFloat    := CurrencyEdit1.Value;
  DM1.tNotaFiscalItensVlrDesconto.AsFloat := CurrencyEdit2.Value;
  DM1.tNotaFiscalItensVlrIPI.AsFloat      := vValorIPI;
  DM1.tNotaFiscalVlrIPI.AsCurrency        := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrIPI.AsCurrency + vValorIPI));
  DM1.tNotaFiscalPesoBruto.AsFloat        := DM1.tNotaFiscalPesoBruto.AsFloat + DM1.tNotaFiscalItenslkPesoBruto.AsFloat *
                                             DM1.tNotaFiscalItensQtd.AsFloat;
  DM1.tNotaFiscalPesoLiquido.AsFloat      := DM1.tNotaFiscalPesoLiquido.AsFloat + DM1.tNotaFiscalItenslkPesoLiquido.AsFloat *
                                             DM1.tNotaFiscalItensQtd.AsFloat;
  DM1.tNotaFiscalItensQtdRestante.AsFloat := DM1.tNotaFiscalItensQtd.AsFloat;

  //22/12/2015
  if trim(RxDBLookupCombo8.Text) <> '' then
    DM1.tNotaFiscalItensID_ENQIPI.AsInteger := RxDBLookupCombo8.KeyValue
  else
    DM1.tNotaFiscalItensID_ENQIPI.Clear;
  //************

  DM1.tNotaFiscalItensNumPedido.AsInteger  := vNumPedido;
  DM1.tNotaFiscalItensItemPedido.AsInteger := vItemPedido;
  DM1.tNotaFiscalItensCodGrade.AsInteger   := 0;
  if (DM1.tProdutoLancaGrade.AsBoolean) and (fEmissaoNotaFiscal.tAuxNotaFiscalGrade.RecordCount > 0) then
    DM1.tNotaFiscalItensCodGrade.AsInteger  := fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger;

  //Grava a tabela dbPedidoNota
  if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (not DM1.tNotaFiscalItensVale.AsBoolean) then
    begin
      DM1.tPedidoNota.SetKey;
      DM1.tPedidoNotaPedido.AsInteger     := DM1.tNotaFiscalItensNumPedido.AsInteger;
      DM1.tPedidoNotaItem.AsInteger       := DM1.tNotaFiscalItensItemPedido.AsInteger;
      DM1.tPedidoNotaNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tPedidoNotaItemNota.AsInteger   := DM1.tNotaFiscalItensItem.AsInteger;
      DM1.tPedidoNotaTipo.AsString        := 'N';
      if DM1.tPedidoNota.GotoKey then
        DM1.tPedidoNota.Edit
      else
        begin
          DM1.tPedidoNota.Insert;
          DM1.tPedidoNotaPedido.AsInteger     := DM1.tNotaFiscalItensNumPedido.AsInteger;
          DM1.tPedidoNotaFilialNota.AsInteger := DM1.tNotaFiscalFilial.AsInteger;
          DM1.tPedidoNotaNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
          DM1.tPedidoNotaItem.AsInteger       := DM1.tNotaFiscalItensItemPedido.AsInteger;
          DM1.tPedidoNotaNumNota.AsInteger    := DM1.tNotaFiscalNumNota.AsInteger;
          DM1.tPedidoNotaItemNota.AsInteger   := DM1.tNotaFiscalItensItem.AsInteger;
          DM1.tPedidoNotaTipo.AsString        := 'N';
        end;
      DM1.tPedidoNotaQtdPares.AsInteger   := DM1.tNotaFiscalItensQtd.AsInteger;
      DM1.tPedidoNotaDtNota.AsDateTime    := DM1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tPedidoNotaFilialNota.AsInteger := DM1.tNotaFiscalFilial.AsInteger;
      DM1.tPedidoNota.Post;

      vNumOC := DM1.tPedidoPedidoCliente.AsString;
      vNumOS := DM1.tPedidoItemNumOS.AsString;
      DM1.tPedidoItem.Edit;
      DM1.tPedidoItemQtdParesRest.AsInteger := DM1.tPedidoItemQtdParesRest.AsInteger - DM1.tNotaFiscalItensQtd.AsInteger;
      DM1.tPedidoItemQtdParesFat.AsInteger  := DM1.tPedidoItemQtdParesFat.AsInteger + DM1.tNotaFiscalItensQtd.AsInteger;
      DM1.tPedidoItemQtdFatAut.AsInteger    := DM1.tPedidoItemQtdFatAut.AsInteger + DM1.tNotaFiscalItensQtd.AsInteger;
      if DM1.tPedidoItemQtdParesRest.AsInteger > 0 then
        DM1.tPedidoItemCopiado.AsBoolean := False
      else
        DM1.tPedidoItemCopiado.AsBoolean := True;
      DM1.tPedidoItem.Post;
      DM1.tPedido.Edit;
      DM1.tPedidoQtdParesRest.AsInteger := DM1.tPedidoQtdParesRest.AsInteger - DM1.tNotaFiscalItensQtd.AsInteger;
      DM1.tPedidoQtdParesFat.AsInteger  := DM1.tPedidoQtdParesFat.AsInteger + DM1.tNotaFiscalItensQtd.AsInteger;
      DM1.tPedidoQtdFatAut.AsInteger    := DM1.tPedidoQtdFatAut.AsInteger + DM1.tNotaFiscalItensQtd.AsInteger;
      if DM1.tPedidoQtdParesRest.AsInteger > 0 then
        DM1.tPedidoCopiado.AsBoolean  := False
      else
        DM1.tPedidoCopiado.AsBoolean  := True;
      DM1.tPedido.Post;
    end;

  DM1.tNotaFiscalItensNumNotaDevForn.AsInteger := vNumNotaDevItem;
  DM1.tNotaFiscalItensCodFornDev.AsInteger     := vCodForncDevItem;
  DM1.tNotaFiscalItensitemDev.AsInteger        := vItemDev;
  if not DM1.tNotaFiscalItensVale.AsBoolean then
  begin
    DM1.tNotaFiscalItensNumOC.AsString := vNumOC;
    DM1.tNotaFiscalItensNumOS.AsString := vNumOS;
    if not(DM1.tNotaFiscalItensMaterial.AsBoolean) and (DM1.tNotaFiscalItensNumOC.AsString = '') then
    begin
      fNotaFiscalOC := TfNotaFiscalOC.Create(Self);
      fNotaFiscalOC.ShowModal;
    end;
  end;

  DM1.tNotaFiscalItensObsComplementar.Value := Memo1.Lines.Text;
  DM1.tNotaFiscalItensOrigemProd.AsString        := fEmissaoNotaFiscal.vOrigemMerc;
  DM1.tNotaFiscalItensSomaVlrTotalProd.AsBoolean := fEmissaoNotaFiscal.vSomaVlrTotalProd;

  //NFe 2.00
  DM1.tNotaFiscalItensAliqPis.AsFloat       := fEmissaoNotaFiscal.vPercPis;
  DM1.tNotaFiscalItensAliqCofins.AsFloat    := fEmissaoNotaFiscal.vPercCofins;
  DM1.tNotaFiscalItensVlrPis.AsFloat        := fEmissaoNotaFiscal.vVlrPis;
  DM1.tNotaFiscalItensVlrCofins.AsFloat     := fEmissaoNotaFiscal.vVlrCofins;
  DM1.tNotaFiscalItensCodPis.AsString       := fEmissaoNotaFiscal.vCodPis;
  DM1.tNotaFiscalItensCodCofins.AsString    := fEmissaoNotaFiscal.vCodCofins;
  DM1.tNotaFiscalItensTipoPis.AsString      := fEmissaoNotaFiscal.vTipoPis;
  DM1.tNotaFiscalItensTipoCofins.AsString   := fEmissaoNotaFiscal.vTipoCofins;
  //*********************

  //Lei 12.741/12
  //DM1.tNotaFiscalItensPerc_Tributo.AsFloat       := fEmissaoNotaFiscal.vPercTributo;
  DM1.tNotaFiscalItensPERC_TRIBUTO_FEDERAL.AsFloat   := ceFederal.Value;
  DM1.tNotaFiscalItensPERC_TRIBUTO_ESTADUAL.AsFloat  := ceEstadual.Value;
  DM1.tNotaFiscalItensPERC_TRIBUTO_MUNICIPAL.AsFloat := ceMunicipal.Value;
  DM1.tNotaFiscalItensFONTE_TRIBUTO.AsString         := vFonte_Trib;
  DM1.tNotaFiscalItensVERSAO_TRIBUTO.AsString        := vVersao_Trib;

  //3.10 16/03/2015
  if ceItemCliente.AsInteger <= 0 then
    DM1.tNotaFiscalItensItem_Cliente.AsInteger := DM1.tNotaFiscalItensItem.AsInteger
  else
    DM1.tNotaFiscalItensItem_Cliente.AsInteger := ceItemCliente.AsInteger;

  //NF2 2.0
  if fEmissaoNotaFiscal.vOrigemMerc <> '' then
    DM1.tNotaFiscalItensOrigemProd.AsString := fEmissaoNotaFiscal.vOrigemMerc;
  DM1.tNotaFiscalItensAliqPis.AsFloat       := fEmissaoNotaFiscal.vPercPis;
  DM1.tNotaFiscalItensAliqCofins.AsFloat    := fEmissaoNotaFiscal.vPercCofins;
  DM1.tNotaFiscalItensVlrPis.AsFloat        := fEmissaoNotaFiscal.vVlrPis;
  DM1.tNotaFiscalItensVlrCofins.AsFloat     := fEmissaoNotaFiscal.vVlrCofins;

  DM1.tNotaFiscalVlrCofins.AsFloat := DM1.tNotaFiscalVlrCofins.AsFloat + DM1.tNotaFiscalItensVlrCofins.AsFloat;
  DM1.tNotaFiscalVlrPis.AsFloat    := DM1.tNotaFiscalVlrPis.AsFloat + DM1.tNotaFiscalItensVlrPis.AsFloat;
  if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlrDesconto.AsFloat)) > 0 then
    DM1.tNotaFiscalTipoDesconto.AsString := 'I';

  Calculo_GeralItem(DM1.tNotaFiscalitensQtd.AsFloat,DM1.tNotaFiscalItensVlrUnit.AsFloat,DM1.tNotaFiscalItensVlrDesconto.AsFloat,DM1.tNotaFiscalItensDesconto.AsFloat,DM1.tNotaFiscalItensVlrTotal.AsFloat,DM1.tNotaFiscalItensGeraDupl.AsBoolean);
  DM1.tNotaFiscalItens.Post;

  //Gravar a nota de entrada devolvida
  DM1.tNEntrada.IndexFieldNames      := 'NumNEntr;CodForn;Serie';
  DM1.tNEntradaItens.IndexFieldNames := 'CodForn;NumNEntr;Serie;Item';
  if not mSelecionado.IsEmpty then
    begin
      mSelecionado.First;
      while not mSelecionado.Eof do
        begin
          DM1.tNotaFiscalNDevolvida.Insert;
          DM1.tNotaFiscalNDevolvidaFilial.AsInteger          := DM1.tNotaFiscalFilial.AsInteger;
          DM1.tNotaFiscalNDevolvidaNumSeq.AsInteger          := DM1.tNotaFiscalNumSeq.AsInteger;
          DM1.tNotaFiscalNDevolvidaItem.AsInteger            := DM1.tNotaFiscalItensItem.AsInteger;
          DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger   := mSelecionadoCodFornecedor.AsInteger;
          DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger  := mSelecionadoNumNota.AsInteger;
          DM1.tNotaFiscalNDevolvidaSerie.AsString            := mSelecionadoSerie.AsString;
          DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger := mSelecionadoItem.AsInteger;
          DM1.tNotaFiscalNDevolvidaQtd.AsFloat               := StrToFloat(FormatFloat('0.00000',mSelecionadoQtd.AsFloat));
          DM1.tNotaFiscalNDevolvida.Post;

          DM1.tNEntrada.SetKey;
          DM1.tNEntradaNumNEntr.AsInteger := mSelecionadoNumNota.AsInteger;
          DM1.tNEntradaCodForn.AsInteger  := mSelecionadoCodFornecedor.AsInteger;
          DM1.tNEntradaSerie.AsString     := mSelecionadoSerie.AsString;
          if DM1.tNEntrada.GotoKey then
            begin
              DM1.tNEntradaItens.SetKey;
              DM1.tNEntradaItensNumNEntr.AsInteger := mSelecionadoNumNota.AsInteger;
              DM1.tNEntradaItensCodForn.AsInteger  := mSelecionadoCodFornecedor.AsInteger;
              DM1.tNEntradaItensSerie.AsString     := mSelecionadoSerie.AsString;
              DM1.tNEntradaItensItem.AsInteger     := mSelecionadoItem.AsInteger;
              if DM1.tNEntradaItens.GotoKey then
                begin
                  DM1.tNEntradaItens.Edit;
                  DM1.tNEntradaItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdRestante.AsFloat - mSelecionadoQtd.AsFloat));
                  DM1.tNEntradaItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdDevolvida.AsFloat + mSelecionadoQtd.AsFloat));
                  DM1.tNEntradaItens.Post;
                end;
            end;
          mSelecionado.Delete;
        end;
    end;

  fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
  //Grava a tabela de grade do item da nota
  if DM1.tProdutoLancaGrade.AsBoolean then
    begin
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
      while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.IsEmpty do
        begin
          //*** Grava a qtd.de pares na grade do pedido quando for produto
          if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (DM1.tProdutoProdMat.AsString = 'P') then
            begin
              if DM1.tPedidoGrade.Locate('Pedido;ItemPed;CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,
                                         fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger,fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                begin
                  DM1.tPedidoGrade.Edit;
                  DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                  DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                  DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat - fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                  DM1.tPedidoGrade.Post;
                end;
            end;
          DM1.tNotaFiscalGrade.Insert;
          DM1.tNotaFiscalGradeFilial.AsInteger   := DM1.tNotaFiscalFilial.AsInteger;
          DM1.tNotaFiscalGradeNumSeq.AsInteger   := DM1.tNotaFiscalNumSeq.AsInteger;
          DM1.tNotaFiscalGradeItem.AsInteger     := DM1.tNotaFiscalItensItem.AsInteger;
          DM1.tNotaFiscalGradeCodGrade.AsInteger := fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger;
          DM1.tNotaFiscalGradePosicao.AsInteger  := fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger;
          DM1.tNotaFiscalGradeQtd.AsInteger      := fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsInteger;
          DM1.tNotaFiscalGrade.Post;
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
        end;
    end;
  DM1.tNotaFiscalGrade.Refresh;

  //Verifica o agrupamento dos vales
  DM1.tNotaFiscalVale.First;
  while not DM1.tNotaFiscalVale.Eof do
    DM1.tNotaFiscalVale.Delete;
  DM1.tNotaFiscalVale.Refresh;
  if DM1.tNotaFiscalItensVale.AsBoolean then
    begin
      mAgrupadoVale.First;
      while not mAgrupadoVale.Eof do
        begin
          DM1.tNotaFiscalVale.Insert;
          DM1.tNotaFiscalValeFilial.AsInteger   := DM1.tNotaFiscalFilial.AsInteger;
          DM1.tNotaFiscalValeNumSeq.AsInteger   := DM1.tNotaFiscalItensNumSeq.AsInteger;
          DM1.tNotaFiscalValeItemNota.AsInteger := DM1.tNotaFiscalItensItem.AsInteger;
          DM1.tNotaFiscalValeNumVale.AsInteger  := mAgrupadoValeVale.AsInteger;
          DM1.tNotaFiscalValeItemVale.AsInteger := mAgrupadoValeItem.AsInteger;
          DM1.tNotaFiscalValeQtd.AsFloat        := mAgrupadoValeQtd.AsFloat;
          DM1.tNotaFiscalVale.Post;

          if DM1.tVale.Locate('NumVale',mAgrupadoValeVale.AsInteger,[loCaseInsensitive]) then
            begin
              if DM1.tValeItens.Locate('NumVale;Item;',VarArrayOf([mAgrupadoValeVale.AsInteger,mAgrupadoValeItem.AsInteger]),[locaseinsensitive]) then
                begin
                  DM1.tValeItens.Edit;
                  DM1.tValeItensQtdFaturada.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tValeItensQtdFaturada.AsFloat + mAgrupadoValeQtd.AsFloat));
                  DM1.tValeItensQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tValeItensQtdRestante.AsFloat - mAgrupadoValeQtd.AsFloat));
                  if StrToFloat(FormatFloat('0.00000',DM1.tValeItensQtdRestante.AsFloat)) > 0 then
                    DM1.tValeItensFaturado.AsBoolean := False
                  else
                    DM1.tValeItensFaturado.AsBoolean := True;
                  DM1.tValeItens.Post;
                  DM1.tValeItens.Refresh;
                  qVale.Close;
                  qVale.ParamByName('NumVale').AsInteger := mAgrupadoValeVale.AsInteger;
                  qVale.Open;
                  if qVale.RecordCount < 1 then
                  begin
                    DM1.tVale.Edit;
                    DM1.tValeFaturado.AsBoolean := True;
                    DM1.tVale.Post;
                  end;
                  qVale.Close;
                end;
            end;
          mAgrupadoVale.Delete;
        end;
    end;
  //Final do agrupamento

  Limpa_Edit;

  if not DM1.tNotaFiscalItens.IsEmpty then
    fEmissaoNotaFiscal.RxDBComboBox3.Enabled := False;
  vNumPedido  := 0;
  vItemPedido := 0;
  fEmissaoNotaFiscal.tNotaFiscalItensIns.Refresh;
  if vAltera then
    Close;
end;

procedure TfNotaFiscalItens.FormShow(Sender: TObject);
begin
  BitBtn17.Enabled      := (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1);
  SpeedButton17.Enabled := (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1);
  SpeedButton7.Enabled  := (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1);
  BitBtn15.Enabled      := (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1);
  if fEmissaoNotaFiscal.SpeedButton23.Tag <> 1 then
    RxDBLookupCombo15.KeyValue := DM1.tNotaFiscalCodNatOper.AsInteger;
end;

procedure TfNotaFiscalItens.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
  begin
    CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit3.Value * CurrencyEdit4.Value));
    CurrencyEdit2.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit5.Value * CurrencyEdit1.Value / 100));
    CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit5.Value - CurrencyEdit2.Value));
  end;
end;

procedure TfNotaFiscalItens.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit2.Value > 0 then
    if (CurrencyEdit1.Value = 0) then
    begin
      CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit3.Value * CurrencyEdit4.Value));
      CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit5.Value - CurrencyEdit2.Value));
    end;
end;

procedure TfNotaFiscalItens.CurrencyEdit4Exit(Sender: TObject);
begin
  CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit3.Value * CurrencyEdit4.Value));
  CurrencyEdit1Exit(Sender);
  CurrencyEdit2Exit(Sender);
end;

procedure TfNotaFiscalItens.BitBtn17Click(Sender: TObject);
begin
  BitBtn17.Tag := 1;
  fBuscaVale := TfBuscaVale.Create(Self);
  fBuscaVale.ShowModal;
end;

procedure TfNotaFiscalItens.CurrencyEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if CurrencyEdit6.AsInteger > 0 then
      RxDBLookupCombo1.SetFocus
    else
      RxDBLookupCombo2.SetFocus;
  end;
end;

procedure TfNotaFiscalItens.CurrencyEdit6Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit6.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit6.AsInteger;
      if DM1.tProduto.GotoKey then
      begin
        RxDBLookupCombo2.KeyValue := DM1.tProdutoCodigo.AsInteger;
        RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
      end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit6.SetFocus;
          CurrencyEdit6.Clear;
        end;
    end;
end;

procedure TfNotaFiscalItens.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaFiscalItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F10 then
    Close;
end;

procedure TfNotaFiscalItens.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fEmissaoNotaFiscal.SpeedButton23.Tag = 1 then
    begin
      ShowMessage('Este item esta no modo de alteração, tem que ser confirmado antes!');
      CanClose := False;
      BitBtn6.SetFocus;
    end
  else
    begin
      Limpa_Edit;
      CanClose := True;
    end;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo15Exit(Sender: TObject);
begin
  if RxDBLookupCombo15.Text <> '' then
  begin
    fEmissaoNotaFiscal.Verifica_Natureza(RxDBLookupCombo15.Text);
    if not vNatureza then
    begin
      RxDBLookupCombo15.ClearValue;
      RxDBLookupCombo15.SetFocus;
    end
    else
    begin
      DM1.tNatOperacao.IndexFieldNames := 'Codigo';
      DM1.tNatOperacao.SetKey;
      DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo15.KeyValue;
      if DM1.tNatOperacao.GotoKey then
      begin
        vCodSitTrib := DM1.tNatOperacaoCodSitTrib.AsInteger;
        if fEmissaoNotaFiscal.SpeedButton23.Tag <> 1 then
        begin
          CurrencyEdit7.Clear;
          CurrencyEdit7.Enabled := DM1.tNatOperacaoCalcComissao.AsBoolean;
        end;
        CurrencyEdit6.SetFocus;
      end
      else
      begin
        ShowMessage('Natureza não cadastrada!');
      end;
    end;
  end;
end;

procedure TfNotaFiscalItens.mAgrupadoNewRecord(DataSet: TDataSet);
begin
  mAgrupadoQtd.AsFloat := 0;
end;

procedure TfNotaFiscalItens.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fCSTIPI := TfCSTIPI.Create(Self);
      fCSTIPI.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalItens.Panel3Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo2.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          vExisteNEntrada := True;
          if (vItemNota < 1) and (Panel3.Enabled) then
            Move_itens;
        end
      else
        begin
          ShowMessage('Produto não cadastrado!');
          RxDBLookupCombo2.SetFocus;
        end;
    end;

end;

procedure TfNotaFiscalItens.RxDBLookupCombo13Exit(Sender: TObject);
begin
  //NFe 2.0
  if RxDBLookupCombo13.Text <> '' then
  begin
    if not DM1.tSitTributaria.Locate('Codigo',RxDBLookupCombo13.KeyValue,[loCaseInsensitive]) then
    begin
      ShowMessage('Situação não encontrada!');
      exit;
    end;
    if StrToFloat(FormatFloat('0.00000',DM1.tSitTributariaSitTributaria.AsFloat)) <= 0 then
      Edit4.Clear
    else
    if not(DM1.tFilialSimplesGaucho.AsBoolean) and not(DM1.tFilialSimples.AsBoolean) then
      Edit4.Text := FloatToStr(vAliqICMS);
  end;
end;

procedure TfNotaFiscalItens.RzButton1Click(Sender: TObject);
var
  vOrigemAux : String;
begin
  fNotaFiscalAliq := TfNotaFiscalAliq.Create(Self);
  fNotaFiscalAliq.CurrencyEdit1.Value := fEmissaoNotaFiscal.vPercPis;
  fNotaFiscalAliq.CurrencyEdit2.Value := fEmissaoNotaFiscal.vPercCofins;
  fNotaFiscalAliq.CurrencyEdit3.Value := fEmissaoNotaFiscal.vVlrPis;
  fNotaFiscalAliq.CurrencyEdit4.Value := fEmissaoNotaFiscal.vVlrCofins;
  //28/10/2010 Cleomar
  //NFe 2.00
  if fEmissaoNotaFiscal.vCodPis <> '' then
    fNotaFiscalAliq.RxDBCodPis.Value    := fEmissaoNotaFiscal.vCodPis
  else
    fNotaFiscalAliq.RxDBCodPis.Value    := '';
  if fEmissaoNotaFiscal.vCodCofins <> '' then
    fNotaFiscalAliq.RXDBCodCofins.Value := fEmissaoNotaFiscal.vCodCofins
  else
    fNotaFiscalAliq.RXDBCodCofins.Value := '';
  if fEmissaoNotaFiscal.vTipoPis = 'P' then
    fNotaFiscalAliq.cbTipoPis.ItemIndex := 0
  else
    fNotaFiscalAliq.cbTipoPis.ItemIndex := 1;
  if fEmissaoNotaFiscal.vTipoCofins = 'P' then
    fNotaFiscalAliq.cbTipoCofins.ItemIndex := 0
  else
    fNotaFiscalAliq.cbTipoCofins.ItemIndex := 1;
  if fEmissaoNotaFiscal.vOrigemMerc <> '' then
    fNotaFiscalAliq.rxdbOrigem.Value := fEmissaoNotaFiscal.vOrigemMerc;
  if fEmissaoNotaFiscal.vSomaVlrTotalProd then
    fNotaFiscalAliq.cbSomaTotal.ItemIndex := 0
  else
    fNotaFiscalAliq.cbSomaTotal.ItemIndex := 1;
  //****************
  fNotaFiscalAliq.ShowModal;

  //12.741/12
  if fEmissaoNotaFiscal.vOrigemMerc <> vOrigemAux then
    prc_Mover_Lei_Transparencia;
end;

procedure TfNotaFiscalItens.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
  begin
    fCSTIPI := TfCSTIPI.Create(Self);
    fCSTIPI.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalItens.RxDBLookupCombo5Exit(Sender: TObject);
begin
  if vClasFiscalAnt <> RxDBLookupCombo5.Value then
    prc_Mover_Lei_Transparencia;
end;

procedure TfNotaFiscalItens.FormCreate(Sender: TObject);
begin
  //Lei 12.741/12
  if not Assigned(DMTabIBPT) then
    DMTabIBPT := TDMTabIBPT.Create(Self);
end;

procedure TfNotaFiscalItens.FormDestroy(Sender: TObject);
begin
  //Lei 12.741/12
  FreeAndNil(DMTabIBPT);
end;

function TfNotaFiscalItens.Monta_Texto(Campo: String;
  Tamanho: Integer): String;
var
  texto2 : String;
  i : Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

procedure TfNotaFiscalItens.prc_Mover_Lei_Transparencia;
begin
  ceFederal.value   := StrToFloat(FormatFloat('0.00',0));
  ceEstadual.value  := StrToFloat(FormatFloat('0.00',0));
  ceMunicipal.value := StrToFloat(FormatFloat('0.00',0));
  vFonte_Trib       := '';
  vVersao_Trib      := '';
  if dm1.tNatOperacaoCodigo.AsInteger <> RxDBLookupCombo15.KeyValue then
    if not dm1.tNatOperacao.Locate('ID',RxDBLookupCombo15.KeyValue,[loCaseInsensitive]) then
      exit;
  if (DM1.tParametrosLei_Transp_Calcular.AsString = 'C') and (DM1.tNotaFiscalTipo_Consumidor.AsInteger = 0) then
    exit;
  prc_Busca_IBPT;
end;

procedure TfNotaFiscalItens.prc_Busca_IBPT;
var
  vComandoAux : String;
  vNCMAux : String;
begin
  //24/10/2013
  ceFederal.Value   := StrToFloat(FormatFloat('0.00',0));
  ceEstadual.Value  := StrToFloat(FormatFloat('0.00',0));
  ceMunicipal.Value := StrToFloat(FormatFloat('0.00',0));
  vVersao_Trib      := '';
  vFonte_Trib       := '';
  if trim(rxDBLookupCombo15.Text) = '' then
    exit;
  if CurrencyEdit6.AsInteger <> DM1.tProdutoCodigo.AsInteger then
    DM1.tProduto.Locate('Codigo',CurrencyEdit6.AsInteger,[loCaseInsensitive]);

  if RxDBLookupCombo15.KeyValue <> DM1.tNatOperacaoCodigo.AsInteger then
    DM1.tNatOperacao.Locate('Codigo',RxDBLookupCombo15.KeyValue,[loCaseInsensitive]);

  if (DM1.tNatOperacaoGerar_Tributo.AsString <> 'S') then
    exit;

  vNCMAux := '';
  if RxDBLookupCombo5.Text <> '' then
    vNCMAux := Monta_Texto(RxDBLookupCombo5.Text,0);

  vComandoAux := '';
  DMTabIBPT.qIBPT.Close;
  DMTabIBPT.qIBPT.SQL.Text := DMTabIBPT.ctqIBPT;
  if (DM1.tParametrosTipo_Lei_Transp.AsString = 'P') then
  begin
    if DM1.tNatOperacaoTipo_Ind_Ven.AsString = 'V' then
      vComandoAux := 'WHERE I.CODIGO = ' + QuotedStr('COMERCIO')
    else
    if DM1.tNatOperacaoTipo_Ind_Ven.AsString = 'I' then
      vComandoAux := 'WHERE I.CODIGO = ' + QuotedStr('INDUSTRIA');
  end
  else
  begin
    //vComandoAux := 'WHERE I.CODIGO = ' + QuotedStr(Monta_Texto(RxDBLookupCombo5.Value,0));
    vComandoAux := 'WHERE I.CODIGO = ' + QuotedStr(Monta_Texto(vNCMAux,0));
    vComandoAux := vComandoAux + '  AND I.EX = ' + QuotedStr(DM1.tProdutoNCM_Ex.AsString);
  end;
  if trim(vComandoAux) = '' then
    exit;
  DMTabIBPT.qIBPT.SQL.Text := DMTabIBPT.qIBPT.SQL.Text + ' ' + vComandoAux;
  DMTabIBPT.qIBPT.Open;
  if not DMTabIBPT.qIBPT.IsEmpty then
  begin
    if (fEmissaoNotaFiscal.vOrigemMerc = '0') or (fEmissaoNotaFiscal.vOrigemMerc = '3')
      or (fEmissaoNotaFiscal.vOrigemMerc = '4') or (fEmissaoNotaFiscal.vOrigemMerc = '5') then
      ceFederal.Value := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_NACIONAL.AsFloat))
    else
      ceFederal.Value := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_IMPORTACAO.AsFloat));
    ceEstadual.Value  := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_ESTADUAL.AsFloat));
    ceMunicipal.value := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_MUNICIPAL.AsFloat));
    vFonte_Trib       := DMTabIBPT.qIBPTFONTE.AsString;
    vVersao_Trib      := DMTabIBPT.qIBPTVERSAO.AsString;
  end;

  {CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',0));
  DMTabIBPT.qIBPT.Close;
  DMTabIBPT.qIBPT.ParamByName('CODIGO').AsString := RxDBLookupCombo5.Value;
  DMTabIBPT.qIBPT.ParamByName('EX').AsString     := DM1.tProdutoNCM_Ex.AsString;
  DMTabIBPT.qIBPT.Open;
  if not DMTabIBPT.qIBPT.IsEmpty then
  begin
    if (fEmissaoNotaFiscal.vOrigemMerc = '0') or (fEmissaoNotaFiscal.vOrigemMerc = '3')
      or (fEmissaoNotaFiscal.vOrigemMerc = '4') or (fEmissaoNotaFiscal.vOrigemMerc = '5') then
      CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_NACIONAL.AsFloat))
    else
      CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_IMPORTACAO.AsFloat));
  end;}
end;

procedure TfNotaFiscalItens.RxDBLookupCombo5Enter(Sender: TObject);
begin
  vClasFiscalAnt := RxDBLookupCombo5.Value;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_F5 then
  begin
    vID_EnqIPI_Pos := 0;
    fSel_EnqIPI := TfSel_EnqIPI.Create(Self);
    fSel_EnqIPI.ShowModal;
    if vID_EnqIPI_Pos > 0 then
      RxDBLookupCombo8.KeyValue := vID_EnqIPI_Pos;
  end;
end;

end.
