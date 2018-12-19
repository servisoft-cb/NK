unit UBuscaVale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, Db, DBTables, MemTable, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons,
  ExtCtrls, ALed, RzTabs, DBFilter, DBClient, RXCtrls, rsDBUtils;

type
  TfBuscaVale = class(TForm)
    BitBtn5: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    TabSheet2: TRzTabSheet;
    RxDBFilter1: TRxDBFilter;
    tVale: TTable;
    tValeItens: TTable;
    dsVale: TDataSource;
    dsValeItens: TDataSource;
    tValeNumVale: TIntegerField;
    tValeDtEmissao: TDateField;
    tValeCodCliente: TIntegerField;
    tValeVlrTotal: TFloatField;
    tValeFaturado: TBooleanField;
    tValeSelecionado: TBooleanField;
    tValeNumNota: TIntegerField;
    tValelkNomeCliente: TStringField;
    tValeItensNumVale: TIntegerField;
    tValeItensItem: TIntegerField;
    tValeItensCodProduto: TIntegerField;
    tValeItensCodCor: TIntegerField;
    tValeItensQtd: TFloatField;
    tValeItensUnidade: TStringField;
    tValeItensVlrUnitario: TFloatField;
    tValeItensVlrTotal: TFloatField;
    tValeItensCodSitTrib: TIntegerField;
    tValeItensAliqIcms: TFloatField;
    tValeItensAliqIPI: TFloatField;
    tValeItensNumPedido: TIntegerField;
    tValeItensItemPedido: TIntegerField;
    tValeItensNumMovEst: TIntegerField;
    tValeItensFaturado: TBooleanField;
    tValeItensQtdRestante: TFloatField;
    tValeItensQtdFaturada: TFloatField;
    tValeItenslkReferencia: TStringField;
    tValeItenslkNomeProduto: TStringField;
    tValeItenslkNomeCor: TStringField;
    mValeCopiado: TClientDataSet;
    mValeCopiadoNumVale: TIntegerField;
    mValeCopiadoItem: TIntegerField;
    RxDBGrid1: TRxDBGrid;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    tValeItenslkCodClasFiscal: TStringField;
    RxDBGrid4: TRxDBGrid;
    dsmValeCopiado: TDataSource;
    RxDBGrid5: TRxDBGrid;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_Agrupado;
    procedure Copia_ValeAgrupado;
  public
    { Public declarations }
  end;

var
  fBuscaVale: TfBuscaVale;

implementation

uses UDM1, UNotaFiscalItens, UEmissaoNotaFiscal;

{$R *.DFM}

procedure TfBuscaVale.Copia_ValeAgrupado;
begin
  fNotaFiscalItens.CurrencyEdit6.AsInteger   := fNotaFiscalItens.mAgrupadoCodProduto.AsInteger;
  fNotaFiscalItens.RxDBLookupCombo1.KeyValue := fNotaFiscalItens.mAgrupadoCodProduto.AsInteger;
  fNotaFiscalItens.RxDBLookupCombo2.KeyValue := fNotaFiscalItens.mAgrupadoCodProduto.AsInteger;
  vNumPedido  := fNotaFiscalItens.mAgrupadoNumPedido.AsInteger;//juca
//  vItemPedido := DM1.tPedidoItemItem.AsInteger;

  fNotaFiscalItens.Move_Itens;

  //if fNotaFiscalItens.mAgrupadoCodSitTrib.AsInteger > 0 then
  //  fNotaFiscalItens.RxDBLookupCombo13.KeyValue := fNotaFiscalItens.mAgrupadoCodSitTrib.AsInteger;
  fNotaFiscalItens.RxDBLookupCombo4.Value := fNotaFiscalItens.mAgrupadoCodCor.AsString;
  fNotaFiscalItens.Edit2.Text := fNotaFiscalItens.mAgrupadoUnidade.AsString;
  fNotaFiscalItens.CurrencyEdit3.Value := fNotaFiscalItens.mAgrupadoQtd.AsFloat;
  fNotaFiscalItens.CurrencyEdit4.Value := fNotaFiscalItens.mAgrupadoVlrUnitario.AsFloat;
  fNotaFiscalItens.CurrencyEdit5.Value := fNotaFiscalItens.CurrencyEdit3.Value * fNotaFiscalItens.CurrencyEdit4.Value;
  if fNotaFiscalItens.mAgrupadoCodClasFiscal.AsString <> '' then
    fNotaFiscalItens.RxDBLookupCombo5.KeyValue := fNotaFiscalItens.mAgrupadoCodClasFiscal.AsString;
  {if fNotaFiscalItens.RxDBLookupCombo13.Text <> '' then
    begin
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := fNotaFiscalItens.RxDBLookupCombo13.KeyValue;
      if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
        fNotaFiscalItens.Edit4.Clear;
    end;}

  fNotaFiscalItens.CheckBox2.Checked := False;
  fNotaFiscalItens.BitBtn6.Click;
end;

procedure TfBuscaVale.Monta_Agrupado;
var
  vCodAgrupado : Integer;
begin
  if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;VlrUnitario;CodSitTrib;Unidade',
     VarArrayOf([tValeItensCodProduto.AsInteger,tValeItensCodCor.AsInteger,tValeItensVlrUnitario.AsFloat,tValeItensCodSitTrib.AsInteger,tValeItensUnidade.AsString]),[locaseinsensitive]) then
    fNotaFiscalItens.mAgrupado.Edit
  else
    begin
      fNotaFiscalItens.mAgrupado.Last;
      vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupamento.AsInteger + 1;
      fNotaFiscalItens.mAgrupado.Insert;
      fNotaFiscalItens.mAgrupadoCodAgrupamento.AsInteger := vCodAgrupado;
      fNotaFiscalItens.mAgrupadoCodProduto.AsInteger     := tValeItensCodProduto.AsInteger;
      fNotaFiscalItens.mAgrupadoReferencia.AsString      := tValeItenslkReferencia.AsString;
      fNotaFiscalItens.mAgrupadoNomeProduto.AsString     := tValeItenslkNomeProduto.AsString;
      fNotaFiscalItens.mAgrupadoCodCor.AsInteger         := tValeItensCodCor.AsInteger;
      fNotaFiscalItens.mAgrupadoNomeCor.AsString         := tValeItenslkNomeCor.AsString;
      fNotaFiscalItens.mAgrupadoCodSitTrib.AsInteger     := tValeItensCodSitTrib.AsInteger;
      fNotaFiscalItens.mAgrupadoVlrUnitario.AsFloat      := tValeItensVlrUnitario.AsFloat;
      fNotaFiscalItens.mAgrupadoUnidade.AsString         := tValeItensUnidade.AsString;
      fNotaFiscalItens.mAgrupadoCodClasFiscal.AsString   := tValeItenslkCodClasFiscal.AsString;
      fNotaFiscalItens.mAgrupadoNumPedido.AsString       := tValeItensNumPedido.AsString;//juca
    end;
  fNotaFiscalItens.mAgrupadoQtd.AsFloat := fNotaFiscalItens.mAgrupadoQtd.AsFloat + tValeItensQtdRestante.AsFloat;
  fNotaFiscalItens.mAgrupado.Post;

  //Grava os vales do agrupamento
  fNotaFiscalItens.mAgrupadoVale.Insert;
  fNotaFiscalItens.mAgrupadoValeCodAgrupamento.AsInteger := fNotaFiscalItens.mAgrupadoCodAgrupamento.AsInteger;
  fNotaFiscalItens.mAgrupadoValeVale.AsInteger           := tValeItensNumVale.AsInteger;
  fNotaFiscalItens.mAgrupadoValeItem.AsInteger           := tValeItensItem.AsInteger;
  fNotaFiscalItens.mAgrupadoValeQtd.AsFloat              := tValeItensQtdRestante.AsFloat;
  fNotaFiscalItens.mAgrupadoVale.Post;

  //Grava os vales agrupados
  mValeCopiado.Insert;
  mValeCopiadoNumVale.AsInteger := tValeItensNumVale.AsInteger;
  mValeCopiadoItem.AsInteger    := tValeItensItem.AsInteger;
  mValeCopiado.Post;
end;

procedure TfBuscaVale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mValeCopiado.EmptyDataSet;
  fNotaFiscalItens.BitBtn17.Tag := 0;
  tVale.Filtered := False;
  fNotaFiscalItens.mAgrupado.First;
  while not fNotaFiscalItens.mAgrupado.Eof do
    begin
      fNotaFiscalItens.mAgrupadoVale.First;
      while not fNotaFiscalItens.mAgrupadoVale.Eof do
        fNotaFiscalItens.mAgrupadoVale.Delete;
      fNotaFiscalItens.mAgrupado.Delete;
    end;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBuscaVale.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfBuscaVale.BitBtn2Click(Sender: TObject);
begin
  tValeItens.First;
  while not tValeItens.Eof do
    begin
      if tValeItensQtdRestante.AsFloat > 0 then
        if not mValeCopiado.Locate('NumVale;Item',VarArrayOf([tValeItensNumVale.AsInteger,tValeItensItem.AsInteger]),[locaseinsensitive]) then
          Monta_Agrupado;
      tValeItens.Next;
    end;
end;

procedure TfBuscaVale.BitBtn3Click(Sender: TObject);
begin
  if tValeItensQtdRestante.AsFloat > 0 then
    if not mValeCopiado.Locate('NumVale;Item',VarArrayOf([tValeItensNumVale.AsInteger,tValeItensItem.AsInteger]),[locaseinsensitive]) then
      Monta_Agrupado;
end;

procedure TfBuscaVale.BitBtn6Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o agrupamento selecionado?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      fNotaFiscalItens.mAgrupadoVale.First;
      while not fNotaFiscalItens.mAgrupadoVale.Eof do
        begin
          if mValeCopiado.Locate('NumVale;Item',VarArrayOf([fNotaFiscalItens.mAgrupadoValeVale.AsInteger,fNotaFiscalItens.mAgrupadoValeItem.AsInteger]),[locaseinsensitive]) then
            mValeCopiado.Delete;
          fNotaFiscalItens.mAgrupadoVale.Delete;
        end;
      fNotaFiscalItens.mAgrupado.Delete;
    end;
end;

procedure TfBuscaVale.BitBtn4Click(Sender: TObject);
begin
  fNotaFiscalItens.mAgrupado.First;
  while not fNotaFiscalItens.mAgrupado.Eof do
    begin
      Copia_ValeAgrupado;
      fNotaFiscalItens.mAgrupado.Delete;
    end;
  Close;
end;

procedure TfBuscaVale.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  tVale.Filtered := False;
  tVale.Filter   := 'CodCliente = '''+IntToStr(fEmissaoNotaFiscal.RxDBLookupCombo8.KeyValue) + ''' and Faturado = False';
  tVale.Filtered := True;
  RxDBFilter1.Active := True;

  fNotaFiscalItens.mAgrupado.First;
  while not fNotaFiscalItens.mAgrupado.Eof do
    begin
      fNotaFiscalItens.mAgrupadoVale.First;
      while not fNotaFiscalItens.mAgrupadoVale.Eof do
        fNotaFiscalItens.mAgrupadoVale.Delete;
      fNotaFiscalItens.mAgrupado.Delete;
    end;
  mValeCopiado.EmptyDataSet;
end;

end.
