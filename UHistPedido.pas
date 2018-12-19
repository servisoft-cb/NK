unit UHistPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons,
  Db, DBTables, RxLookup, RXCtrls, ComCtrls, Grids, DBGrids, RXDBCtrl, ToolEdit, CurrEdit, ALed, DBFilter, MemTable,
  TeeProcs, TeEngine, Chart, DBChart, Series, mxstore, mxDB, mxgraph, mxtables;

type
  TfHistPedido = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    RxLabel1: TRxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn8: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label6: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label7: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Label8: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    Bevel1: TBevel;
    ALed1: TALed;
    Label2: TLabel;
    Label9: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    ALed2: TALed;
    Label10: TLabel;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid1: TRxDBGrid;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    ALed3: TALed;
    Label16: TLabel;
    ALed4: TALed;
    Label17: TLabel;
    RxLabel2: TRxLabel;
    TabSheet3: TTabSheet;
    RxDBGrid3: TRxDBGrid;
    qEmbarque: TQuery;
    qEmbarqueNumOS: TStringField;
    qEmbarqueDtEmbarque: TDateField;
    qEmbarqueQtdPares: TFloatField;
    qEmbarqueQtdParesFat: TFloatField;
    qEmbarqueQtdParesRest: TFloatField;
    qEmbarqueNome: TStringField;
    dsqEmbarque: TDataSource;
    qEmbarquePedCliDif: TStringField;
    qEmbarquePedido: TIntegerField;
    qEmbarqueItem: TIntegerField;
    GroupBox1: TGroupBox;
    RxDBGrid4: TRxDBGrid;
    tPedidoNota: TTable;
    dsPedidoNota: TDataSource;
    tPedidoNotaPedido: TIntegerField;
    tPedidoNotaItem: TIntegerField;
    tPedidoNotaNumNota: TIntegerField;
    tPedidoNotaItemNota: TIntegerField;
    tPedidoNotaDtNota: TDateField;
    tPedidoNotaQtdPares: TIntegerField;
    tPedidoNotaNroLancExtComissao: TIntegerField;
    tPedidoNotaNroLancExtComissaoMod: TIntegerField;
    RxDBFilter1: TRxDBFilter;
    BitBtn1: TBitBtn;
    ALed5: TALed;
    Label18: TLabel;
    ALed6: TALed;
    Label19: TLabel;
    BitBtn2: TBitBtn;
    qQtd: TQuery;
    qQtdCodCliente: TIntegerField;
    qQtdQtdPares: TFloatField;
    qQtdQtdParesFat: TFloatField;
    qQtdQtdParesRest: TFloatField;
    qQtdQtdParesCanc: TFloatField;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    RxDBGrid5: TRxDBGrid;
    qNaoEmbarcados: TQuery;
    qsNaoEmbarcados: TDataSource;
    qNaoEmbarcadosPedCliDif: TStringField;
    qNaoEmbarcadosNumOS: TStringField;
    qNaoEmbarcadosDtEmbarque: TDateField;
    qNaoEmbarcadosQtdPares: TFloatField;
    qNaoEmbarcadosQtdParesFat: TFloatField;
    qNaoEmbarcadosQtdParesRest: TFloatField;
    qNaoEmbarcadosNome: TStringField;
    qNaoEmbarcadosPedido: TIntegerField;
    qNaoEmbarcadosItem: TIntegerField;
    qNaoEmbarcadosCliente: TStringField;
    TabSheet5: TTabSheet;
    Label20: TLabel;
    DateEdit2: TDateEdit;
    Label21: TLabel;
    DateEdit3: TDateEdit;
    BitBtn3: TBitBtn;
    DecisionCube1: TDecisionCube;
    DecisionQuery1: TDecisionQuery;
    DecisionSource1: TDecisionSource;
    DecisionGraph1: TDecisionGraph;
    Series2: TBarSeries;
    Series1: TBarSeries;
    RadioGroup1: TRadioGroup;
    TabSheet6: TTabSheet;
    RxDBGrid6: TRxDBGrid;
    BitBtn4: TBitBtn;
    Label22: TLabel;
    Label23: TLabel;
    ALed7: TALed;
    ALed8: TALed;
    qRefCli: TQuery;
    qsRefCli: TDataSource;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    qRefCliRest: TFloatField;
    qRefCliFaturados: TFloatField;
    qRefCliQTDPARES: TFloatField;
    qRefCliNome: TStringField;
    TabSheet7: TTabSheet;
    RxDBGrid7: TRxDBGrid;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ALed9: TALed;
    ALed10: TALed;
    Label37: TLabel;
    BitBtn5: TBitBtn;
    qRefCliNomeCliente: TStringField;
    RadioGroup2: TRadioGroup;
    qRefCliReferencia: TStringField;
    qEmbarqueReferencia: TStringField;
    qNaoEmbarcadosReferencia: TStringField;
    qNaoEmbarcadosPedidoCliente: TStringField;
    qEmbarquePedidoCliente: TStringField;
    Edit1: TEdit;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ALed1Click(Sender: TObject);
    procedure ALed2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ALed5Click(Sender: TObject);
    procedure ALed6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure RxDBGrid6GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ALed7Click(Sender: TObject);
    procedure ALed8Click(Sender: TObject);
    procedure ALed9Click(Sender: TObject);
    procedure ALed10Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
    procedure Soma_Totais;
  public
    { Public declarations }
  end;

var
  fHistPedido: TfHistPedido;
  vExcluir: Boolean;

implementation

uses UDM1, UDM2;

{$R *.DFM}

procedure TfHistPedido.Soma_Totais;
var
  vGeral, vFaturado, vPendente: Real;
begin
  vGeral := 0;
  vFaturado := 0;
  vPendente := 0;
  qRefCli.First;
  while not qRefCli.Eof do
  begin
    vGeral    := vGeral + qRefCliQTDPARES.AsFloat;
    vFaturado := vFaturado + qRefCliFaturados.AsFloat;
    vPendente := vPendente + qRefCliRest.AsFloat;
    qRefCli.Next;
  end;
  Label27.Caption := FormatFloat('###,###,###,###',vGeral);
  Label28.Caption := FormatFloat('###,###,###,###',vFaturado);
  Label29.Caption := FormatFloat('###,###,###,###',vPendente);
end;

procedure TfHistPedido.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfHistPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DecisionQuery1.Close;
  qEmbarque.Filtered := False;
  qEmbarque.Close;
  DM1.tPedido.Filtered := False;
  Action := Cafree;
end;

procedure TfHistPedido.FormShow(Sender: TObject);
begin
  dm1.tCliente.Open;
  dm1.tPedido.Open;
  RxDBGrid1.DataSource := nil;
  RxDBGrid2.DataSource := nil;
end;

procedure TfHistPedido.BitBtn8Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      DM1.tPedido.Filtered        := False;
      DM1.tPedido.Filter          := 'CodCliente = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
      DM1.tPedido.Filtered        := True;
      DM1.tPedido.Last;
      DateEdit1.Date              := DM1.tPedidoDtEmissao.AsDateTime;
      CurrencyEdit1.Value         := DM1.tPedidoVlrTotal.AsFloat;
      CurrencyEdit2.AsInteger     := DM1.tPedidoQtdPares.AsInteger;
      CurrencyEdit3.AsInteger     := DM1.tPedido.RecordCount;
      DM1.tPedido.IndexFieldNames := 'PedidoCliente';
      qQtd.Close;
      qQtd.Params[0].AsInteger    := RxDBLookupCombo1.KeyValue;
      qQtd.Open;

      CurrencyEdit4.AsInteger := qQtdQtdPares.AsInteger;
      CurrencyEdit5.AsInteger := qQtdQtdParesFat.AsInteger;
      CurrencyEdit6.AsInteger := qQtdQtdParesRest.AsInteger;
      CurrencyEdit7.AsInteger := qQtdQtdParesCanc.AsInteger;
      RxDBGrid1.DataSource := DM1.dsPedido;
      RxDBGrid2.DataSource := DM1.dsPedidoItem;

      qEmbarque.Filtered := False;
      qEmbarque.Close;
      qEmbarque.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      qEmbarque.Open;

      if PageControl1.ActivePageIndex = 3 then
      begin
        TabSheet6Show(Sender);
        qRefCli.Close;
        qRefCli.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
        qRefCli.Open;
      end;
      Soma_Totais;
    end;
end;

procedure TfHistPedido.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tPedidoQtdParesRest.AsFloat > 0 then
    AFont.Color := clBlack
  else
    AFont.Color := clTeal;
end;

procedure TfHistPedido.ALed1Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  RxDBFilter1.Filter.Clear;
  RxDBFilter1.Filter.Add('QtdParesRest > 0');
  RxDBFilter1.Active := True;
end;

procedure TfHistPedido.ALed2Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  RxDBFilter1.Filter.Clear;
  RxDBFilter1.Filter.Add('QtdParesFat > 0');
  RxDBFilter1.Active := True;
end;

procedure TfHistPedido.BitBtn1Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
end;

procedure TfHistPedido.ALed5Click(Sender: TObject);
begin
  qEmbarque.Filtered := False;                       
  qEmbarque.Filter   := 'QtdParesRest > '''+'0'+'''';
  qEmbarque.Filtered := True;
end;

procedure TfHistPedido.ALed6Click(Sender: TObject);
begin
  qEmbarque.Filtered := False;
  qEmbarque.Filter   := 'QtdParesFat > '''+'0'+'''';
  qEmbarque.Filtered := True;       
end;

procedure TfHistPedido.BitBtn2Click(Sender: TObject);
begin
  qEmbarque.Filtered := False;
end;

procedure TfHistPedido.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tPedidoItemQtdParesRest.AsFloat > 0 then
    begin
      Background  := clWhite;
      AFont.Color := clBlack;
    end
  else
    begin
      Background  := clTeal;
      AFont.Color := clBlack;
    end;
end;

procedure TfHistPedido.RxDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qEmbarqueQtdParesRest.AsFloat > 0 then
    begin
      Background  := clWhite;
      AFont.Color := clBlack;
    end
  else
    begin
      Background  := clTeal;
      AFont.Color := clBlack;
    end;
end;

procedure TfHistPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if Key = 34 then
    begin
      if PageControl1.ActivePageIndex = 3 then
        PageControl1.ActivePageIndex := 0
      else
        PageControl1.ActivePageIndex := (PageControl1.ActivePageIndex + 1);
    end
  else
  if Key = 33 then
    begin
      if PageControl1.ActivePageIndex = 0 then
        PageControl1.ActivePageIndex := 3
      else
        PageControl1.ActivePageIndex := (PageControl1.ActivePageIndex - 1);
    end;}
end;

procedure TfHistPedido.BitBtn3Click(Sender: TObject);
begin
  if (DateEdit2.Text <> '  /  /    ') and (DateEdit3.Text <> '  /  /    ') then
  begin
    DecisionQuery1.Close;
    DecisionQuery1.SQL.Clear;
    if RadioGroup2.ItemIndex = 0 then
      DecisionQuery1.SQL.Add('SELECT Dbpedidoitem.DtReprogramacao, SUM(Dbpedidoitem.QtdParesRest) QtdPares')
    else
    if RadioGroup2.ItemIndex = 1 then
      DecisionQuery1.SQL.Add('SELECT Dbpedidoitem.DtReprogramacao, SUM(Dbpedidoitem.QtdParesFat) QtdPares')
    else
      DecisionQuery1.SQL.Add('SELECT Dbpedidoitem.DtReprogramacao, SUM(Dbpedidoitem.QtdPares) QtdPares');
    DecisionQuery1.SQL.Add('FROM "dbPedido.DB" Dbpedido');
    DecisionQuery1.SQL.Add('INNER JOIN "dbPedidoItem.DB" Dbpedidoitem ON (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
    DecisionQuery1.SQL.Add('WHERE ((Dbpedido.Cancelado IS NULL) OR (Dbpedido.Cancelado = FALSE))');
    DecisionQuery1.SQL.Add(' AND ((Dbpedido.Suspenso IS NULL) OR (Dbpedido.Suspenso = FALSE))');
    DecisionQuery1.SQL.Add(' AND ((Dbpedidoitem.Cancelado IS NULL) OR (Dbpedidoitem.Cancelado = FALSE))');
    DecisionQuery1.SQL.Add(' AND (Dbpedidoitem.DtReprogramacao BETWEEN :Data1 AND :Data2)');
    if (RadioGroup1.ItemIndex = 1) and (RxDBLookupCombo1.Text <> '') then
      DecisionQuery1.SQL.Add(' AND (Dbpedido.CodCliente = :Codigo)');
    DecisionQuery1.Params[0].AsDateTime := DateEdit2.Date;
    DecisionQuery1.Params[1].AsDateTime := DateEdit3.Date;
    if (RadioGroup1.ItemIndex = 1) and (RxDBLookupCombo1.Text <> '') then
      DecisionQuery1.Params[2].AsInteger := RxDBLookupCombo1.KeyValue;
    DecisionQuery1.SQL.Add('GROUP BY Dbpedidoitem.DtReprogramacao');
    DecisionQuery1.Open;
  end
  else
    ShowMessage('Falta informar a data inicial e final!');
end;

procedure TfHistPedido.TabSheet7Show(Sender: TObject);
var
  vGeral, vFaturado, vPendente: Real;
begin
  qRefCli.Filtered := False;
  qRefCli.Close;
  qRefCli.SQL.Clear;
  qRefCli.SQL.Add('SELECT Dbproduto.Referencia, SUM(Dbpedidoitem.QtdParesRest) Rest, ');
  qRefCli.SQL.Add('SUM(Dbpedidoitem.QtdParesFat) Faturados, ');
  qRefCli.SQL.Add('SUM(Dbpedidoitem.QtdPares) QTDPARES, Dbcor.Nome, dbCliente.Nome NomeCliente');
  qRefCli.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
  qRefCli.SQL.Add('INNER JOIN "dbProduto.DB" Dbproduto ON )Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
  qRefCli.SQL.Add('FULL OUTER JOIN "Dbcor.DB" Dbcor ON (Dbpedidoitem.CodCor = Dbcor.Codigo)');
  qRefCli.SQL.Add('INNER JOIN "dbPedido.DB" Dbpedido ON (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qRefCli.SQL.Add('INNER JOIN "dbCliente.DB" dbCliente ON (dbCliente.Codigo = Dbpedido.CodCliente)');
  qRefCli.SQL.Add('WHERE ((Dbpedido.Cancelado is Null) or (Dbpedido.Cancelado = False))');
  qRefCli.SQL.Add('and ((DbpedidoItem.Cancelado is Null) or (DbpedidoItem.Cancelado = False))');
  qRefCli.SQL.Add('Group By Dbproduto.Referencia, Dbcor.Nome, dbCliente.Nome');
  qRefCli.SQL.Add('Order By Dbproduto.Referencia, Dbcor.Nome');
  qRefCli.Open;
  vGeral := 0;
  vFaturado := 0;
  vPendente := 0;
  qRefCli.First;
  while not qRefCli.Eof do
  begin
    vGeral    := vGeral + qRefCliQTDPARES.AsFloat;
    vFaturado := vFaturado + qRefCliFaturados.AsFloat;
    vPendente := vPendente + qRefCliRest.AsFloat;
    qRefCli.Next;
  end;
  Label31.Caption := FormatFloat('###,###,###,###',vGeral);
  Label33.Caption := FormatFloat('###,###,###,###',vFaturado);
  Label35.Caption := FormatFloat('###,###,###,###',vPendente);
end;

procedure TfHistPedido.TabSheet6Show(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    qRefCli.Close;
    qRefCli.SQL.Clear;
    qRefCli.SQL.Add('SELECT Dbproduto.Referencia, SUM(Dbpedidoitem.QtdParesRest) Rest, ');
    qRefCli.SQL.Add('SUM(Dbpedidoitem.QtdParesFat) Faturados, ');
    qRefCli.SQL.Add('SUM(Dbpedidoitem.QtdPares) QTDPARES, Dbcor.Nome, dbCliente.Nome NomeCliente');
    qRefCli.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
    qRefCli.SQL.Add('INNER JOIN "dbProduto.DB" Dbproduto ON (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
    qRefCli.SQL.Add('FULL OUTER JOIN "Dbcor.DB" Dbcor ON (Dbpedidoitem.CodCor = Dbcor.Codigo)');
    qRefCli.SQL.Add('INNER JOIN "dbPedido.DB" Dbpedido ON (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
    qRefCli.SQL.Add('INNER JOIN "dbCliente.DB" Dbcliente ON (Dbcliente.Codigo = Dbpedido.CodCliente)');
    qRefCli.SQL.Add('WHERE (Dbpedido.CodCliente = :Codigo) and ');
    qRefCli.SQL.Add('((Dbpedido.Cancelado is Null) or (Dbpedido.Cancelado = False)) and ');
    qRefCli.SQL.Add('((DbpedidoItem.Cancelado is Null) or (DbpedidoItem.Cancelado = False))');
    qRefCli.SQL.Add('Group By Dbproduto.Referencia, Dbcor.Nome, Dbcliente.Nome');
    qRefCli.SQL.Add('Order By Dbproduto.Referencia, Dbcor.Nome');
    qRefCli.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
    qRefCli.Open;
    qRefCli.Filtered := False;
    Soma_Totais;
  end
  else
    qRefCli.Close;  
end;

procedure TfHistPedido.RxDBGrid6GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qRefCliRest.AsFloat <= 0 then
    AFont.Color := clTeal;
end;

procedure TfHistPedido.ALed7Click(Sender: TObject);
begin
  qRefCli.Filtered := False;
  qRefCli.Filter   := 'Rest > 0';
  qRefCli.Filtered := True;
  Soma_Totais;
end;

procedure TfHistPedido.ALed8Click(Sender: TObject);
begin
  qRefCli.Filtered := False;
  qRefCli.Filter   := 'Faturados > 0';
  qRefCli.Filtered := True;
  Soma_Totais;
end;

procedure TfHistPedido.ALed9Click(Sender: TObject);
var
  vGeral, vFaturado, vPendente: Real;
begin
  qRefCli.Filtered := False;
  qRefCli.Filter   := 'Rest > 0';
  qRefCli.Filtered := True;
  vGeral := 0;
  vFaturado := 0;
  vPendente := 0;
  qRefCli.First;
  while not qRefCli.Eof do
  begin
    vGeral    := vGeral + qRefCliQTDPARES.AsFloat;
    vFaturado := vFaturado + qRefCliFaturados.AsFloat;
    vPendente := vPendente + qRefCliRest.AsFloat;
    qRefCli.Next;
  end;
  Label31.Caption := FormatFloat('###,###,###,###',vGeral);
  Label33.Caption := FormatFloat('###,###,###,###',vFaturado);
  Label35.Caption := FormatFloat('###,###,###,###',vPendente);
end;

procedure TfHistPedido.ALed10Click(Sender: TObject);
var
  vGeral, vFaturado, vPendente: Real;
begin
  qRefCli.Filtered := False;
  qRefCli.Filter   := 'Faturados > 0';
  qRefCli.Filtered := True;
  vGeral := 0;
  vFaturado := 0;
  vPendente := 0;
  qRefCli.First;
  while not qRefCli.Eof do
  begin
    vGeral    := vGeral + qRefCliQTDPARES.AsFloat;
    vFaturado := vFaturado + qRefCliFaturados.AsFloat;
    vPendente := vPendente + qRefCliRest.AsFloat;
    qRefCli.Next;
  end;
  Label31.Caption := FormatFloat('###,###,###,###',vGeral);
  Label33.Caption := FormatFloat('###,###,###,###',vFaturado);
  Label35.Caption := FormatFloat('###,###,###,###',vPendente);
end;

procedure TfHistPedido.Edit1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then
  begin
    try
      DM1.tPedido.FindKey([Edit1.Text]);
    except
    end;
  end
  else
  if PageControl1.ActivePageIndex = 2 then
    qEmbarque.Locate('PedidoCliente',Edit1.Text,[loCaseInsensitive]);
end;

procedure TfHistPedido.Edit1Enter(Sender: TObject);
begin
  DM1.tPedido.IndexFieldNames := 'PedidoCliente';
end;

procedure TfHistPedido.RxDBLookupCombo1Change(Sender: TObject);
begin
  qRefCli.Close;
  qRefCli.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
  qRefCli.Open;
end;

end.
