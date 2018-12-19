unit UBuscaPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Buttons, RXLookup, Grids, Variants,
  DBGrids, RXDBCtrl, Db, DbTables, Mask, ToolEdit, CurrEdit, DBFilter, ALed, DBVGrids, MemTable;

type
  TfBuscaPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    ALed1: TALed;
    Label6: TLabel;
    Label7: TLabel;
    ALed2: TALed;
    ALed3: TALed;
    Label8: TLabel;
    VDBGrid1: TVDBGrid;
    mPedidoGrade: TMemoryTable;
    mPedidoGradeTamanho: TStringField;
    mPedidoGradeQtd: TFloatField;
    mPedidoGradeQtdFaturado: TFloatField;
    mPedidoGradeQtdRestante: TFloatField;
    msPedidoGrade: TDataSource;
    mPedidoGradeCodGrade: TIntegerField;
    mPedidoGradePosicao: TIntegerField;
    mPedidoGradePedido: TIntegerField;
    mPedidoGradeItemPedido: TIntegerField;
    Label4: TLabel;
    Edit5: TEdit;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    tPedido: TTable;
    dsPedido: TDataSource;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
    tPedidoPedido: TIntegerField;
    tPedidoDtEmissao: TDateField;
    tPedidoCodCliente: TIntegerField;
    tPedidoCodTransp: TIntegerField;
    tPedidoCodRedespacho: TIntegerField;
    tPedidoCodCondPgto: TIntegerField;
    tPedidoTipoFrete: TStringField;
    tPedidoCodVendedor: TIntegerField;
    tPedidoPercComissao: TFloatField;
    tPedidoDtIniEmbarque: TDateField;
    tPedidoDtFinEmbarque: TDateField;
    tPedidoCodNatOper: TIntegerField;
    tPedidoSituacao: TIntegerField;
    tPedidoNumLote: TIntegerField;
    tPedidoQtdPares: TFloatField;
    tPedidoVlrTotal: TFloatField;
    tPedidoVlrMercadoria: TFloatField;
    tPedidoVlrDesconto: TFloatField;
    tPedidoGerarLote: TStringField;
    tPedidoCancelado: TBooleanField;
    tPedidoSuspenso: TBooleanField;
    tPedidoImpresso: TBooleanField;
    tPedidoPesoBruto: TFloatField;
    tPedidoPesoLiquido: TFloatField;
    tPedidoSelecionado: TBooleanField;
    tPedidoCopiado: TBooleanField;
    tPedidoObs: TMemoField;
    tPedidoQtdParesCanc: TFloatField;
    tPedidoQtdParesFat: TFloatField;
    tPedidoQtdParesRest: TFloatField;
    tPedidoQtdFatAut: TFloatField;
    tPedidoQtdFatMan: TFloatField;
    tPedidoPedCliDif: TStringField;
    tPedidoImpRotulo: TBooleanField;
    tPedidoImpCalcLote: TBooleanField;
    tPedidoObsRotulo: TMemoField;
    tPedidoStock: TStringField;
    tPedidoLoteExp: TBooleanField;
    tPedidoDolar: TBooleanField;
    tPedidoPOCliente: TStringField;
    tPedidoInvoice: TStringField;
    tPedidoCarimbo: TStringField;
    tPedidoQtdParesRep: TFloatField;
    tPedidoVlrReposicao: TFloatField;
    tPedidoMercado: TStringField;
    tPedidoNumProgramacao: TIntegerField;
    tPedidoCia: TIntegerField;
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
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoItemQtdFatMan: TFloatField;
    tPedidoItemInvoice: TStringField;
    tPedidoItemLoteGer: TBooleanField;
    tPedidoItemReposicao: TBooleanField;
    tPedidoItemObsLote: TStringField;
    tPedidoItemNumOS: TStringField;
    tPedidoItemDtEmbarque: TDateField;
    tPedidoItemCodCia: TIntegerField;
    tPedidoItemDtReprogramacao: TDateField;
    tPedidoItemReprogramacao: TBooleanField;
    tPedidoItemDtBaixa: TDateField;
    tPedidoItemHrBaixa: TTimeField;
    tPedidolkNomeCliente: TStringField;
    tPedidoItemlkReferencia: TStringField;
    tPedidoItemlkCor: TStringField;
    RxDBFilter1: TRxDBFilter;
    RxDBFilter2: TRxDBFilter;
    tPedidoGrade: TTable;
    dsPedidoGrade: TDataSource;
    tPedidoGradePedido: TIntegerField;
    tPedidoGradeItemPed: TIntegerField;
    tPedidoGradeCodGrade: TIntegerField;
    tPedidoGradePosicao: TIntegerField;
    tPedidoGradeQtd: TFloatField;
    tPedidoGradeVlrUnitario: TFloatField;
    tPedidoGradeVlrTotal: TFloatField;
    tPedidoGradeQtdParesRest: TFloatField;
    tPedidoGradeQtdParesFat: TFloatField;
    tPedidoGradeQtdParesAut: TFloatField;
    tPedidoGradeQtdParesMan: TFloatField;
    tPedidoGradelkTamanho: TStringField;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RadioGroup1: TRadioGroup;
    tPedidoItemFabrica: TStringField;
    tPedidoItemNumTalao: TIntegerField;
    tPedidoItemQtdLote: TFloatField;
    tPedidoItemCodProdutoCli: TStringField;
    tPedidoItemProdCliPorTamanho: TBooleanField;
    tPedidoItemGerarTalao: TBooleanField;
    Label2: TLabel;
    Edit2: TEdit;
    tPedidoPedidoCliente: TStringField;
    tPedidoEstoque: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure RxDBGrid1CellClick(Column: TColumn);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5Exit(Sender: TObject);
    procedure RxDBGrid2CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vQtd : Real;
    procedure Monta_Auxiliar;
    procedure Copia_Nota(Sender: TObject);
    procedure Copia_NotaItem(Sender: TObject);
    procedure Copia_Vale;
    procedure Copia_ValeItem;
    procedure Verifica_Nat_Oper;
  public
    { Public declarations }
  end;

var
  fBuscaPedido: TfBuscaPedido;
  vPedido: integer;

implementation

uses UDM1, UEmissaoNotaFiscal, UNotaFiscalItens, UVale, UValeItens;

{$R *.DFM}

procedure TfBuscaPedido.Verifica_Nat_Oper;
var
  i : integer;
  vObs : boolean;
  vTexto : String;
begin
  vObs := True;
  if (Length(DM1.tNotaFiscalObs.AsString) > 0) and (DM1.tNatOperacaoLei.AsString <> '') then
    begin
      for i := 1 to Length(DM1.tNotaFiscalObs.AsString) do
        begin
          if Copy(DM1.tNotaFiscalObs.AsString,i,length(DM1.tNatOperacaoLei.AsString)) = DM1.tNatOperacaoLei.AsString then
            begin
              vObs := False;
              Break;
            end;
        end;
    end
  else
  if (DM1.tNatOperacaoLei.AsString = '') then
    vObs := False;
  if vObs then
    begin
      vTexto := ' ,' + DM1.tNatOperacaoLei.AsString;
      for i := 1 to Length(vTexto) do
        DM1.tNotaFiscalObs.AsString := DM1.tNotaFiscalObs.AsString +
                                       Copy(vTexto,i,1);
    end;
end;

procedure TfBuscaPedido.Copia_Nota(Sender: TObject);
var
  vAux, vTaxa : Real;
begin
  vTaxa := 1;
  if DM1.tPedidoDolar.AsBoolean then
    begin
      DM1.tIndexador.IndexFieldNames := 'Data';
      DM1.tIndexador.SetKey;
      DM1.tIndexadorData.AsDateTime  := DM1.tNotaFiscalDtEmissao.AsDateTime;
      if DM1.tIndexador.GotoKey then
        vTaxa := DM1.tIndexadorTaxa.AsFloat
      else
        ShowMessage('Não possui índice cadastrado!');
    end;
  DM1.tNotaFiscalCodNatOper.AsInteger := DM1.tPedidoCodNatOper.AsInteger;
  DM1.tNatOperacao.IndexFieldNames    := 'Codigo';
  DM1.tNatOperacao.SetKey;
  DM1.tNatOperacaoCodigo.AsInteger    := DM1.tPedidoCodNatOper.AsInteger;
  if DM1.tNatOperacao.GotoKey then
    Verifica_Nat_Oper;
{    begin
      if DM1.tNatOperacaoLei.AsString <> ' ' then
        DM1.tNotaFiscalObs.AsString := DM1.tNotaFiscalObs.AsString + ' ' + DM1.tNatOperacaoLei.AsString + ' ';
    end;}
  DM1.tNotaFiscalCodCli.AsInteger      := DM1.tPedidoCodCliente.AsInteger;
  fEmissaoNotaFiscal.RxDBLookupCombo8Change(fEmissaoNotaFiscal);
  DM1.tNotaFiscalCodVendedor.AsInteger := DM1.tPedidoCodVendedor.AsInteger;
  DM1.tNotaFiscalPercComissao.AsFloat  := DM1.tPedidoPercComissao.AsFloat;
  if DM1.tPedidoCodCondPgto.AsInteger < 1 then
    DM1.tNotaFiscalCondPgto.AsString     := 'N'
  else
    DM1.tNotaFiscalCondPgto.AsString     := DM1.tPedidolkPrazoVista.AsString;
  fEmissaoNotaFiscal.RxDBComboBox2Change(fEmissaoNotaFiscal);
  DM1.tNotaFiscalSituacao.AsInteger    := DM1.tPedidoSituacao.AsInteger;
  DM1.tNotaFiscalCodTransp.AsInteger   := DM1.tPedidoCodTransp.AsInteger;
  if DM1.tPedidoTipoFrete.AsString = 'C' then
    DM1.tNotaFiscalEmitDest.AsInteger := 1
  else
    DM1.tNotaFiscalEmitDest.AsInteger := 2;
  //*** Copia os itens do pedido para os itens da nota
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.EOF do
    begin
      if not(DM1.tPedidoItemCancelado.AsBoolean) and not(DM1.tPedidoItemCopiado.AsBoolean) then
        begin
          vNumPedido  := DM1.tPedidoItemPedido.AsInteger;
          vItemPedido := DM1.tPedidoItemItem.AsInteger;
          fNotaFiscalItens.RxDBLookupCombo15.KeyValue := DM1.tPedidoCodNatOper.AsInteger;
          fNotaFiscalItens.RxDBLookupCombo1.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
          fNotaFiscalItens.RxDBLookupCombo2.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;

          fNotaFiscalItens.Move_Itens;

          if DM1.tPedidoItemCodCor.AsInteger > 0 then
            fNotaFiscalItens.RxDBLookupCombo4.KeyValue := DM1.tPedidoItemCodCor.AsInteger;

          if DM1.tProdutoCodSitTrib.AsInteger > 0 then
            fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
          else
          if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
            fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tNatOperacaoCodSitTrib.AsInteger
          else
          if DM1.tFilialCodSitTrib.AsInteger > 0 then
            fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tFilialCodSitTrib.AsInteger;
          fNotaFiscalItens.RxDBLookupCombo13Exit(Sender);

          if DM1.tPedidoItemlkClasFiscal.AsString <> '' then
            fNotaFiscalItens.RxDBLookupCombo5.KeyValue := DM1.tPedidoItemlkClasFiscal.AsString;
          fNotaFiscalItens.Edit2.Text          := DM1.tPedidoItemlkUnidade.AsString;
          fNotaFiscalItens.CurrencyEdit3.Value := DM1.tPedidoItemQtdParesRest.AsFloat;
          // verifica a sit.tributaria
          if fNotaFiscalItens.RxDBLookupCombo13.Text <> '' then
            begin
              DM1.tSitTributaria.SetKey;
              DM1.tSitTributariaCodigo.AsInteger := fNotaFiscalItens.RxDBLookupCombo13.KeyValue;
              if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
                fNotaFiscalItens.Edit4.Clear;
            end;
          vAux := DM1.tPedidoItemPreco.AsFloat - DM1.tPedidoItemVlrDesconto.AsFloat;
          if DM1.tPedidoSituacao.AsString = '2' then
            vAux := StrToFloat(FormatFloat('0.00',(vAux * DM1.tParametrosPercC200.AsFloat / 100)));
          if DM1.tPedidoDolar.AsBoolean then
            vAux := StrToFloat(FormatFloat('0.00',(vAux * vTaxa)));
          fNotaFiscalItens.CurrencyEdit4.Value := vAux;
          fNotaFiscalItens.CurrencyEdit4Exit(fNotaFiscalItens);
          fNotaFiscalItens.CheckBox2.Checked := True;
          DM1.tPedidoGrade.First;
          while not DM1.tPedidoGrade.Eof do
            begin
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger := DM1.tPedidoGradeCodGrade.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger  := DM1.tPedidoGradePosicao.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat        := DM1.tPedidoGradeQtdParesRest.AsFloat;
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
              DM1.tPedidoGrade.Next;
            end;
          fNotaFiscalItens.BitBtn6Click(fNotaFiscalItens);
        end;
      DM1.tPedidoItem.Next;
    end;
  DM1.tNotaFiscalPrazoPgto.AsInteger   := DM1.tPedidoCodCondPgto.AsInteger;
  if DM1.tNotaFiscalCondPgto.AsString <> 'N' then
    begin
      fEmissaoNotaFiscal.RxDBLookupCombo2Change(fEmissaoNotaFiscal);
      fEmissaoNotaFiscal.BitBtn8Click(fEmissaoNotaFiscal);
    end;
end;

procedure TfBuscaPedido.Copia_NotaItem(Sender: TObject);
begin
  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
  while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
    fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
  fNotaFiscalItens.RxDBLookupCombo1.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
  fNotaFiscalItens.RxDBLookupCombo2.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;

  fNotaFiscalItens.Move_Itens;

  if DM1.tProdutoCodSitTrib.AsInteger > 0 then
    fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
  else
  if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
    fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tNatOperacaoCodSitTrib.AsInteger
  else
  if DM1.tFilialCodSitTrib.AsInteger > 0 then
    fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tFilialCodSitTrib.AsInteger;
  fNotaFiscalItens.RxDBLookupCombo13Exit(Sender);

  fNotaFiscalItens.RxDBLookupCombo4.Value := DM1.tPedidoItemCodCor.AsString;
  fNotaFiscalItens.Edit2.Text             := DM1.tPedidoItemlkUnidade.AsString;
  fNotaFiscalItens.CheckBox2.Checked      := True;
  if DM1.tPedidoItemCodGrade.AsInteger > 0 then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
      mPedidoGrade.First;
      while not mPedidoGrade.Eof do
        begin
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger := mPedidoGradeCodGrade.AsInteger;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger  := mPedidoGradePosicao.AsInteger;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat        := mPedidoGradeQtdFaturado.AsFloat;
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
          vQtd                                                     := vQtd + mPedidoGradeQtdFaturado.AsFloat;
          mPedidoGrade.Delete;
        end;
    end
  else
    vQtd := CurrencyEdit1.Value;
  fNotaFiscalItens.CurrencyEdit3.Value := vQtd;
  fNotaFiscalItens.CurrencyEdit4.Value := DM1.tPedidoItemPreco.AsFloat;
  fNotaFiscalItens.CurrencyEdit5.Value := fNotaFiscalItens.CurrencyEdit3.Value * fNotaFiscalItens.CurrencyEdit4.Value;
  if DM1.tPedidoItemlkClasFiscal.AsString <> '' then
    fNotaFiscalItens.RxDBLookupCombo5.KeyValue := DM1.tPedidoItemlkClasFiscal.AsString;

  if fNotaFiscalItens.RxDBLookupCombo13.Text <> '' then
  begin
    DM1.tSitTributaria.SetKey;
    DM1.tSitTributariaCodigo.AsInteger := fNotaFiscalItens.RxDBLookupCombo13.KeyValue;
    if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
      fNotaFiscalItens.Edit4.Clear;
  end;

  vNumPedido                         := DM1.tPedidoPedido.AsInteger;
  vItemPedido                        := DM1.tPedidoItemItem.AsInteger;
  fNotaFiscalItens.CheckBox2.Checked := True;
  fNotaFiscalItens.BitBtn6.Click;
end;

procedure TfBuscaPedido.Copia_Vale;
var
  vAux, vTaxa : Real;
begin
  vTaxa := 1;
  if DM1.tPedidoDolar.AsBoolean then
    begin
      DM1.tIndexador.IndexFieldNames := 'Data';
      DM1.tIndexador.SetKey;
      DM1.tIndexadorData.AsDateTime  := DM1.tValeDtEmissao.AsDateTime;
      if DM1.tIndexador.GotoKey then
        vTaxa := DM1.tIndexadorTaxa.AsFloat
      else
        ShowMessage('Não possui índice cadastrado!');
    end;
  DM1.tValeCodCliente.AsInteger      := DM1.tPedidoCodCliente.AsInteger;
  fVale.RxDBLookupCombo8Click(fVale);
  //*** Copia os itens do pedido para os itens da nota
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.EOF do
    begin
      if not(DM1.tPedidoItemCancelado.AsBoolean) and not(DM1.tPedidoItemCopiado.AsBoolean) then
        begin
          vNumPedido  := DM1.tPedidoItemPedido.AsInteger;
          vItemPedido := DM1.tPedidoItemItem.AsInteger;
          fValeItens.RxDBLookupCombo1.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
          fValeItens.RxDBLookupCombo2.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
          if DM1.tPedidoItemCodCor.AsInteger > 0 then
            fValeItens.RxDBLookupCombo4.KeyValue := DM1.tPedidoItemCodCor.AsInteger;
          if DM1.tPedidoItemSitTrib.AsInteger > 0 then
            fValeItens.RxDBLookupCombo13.KeyValue := DM1.tPedidoItemSitTrib.AsInteger;
          fValeItens.Edit2.Text          := DM1.tPedidoItemlkUnidade.AsString;
          fValeItens.CurrencyEdit3.Value := DM1.tPedidoItemQtdParesRest.AsFloat;
          // verifica a sit.tributaria
          if fValeItens.RxDBLookupCombo13.Text <> '' then
            begin
              DM1.tSitTributaria.SetKey;
              DM1.tSitTributariaCodigo.AsInteger := fValeItens.RxDBLookupCombo13.KeyValue;
              if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
                fValeItens.Edit4.Clear;
            end;
          vAux := DM1.tPedidoItemPreco.AsFloat - DM1.tPedidoItemVlrDesconto.AsFloat;
          if DM1.tPedidoSituacao.AsString = '2' then
            vAux := StrToFloat(FormatFloat('0.00',(vAux * DM1.tParametrosPercC200.AsFloat / 100)));
          if DM1.tPedidoDolar.AsBoolean then
            vAux := StrToFloat(FormatFloat('0.00',(vAux * vTaxa)));
          fValeItens.CurrencyEdit4.Value := vAux;
          fValeItens.CurrencyEdit4Exit(fValeItens);
          fValeItens.BitBtn6Click(fValeItens);
        end;
      DM1.tPedidoItem.Next;
    end;
end;

procedure TfBuscaPedido.Copia_ValeItem;
begin
  fValeItens.RxDBLookupCombo1.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
  fValeItens.RxDBLookupCombo2.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
  if DM1.tPedidoItemSitTrib.AsInteger > 0 then
    fValeItens.RxDBLookupCombo13.KeyValue := DM1.tPedidoItemSitTrib.AsInteger;
  fValeItens.RxDBLookupCombo4.Value := DM1.tPedidoItemCodCor.AsString;
  fValeItens.Edit2.Text := DM1.tPedidoItemlkUnidade.AsString;
  vQtd   := CurrencyEdit1.Value;
  fValeItens.CurrencyEdit3.Value := vQtd;
  fValeItens.CurrencyEdit4.Value := DM1.tPedidoItemPreco.AsFloat;
  fValeItens.CurrencyEdit5.Value := fValeItens.CurrencyEdit3.Value * DM1.tPedidoItemPreco.AsFloat;
  if fValeItens.RxDBLookupCombo13.Text <> '' then
    begin                                
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := fValeItens.RxDBLookupCombo13.KeyValue;
      if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
        fValeItens.Edit4.Clear;
    end;
  vNumPedido                    := DM1.tPedidoPedido.AsInteger;
  vItemPedido                   := DM1.tPedidoItemItem.AsInteger;
  fValeItens.BitBtn6.Click;
end;

procedure TfBuscaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tPedido.Filtered   := False;
  RxDBFilter1.Active := False;
  RxDBFilter2.Active := False;
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tPedido.IndexFieldNames  := 'Pedido';

  oDBUtils.OpenTables(False,Self);
  Action := CaFree;
end;

procedure TfBuscaPedido.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfBuscaPedido.BitBtn2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit5.Clear;
  Edit3.SetFocus;
end;

procedure TfBuscaPedido.BitBtn1Click(Sender: TObject);
var
  vCorreto : Boolean;
  vCopiar : Boolean;
begin
  vCopiar := False;
  tPedido.IndexFieldNames := 'Pedido';
  if (Edit3.Text <> '') then
    begin
      vCopiar := True;
      tPedido.SetKey;
      tPedidoPedido.AsString := Edit2.Text;
      if tPedido.GotoKey then
        begin
          tPedidoItem.SetKey;
          tPedidoItemPedido.AsInteger := tPedidoPedido.AsInteger;
          tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
          if tPedidoItem.GotoKey = False then
            begin
              vCopiar := False;
              ShowMessage('Item do Pedido não cadastrado ou já faturado!');
              Edit5.Text := '';
              Edit1.Text := '';
            end;
        end
      else
        begin
          vCopiar := False;
          ShowMessage('Pedido não cadastrado ou já faturado!');
          Edit2.Text := '';
          Edit3.Text := '';
        end;
    end;

  if vCopiar then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      vNumPedido  := 0;
      vItemPedido := 0;
      vQtd        := 0;
      vCorreto    := True;
      if (Edit3.Text <> '') and (Edit1.Text <> '') then
        begin
          if Edit1.Text = ''  then
            ShowMessage('Campo em branco')
          else
          if MessageDlg('Deseja Copiar o pedido ' + Edit3.Text + ' Item ' + Edit1.Text + ' para a nota?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              if tPedidoItemCodGrade.AsInteger > 0 then
                begin
                  mPedidoGrade.First;
                  while not mPedidoGrade.Eof do
                    begin
                      if mPedidoGradeQtdFaturado.AsFloat > mPedidoGradeQtdRestante.AsFloat then
                        vCorreto := False;
                      if vQtd < 1 then
                        vQtd := mPedidoGradeQtdFaturado.AsFloat;
                      mPedidoGrade.Next;
                    end;
                  if vQtd < 1 then
                    vCorreto := False;
                  vQtd := 0;
                end;
              if vCorreto then
                begin
                  DM1.tPedido.SetKey;
                  //DM1.tPedidoPedidoCliente.AsString := Edit3.Text;
                  //DM1.tPedidoPedCliDif.AsString     := Edit4.Text;
                  DM1.tPedidoPedido.AsString     := Edit2.Text;
                  if DM1.tPedido.GotoKey = False then
                    ShowMessage('Pedido não cadastrado!')
                  else
                  if DM1.tPedidoCancelado.AsBoolean then
                    ShowMessage('Este Pedido foi cancelado!')
                  else
                  if DM1.tPedidoSuspenso.AsBoolean  then
                    ShowMessage('Este Pedido está suspenso!')
                  else
                  if not(DM1.tPedidoQtdParesRest.AsFloat > 0)  then
                    ShowMessage('Este Pedido já foi faturado!')
                  else
                    begin
                      DM1.tPedidoItem.SetKey;
                      DM1.tPedidoItemPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
                      DM1.tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
                      if DM1.tPedidoItem.GotoKey = False then
                        begin
                          ShowMessage('Item não cadastrado!');
                          BitBtn2Click(Sender);
                        end
                      else
                      if DM1.tPedidoItemCancelado.AsBoolean then
                        ShowMessage('Item esta cancelado!')
                      else
                      if not (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
                        ShowMessage('Item já foi faturado!')
                      else
                      if (DM1.tPedidoItemCopiado.AsBoolean) then
                        ShowMessage('Já foi copiado este item!')
                      else
                        begin
                          if RadioGroup1.ItemIndex = 0 then
                            Copia_NotaItem(Sender)
                          else
                            Copia_ValeItem;
                        end;
                    end;
                end
              else
                ShowMessage('Não pode ser confirmado, pois há qtd. p/ ser faturado maior que disponível!');
            end;
        end;
      Edit1.Clear;
      Edit2.Clear;
      Edit5.Clear;
      Edit3.SetFocus;
      tPedido.Refresh;
      tPedidoItem.Refresh;
      tPedidoGrade.Refresh;
    end;
end;

procedure TfBuscaPedido.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (tPedidoQtdParesFat.AsFloat > 0) and (tPedidoQtdParesRest.AsFloat = 0) then
    Background  := clTeal;
  if tPedidoCancelado.AsBoolean then
    Background  := clRed;
end;

procedure TfBuscaPedido.BitBtn4Click(Sender: TObject);
var
  vCopiar : Boolean;
begin
  vCopiar := False;
  tPedido.IndexFieldNames := 'Pedido';
  if (Edit3.Text <> '') then
    begin
      vCopiar := True;
      tPedido.SetKey;
      tPedidoPedido.AsString := Edit2.Text;
      if tPedido.GotoKey = False then
        begin
          vCopiar := False;
          ShowMessage('Pedido não cadastrado ou já faturado!');
          Edit2.Text := '';
          Edit3.Text := '';
        end;
    end;

  if vCopiar then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      vItemPedido := 0;
      if (Edit3.Text <> '') and ((Edit1.Text <> '') or (Edit5.Text <> '')) then
        begin
          ShowMessage('Para copiar o pedido integral, não pode ter item marcado ou Nº da OS!');
          Edit5.SetFocus;
        end
      else
      if Edit3.Text <> '' then
        begin
          if MessageDlg('Deseja Copiar o pedido ' + Edit3.Text + ' para a nota?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              DM1.tPedido.SetKey;
              //DM1.tPedidoPedidoCliente.AsString := Edit3.Text;
              //DM1.tPedidoPedCliDif.AsString     := Edit4.Text;
              DM1.tPedidoPedido.AsString := Edit2.Text;
              if DM1.tPedido.GotoKey then
                begin
                  if DM1.tPedidoSuspenso.AsBoolean then
                    ShowMessage('Este pedido esta suspenso!')
                  else
                  if DM1.tPedidoCancelado.AsBoolean then
                    ShowMessage('Este pedido esta cancelado!')
                  else
                  if (DM1.tPedidoCopiado.AsBoolean = False) or (DM1.tPedidoQtdParesRest.AsFloat > 0)then
                    begin
                      if RadioGroup1.ItemIndex = 0 then
                        Copia_Nota(Sender)
                      else
                        Copia_Vale;
                    end
                  else
                   ShowMessage('Este pedido já foi copiado!');
                end;
            end;
        end;
      Close;
    end;
end;

procedure TfBuscaPedido.Monta_Auxiliar;
begin
  mPedidoGrade.EmptyTable;
  tPedidoGrade.First;
  while not tPedidoGrade.Eof do
    begin
      mPedidoGrade.Insert;
      mPedidoGradePedido.AsInteger     := tPedidoGradePedido.AsInteger;
      mPedidoGradeItemPedido.AsInteger := tPedidoGradeItemPed.AsInteger;
      mPedidoGradeCodGrade.AsInteger   := tPedidoGradeCodGrade.AsInteger;
      mPedidoGradePosicao.AsInteger    := tPedidoGradePosicao.AsInteger;
      mPedidoGradeQtd.AsFloat          := tPedidoGradeQtd.AsFloat;
      mPedidoGradeQtdFaturado.AsFloat  := tPedidoGradeQtdParesRest.AsFloat;
      mPedidoGradeQtdRestante.AsFloat  := tPedidoGradeQtdParesRest.AsFloat;
      mPedidoGradeTamanho.AsString     := tPedidoGradelkTamanho.AsString;
      mPedidoGrade.Post;
      tPedidoGrade.Next;
    end;
end;

procedure TfBuscaPedido.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit3.Text <> '') then
    begin
      tPedidoItem.SetKey;
      tPedidoItemPedido.AsInteger := tPedidoPedido.AsInteger;
      tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
      if tPedidoItem.GotoKey then
        Monta_Auxiliar
      else
        begin
          ShowMessage('Item não cadastrado!');
          mPedidoGrade.EmptyTable;
          Edit1.SetFocus;
        end;
      BitBtn1.SetFocus;
    end;
  if (Edit5.Text = '') and (Edit1.Text = '') and (Edit3.Text <> '') then
    BitBtn4.SetFocus;
end;

procedure TfBuscaPedido.Edit3Exit(Sender: TObject);
begin
  if Edit3.Text <> '' then
  begin
    tPedido.IndexFieldNames := 'PedidoCliente';
    tPedido.SetKey;
    tPedidoPedidoCliente.AsString := Edit3.Text;
    if not tPedido.GotoKey then
    begin
      ShowMessage('Pedido não cadastrado');
      Edit2.Clear;
      Edit3.Clear;
      Edit3.SetFocus;
    end
    else
      Edit2.Text := tPedidoPedido.AsString;
  end;
end;

procedure TfBuscaPedido.Edit3Enter(Sender: TObject);
begin
  tPedido.IndexFieldNames := 'PedidoCliente';
end;

procedure TfBuscaPedido.RxDBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text := tPedidoPedido.AsString;
  Edit3.Text := tPedidoPedidoCliente.AsString;
  Edit1.Text := tPedidoItemItem.AsString;
  Edit5.Text := tPedidoItemNumOS.AsString;
  CurrencyEdit1.Value := tPedidoItemQtdParesRest.AsFloat;
  Monta_Auxiliar;
end;

procedure TfBuscaPedido.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  mPedidoGrade.EmptyTable;
  Edit1.Clear;
end;

procedure TfBuscaPedido.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
    begin
      tPedido.IndexFieldNames       := 'PedidoCliente';
      tPedido.FindKey([StrToInt(Edit3.Text)]);
    end;
end;

procedure TfBuscaPedido.Edit5Exit(Sender: TObject);
begin
  if (Edit3.Text <> '') and (Edit5.Text <> '') then
    begin
      if tPedidoItem.Locate('Pedido;NumOS',VarArrayOf([tPedidoPedido.AsInteger,Edit5.Text]),[locaseinsensitive]) then
        begin
          Edit1.Text := tPedidoItemItem.AsString;
          Edit1Exit(Sender);
          BitBtn1.SetFocus;
        end
      else
        begin
          ShowMessage('OS não encontrada');
          Edit5.SelectAll;
        end;
    end;
end;

procedure TfBuscaPedido.RxDBGrid2CellClick(Column: TColumn);
begin
  Edit2.Text := tPedidoPedido.AsString;
  Edit3.Text := tPedidoPedidoCliente.AsString;
end;

procedure TfBuscaPedido.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tIndexador,Name);
end;

procedure TfBuscaPedido.FormShow(Sender: TObject);
begin
  tPedido.Filtered   := False;
  RxDBFilter1.Active := True;
  RxDBFilter2.Active := True;
  if RadioGroup1.ItemIndex = 0 then
    begin
      if fEmissaoNotaFiscal.RxDBLookupCombo8.Text <> '' then
        begin
          tPedido.Filter   := 'CodCliente = ' + QuotedStr(IntToStr(fEmissaoNotaFiscal.RxDBLookupCombo8.KeyValue));
          tPedido.Filtered := True;
        end;
    end
  else
    begin
      if fVale.RxDBLookupCombo8.Text <> '' then
        begin
          tPedido.Filter   := 'CodCliente = ' + QuotedStr(IntToStr(fVale.RxDBLookupCombo8.KeyValue));
          tPedido.Filtered := True;
        end;
    end;
end;

end.
