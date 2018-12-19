unit UNotaEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask, Db, DBTables,
  ToolEdit, RXDBCtrl, RXLookup, MemTable, Grids, DBGrids, RXCtrls, RxCalc, CurrEdit, DBFilter, Menus, Printers, RxDBComb, DBClient, rsDBUtils;

type
  TfNotaEntrada = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel4: TRxLabel;
    DBEdit4: TDBEdit;
    RxCalculator1: TRxCalculator;
    SpeedButton9: TSpeedButton;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    Label8: TLabel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    SpeedButton5: TSpeedButton;
    DBRadioGroup2: TDBRadioGroup;
    Label11: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu2: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    tCPagarIns: TTable;
    tCPagarInsNumCPagar: TIntegerField;
    tNEntradaParcIns: TTable;
    tNEntradaParcInsCodForn: TIntegerField;
    tNEntradaParcInsNumNEntr: TIntegerField;
    tNEntradaParcInsParcela: TSmallintField;
    tNEntradaItensIns: TTable;
    tNEntradaItensInsCodForn: TIntegerField;
    tNEntradaItensInsNumNEntr: TIntegerField;
    tNEntradaItensInsItem: TSmallintField;
    tNEntradaItensInsVlrTotalItens: TFloatField;
    tNEntradaIns: TTable;
    tNEntradaInsNumNEntr: TIntegerField;
    tNEntradaInsCodForn: TIntegerField;
    tNEntradaInsSerie: TStringField;
    tNEntradaItensMObraIns: TTable;
    tNEntradaItensMObraInsCodForn: TIntegerField;
    tNEntradaItensMObraInsNumNEntr: TIntegerField;
    tNEntradaItensMObraInsItem: TSmallintField;
    Bevel3: TBevel;
    tAuxNEntradaGrade: TTable;
    dsAuxNEntradaGrade: TDataSource;
    tAuxNEntradaGradeCodGrade: TIntegerField;
    tAuxNEntradaGradePosicao: TIntegerField;
    tAuxNEntradaGradeQtd: TFloatField;
    tAuxNEntradaGradeVlrUnitario: TFloatField;
    tAuxNEntradaGradeVlrTotal: TFloatField;
    tAuxNEntradaGradelkTamanho: TStringField;
    BitBtn16: TBitBtn;
    Label16: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn8: TBitBtn;
    DBEdit5: TDBEdit;
    RxLabel5: TRxLabel;
    DBEdit7: TDBEdit;
    Label21: TLabel;
    Edit2: TEdit;
    DBRadioGroup1: TDBRadioGroup;
    BitBtn9: TBitBtn;
    Label23: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel4: TBevel;
    Label9: TLabel;
    Label26: TLabel;
    Label10: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label22: TLabel;
    Label24: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn2: TBitBtn;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBGrid3: TDBGrid;
    TabSheet2: TTabSheet;
    Bevel5: TBevel;
    SpeedButton11: TSpeedButton;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Bevel6: TBevel;
    DBMemo1: TDBMemo;
    tCPagarParc: TTable;
    dsCPagarParc: TDataSource;
    tCPagarParcNumCPagar: TIntegerField;
    tCPagarParcParcCPagar: TIntegerField;
    tCPagarParcDtVencCPagar: TDateField;
    tCPagarParcVlrParcCPagar: TFloatField;
    tCPagarParcQuitParcCPagar: TBooleanField;
    tCPagarParcDtPagParcCPagar: TDateField;
    tCPagarParcJurosParcCPagar: TFloatField;
    tCPagarParcCodForn: TIntegerField;
    tCPagarParcNumNotaEnt: TIntegerField;
    tCPagarParcDesconto: TFloatField;
    tCPagarParcPgtoParcial: TFloatField;
    tCPagarParcRestParcela: TFloatField;
    tCPagarParcBanco: TStringField;
    tCPagarParcPlanoContas: TIntegerField;
    tCPagarParcNroDuplicata: TIntegerField;
    tCPagarParcDespesas: TFloatField;
    tCPagarParcAbatimentos: TFloatField;
    tCPagarParcCodConta: TIntegerField;
    tCPagarParcDiasAtraso: TFloatField;
    tCPagarParcJurosPagos: TFloatField;
    tCPagarParcCodTipoCobranca: TIntegerField;
    tCPagarParclkBanco: TStringField;
    Bevel7: TBevel;
    SpeedButton17: TSpeedButton;
    CurrencyEdit11: TCurrencyEdit;
    CurrencyEdit12: TCurrencyEdit;
    Label25: TLabel;
    Label27: TLabel;
    SpeedButton2: TSpeedButton;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label28: TLabel;
    CurrencyEdit13: TCurrencyEdit;
    Label29: TLabel;
    CheckBox1: TCheckBox;
    Label30: TLabel;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    Label33: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo13: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label31: TLabel;
    CurrencyEdit14: TCurrencyEdit;
    Label32: TLabel;
    DBEdit8: TDBEdit;
    StaticText1: TStaticText;
    BitBtn11: TBitBtn;
    dsmSelecionado: TDataSource;
    mSelecionado: TClientDataSet;
    mSelecionadoFilial: TIntegerField;
    mSelecionadoNumNota: TIntegerField;
    mSelecionadoItem: TIntegerField;
    mSelecionadoCodCliente: TIntegerField;
    mSelecionadoCodMaterial: TIntegerField;
    mSelecionadoCodCor: TIntegerField;
    mSelecionadoQtdRestante: TFloatField;
    mSelecionadoQtd: TFloatField;
    mSelecionadoNomeMaterial: TStringField;
    mSelecionadoNomeCor: TStringField;
    mSelecionadoUnidade: TStringField;
    mSelecionadoVlrUnitario: TFloatField;
    mSelecionadoVlrTotal: TFloatField;
    mSelecionadoNumSeq: TIntegerField;
    Label12: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    tNEntradaItensInsSerie: TStringField;
    tNEntradaItensMObraInsSerie: TStringField;
    tNEntradaParcInsSerie: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure CurrencyEdit7Exit(Sender: TObject);
    procedure CurrencyEdit9Exit(Sender: TObject);
    procedure CurrencyEdit10Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure tAuxNEntradaGradeBeforeInsert(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure CurrencyEdit9Enter(Sender: TObject);
    procedure CurrencyEdit10Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2Enter(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure CurrencyEdit11Exit(Sender: TObject);
    procedure CurrencyEdit12Exit(Sender: TObject);
    procedure tAuxNEntradaGradeBeforePost(DataSet: TDataSet);
    procedure CurrencyEdit12Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox1Enter(Sender: TObject);
    procedure RxDBLookupCombo11Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure CurrencyEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit14Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vCodEstoqueMat : Integer;
    vCodEstoqueCor : Integer;
    procedure Grava_Pgto;
    procedure Habilita;
    procedure Calcula_ICMS;
    procedure Calcula_IPI;
    procedure Cancela_Pgto;
    procedure Compara_Valor_Parcelas;
    procedure Monta_Grade;
    procedure Soma_Estoque;
    procedure Diminui_Estoque;
    procedure Atualiza_Precos;
    procedure Move_Itens;
    procedure Volta_NotaFiscal;
  public
    procedure Limpa_Edit;
    procedure Verifica_UF;
    procedure Verifica_Parcelas;
    { Public declarations }
  end;

var
  fNotaEntrada : TfNotaEntrada;
  vBaseICMS, vValorICMS, vValorIPI, vAliqICMS: Real;
  vSiglaUF : string[2];
  vValorParcelas, vOutrasDesp : Currency;
  vValorParcelaTot : String;
  vEdit : String[1];
  vNumOC, vItemOC, vItem : Integer;
  vVlrDuplicata : Real;
  F  : TextFile;

implementation

uses UDM1, UFornecedores, URelNotaEntrada,
  UNatOperacao, UConsNotaEnt, UPlanoContas, UMaterial, UNotaEntradaGrade,
  USitTributaria, UBuscaOC, UDM2, UNFRetorno,
  UConsNotaEntradaProd, UEscNotaFiscalDevolPorItem2;

{$R *.DFM}

procedure TfNotaEntrada.Move_Itens;
begin
  CurrencyEdit14.AsInteger   := DM1.tProdutoCodigo.AsInteger;
  Edit2.Text                 := DM1.tProdutoUnidade.AsString;
  CurrencyEdit4.Value        := DM1.tProdutoAliqIcms.AsCurrency;
  CurrencyEdit5.Value        := DM1.tProdutoAliqIPI.AsCurrency;
  if DM1.tProdutoCodSitTrib.AsInteger > 0 then
    RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
  else
    RxDBLookupCombo13.ClearValue;                         //verificar
  if (CurrencyEdit12.Value < 1) and (vEdit <> 'S') and (mSelecionado.IsEmpty) then
    Begin
      CurrencyEdit7.Value        := DM1.tProdutoPrecoCusto.AsCurrency;
      CurrencyEdit3.Value        := 1;
      CurrencyEdit8.Value        := DM1.tProdutoPrecoCusto.AsCurrency;
    end;

  if BitBtn16.Tag <> 1 then
    begin
      CheckBox1.Checked := DM1.tProdutoEstoque.AsBoolean;
      CheckBox1.Enabled := DM1.tProdutoEstoque.AsBoolean;
    end;
end;

procedure TfNotaEntrada.Atualiza_Precos;
begin
  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := DM1.tNEntradaItensCodMaterial.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          if DM1.tProdutoPrecoCor.AsBoolean then
            begin
              if DM1.tProdutoCor.Locate('CodProduto;CodCor',VarArrayOf([DM1.tNEntradaItensCodMaterial.AsInteger,DM1.tNEntradaItensCodCor.AsInteger]),[locaseinsensitive]) then
                begin
                  if DM1.tNEntradaItensVlrUnit.AsFloat > DM1.tProdutoCorPrCusto.AsFloat then
                    begin
                      DM1.tProdutoCor.Edit;
                      DM1.tProdutoCorPrCusto.AsFloat := DM1.tNEntradaItensVlrUnit.AsFloat;
                      DM1.tProdutoCor.Post;
                    end;
                end;
            end
          else
            begin
              if DM1.tNEntradaItensVlrUnit.AsFloat > DM1.tProdutoPrecoCusto.AsFloat then
                begin
                  DM1.tProduto.Edit;
                  DM1.tProdutoPrecoCusto.AsFloat := DM1.tNEntradaItensVlrUnit.AsFloat;
                  DM1.tProduto.Post;
                end;
            end;
        end;
      DM1.tNEntradaItens.Next;
    end;
end;

procedure TfNotaEntrada.Monta_Grade;
begin
  if vEdit <> 'S' then
    begin
      tAuxNEntradaGrade.First;
      while not tAuxNEntradaGrade.Eof do
        tAuxNEntradaGrade.delete;
      DM1.tOrdemCompraItemGrade.First;
      while not DM1.tOrdemCompraItemGrade.Eof do
        begin
          tAuxNEntradaGrade.Insert;
          tAuxNEntradaGradeCodGrade.AsInteger  := DM1.tOrdemCompraItemGradeCodGrade.AsInteger;
          tAuxNEntradaGradePosicao.AsInteger   := DM1.tOrdemCompraItemGradePosicao.AsInteger;
          tAuxNEntradaGradeQtd.AsString        := DM1.tOrdemCompraItemGradeQtdRestante.AsString;
          tAuxNEntradaGradeVlrUnitario.AsFloat := DM1.tOrdemCompraItemGradeVlrUnitario.AsFloat;
          tAuxNEntradaGradeVlrTotal.AsFloat    := DM1.tOrdemCompraItemGradeVlrUnitario.AsFloat * DM1.tOrdemCompraItemQtdRestante.AsFloat;
          tAuxNEntradaGrade.Post;
          DM1.tOrdemCompraItemGrade.Next;
        end;
    end;
end;

procedure TfNotaEntrada.Limpa_Edit;
begin
  RxDBLookupCombo5.Enabled := True;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  CurrencyEdit7.Clear;
  CurrencyEdit8.Clear;
  CurrencyEdit9.Clear;
  CurrencyEdit10.Clear;
  CurrencyEdit12.Clear;
  CurrencyEdit13.Clear;
  CurrencyEdit14.Clear;
  Edit2.Clear;
  RxDBLookupCombo11.ClearValue;
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo13.ClearValue;
  CheckBox1.Checked := True;
  BitBtn16.Tag := 0;
  mSelecionado.EmptyDataSet;  
end;

procedure TfNotaEntrada.Calcula_ICMS;
var
  vValorDesc : Real;
begin
  vBaseICMS  := 0;
  vValorICMS := 0;
  vValorIPI  := 0;
  if RxDBLookupCombo13.Text = '' then
    begin
      if CurrencyEdit5.Text <> '' then
        begin
          if DM1.tNEntradaItensIcmsIpi.AsBoolean then
            begin
              if CurrencyEdit9.Value > 0 then
                begin
                  vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vValorDesc := vBaseICMS * CurrencyEdit9.Value / 100;
                  vValorIPI  := (CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100;
                  vBaseICMS  := vBaseICMS - vValorDesc + vValorIPI;
                end
              else
              if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                begin
                  vBaseICMS := (CurrencyEdit3.Value * CurrencyEdit7.Value);
                  vValorIPI := (CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100;
                  vBaseICMS := vBaseICMS - CurrencyEdit10.Value + vValorIPI;
                end
              else
                begin
                  vValorIPI := (CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100;
                  vBaseICMS := (CurrencyEdit3.Value * CurrencyEdit7.Value) + vValorIPI;
                end;
            end
          else
          if not DM1.tNEntradaItensIcmsIpi.AsBoolean then
            begin
              if CurrencyEdit9.Value > 0 then
                begin
                  vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vValorDesc := vBaseICMS * CurrencyEdit9.Value / 100;
                  vBaseICMS  := vBaseICMS - vValorDesc;
                end
              else
              if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                begin
                  vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vBaseICMS := vBaseICMS - CurrencyEdit10.Value;
                end
              else
                vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
            end;
        end
      else
        begin
          if CurrencyEdit9.Value > 0 then
            begin
              vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
              vValorDesc := vBaseICMS * CurrencyEdit9.Value / 100;
              vBaseICMS  := vBaseICMS - vValorDesc;
            end
          else
          if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
            begin
              vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
              vBaseICMS := vBaseICMS - CurrencyEdit10.Value;
            end
          else
            vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
        end;
      if CurrencyEdit4.Value <= 0 then
        vValorICMS := vBaseICMS * vAliqICMS / 100
      else
        vValorICMS := vBaseICMS * CurrencyEdit4.Value / 100;
    end
  else
    begin
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := RxDBLookupCombo13.KeyValue;
      if DM1.tSitTributaria.GotoKey then
        begin
          if CurrencyEdit5.Text <> '' then
            begin
              if DM1.tNEntradaItensIcmsIpi.AsBoolean then
                begin
                  if CurrencyEdit9.Value > 0 then
                    begin
                      vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vValorDesc := vBaseICMS * CurrencyEdit9.Value / 100;
                      vValorIPI  := (CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100;
                      vBaseICMS  := (vBaseICMS - vValorDesc) * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                      vBaseICMS  := vBaseICMS + vValorIPI;
                    end
                  else
                  if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                    begin
                      vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vValorIPI := (CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100;
                      vBaseICMS := (vBaseICMS - CurrencyEdit10.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                      vBaseICMS := vBaseICMS + vValorIPI;
                    end
                  else
                    begin
                      vValorIPI := (CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100;
                      vBaseICMS := (CurrencyEdit3.Value * CurrencyEdit7.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                      vBaseICMS := vBaseICMS + vValorIPI;
                    end
                end
              else
              if not DM1.tNEntradaItensIcmsIpi.AsBoolean then
                begin
                  if CurrencyEdit9.Value > 0 then
                    begin
                      vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vValorDesc := vBaseICMS * CurrencyEdit9.Value / 100;
                      vBaseICMS  := (vBaseICMS - vValorDesc) * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                    end
                  else
                  if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                    begin
                      vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vBaseICMS := (vBaseICMS - CurrencyEdit10.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                    end
                  else
                    vBaseICMS := ((CurrencyEdit3.Value * CurrencyEdit7.Value) + vValorIPI) * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                end;
            end
          else
            begin
              if CurrencyEdit9.Value > 0 then
                begin
                  vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vValorDesc := vBaseICMS * CurrencyEdit9.Value / 100;
                  vBaseICMS  := vBaseICMS - vValorDesc * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                end
              else
              if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                begin
                  vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vBaseICMS := vBaseICMS - CurrencyEdit10.Value * DM1.tSitTributariaSitTributaria.AsFloat / 100;
                end
              else
                vBaseICMS := (CurrencyEdit3.Value * CurrencyEdit7.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100;
            end;
          if CurrencyEdit4.Value <= 0 then
            vValorICMS := vBaseICMS * vAliqICMS / 100
          else
            vValorICMS := vBaseICMS * CurrencyEdit4.Value / 100;
        end
      else
        ShowMessage('Sit. Tributária não encontrada! ICMS não será calculado!');
    end;
end;

procedure TfNotaEntrada.Calcula_IPI;
begin
  vValorIPI := 0;
  if CurrencyEdit5.Value > 0 then
    vValorIPI := (CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100;
end;

procedure TfNotaEntrada.Verifica_UF;
begin
  DM1.tUF.SetKey;
  DM1.tUFSigla.AsString := DM1.tNEntradalkUF.AsString;
  if DM1.tUF.GotoKey then
    vAliqICMS := DM1.tUFPercentual.AsFloat;
  vSiglaUF := DM1.tNEntradalkUF.AsString;
end;

procedure TfNotaEntrada.Habilita;
begin
  Panel3.Enabled         := not(Panel3.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn3.Enabled        := not(BitBtn3.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn6.Enabled        := not(BitBtn6.Enabled);
  BitBtn8.Enabled        := not(BitBtn8.Enabled);
  TabSheet1.Enabled      := not(TabSheet1.Enabled);
  TabSheet2.Enabled      := not(TabSheet2.Enabled);
  TabSheet3.Enabled      := not(TabSheet3.Enabled);
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
  RxSpeedButton1.Enabled := not RxSpeedButton1.Enabled;
end;

procedure TfNotaEntrada.Grava_Pgto;
begin
  if DM1.tNEntradaCondPgto.AsString = 'P' then
    begin
      tCPagarIns.Refresh;
      tCPagarIns.Last;
      DM1.tCPagar.Insert;
      DM1.tCPagarNumCPagar.AsInteger    := tCPagarInsNumCPagar.AsInteger + 1;
      DM1.tCPagarCodForn.AsInteger      := DM1.tNEntradaCodForn.AsInteger;
      DM1.tCPagarNumNotaEnt.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
      DM1.tCPagarNroDuplicata.AsInteger := DM1.tNEntradaNroDuplicata.AsInteger;
      DM1.tCPagarTipoDoc.AsString       := 'NE';
      DM1.tCPagarDtGerado.AsDateTime    := DM1.tNEntradaDtEntrada.AsDateTime;
      DM1.tCPagarCodAtelier.AsInteger   := DM1.tNEntradaCodAtelier.AsInteger;
      DM1.tCPagarQuitado.AsBoolean      := False;
      DM1.tNEntradaParc.First;
      while not DM1.tNEntradaParc.Eof do
        begin
          DM1.tCPagarParc.Insert;
          DM1.tCPagarParcNumCPagar.AsInteger     := DM1.tCPagarNumCPagar.AsInteger;
          DM1.tCPagarParcParcCPagar.AsInteger    := DM1.tNEntradaParcParcela.AsInteger;
          DM1.tCPagarParcNroDuplicata.AsInteger  := DM1.tNEntradaParcNroDuplicata.AsInteger;
          DM1.tCPagarParcVlrParcCPagar.AsFloat   := DM1.tNEntradaParcVlrVenc.AsFloat;
          DM1.tCPagarParcRestParcela.AsFloat     := DM1.tNEntradaParcVlrVenc.AsFloat;
          DM1.tCPagarParcDtVencCPagar.AsDateTime := DM1.tNEntradaParcDtVenc.AsDateTime;
          DM1.tCPagarParcCodForn.AsInteger       := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarParcNumNotaEnt.AsInteger    := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarParcPlanoContas.AsInteger   := DM1.tNEntradaPlanoContas.AsInteger;
          DM1.tCPagarParcCodConta.AsInteger      := DM1.tNEntradaParcCodBco.AsInteger;
          DM1.tCPagarParcCodAtelier.AsInteger    := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarParcDtGerado.AsDateTime     := DM1.tCPagarDtGerado.AsDateTime;
          DM1.tCPagarParc.Post;
          DM1.tNEntradaParc.Next;
        end;
      DM1.tCPagar.Post;
    end
  else
  if DM1.tNEntradaCondPgto.AsString = 'V' then
    begin
      if DM1.tNEntradaParc.RecordCount > 0 then
        begin
          tCPagarIns.Refresh;
          tCPagarIns.Last;
          DM1.tCPagar.Insert;
          DM1.tCPagarNumCPagar.AsInteger    := tCPagarInsNumCPagar.AsInteger + 1;
          DM1.tCPagarCodForn.AsInteger      := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarNumNotaEnt.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarNroDuplicata.AsInteger := DM1.tNEntradaNroDuplicata.AsInteger;
          DM1.tCPagarTipoDoc.AsString       := 'NE';
          DM1.tCPagarDtGerado.AsDateTime    := DM1.tNEntradaDtEntrada.AsDateTime;
          DM1.tCPagarCodAtelier.AsInteger   := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarQuitado.AsBoolean      := False;

          DM1.tNEntradaParc.First;
          while not DM1.tNEntradaParc.Eof do
            begin
              DM1.tCPagarParc.Insert;
              DM1.tCPagarParcNumCPagar.AsInteger     := DM1.tCPagarNumCPagar.AsInteger;
              DM1.tCPagarParcParcCPagar.AsInteger    := DM1.tNEntradaParcParcela.AsInteger;
              DM1.tCPagarParcNroDuplicata.AsInteger  := DM1.tNEntradaParcNroDuplicata.AsInteger;
              DM1.tCPagarParcVlrParcCPagar.AsFloat   := DM1.tNEntradaParcVlrVenc.AsFloat;
              DM1.tCPagarParcRestParcela.AsFloat     := DM1.tNEntradaParcVlrVenc.AsFloat;
              DM1.tCPagarParcDtVencCPagar.AsDateTime := DM1.tNEntradaParcDtVenc.AsDateTime;
              DM1.tCPagarParcCodForn.AsInteger       := DM1.tNEntradaCodForn.AsInteger;
              DM1.tCPagarParcNumNotaEnt.AsInteger    := DM1.tNEntradaNumNEntr.AsInteger;
              DM1.tCPagarParcPlanoContas.AsInteger   := DM1.tNEntradaPlanoContas.AsInteger;
              DM1.tCPagarParcCodConta.AsInteger      := DM1.tNEntradaParcCodBco.AsInteger;
              DM1.tCPagarParcCodAtelier.AsInteger    := DM1.tNEntradaCodAtelier.AsInteger;
              DM1.tCPagarParcQuitParcCPagar.AsBoolean := False;
              DM1.tCPagarParcDtGerado.AsDateTime     := DM1.tCPagarDtGerado.AsDateTime;
              DM1.tCPagarParc.Post;
              DM1.tNEntradaParc.Next;
            end;
          DM1.tCPagar.Post;
          DM1.tCPagar.Refresh;
          DM1.tCPagarParc.Refresh;
        end
      else
        begin
          tCPagarIns.Refresh;
          tCPagarIns.Last;
          DM1.tCPagar.Insert;
          DM1.tCPagarNumCPagar.AsInteger    := tCPagarInsNumCPagar.AsInteger + 1;
          DM1.tCPagarCodForn.AsInteger      := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarNumNotaEnt.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarNroDuplicata.AsInteger := DM1.tNEntradaNroDuplicata.AsInteger;
          DM1.tCPagarTipoDoc.AsString       := 'NE';
          DM1.tCPagarDtGerado.AsDateTime    := DM1.tNEntradaDtEntrada.AsDateTime;
          DM1.tCPagarCodAtelier.AsInteger   := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarQuitado.AsBoolean      := False;
          
          DM1.tCPagarParc.Insert;
          DM1.tCPagarParcNumCPagar.AsInteger     := DM1.tCPagarNumCPagar.AsInteger;
          DM1.tCPagarParcParcCPagar.AsInteger    := 1;
          DM1.tCPagarParcNroDuplicata.AsInteger  := DM1.tNEntradaNroDuplicata.AsInteger;
          DM1.tCPagarParcVlrParcCPagar.AsFloat   := vVlrDuplicata;
          DM1.tCPagarParcRestParcela.AsFloat     := vVlrDuplicata;
          DM1.tCPagarParcDtVencCPagar.AsDateTime := DM1.tNEntradaDtEmissaoNEntr.AsDateTime;
          DM1.tCPagarParcCodForn.AsInteger       := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarParcNumNotaEnt.AsInteger    := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarParcPlanoContas.AsInteger   := DM1.tNEntradaPlanoContas.AsInteger;
          DM1.tCPagarParcQuitParcCPagar.AsBoolean := False;
          DM1.tCPagarParcCodConta.AsInteger      := 1;
          if DM1.tNEntradaCodAtelier.AsInteger > 0 then
            DM1.tCPagarParcCodAtelier.AsInteger := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarParcDtGerado.AsDateTime     := DM1.tCPagarDtGerado.AsDateTime;
          DM1.tCPagarParc.Post;
          DM1.tCPagar.Post;
          DM1.tCPagar.Refresh;
          DM1.tCPagarParc.Refresh;
        end;
    end;
end;

procedure TfNotaEntrada.Verifica_Parcelas;
var
  vValorTotalStr : String;
begin
  if (DM1.tNEntradaParcDtVenc.AsString = '') or (DM1.tNEntradaParcVlrVenc.AsString = '') then
   begin
      DM1.tNEntradaParc.Cancel;
      vValorTotalStr := FormatFloat('0.00',DM1.tNEntradaParcParcela.AsFloat);
      Compara_Valor_Parcelas;
      if vValorParcelaTot <> vValorTotalStr then
        ShowMessage('Valor das Parcelas não confere com Total da Nota!');
      Abort;
   end
  else
    begin
      if DM1.tNEntradaParc.State = dsInsert then
        begin
          tNEntradaParcIns.Refresh;
          tNEntradaParcIns.Last;
          DM1.tNEntradaParcParcela.AsInteger := tNEntradaParcInsParcela.AsInteger + 1;
       end;
    end;
end;

procedure TfNotaEntrada.Compara_Valor_Parcelas;
begin
  vValorParcelas := 0;
  if DM1.tNEntradaParc.State in [dsEdit,dsInsert] then
    DM1.tNEntradaParc.Post;
  DM1.tNEntradaParc.First;
  while not DM1.tNEntradaParc.Eof do
    begin
      vValorParcelas := vValorParcelas + DM1.tNEntradaParcVlrVenc.AsFloat;
      DM1.tNEntradaParc.Next;
    end;
  vValorParcelaTot := FormatFloat('0.00',vValorParcelas);
end;

procedure TfNotaEntrada.Cancela_Pgto;
begin
  if (DM1.tNEntradaCondPgto.AsString = 'P') or (DM1.tNEntradaCondPgto.AsString = 'V') then
    begin
      DM1.tCPagar.Filtered := False;
      DM1.tCPagar.Filter   := 'NumNotaEnt = '''+DM1.tNEntradaNumNEntr.AsString+''' and codForn = '''+DM1.tNEntradaCodForn.AsString+'''';
      DM1.tCPagar.Filtered := True;
      if not DM1.tCPagar.IsEmpty then
        begin
          DM1.tCPagarParc.First;
          while not DM1.tCPagarParc.Eof do
            begin
              DM1.tCPagarParcHist.First;
              while not DM1.tCPagarParcHist.Eof do
                DM1.tCPagarParcHist.Delete;
              DM1.tCPagarParc.Delete;
            end;
          DM1.tCPagar.Delete;
        end;
      DM1.tCPagar.Filtered := False;
      DM1.tCPagar.Refresh;
      DM1.tCPagarParc.Refresh;
      DM1.tCPagarParcHist.Refresh;
    end;
end;

procedure TfNotaEntrada.Soma_Estoque;
var
  vNumMovEst : Integer;
begin
  DM1.tEstoqueMatMov.Filtered := False;
  DM1.tEstoqueMatMov.Filter   := 'NumNota = '''+DM1.tNEntradaNumNEntr.AsString+''' and CodCliForn = '''+DM1.tNEntradaCodForn.AsString+''' and TipoMov = '''+'NTE'+'''';
  DM1.tEstoqueMatMov.Filtered := True;
  DM1.tEstoqueMatMov.First;
  while not DM1.tEstoqueMatMov.Eof do
    DM1.tEstoqueMatMov.Delete;
  DM1.tEstoqueMatMov.Filtered := False;

  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
    begin
      //*** Grava movimento do estoque
      if Dm1.tNEntradaItensMatProd.AsString = 'M' then
        begin
          if Dm1.tNEntradaItensSomaEstoque.AsBoolean then
            begin
              vCodEstoqueMat := DM1.tNEntradaItensCodMaterial.AsInteger;
              vCodEstoqueCor := DM1.tNEntradaItensCodCor.AsInteger;
              if DM1.tNEntradaItensNumMovEst.AsInteger > 0 then
                begin
                  DM1.tEstoqueMatMov.SetKey;
                  DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNEntradaItensNumMovEst.AsInteger;
                  if DM1.tEstoqueMatMov.GotoKey then
                    begin
                      DM1.tEstoqueMatMov.Refresh;
                      DM2.tEstoqueMatMov2.Refresh;
                      DM2.tEstoqueMatMov2.Last;
                      vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
                    end
                  else
                    vNumMovEst := DM1.tNEntradaItensNumMovEst.AsInteger;
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
              DM1.tEstoqueMatMovCodMaterial.AsInteger := vCodEstoqueMat;
              DM1.tEstoqueMatMovCodCor.AsInteger      := vCodEstoqueCor;
              DM1.tEstoqueMatMovLargura.AsString      := DM1.tNEntradaItenslkLargura.AsString;
              DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tNEntradaDtEntrada.AsDateTime;
              DM1.tEstoqueMatMovES.AsString           := 'E';
              DM1.tEstoqueMatMovTipoMov.AsString      := 'NTE';
              DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tNEntradaNumNEntr.AsInteger;
              DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tNEntradaCodForn.AsInteger;
              DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tNEntradaItensVlrUnit.AsFloat;
              DM1.tEstoqueMatMovQtd.AsFloat           := DM1.tNEntradaItensQtd.AsFloat;
              DM1.tEstoqueMatMovQtd2.AsFloat          := DM1.tNEntradaItensQtd.AsFloat;
              DM1.tEstoqueMatMovUnidade.AsString      := DM1.tNEntradaItensUnidade.AsString;
              DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tNEntradaItensIcms.AsFloat;
              DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tNEntradaItensIpi.AsFloat;
              DM1.tEstoqueMatMovVlrDesconto.AsFloat   := (DM1.tNEntradaItensVlrDesc.AsFloat / DM1.tNEntradaItensQtd.AsFloat);
              DM1.tEstoqueMatMov.Post;
              DM1.tNEntradaItens.Edit;
              DM1.tNEntradaItensNumMovEst.AsInteger := DM1.tEstoqueMatMovNumMov.AsInteger;
              DM1.tNEntradaItens.Post;

              //*** Grava o movimento do estoque (grade)
              if DM1.tNEntradaItensCodGrade.AsInteger > 0 then
                begin
                  DM1.tNEntradaItensGrade.First;
                  while not DM1.tNEntradaItensGrade.Eof do
                    begin
                      DM1.tEstoqueMatMovGrade.Insert;
                      DM1.tEstoqueMatMovGradeNumMov.AsInteger   := DM1.tEstoqueMatMovNumMov.AsInteger;
                      DM1.tEstoqueMatMovGradeTamanho.AsString   := DM1.tNEntradaItensGradelkTamanho.AsString;
                      DM1.tEstoqueMatMovGradeQtd.AsInteger      := DM1.tNEntradaItensGradeQtd.AsInteger;
                      DM1.tEstoqueMatMovGradeQtd2.AsInteger     := DM1.tNEntradaItensGradeQtd.AsInteger;
                      DM1.tEstoqueMatMovGrade.Post;
                      DM1.tNEntradaItensGrade.Next;
                    end;
                end;
            end;
        end;
      DM1.tNEntradaItens.Next;
    end;
end;

procedure TfNotaEntrada.Diminui_Estoque;
begin
  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
    begin
      //*** Exclui o movimento do estoque
      if Dm1.tNEntradaItensMatProd.AsString = 'M' then
        begin
          if Dm1.tNEntradaItensSomaEstoque.AsBoolean then
            begin
              vCodEstoqueMat := DM1.tNEntradaItensCodMaterial.AsInteger;
              vCodEstoqueCor := DM1.tNEntradaItensCodCor.AsInteger;
              DM1.tEstoqueMatMov.SetKey;
              DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNEntradaItensNumMovEst.AsInteger;
              if DM1.tEstoqueMatMov.GotoKey then
                begin
                  DM1.tEstoqueMatMovGrade.First;
                  while not DM1.tEstoqueMatMovGrade.Eof do
                    DM1.tEstoqueMatMovGrade.Delete;
                  DM1.tEstoqueMatMov.Delete;
                end;
            end;
        end;
      DM1.tNEntradaItens.Next;
    end;
end;

procedure TfNotaEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfNotaEntrada.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
    begin
      fFornecedores := TfFornecedores.Create(Self);
      fFornecedores.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfNotaEntrada.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioMaterial.AsBoolean then
    begin
      fMaterial := TfMaterial.Create(Self);
      fMaterial.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de materiais!');
end;

procedure TfNotaEntrada.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaEntrada.BitBtn1Click(Sender: TObject);
begin
  BitBtn8.Tag := 0;
  if DM1.tUsuarioInsNotaEnt.AsBoolean then
    begin
      Habilita;
      DM1.tNEntrada.IndexFieldNames          := 'NumNEntr;CodForn;Serie';
      DM1.tNEntrada.Insert;
      DM1.tNEntradaTotalParcelas.AsInteger   := 3;
      DBEdit1.SetFocus;
      DM1.tNEntradaDtEmissaoNEntr.AsDateTime := Date;
      DM1.tNEntradaDtEntrada.AsDateTime      := Date;
      DM1.tNEntradaIcmsIpi.AsBoolean         := DM1.tParametrosIcmsIpi.AsBoolean;
      DBRadioGroup4.Enabled                  := True;
      DM1.tNEntradaSerie.AsString            := 'UN';
      PageControl1.ActivePageIndex           := 0;
      Dm1.tNEntradaDevolucao.AsBoolean       := False;
      RxDBComboBox1.ItemIndex := 0;
      DM1.tNEntradaVlrIcms.AsFloat       := 0;
      DM1.tNEntradaVlrIpi.AsFloat        := 0;
      DM1.tNEntradaVlrTotalNEntr.AsFloat := 0;
      DM1.tNEntradaBaseIcms.AsFloat      := 0;
      vEdit := 'N';
      vItem := 0;
      BitBtn8.Tag := 0;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfNotaEntrada.BitBtn5Click(Sender: TObject);
begin
  vEdit := 'N';
  vItem := 0;
  CurrencyEdit11.Clear;
  CurrencyEdit12.Clear;
  Limpa_Edit;
  if BitBtn8.Tag = 0 then
    begin
      DM1.tNEntradaItens.First;
      while not DM1.tNEntradaItens.IsEmpty do
        begin
          if DM1.tNEntradaItensNumOC.AsInteger > 0 then
            begin
              Dm1.tOrdemCompra.IndexFieldNames := 'Codigo';
              DM1.tOrdemCompra.SetKey;
              DM1.tOrdemCompraCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
              if DM1.tOrdemCompra.GotoKey then
                begin
                  DM1.tOrdemCompra.Edit;
                  DM1.tOrdemCompraEntregue.AsBoolean := False;
                  DM1.tOrdemCompra.Post;

                  Dm1.tOrdemCompraItem.IndexFieldNames := 'Codigo;Item';
                  Dm1.tOrdemCompraItem.SetKey;
                  Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                  if DM1.tOrdemCompraItem.GotoKey then
                    begin
                      Dm1.tOrdemCompraItem.Edit;
                      Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      if DM1.tOrdemCompraItemQtdRestante.AsFloat > DM1.tOrdemCompraItemQtd.AsFloat then
                        DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                      Dm1.tOrdemCompraItem.Post;
                    end;
                end;
            end;
          while not Dm1.tNEntradaItensGrade.IsEmpty do
            begin
              Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Codigo;Item;CodGrade;Posicao';
              Dm1.tOrdemCompraItemGrade.SetKey;
              Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
              Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
              Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
              Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
              if Dm1.tOrdemCompraItemGrade.GotoKey then
                begin
                  Dm1.tOrdemCompraItemGrade.Edit;
                  Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat)) -
                                                                  StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                  Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat)) +
                                                                  StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                  if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                    DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemGradeQtd.AsFloat));
                  Dm1.tOrdemCompraItemGrade.Post;
                end;
              Dm1.tNEntradaItensGrade.Delete;
            end;
          Volta_NotaFiscal;
          DM1.tNEntradaItens.Delete;
        end;
      DM1.tNEntradaParc.First;
      if not DM1.tNEntradaParc.IsEmpty then
        while not DM1.tNEntradaParc.Eof do
          DM1.tNEntradaParc.Delete;
      DM1.tNEntradaItensMobra.First;
      if not DM1.tNEntradaItensMobra.IsEmpty then
        while not DM1.tNEntradaItensMobra.EOF do
          DM1.tNEntradaItensMobra.Delete;
      DM1.tNEntrada.Cancel;
    end
  else
  if BitBtn8.Tag = 1 then
    begin
      Soma_Estoque;
      Grava_Pgto;
      DM1.tNEntrada.Cancel;
    end;
  Habilita;
  DBRadioGroup4.Enabled := True;
  BitBtn8.Tag := 0;
end;

procedure TfNotaEntrada.BitBtn6Click(Sender: TObject);
var
  vValorTotalStr : string;
  vValorTotal    : Currency;
label
  NovaPosicao;
begin
  if (DM1.tNEntradaCodForn.AsString = '') or (RxDBLookupCombo1.Text = '') then
    begin
      ShowMessage('Você deve preencher o Fornecedor!');
      goto NovaPosicao;
    end;
  if DM1.tNEntradaNumNEntr.AsString = '' then
    begin
      ShowMessage('Você deve preencher o nº da nota!');
      goto NovaPosicao;
    end;
  if RxDBLookupCombo6.Text = '' then
    begin
      ShowMessage('Deve haver uma Natureza de Operação digitada!');
      goto NovaPosicao;
    end;
  if (DBRadioGroup2.Value = 'N') then
    begin
      if not DM1.tNEntradaParc.IsEmpty then
        begin
          ShowMessage('A cond.de pagamento escolhida não pode ter vencimentos!');
          goto NovaPosicao;
        end;
    end;
  if DBRadioGroup2.Value = 'P' then
    begin
      if DM1.tNEntradaParc.IsEmpty then
        begin
          ShowMessage('Você escolheu Cond.Pgto a Prazo, deve digitar as parcelas!');
          goto NovaPosicao;
        end;
      vValorTotal := 0;
      case DBRadioGroup1.ItemIndex of
        0 : begin
              tNEntradaItensIns.First;
              while not tNEntradaItensIns.EOF do
                begin
                  vValorTotal := vValorTotal + tNEntradaItensInsVlrTotalItens.AsFloat;
                  tNEntradaItensIns.Next;
                end;
              vValorTotalStr := FormatFloat('0.00',vValorTotal);
            end;
        1 : begin
              DM1.tNEntradaItensMobra.First;
              while not DM1.tNEntradaItensMobra.EOF do
                begin
                  vValorTotal := vValorTotal + DM1.tNEntradaItensMobraVlrTotal.AsFloat;
                  DM1.tNEntradaItensMobra.Next;
                end;
              vValorTotalStr := FormatFloat('0.00',vValorTotal);
            end;
        2 : vValorTotalStr := FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat);
      end;
      Compara_Valor_Parcelas;
      if vValorParcelaTot <> vValorTotalStr then
        begin
          ShowMessage('Valor das Parcelas não confere com Total da Nota de Entrada!');
          goto NovaPosicao;
        end;
    end;
  if DBRadioGroup2.Value = 'V' then //Se é a vista
    begin
      vValorTotal := 0;
      case DBRadioGroup1.ItemIndex of
        0 : begin
              tNEntradaItensIns.First;
              while not tNEntradaItensIns.EOF do
                begin
                  vValorTotal := vValorTotal + tNEntradaItensInsVlrTotalItens.AsFloat;
                  tNEntradaItensIns.Next;
                end;
              vValorTotalStr := FormatFloat('0.00',vValorTotal);
            end;
        1 : begin
              DM1.tNEntradaItensMobra.First;
              while not DM1.tNEntradaItensMobra.EOF do
                begin
                  vValorTotal := vValorTotal + DM1.tNEntradaItensMobraVlrTotal.AsFloat;
                  DM1.tNEntradaItensMobra.Next;
                end;
              vValorTotalStr := FormatFloat('0.00',vValorTotal);
            end;
        2 : vValorTotalStr := FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat);
      end;
      vVlrDuplicata := StrToFloat(vValorTotalStr);
      if not DM1.tNEntradaParc.IsEmpty then
        begin
          Compara_Valor_Parcelas;
          if vValorParcelaTot <> vValorTotalStr then
            begin
              ShowMessage('Valor das Parcelas não confere com Total da Nota de Entrada!');
              goto NovaPosicao;
            end;
        end;
    end;
  DM1.tNEntradaParc.First;
  if DM1.tNEntradaParc.RecordCount > 0 then
    DM1.tNEntradaNroDuplicata.AsInteger := DM1.tNEntradaParcNroDuplicata.AsInteger
  else
    DM1.tNEntradaNroDuplicata.AsInteger := DM1.tNEntradaNumNEntr.AsInteger;
  DM1.tNEntrada.Post;
  if DM1.tNEntradaItens.State in [dsEdit,dsInsert] then
    DM1.tNEntradaItens.Post;
  Soma_Estoque;
  if (BitBtn8.Tag = 0) and (DM1.tParametrosPrecoAutomatico.AsBoolean) then
    Atualiza_Precos;
  BitBtn8.Tag := 0;
  Grava_Pgto;
  Habilita;
  DM1.tNEntrada.Refresh;
  DM1.tNEntradaItens.Refresh;
  DM1.tNEntradaParc.Refresh;
  NovaPosicao:
  CurrencyEdit11.Clear;
end;

procedure TfNotaEntrada.BitBtn7Click(Sender: TObject);
var
  vEntregue : Boolean;
begin
  if RxDBLookupCombo10.Text = '' then
    begin
      ShowMessage('Falta informar a natureza!');
      RxDBLookupCombo10.SetFocus;
    end
  else
  if (CurrencyEdit3.Value <= 0) or (CurrencyEdit7.Value <= 0) or (DBEdit1.Text = '') or
     (RxDBLookupCombo5.Text = '' ) or (RxDBLookupCombo1.Text = '') or (CurrencyEdit8.Value <= 0) then
    begin
      ShowMessage(' Há campos requeridos em branco, você deve acertar p/gravar' + #13 +
                  '"Quant.", "Valor Unitário", "Material", "Fornecedor" ou "Nº nota"');
      BitBtn6.SetFocus;
    end
  else
    begin
      if not DM1.tProduto.Locate('Codigo',RxDBLookupCombo5.KeyValue,[loCaseInsensitive]) then
        ShowMessage('Produto não cadastrado!')
      else
      if (DM1.tProdutoCor.RecordCount > 0) and (RxDBLookupCombo2.Text = '')then
        begin
          ShowMessage('Não pode ser confirmado este item s/ "Cor"!');
          RxDBLookupCombo2.SetFocus;
        end
      else
        begin
          BitBtn16.Tag := 0;
          CurrencyEdit3Exit(Sender);
          CurrencyEdit7Exit(Sender);
          tNEntradaItensIns.Refresh;
          tNEntradaItensIns.Last;
          DM1.tNEntradaItens.Insert;
          if vEdit = 'S' then
            DM1.tNEntradaItensItem.AsInteger      := vItem
          else
            DM1.tNEntradaItensItem.AsInteger      := tNEntradaItensInsItem.AsInteger + 1;
          DM1.tNEntradaItensCodMaterial.AsInteger := RxDBLookupCombo5.KeyValue;
          if RxDBLookupCombo2.Text <> '' then
            DM1.tNEntradaItensCodCor.AsInteger    := RxDBLookupCombo2.KeyValue;
          DM1.tNEntradaItensReferencia.AsString   := DM1.tProdutoReferencia.AsString;
          Dm1.tNEntradaItensCodNatOper.AsInteger  := RxDBLookupCombo10.KeyValue;
          Dm1.tNEntradaItensNomeMaterial.AsString := RxDBLookupCombo5.Text;
          DM1.tNEntradaItensQtd.AsFloat           := CurrencyEdit3.Value;
          DM1.tNEntradaItensQtdRestante.AsFloat   := CurrencyEdit3.Value;
          DM1.tNEntradaItensQtdPacote.AsFloat     := CurrencyEdit13.Value;
          dm1.tNEntradaItensSerie.AsString        := dm1.tNEntradaSerie.AsString;

          if mSelecionado.IsEmpty then
          begin
            DM1.tNEntradaItensQtdRestante.AsFloat := DM1.tNEntradaItensQtd.AsFloat;
            DM1.tNEntradaItensDevolucao.AsBoolean := False;
          end
          else
          begin
            DM1.tNEntradaItensQtdRestante.AsFloat := 0;
            DM1.tNEntradaItensDevolucao.AsBoolean := True;
          end;

          DM1.tNEntradaItensUnidade.AsString      := Edit2.Text;
          DM1.tNEntradaItensICMS.AsFloat          := CurrencyEdit4.Value;
          DM1.tNEntradaItensIPI.AsFloat           := CurrencyEdit5.Value;
          DM1.tNEntradaItensVlrUnit.AsFloat       := CurrencyEdit7.Value;
          DM1.tNEntradaItensVlrTotalItens.AsFloat := CurrencyEdit8.Value;
          DM1.tNEntradaItensDesc.AsFloat          := CurrencyEdit9.Value;
          DM1.tNEntradaItensVlrDesc.AsFloat       := CurrencyEdit10.Value;
          if RxDBLookupCombo13.Text <> '' then
            DM1.tNEntradaItensSitTrib.AsInteger   := RxDBLookupCombo13.KeyValue;
          DM1.tNEntradaItensIcmsIpi.AsBoolean     := DM1.tNEntradaIcmsIpi.AsBoolean;
          Dm1.tNEntradaItensNumOC.AsInteger       := CurrencyEdit11.AsInteger;
          Dm1.tNEntradaItensItemOC.AsInteger      := CurrencyEdit12.AsInteger;
          Dm1.tNEntradaItensSomaEstoque.AsBoolean := CheckBox1.Checked;
          Dm1.tNEntradaItensMatProd.AsString      := DM1.tProdutoProdMat.AsString;
          vBaseIcms  := 0;
          vValorIcms := 0;
          if CurrencyEdit4.Value > 0 then
            Calcula_ICMS;
          DM1.tNEntradaItensBaseICMS.AsFloat      := vBaseICMS;
          DM1.tNEntradaItensVlrICMS.AsFloat       := vValorICMS;
          Calcula_IPI;
          DM1.tNEntradaItensVlrIPI.AsFloat        := vValorIPI;
          DM1.tNEntradaBaseICMS.AsFloat           := DM1.tNEntradaBaseICMS.AsFloat + vBaseICMS;
          DM1.tNEntradaVlrICMS.AsFloat            := DM1.tNEntradaVlrICMS.AsFloat + vValorICMS;
          DM1.tNEntradaVlrIPI.AsFloat             := DM1.tNEntradaVlrIPI.AsFloat + vValorIPI;
          DM1.tNEntradaVlrTotalNEntr.AsFloat      := DM1.tNEntradaVlrTotalNEntr.AsFloat + CurrencyEdit8.Value;
          tAuxNEntradaGrade.First;
          if not tAuxNEntradaGrade.IsEmpty then
            DM1.tNEntradaItensCodGrade.AsInteger  := tAuxNEntradaGradeCodGrade.AsInteger
          else
            DM1.tNEntradaItensCodGrade.AsInteger  := 0;
          DM1.tNEntradaItens.Post;
          //*** Baixa a Ordem de Compra
          if DM1.tNEntradaItensNumOC.AsInteger > 0 then
            begin
              Dm1.tOrdemCompra.IndexFieldNames := 'Codigo';
              DM1.tOrdemCompra.SetKey;
              DM1.tOrdemCompraCodigo.AsInteger := DM1.tNEntradaItensNumOC.AsInteger;
              if DM1.tOrdemCompra.GotoKey then
                begin
                  Dm1.tOrdemCompraItem.IndexFieldNames := 'Codigo;Item';
                  Dm1.tOrdemCompraItem.SetKey;
                  DM1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  DM1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                  if DM1.tOrdemCompraItem.GotoKey then
                    begin
                      Dm1.tOrdemCompraItem.Edit;
                      Dm1.tOrdemCompraItemQtdRestante.AsFloat      := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) -
                                                                      StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      if Dm1.tOrdemCompraItemQtdRestante.AsFloat < 0 then
                        Dm1.tOrdemCompraItemQtdRestante.AsFloat := 0;
                      Dm1.tOrdemCompraItemQtdEntregue.AsFloat      := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) +
                                                                      StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      Dm1.tOrdemCompraItem.Post;
                    end;
                end;
            end;

          //*** grava a grade nos itens
          if (DM1.tProdutoLancaGrade.AsBoolean) or (DM1.tNEntradaItensMatProd.AsString = 'P') then
            begin
              tAuxNEntradaGrade.First;
              while not tAuxNEntradaGrade.IsEmpty do
                begin
                  DM1.tNEntradaItensGrade.Insert;
                  DM1.tNEntradaItensGradeCodForn.AsInteger   := DM1.tNEntradaCodForn.AsInteger;
                  DM1.tNEntradaItensGradeNumNEntr.AsInteger  := DM1.tNEntradaNumNEntr.AsInteger;
                  DM1.tNEntradaItensGradeItem.AsInteger      := DM1.tNEntradaItensItem.AsInteger;
                  DM1.tNEntradaItensGradeCodGrade.AsInteger  := tAuxNEntradaGradeCodGrade.AsInteger;
                  DM1.tNEntradaItensGradePosicao.AsInteger   := tAuxNEntradaGradePosicao.AsInteger;
                  DM1.tNEntradaItensGradeQtd.AsInteger       := tAuxNEntradaGradeQtd.AsInteger;
                  DM1.tNEntradaItensGradeVlrUnitario.AsFloat := tAuxNEntradaGradeVlrUnitario.AsFloat;
                  DM1.tNEntradaItensGradeVlrTotal.AsFloat    := tAuxNEntradaGradeQtd.AsInteger * tAuxNEntradaGradeVlrUnitario.AsFloat;
                  DM1.tNEntradaItensGrade.Post;
                  if DM1.tNEntradaItensNumOc.AsInteger > 0 then
                    begin
                      Dm1.tOrdemCompraItemGrade.IndexFieldNames := 'Codigo;Item;CodGrade;Posicao';
                      Dm1.tOrdemCompraItemGrade.SetKey;
                      Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := CurrencyEdit11.AsInteger;
                      Dm1.tOrdemCompraItemGradeItem.AsInteger     := CurrencyEdit12.AsInteger;
                      Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := tAuxNEntradaGradeCodGrade.AsInteger;
                      Dm1.tOrdemCompraItemGradePosicao.AsInteger  := tAuxNEntradaGradePosicao.AsInteger;
                      if Dm1.tOrdemCompraItemGrade.GotoKey then
                        begin
                          Dm1.tOrdemCompraItemGrade.Edit;
                          Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat)) -
                                                                          StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                          Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat)) +
                                                                          StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                          if Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat < 0 then
                            Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := 0;
                          Dm1.tOrdemCompraItemGrade.Post;
                        end;
                    end;
                  tAuxNEntradaGrade.Delete;
                end;
            end;
          if DM1.tNEntradaItensNumOC.AsInteger > 0 then
            begin
              vEntregue := True;
              DM1.tOrdemCompraItem.First;
              while not DM1.tOrdemCompraItem.Eof do
                begin
                  if DM1.tOrdemCompraItemQtdRestante.AsFloat > 0 then
                    vEntregue := False;
                  DM1.tOrdemCompraItem.Next;
                end;
              DM1.tOrdemCompra.Edit;
              DM1.tOrdemCompraEntregue.AsBoolean := vEntregue;
              DM1.tOrdemCompra.Post;
              if vEntregue then
                CurrencyEdit11.Clear;
            end;

          //Gravar a nota fiscal devolvida
          DM1.tNotaFiscal.IndexFieldNames      := 'Filial;NumSeq';
          DM1.tNotaFiscalItens.IndexFieldNames := 'Filial;NumSeq;Item';
          if not mSelecionado.IsEmpty then
            begin
              mSelecionado.First;
              while not mSelecionado.Eof do
                begin
                  DM1.tNEntradaNDevolvida.Insert;
                  DM1.tNEntradaNDevolvidaCodForn.AsInteger         := DM1.tNEntradaCodForn.AsInteger;
                  DM1.tNEntradaNDevolvidaNumNEntr.AsInteger        := DM1.tNEntradaNumNEntr.AsInteger;
                  DM1.tNEntradaNDevolvidaSerie.AsString            := DM1.tNEntradaSerie.AsString;
                  DM1.tNEntradaNDevolvidaItem.AsInteger            := DM1.tNEntradaItensItem.AsInteger;
                  DM1.tNEntradaNDevolvidaNumNotaSaida.AsInteger    := mSelecionadoNumNota.AsInteger;
                  DM1.tNEntradaNDevolvidaItemNotaSaida.AsInteger   := mSelecionadoItem.AsInteger;
                  DM1.tNEntradaNDevolvidaQtd.AsFloat               := mSelecionadoQtd.AsFloat;
                  DM1.tNEntradaNDevolvidaDtEmissao.AsDateTime      := DM1.tNEntradaDtEmissaoNEntr.AsDateTime;
                  DM1.tNEntradaNDevolvidaDtEntrada.AsDateTime      := DM1.tNEntradaDtEntrada.AsDateTime;
                  DM1.tNEntradaNDevolvidaFilial.AsInteger          := mSelecionadoFilial.AsInteger;
                  DM1.tNEntradaNDevolvidaNumSeqNotaSaida.AsInteger := mSelecionadoNumSeq.AsInteger;
                  DM1.tNEntradaNDevolvida.Post;

                  DM1.tNotaFiscal.SetKey;
                  DM1.tNotaFiscalFilial.AsInteger := mSelecionadoFilial.AsInteger;
                  DM1.tNotaFiscalNumSeq.AsInteger := mSelecionadoNumSeq.AsInteger;
                  if DM1.tNotaFiscal.GotoKey then
                    begin
                      DM1.tNotaFiscalItens.SetKey;
                      DM1.tNotaFiscalItensFilial.AsInteger := mSelecionadoFilial.AsInteger;
                      DM1.tNotaFiscalItensNumSeq.AsInteger := mSelecionadoNumSeq.AsInteger;
                      DM1.tNotaFiscalItensItem.AsInteger   := mSelecionadoItem.AsInteger;
                      if DM1.tNotaFiscalItens.GotoKey then
                        begin
                          DM1.tNotaFiscalItens.Edit;
                          DM1.tNotaFiscalItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNotaFiscalItensQtdRestante.AsFloat - mSelecionadoQtd.AsFloat));
                          DM1.tNotaFiscalItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNotaFiscalItensQtdDevolvida.AsFloat + mSelecionadoQtd.AsFloat));
                          DM1.tNotaFiscalItens.Post;
                        end;
                    end;
                  mSelecionado.Delete;
                end;
            end;
          //**************************

          Limpa_Edit;
          if CurrencyEdit11.AsInteger > 0 then
            CurrencyEdit12.SetFocus
          else
            CurrencyEdit14.SetFocus;
          vEdit := 'N';
          vItem := 0;
        end;
    end;
  if not DM1.tNEntradaItens.IsEmpty then
    DBRadioGroup4.Enabled := False;
end;

procedure TfNotaEntrada.SpeedButton3Click(Sender: TObject);
begin
  Limpa_Edit;
  RxDBLookupCombo11.SetFocus;
  vItem := 0;
  mSelecionado.EmptyDataSet;  
end;

procedure TfNotaEntrada.SpeedButton9Click(Sender: TObject);
begin
  if not DM1.tNEntradaItens.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este material da nota?',mtConfirmation,
         [mbOK,mbNo],0) = mrOK then
        begin
          DM1.tNEntradaBaseICMS.AsFloat      := DM1.tNEntradaBaseICMS.AsFloat -
                                                DM1.tNEntradaItensBaseICMS.AsFloat;
          DM1.tNEntradaVlrICMS.AsFloat       := DM1.tNEntradaVlrICMS.AsFloat -
                                                DM1.tNEntradaItensVlrICMS.AsFloat;
          DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat -
                                                DM1.tNEntradaItensVlrTotalItens.AsFloat;
          DM1.tNEntradaVlrIPI.AsFloat        := DM1.tNEntradaVlrIPI.AsFloat -
                                                DM1.tNEntradaItensVlrIPI.AsFloat;

          if DM1.tNEntradaItensNumOC.AsInteger > 0 then
            begin
              Dm1.tOrdemCompra.IndexFieldNames := 'Codigo';
              DM1.tOrdemCompra.SetKey;
              DM1.tOrdemCompraCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
              if DM1.tOrdemCompra.GotoKey then
                begin
                  DM1.tOrdemCompra.Edit;
                  DM1.tOrdemCompraEntregue.AsBoolean := False;
                  DM1.tOrdemCompra.Post;

                  Dm1.tOrdemCompraItem.IndexFieldNames := 'Codigo;Item';
                  Dm1.tOrdemCompraItem.SetKey;
                  Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                  if DM1.tOrdemCompraItem.GotoKey then
                    begin
                      Dm1.tOrdemCompraItem.Edit;
                      Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      if DM1.tOrdemCompraItemQtdRestante.AsFloat > DM1.tOrdemCompraItemQtd.AsFloat then
                        DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                      Dm1.tOrdemCompraItem.Post;
                    end;
                end;
            end;
          while not Dm1.tNEntradaItensGrade.IsEmpty do
            begin
              Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Codigo;Item;CodGrade;Posicao';
              Dm1.tOrdemCompraItemGrade.SetKey;
              Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
              Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
              Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
              Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
              if Dm1.tOrdemCompraItemGrade.GotoKey then
                begin
                  Dm1.tOrdemCompraItemGrade.Edit;
                  Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat)) -
                                                                  StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                  Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat)) +
                                                                  StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                  if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                    DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemGradeQtd.AsFloat));
                  Dm1.tOrdemCompraItemGrade.Post;
                end;
              Dm1.tNEntradaItensGrade.Delete;
            end;
          Volta_NotaFiscal;  
          DM1.tNEntradaItens.Delete;
        end;
    end
  else
    ShowMessage('Não há o que apagar da nota!');
  if DM1.tNEntradaItens.IsEmpty then
    DBRadioGroup4.Enabled := True;
end;

procedure TfNotaEntrada.SpeedButton11Click(Sender: TObject);
begin
  RxCalculator1.Execute;
end;

procedure TfNotaEntrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tNEntrada.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve cancelar ou confirmar nota de entrada antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfNotaEntrada.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  if DM1.tUsuarioExcNotaEnt.AsBoolean then
    begin
      vExcluir := True;
      DM1.tNEntradaParc.First;
      while not DM1.tNEntradaParc.Eof do
        begin
          if tCPagarParc.Locate('ParcCPagar;CodForn;NumNotaEnt',VarArrayOf([DM1.tNEntradaParcParcela.AsInteger,
                               DM1.tNEntradaParcCodForn.AsInteger,
                               DM1.tNEntradaParcNumNEntr.AsInteger]),[locaseinsensitive]) then
            begin
              if (tCPagarParcNumNotaEnt.AsInteger <> DM1.tNEntradaParcNumNEntr.AsInteger) or (tCPagarParcParcCPagar.AsInteger <> DM1.tNEntradaParcParcela.AsInteger) or
                 (tCPagarParcDtVencCPagar.AsDateTime <> DM1.tNEntradaParcDtVenc.AsDateTime) or (tCPagarParcVlrParcCPagar.AsFloat <> DM1.tNEntradaParcVlrVenc.AsFloat) or
                 (tCPagarParcCodConta.AsInteger <> DM1.tNEntradaParcCodBco.AsInteger) or (tCPagarParcPgtoParcial.AsFloat > 0) then
                vExcluir := False;
            end;
          DM1.tNEntradaParc.Next;
        end;
      if vExcluir = False then
        ShowMessage('Esta nota já foi alterada no contas a pagar!')
      else
        begin
          //*** Verifica se algum item da nota já foi baixado pelo código de barra
          if vExcluir then
            begin
              DM1.tNEntradaItens.First;
              while not DM1.tNEntradaItens.Eof do
                begin
                  if DM1.tNEntradaItensNumMovEstBaixa.AsInteger > 0 then
                    vExcluir := False;
                  DM1.tNEntradaItens.Next;
                end;
              if vExcluir = False then
                ShowMessage('Esta nota já foi baixada pelo código de barra no estoque!');
            end;
        end;
      if (vExcluir) and (MessageDlg('Deseja realmente excluir esta Nota?',mtConfirmation,[mbOK,mbNO],0) = mrOK) then
        begin
          // apaga os itens da nota de entrada
          Diminui_Estoque;
          DM1.tNEntradaItens.First;
          while not DM1.tNEntradaItens.IsEmpty do
            begin
              if DM1.tNEntradaItensNumOC.AsInteger > 0 then
                begin
                  Dm1.tOrdemCompra.IndexFieldNames := 'Codigo';
                  DM1.tOrdemCompra.SetKey;
                  DM1.tOrdemCompraCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  if DM1.tOrdemCompra.GotoKey then
                    begin
                      DM1.tOrdemCompra.Edit;
                      DM1.tOrdemCompraEntregue.AsBoolean := False;
                      DM1.tOrdemCompra.Post;

                      Dm1.tOrdemCompraItem.IndexFieldNames := 'Codigo;Item';
                      Dm1.tOrdemCompraItem.SetKey;
                      Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                      Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                      if DM1.tOrdemCompraItem.GotoKey then
                        begin
                          Dm1.tOrdemCompraItem.Edit;
                          Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                     StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                          Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                     StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                          if DM1.tOrdemCompraItemQtdRestante.AsFloat > DM1.tOrdemCompraItemQtd.AsFloat then
                            DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                          Dm1.tOrdemCompraItem.Post;
                        end;
                    end;
                end;
              while not Dm1.tNEntradaItensGrade.IsEmpty do
                begin
                  Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Codigo;Item;CodGrade;Posicao';
                  Dm1.tOrdemCompraItemGrade.SetKey;
                  Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
                  Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
                  Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
                  if Dm1.tOrdemCompraItemGrade.GotoKey then
                    begin
                      Dm1.tOrdemCompraItemGrade.Edit;
                      Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat -
                                                                      Dm1.tNEntradaItensGradeQtd.AsFloat;
                      Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat +
                                                                      Dm1.tNEntradaItensGradeQtd.AsFloat;
                      if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                        DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := DM1.tOrdemCompraItemGradeQtd.AsFloat;
                      Dm1.tOrdemCompraItemGrade.Post;
                    end;
                  Dm1.tNEntradaItensGrade.Delete;
                end;
              Volta_NotaFiscal;
              DM1.tNEntradaItens.Delete;
            end;
          // apaga as parcelas da nota de entrada
          while not DM1.tNEntradaParc.IsEmpty do
            DM1.tNEntradaParc.Delete;
          // apaga o contas a pagar ou o caixa
          Cancela_Pgto;
          // apaga os itens da mão-de-obra
          if not DM1.tNEntradaItensMObra.IsEmpty then
            while not DM1.tNEntradaItensMObra.Eof do
              DM1.tNEntradaItensMObra.Delete;
          // apaga a nota de entrada
          DM1.tNEntrada.Delete;
        end;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a fazer exclusão!');
end;

procedure TfNotaEntrada.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if BitBtn8.Tag <> 1 then
    begin
      if RXDBLookupCombo1.Text <> '' then
        begin
          tNEntradaIns.First;
          tNEntradaIns.SetKey;
          tNEntradaInsNumNEntr.AsString := DBEdit1.Text;
          tNEntradaInsCodForn.AsString  := RXDBLookupCombo1.KeyValue;
          tNEntradaInsSerie.AsString    := DBEdit6.Text;
          if tNEntradaIns.GotoKey then
            begin
              ShowMessage('Já foi dada entrada desta nota!');
              DM1.tNEntrada.Cancel;
              DM1.tNEntrada.Insert;
              DBEdit1.SetFocus;
              DM1.tNEntradaDtEmissaoNEntr.AsDateTime := Date;
              DM1.tNEntradaDtEntrada.AsDateTime      := Date;
            end;
        end;
      if RxDBLookupCombo6.Text <> '' then
        RxDBLookupCombo10.KeyValue := RxDBLookupCombo6.KeyValue
      else
        ShowMessage('Falta informar a natureza de operação!');
    end;
  Verifica_UF;
end;

procedure TfNotaEntrada.DBEdit1Exit(Sender: TObject);
begin
  if BitBtn8.Tag <> 1 then
    begin
      if RXDBLookupCombo1.Text <> '' then
        begin
          tNEntradaIns.First;
          tNEntradaIns.SetKey;
          tNEntradaInsNumNEntr.AsString := DBEdit1.Text;
          tNEntradaInsCodForn.AsInteger := RXDBLookupCombo1.KeyValue;
          if tNEntradaIns.GotoKey then
            begin
              ShowMessage('Já foi dada entrada desta nota!');
              DM1.tNEntrada.Cancel;
              DM1.tNEntrada.Insert;
              DBEdit1.SetFocus;
            end;
        end;
    end;
end;

procedure TfNotaEntrada.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
  if (BitBtn8.Tag = 1) or (DM1.tNEntradaItens.RecordCount > 0)
    or (DM1.tNEntradaParc.RecordCount > 0) or (DM1.tNEntradaItensMobra.RecordCount > 0) then
    RxDBLookupCombo1.ReadOnly := True
  else
    RxDBLookupCombo1.ReadOnly := False;
end;

procedure TfNotaEntrada.CurrencyEdit3Exit(Sender: TObject);
begin
  if RxDBLookupCombo5.Text <> '' then
    begin
      if CurrencyEdit3.Value <= 0 then
        begin
          if MessageDlg('Quantidade não pode ser "0" ou inferior' +#13+
                        'Deseja cancelar a inserção deste item ?', mtConfirmation,
                        [mbOK,mbNO],0) = mrOK then
            begin
              Limpa_Edit;
              RxDBLookupCombo11.SetFocus;
            end
          else
            CurrencyEdit3.SetFocus;
        end;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit7Exit(Sender: TObject);
begin
  if RxDBLookupCombo5.Text <> '' then
    begin
      if CurrencyEdit7.Value <= 0 then
        begin
          if MessageDlg('Valor Unitário não pode ser "0" ou menor' +#13+
                     'Deseja cancelar a inserção deste item ?', mtConfirmation,
                     [mbOK,mbNO],0) = mrOK then
            begin
              Limpa_Edit;
              RxDBLookupCombo11.SetFocus;
            end
          else
            CurrencyEdit7.SetFocus;
        end
      else
        begin
          if CurrencyEdit5.Value > 0 then
            begin
              CurrencyEdit8.Value := CurrencyEdit3.Value * CurrencyEdit7.Value;
              CurrencyEdit8.Value := CurrencyEdit8.Value + CurrencyEdit8.Value * CurrencyEdit5.Value / 100;
            end
          else
            CurrencyEdit8.Value := CurrencyEdit3.Value * CurrencyEdit7.Value;
          CurrencyEdit9Exit(Sender);
          CurrencyEdit10Exit(Sender);
        end;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit9Exit(Sender: TObject);
begin
  if CurrencyEdit9.Value > 0 then
    begin
      CurrencyEdit8.Value  := CurrencyEdit8.Value + CurrencyEdit8.Value * CurrencyEdit5.Value / 100;
      CurrencyEdit10.Value := CurrencyEdit8.Value * CurrencyEdit9.Value / 100;
      CurrencyEdit8.Value  := CurrencyEdit8.Value - CurrencyEdit10.Value;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit10Exit(Sender: TObject);
begin
  if (CurrencyEdit9.Value = 0) and (CurrencyEdit10.Value > 0) then
    begin
      CurrencyEdit8.Value := CurrencyEdit8.Value + CurrencyEdit8.Value * CurrencyEdit5.Value / 100;
      CurrencyEdit8.Value := CurrencyEdit8.Value - CurrencyEdit10.Value;
    end;
end;

procedure TfNotaEntrada.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioNatOper.AsBoolean then
    begin
      fNatOperacao := TfNatOperacao.Create(Self);
      fNatOperacao.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de natureza de operação!');
end;

procedure TfNotaEntrada.BitBtn2Click(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
    begin
      if (CurrencyEdit6.Value > 0) and (RxDBLookupCombo9.Text <> '') and (CurrencyEdit1.Value > 0) and (CurrencyEdit2.Value > 0) and (RxDBLookupCombo4.Text <> '') then
        begin                                        
          tNEntradaItensMObraIns.Refresh;
          tNEntradaItensMObraIns.Last;
          DM1.tNEntradaItensMObra.Insert;
          DM1.tNEntradaItensMobraCodNatOper.AsInteger := RxDBLookupCombo4.KeyValue;
          DM1.tNEntradaItensMObraCodForn.AsInteger    := DM1.tNEntradaCodForn.AsInteger;
          DM1.tNEntradaItensMObraNumNEntr.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tNEntradaItensMObraItem.AsInteger       := tNEntradaItensMObraInsItem.AsInteger + 1;
          DM1.tNEntradaItensMObraQtd.AsString         := CurrencyEdit6.Text;
          Dm1.tNEntradaItensMobraCodigo.AsInteger     := RxDBLookupCombo9.KeyValue;   
          DM1.tNEntradaItensMObraDescricao.AsString   := RxDBLookupCombo9.Text;
          DM1.tNEntradaItensMobraVlrUnit.AsFloat      := CurrencyEdit1.Value;
          DM1.tNEntradaItensMObraVlrTotal.AsFloat     := CurrencyEdit2.Value;
          DM1.tNEntradaVlrTotalNEntr.AsCurrency       := DM1.tNEntradaVlrTotalNEntr.AsCurrency +
                                                         DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
          DM1.tNEntradaItensMObra.Post;
          SpeedButton6.Click;
          RxDBLookupCombo9.SetFocus;
        end
      else
        begin
          ShowMessage('Deve haver: Mão-de-obra, quantidade mínima de 1 Valor Unítário, valor Total e Natureza de Operação!');
          RxDBLookupCombo9.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('Deve haver nº nota!');
      DBEdit1.SetFocus;
    end;
end;

procedure TfNotaEntrada.SpeedButton6Click(Sender: TObject);
begin
  RxDBLookupCombo9.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit6.Clear;
end;

procedure TfNotaEntrada.SpeedButton7Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este serviço da nota?',mtConfirmation,
     [mbOK,mbNo],0) = mrOK then
    begin
      DM1.tNEntradaVlrTotalNEntr.AsCurrency := DM1.tNEntradaVlrTotalNEntr.AsCurrency -
                                               DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
      DM1.tNEntradaItensMObra.Delete;
    end;
end;

procedure TfNotaEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tNEntrada.State in [dsBrowse]) then
    begin
      fConsNotaEnt := TfConsNotaEnt.Create(Self);
      fConsNotaEnt.ShowModal;
    end;
  if (Key = Vk_F3) and (DM1.tNEntrada.State in [dsBrowse]) then
    begin
      fConsNotaEntradaProd := TfConsNotaEntradaProd.Create(Self);
      fConsNotaEntradaProd.ShowModal;
    end;
  if (Key = Vk_F4) and (DM1.tNEntrada.State in [dsBrowse]) then
    begin
      fNFRetorno := TfNFRetorno.Create(Self);
      fNFRetorno.Edit1.Text := DM1.tNEntradaNumNFRetorno.AsString;
      fNFRetorno.ShowMOdal;
    end;
end;

procedure TfNotaEntrada.Imprimir1Click(Sender: TObject);
var
  vNumNE, vCliente : integer;
begin
  vNumNE                            := DM1.tNEntradaNumNEntr.AsInteger;
  vCliente                          := DM1.tNEntradaCodForn.AsInteger;
  DM1.tNEntrada.Filtered            := False;
  DM1.tNEntrada.Filter              := 'NumNEntr = '''+IntToStr(vNumNE)+''' and CodForn = '''+IntToStr(vCliente)+'''';
  DM1.tNEntrada.Filtered            := True;
  fRelNotaEntrada                   := TfRelNotaEntrada.Create(Self);
  fRelNotaEntrada.QuickRep1.Print;
  fRelNotaEntrada.QuickRep1.Free;
  DM1.tNEntrada.Filtered            := False;
  DM1.tNEntrada.FindKey([vNumNE,vCliente]);
  DM1.tNEntrada.Locate('NumNEntr;CodForn',VarArrayOf([vNumNE,vCliente]),[locaseinsensitive]);
end;

procedure TfNotaEntrada.Visualizar1Click(Sender: TObject);
var
  vNumNE, vCliente : integer;
begin
  vNumNE                            := DM1.tNEntradaNumNEntr.AsInteger;
  vCliente                          := DM1.tNEntradaCodForn.AsInteger;
  DM1.tNEntrada.Filtered            := False;
  DM1.tNEntrada.Filter              := 'NumNEntr = '''+IntToStr(vNumNE)+''' and CodForn = '''+IntToStr(vCliente)+'''';
  DM1.tNEntrada.Filtered            := True;
  fRelNotaEntrada                   := TfRelNotaEntrada.Create(Self);
  fRelNotaEntrada.QuickRep1.Preview;
  fRelNotaEntrada.QuickRep1.Free;
  DM1.tNEntrada.Filtered            := False;
  DM1.tNEntrada.Locate('NumNEntr;CodForn',VarArrayOf([vNumNE,vCliente]),[locaseinsensitive]);
end;

procedure TfNotaEntrada.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tPlanoContas.IndexFieldNames := 'Descricao';
end;

procedure TfNotaEntrada.BitBtn16Click(Sender: TObject);
var
 vAux : Real;
begin

  if not DM1.tNEntradaItens.IsEmpty then
    begin
      if DM1.tNEntradaNDevolvida.RecordCount > 0 then
        Raise Exception.Create('Item de devolução, não pode ser alterado!')
      else
      if DM1.tNEntradaItensQtdDevolvida.AsFloat > 0 then
        Raise Exception.Create('Item com quantidade devolvida para o cliente!');
    end
  else
    Raise Exception.Create('Não há registro p/ ser alterado!');

  if not DM1.tNEntradaItens.IsEmpty then
    begin
      if RxDBLookupCombo5.Text = '' then
        begin
          CurrencyEdit14.AsInteger     := DM1.tNEntradaItensCodMaterial.AsInteger;
          RxDBLookupCombo11.KeyValue   := DM1.tNEntradaItensCodMaterial.AsInteger;
          RxDBLookupCombo5.KeyValue    := DM1.tNEntradaItensCodMaterial.AsInteger;
          DM1.tProduto.IndexFieldNames := 'Codigo';
          DM1.tProduto.SetKey;
          DM1.tProdutoCodigo.AsInteger := DM1.tNEntradaItensCodMaterial.AsInteger;
          DM1.tProduto.GotoKey;
          RxDBLookupCombo10.KeyValue   := Dm1.tNEntradaItensCodNatOper.AsInteger;
          RxDBLookupCombo5.KeyValue    := DM1.tNEntradaItensCodMaterial.AsInteger;
          vAux                         := 0;
          BitBtn16.Tag                 := 1;
          vEdit                        := 'S';
          vItem                        := DM1.tNEntradaItensItem.AsInteger;
          if DM1.tNEntradaItensCodCor.AsInteger > 0 then
            RxDBLookupCombo2.KeyValue        := DM1.tNEntradaItensCodCor.AsInteger;
          Edit2.Text                         := DM1.tNEntradaItensUnidade.AsString;
          CurrencyEdit3.Value                := DM1.tNEntradaItensQtd.AsFloat;
          CurrencyEdit13.Value               := DM1.tNEntradaItensQtdPacote.AsFloat;
          CurrencyEdit4.Value                := DM1.tNEntradaItensIcms.AsFloat;
          CurrencyEdit5.Value                := DM1.tNEntradaItensIpi.AsFloat;
          if DM1.tNEntradaItensSitTrib.AsInteger > 0 then
            RxDBLookupCombo13.KeyValue       := DM1.tNEntradaItensSitTrib.AsInteger;
          CurrencyEdit7.Value                := DM1.tNEntradaItensVlrUnit.AsFloat;
          CurrencyEdit8.Value                := DM1.tNEntradaItensVlrTotalItens.AsFloat;
          CurrencyEdit9.Value                := DM1.tNEntradaItensDesc.AsFloat;
          CurrencyEdit10.Value               := DM1.tNEntradaItensVlrDesc.AsFloat;
          CurrencyEdit11.Value               := DM1.tNEntradaItensNumOC.AsInteger;
          CurrencyEdit12.Value               := DM1.tNEntradaItensItemOC.AsInteger;
          DM1.tNEntradaBaseICMS.AsFloat      := DM1.tNEntradaBaseICMS.AsFloat -
                                                DM1.tNEntradaItensBaseICMS.AsFloat;
          DM1.tNEntradaVlrICMS.AsFloat       := DM1.tNEntradaVlrICMS.AsFloat -
                                                DM1.tNEntradaItensVlrICMS.AsFloat;
          DM1.tNEntradaVlrIPI.AsFloat        := DM1.tNEntradaVlrIPI.AsFloat -
                                                DM1.tNEntradaItensVlrIPI.AsFloat;
          DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat - DM1.tNEntradaItensVlrTotalItens.AsFloat;
          CheckBox1.Checked                  := Dm1.tNEntradaItensSomaEstoque.AsBoolean;
          tAuxNEntradaGrade.First;
          while not tAuxNEntradaGrade.EOF do
            tAuxNEntradaGrade.Delete;
          if DM1.tNEntradaItensCodGrade.AsInteger > 0 then
            begin
              DM1.tGrade.IndexFieldNames := 'Codigo';
              DM1.tGrade.FindKey([DM1.tNEntradaItensCodGrade.AsInteger]);
            end;
          DM1.tNEntradaItensGrade.First;
          //*** Volta a Ordem de Compra
          if DM1.tNEntradaItensNumOC.AsInteger > 0 then
            begin
              Dm1.tOrdemCompra.IndexFieldNames := 'Codigo';
              DM1.tOrdemCompra.SetKey;
              DM1.tOrdemCompraCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
              if DM1.tOrdemCompra.GotoKey then
                begin
                  DM1.tOrdemCompra.Edit;
                  DM1.tOrdemCompraEntregue.AsBoolean := False;
                  DM1.tOrdemCompra.Post;

                  Dm1.tOrdemCompraItem.IndexFieldNames := 'Codigo;Item';
                  Dm1.tOrdemCompraItem.SetKey;
                  Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                  if DM1.tOrdemCompraItem.GotoKey then
                    begin
                      Dm1.tOrdemCompraItem.Edit;
                      Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      if StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtdRestante.AsFloat)) > StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat)) then
                        DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                      Dm1.tOrdemCompraItem.Post;
                    end;
                end;
            end;
          while not DM1.tNEntradaItensGrade.EOF do
            begin
              tAuxNEntradaGrade.Insert;
              tAuxNEntradaGradeCodGrade.AsInteger  := DM1.tNEntradaItensGradeCodGrade.AsInteger;
              tAuxNEntradaGradePosicao.AsInteger   := DM1.tNEntradaItensGradePosicao.AsInteger;
              tAuxNEntradaGradeQtd.asFloat         := DM1.tNEntradaItensGradeQtd.AsFloat;
              tAuxNEntradaGradeVlrUnitario.AsFloat := DM1.tNEntradaItensGradeVlrUnitario.AsFloat;
              tAuxNEntradaGradeVlrTotal.AsFloat    := DM1.tNEntradaItensGradeVlrUnitario.AsFloat * DM1.tNEntradaItensGradeQtd.AsFloat;
              vAux := vAux + DM1.tNEntradaItensGradeQtd.AsFloat;
              tAuxNEntradaGrade.Post;
              Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Codigo;Item;CodGrade;Posicao';
              Dm1.tOrdemCompraItemGrade.SetKey;
              Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
              Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
              Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
              Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
              if Dm1.tOrdemCompraItemGrade.GotoKey then
                begin
                  Dm1.tOrdemCompraItemGrade.Edit;
                  Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat -
                                                                  Dm1.tNEntradaItensGradeQtd.AsFloat;
                  Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat +
                                                                  Dm1.tNEntradaItensGradeQtd.AsFloat;
                  if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                    DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := DM1.tOrdemCompraItemGradeQtd.AsFloat;
                  Dm1.tOrdemCompraItemGrade.Post;
                end;
              DM1.tNEntradaItensGrade.Delete;
            end;
          if vAux > 0 then
            CurrencyEdit3.Value := vAux;
          DM1.tNEntradaItens.Delete;
          CurrencyEdit14.SetFocus;
        end
      else
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
    end;
end;

procedure TfNotaEntrada.tAuxNEntradaGradeBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  icount := tAuxNEntradaGrade.RecordCount;
  if icount >= DM1.tGradeItem.RecordCount then
    begin
      fNotaEntradaGrade.BitBtn5.SetFocus;
      Abort;
    end;
end;

procedure TfNotaEntrada.BitBtn8Click(Sender: TObject);
var
  Altera : Boolean;
begin
  if DM1.tUsuarioAltNotaEnt.AsBoolean then
    begin
      BitBtn8.Tag := 1;
      vItem       := 0;
      Altera      := True;
      DM1.tNEntradaParc.First;
      while not DM1.tNEntradaParc.EOF do
        begin
          if tCPagarParc.Locate('ParcCPagar;CodForn;NumNotaEnt',VarArrayOf([DM1.tNEntradaParcParcela.AsInteger,
                               DM1.tNEntradaParcCodForn.AsInteger,
                               DM1.tNEntradaParcNumNEntr.AsInteger]),[locaseinsensitive]) then
            begin
              if (tCPagarParcDtVencCPagar.AsDateTime <> DM1.tNEntradaParcDtVenc.AsDateTime) or (tCPagarParcVlrParcCPagar.AsFloat <> DM1.tNEntradaParcVlrVenc.AsFloat) or
                 (tCPagarParcPgtoParcial.AsFloat > 0) then
                Altera := False;
             end;
          DM1.tNEntradaParc.Next;
        end;
      if not Altera then
        ShowMessage('Esta Nota já foi alterada no Ctas. a Pagar!');
      //*** Verifica se algum item da nota já foi baixado pelo código de barra
      if Altera then
        begin
          DM1.tNEntradaItens.First;
          while not DM1.tNEntradaItens.Eof do
            begin
              if DM1.tNEntradaItensNumMovEstBaixa.AsInteger > 0 then
                Altera := False;
              DM1.tNEntradaItens.Next;
            end;
          if Altera = False then
            ShowMessage('Esta nota já foi baixada pelo código de barra no estoque!');
        end;
      //***********************
      if (Altera) and (DM1.tNEntradaDevolvida.AsBoolean) then
        begin
          ShowMessage('Nota foi devolvida não pode ser alterada');
          Altera := False;
        end;
      if Altera = True then
        begin
          Habilita;
          Cancela_Pgto;
          DM1.tNEntrada.Edit;
          Diminui_Estoque;
        end;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a fazer alteração!');
end;

procedure TfNotaEntrada.CurrencyEdit9Enter(Sender: TObject);
begin
  CurrencyEdit8.Value := CurrencyEdit8.Value + CurrencyEdit10.Value;
end;

procedure TfNotaEntrada.CurrencyEdit10Enter(Sender: TObject);
begin
  if (CurrencyEdit9.Value = 0) and (CurrencyEdit10.Value > 0) then
    CurrencyEdit8.Value := CurrencyEdit8.Value + CurrencyEdit10.Value;
end;

procedure TfNotaEntrada.DBEdit7Enter(Sender: TObject);
begin
  vOutrasDesp := DM1.tNEntradaOutrasDesp.AsFloat;
end;

procedure TfNotaEntrada.DBEdit7Exit(Sender: TObject);
begin
  DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat - vOutrasDesp + DM1.tNEntradaOutrasDesp.AsFloat;
end;

procedure TfNotaEntrada.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit2.Value := CurrencyEdit1.Value * CurrencyEdit6.Value; 
end;

procedure TfNotaEntrada.BitBtn9Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaEntrada.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo1.LookupDisplay = 'NomeForn' then
      begin
         RxDBLookupCombo1.CloseUp(True);
         RxDBLookupCombo1.LookupDisplay    := 'Fantasia';
         DM1.tFornecedores.IndexFieldNames := 'Fantasia';
         DM1.tFornecedores.Refresh;
         Label23.Caption := 'Fantasia';
      end
      else
      if RxDBLookupCombo1.LookupDisplay = 'Fantasia' then
      begin
        RxDBLookupCombo1.CloseUp(True);
        RxDBLookupCombo1.LookupDisplay    := 'NomeForn';
        DM1.tFornecedores.IndexFieldNames := 'NomeForn';
        DM1.tFornecedores.Refresh;
        Label23.Caption := 'Nome';
      end;
    end;
end;

procedure TfNotaEntrada.DBGrid2Enter(Sender: TObject);
begin
  if DM1.tNEntradaNumNEntr.AsString = '' then
  begin
    ShowMessage('É obrigatório informar nº da nota!');
    DBEdit1.SetFocus;
  end;
end;

procedure TfNotaEntrada.SpeedButton17Click(Sender: TObject);
begin
  fBuscaOC := TfBuscaOC.Create(Self);
  if CurrencyEdit11.Value > 0 then
    fBuscaOC.Edit2.Text := CurrencyEdit11.Text;
  if CurrencyEdit12.Value > 0 then
    fBuscaOC.Edit1.Text := CurrencyEdit12.Text;
  Dm1.tOrdemCompra.Filter   := 'CodFornecedor = ' + QuotedStr(IntToStr(RxDBLookupCombo1.KeyValue));
  Dm1.tOrdemCompra.Filtered := True;
  fBuscaOC.Edit2Change(Sender);
  if (fBuscaOC.Edit2.Text <> '') and (fBuscaOC.Edit2.Text <> '') then
    fBuscaOC.Edit1Exit(Sender);
  fBuscaOC.ShowModal;
  Dm1.tOrdemCompra.Filtered := False;
  CurrencyEdit12.SetFocus;
end;

procedure TfNotaEntrada.CurrencyEdit11Exit(Sender: TObject);
begin
  if CurrencyEdit11.AsInteger > 0 then
    begin
      DM1.tOrdemCompra.IndexFieldNames := 'Codigo';
      DM1.tOrdemCompra.SetKey;
      DM1.tOrdemCompraCodigo.AsInteger := CurrencyEdit11.AsInteger;
      if DM1.tOrdemCompra.GotoKey then
        begin
          if (DM1.tOrdemCompraEntregue.AsBoolean) then
            begin
              ShowMessage('Esta ordem de compra já foi entregue!');
              CurrencyEdit11.AsInteger := 0;
              CurrencyEdit11.SetFocus;
            end
          else
          if (DM1.tOrdemCompraCodFornecedor.AsInteger <> DM1.tNEntradaCodForn.AsInteger) then
            begin
              ShowMessage('Fornecedor diferente da nota');
              CurrencyEdit11.AsInteger := 0;
              CurrencyEdit11.SetFocus;
            end;
         end
       else
         begin
           ShowMessage('Ordem de compra não cadastrada');
           CurrencyEdit11.AsInteger := 0;
           CurrencyEdit11.SetFocus;
        end;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit12Exit(Sender: TObject);
begin
  if vEdit <> 'S' then
    begin
      if (CurrencyEdit11.AsInteger < 1) and (CurrencyEdit12.AsInteger > 0) then
        begin
          ShowMessage('Não pode informar o item sem o número da ordem de compra!');
          CurrencyEdit12.AsInteger := 0;
          CurrencyEdit12.SetFocus;
        end
      else
      if (CurrencyEdit11.AsInteger > 0) and (CurrencyEdit12.AsInteger > 0) then
        begin
          DM1.tOrdemCompra.IndexFieldNames := 'Codigo';
          DM1.tOrdemCompra.SetKey;
          DM1.tOrdemCompraCodigo.AsInteger := CurrencyEdit11.AsInteger;
          if (DM1.tOrdemCompra.GotoKey) and (DM1.tOrdemCompraEntregue.AsBoolean <> True) and
             (DM1.tOrdemCompraCodFornecedor.AsInteger = DM1.tNEntradaCodForn.AsInteger) then
            begin
              DM1.tOrdemCompraItem.IndexFieldNames := 'Codigo;Item';
              DM1.tOrdemCompraItem.SetKey;
              DM1.tOrdemCompraItemCodigo.AsInteger := CurrencyEdit11.AsInteger;
              DM1.tOrdemCompraItemItem.AsInteger   := CurrencyEdit12.AsInteger;
              if DM1.tOrdemCompraItem.GotoKey then
                begin
                  if DM1.tOrdemCompraItemQtdRestante.AsFloat > 0 then
                    begin
                      CurrencyEdit14.AsInteger   := DM1.tOrdemCompraItemCodMaterial.AsInteger;
                      RxDBLookupCombo11.KeyValue := DM1.tOrdemCompraItemCodMaterial.AsString;
                      RxDBLookupCombo5.KeyValue  := DM1.tOrdemCompraItemCodMaterial.AsString;
                      if DM1.tOrdemCompraItemCodCor.AsInteger > 0 then
                        RxDBLookupCombo2.KeyValue := DM1.tOrdemCompraItemCodCor.AsInteger;
                      Edit2.Text          := DM1.tOrdemCompraItemUnidade.AsString;
                      CurrencyEdit3.Value := DM1.tOrdemCompraItemQtdRestante.AsFloat;
                      CurrencyEdit7.Value := DM1.tOrdemCompraItemVlrUnitario.AsFloat;
                      if CurrencyEdit7.Value > 0 then
                        CurrencyEdit7Exit(Sender);
                      if DM1.tOrdemCompraItemCodGrade.AsInteger > 0 then
                        begin
                          DM1.tGrade.IndexFieldNames := 'Codigo';
                          DM1.tGrade.FindKey([DM1.tOrdemCompraItemCodGrade.AsInteger]);
                          Monta_Grade;
                          fNotaEntradaGrade := tfNotaEntradaGrade.Create(Self);
                          fNotaEntradaGrade.ShowModal;
                        end;
                    end
                  else
                    begin
                      ShowMessage('Este item da ordem de compra já foi entregue!');
                      CurrencyEdit12.AsInteger := 0;
                      CurrencyEdit12.SetFocus;
                    end
                 end
              else
                begin
                  ShowMessage('Item não cadastrado');
                  CurrencyEdit12.AsInteger := 0;
                  CurrencyEdit12.SetFocus;
                end;
            end;
        end;
    end;
end;

procedure TfNotaEntrada.tAuxNEntradaGradeBeforePost(DataSet: TDataSet);
begin
  if CurrencyEdit11.AsInteger > 0 then
    begin
      DM1.tOrdemCompra.IndexFieldNames := 'Codigo';
      DM1.tOrdemCompra.SetKey;
      DM1.tOrdemCompraCodigo.AsInteger := CurrencyEdit11.AsInteger;
      if (DM1.tOrdemCompra.GotoKey) and (DM1.tOrdemCompraEntregue.AsBoolean <> True) and
         (DM1.tOrdemCompraCodFornecedor.AsInteger = DM1.tNEntradaCodForn.AsInteger) then
        begin
          DM1.tOrdemCompraItem.IndexFieldNames := 'Codigo;Item';
          DM1.tOrdemCompraItem.SetKey;
          DM1.tOrdemCompraItemCodigo.AsInteger := CurrencyEdit11.AsInteger;
          DM1.tOrdemCompraItemItem.AsInteger   := CurrencyEdit12.AsInteger;
          if DM1.tOrdemCompraItem.GotoKey then
            DM1.tOrdemCompraItemGradeCodigo.AsInteger
        end;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit12Enter(Sender: TObject);
begin
  if CurrencyEdit11.Value < 1 then
     CurrencyEdit14.SetFocus;
end;

procedure TfNotaEntrada.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir esta parcela da nota?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
    DM1.tNEntradaParc.Delete;
end;

procedure TfNotaEntrada.RxDBLookupCombo5Exit(Sender: TObject);
begin
  if RxDbLookUpCombo5.Text <> '' then
    begin
      RxDBLookupCombo11.KeyValue := DM1.tProdutoCodigo.AsString;
      Move_Itens;
      CurrencyEdit3.Enabled  := not (DM1.tProdutoLancaGrade.AsBoolean);
      CurrencyEdit13.Enabled := not (DM1.tProdutoLancaGrade.AsBoolean);
      if (CurrencyEdit12.Value < 1) or (vEdit = 'S') then
        begin
          if DM1.tProdutoLancaGrade.AsBoolean then
            begin
              fNotaEntradaGrade := tfNotaEntradaGrade.Create(Self);
              fNotaEntradaGrade.ShowModal;
            end;
        end;
      if (CurrencyEdit12.AsInteger < 1) and (vEdit <> 'S') then
        CurrencyEdit7.Value := DM1.tProdutoPrecoCusto.AsFloat;
    end;
end;

procedure TfNotaEntrada.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfNotaEntrada.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  DM1.tNEntrada.Refresh;
end;

procedure TfNotaEntrada.DBCheckBox1Click(Sender: TObject);
begin
  CurrencyEdit11.Enabled := not(DBCheckBox1.Checked);
  CurrencyEdit12.Enabled := not(DBCheckBox1.Checked);
  SpeedButton17.Enabled  := not(DBCheckBox1.Checked);
end;

procedure TfNotaEntrada.DBCheckBox1Enter(Sender: TObject);
begin
  DBCheckBox1.ReadOnly := not Dm1.tNEntradaItens.IsEmpty;
end;

procedure TfNotaEntrada.RxDBLookupCombo11Exit(Sender: TObject);
begin
  if RxDBLookupCombo11.Text <> '' then
    begin
      RxDBLookupCombo5.KeyValue := DM1.tProdutoCodigo.AsString;
      Move_itens;
    end;
end;

procedure TfNotaEntrada.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if RxDBLookupCombo11.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo11.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          if DM1.tProdutoCor.RecordCount < 1 then
            begin
              Edit2.SetFocus;
              RxDBLookupCombo2.ClearValue;
            end;
        end
      else
        RxDBLookupCombo11.SetFocus;
    end
  else
    RxDBLookupCombo11.SetFocus;
end;

procedure TfNotaEntrada.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) then
      CurrencyEdit7.Value := DM1.tProdutoCorPrCusto.AsFloat;
end;

procedure TfNotaEntrada.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfNotaEntrada.CurrencyEdit14KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit14.AsInteger > 0 then
        RxDBLookupCombo5.SetFocus
      else
        RxDBLookupCombo11.SetFocus;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit14Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit14.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit14.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo11.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo5.KeyValue  := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit14.SetFocus;
          CurrencyEdit14.Clear;
        end;
    end;
end;

procedure TfNotaEntrada.DBEdit1Enter(Sender: TObject);
begin
  if (BitBtn8.Tag = 1) or (DM1.tNEntradaItens.RecordCount > 0)
    or (DM1.tNEntradaParc.RecordCount > 0) or (DM1.tNEntradaItensMobra.RecordCount > 0) then
    DBEdit1.ReadOnly := True
  else
    DBEdit1.ReadOnly := False;
end;

procedure TfNotaEntrada.BitBtn11Click(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
    begin
      fEscNotaFiscalDevolPorItem2 := TfEscNotaFiscalDevolPorItem2.Create(Self);
      fEscNotaFiscalDevolPorItem2.ShowModal;
      CurrencyEdit11.Enabled := mSelecionado.IsEmpty;
      CurrencyEdit12.Enabled := mSelecionado.IsEmpty;
      SpeedButton17.Enabled  := mSelecionado.IsEmpty;
    end
  else
    ShowMessage('Falta informar a natureza de operação!');
end;

procedure TfNotaEntrada.Volta_NotaFiscal;
begin
  DM1.tNotaFiscal.IndexFieldNames      := 'Filial;NumSeq';
  DM1.tNotaFiscalItens.IndexFieldNames := 'Filial;NumSeq;Item';
  DM1.tNEntradaNDevolvida.First;
  while not DM1.tNEntradaNDevolvida.Eof do
    begin
      DM1.tNotaFiscal.SetKey;
      DM1.tNotaFiscalFilial.AsInteger := DM1.tNEntradaNDevolvidaFilial.AsInteger;
      DM1.tNotaFiscalNumSeq.AsInteger := DM1.tNEntradaNDevolvidaNumSeqNotaSaida.AsInteger;
      if DM1.tNotaFiscal.GotoKey then
        begin
          DM1.tNotaFiscalItens.SetKey;
          DM1.tNotaFiscalItensFilial.AsInteger := DM1.tNotaFiscalFilial.AsInteger;
          DM1.tNotaFiscalItensNumSeq.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
          DM1.tNotaFiscalItensItem.AsInteger   := DM1.tNEntradaNDevolvidaItemNotaSaida.AsInteger;
          if DM1.tNotaFiscalItens.GotoKey then
            begin
              DM1.tNotaFiscalItens.Edit;
              DM1.tNotaFiscalItensQtdRestante.AsFloat  := DM1.tNotaFiscalItensQtdRestante.AsFloat + DM1.tNEntradaNDevolvidaQtd.AsFloat;
              DM1.tNotaFiscalItensQtdDevolvida.AsFloat := DM1.tNotaFiscalItensQtdDevolvida.AsFloat - DM1.tNEntradaNDevolvidaQtd.AsFloat;
              DM1.tNotaFiscalItens.Post;
            end;
        end;
      DM1.tNEntradaNDevolvida.Delete;
    end;
end;

procedure TfNotaEntrada.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tOrdemCompra,Name);
  oDBUtils.ActiveDataSet(True,dm1.tOrdemCompraItem,Name);
  oDBUtils.ActiveDataSet(True,dm1.tOrdemCompraItemGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tNEntradaNDevolvida,Name);
  oDBUtils.ActiveDataSet(True,dm1.tNEntradaItensGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tCPagar,Name);
  oDBUtils.ActiveDataSet(True,dm1.tCPagarParc,Name);
  oDBUtils.ActiveDataSet(True,dm1.tCPagarParcHist,Name);
  oDBUtils.ActiveDataSet(True,dm1.tNotaFiscal,Name);
  oDBUtils.ActiveDataSet(True,dm1.tNotaFiscalItens,Name);
  oDBUtils.ActiveDataSet(True,dm1.tEstoqueMatMov,Name);
end;

end.



