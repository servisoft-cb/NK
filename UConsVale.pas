unit UConsVale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, CurrEdit, Mask, ToolEdit, RXLookup, Grids,
  DBGrids, Db, DBTables, RXDBCtrl, SMDBGrid;

type
  TfConsVale = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    qVale: TQuery;
    dsqVale: TDataSource;
    qValeNumVale: TIntegerField;
    qValeDtEmissao: TDateField;
    qValeVlrTotal: TFloatField;
    qValeCodCliente: TIntegerField;
    qValeNome: TStringField;
    qValeFaturado: TBooleanField;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    tValeItens: TTable;
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
    tValeItenslkReferencia: TStringField;
    tValeItenslkNomeProduto: TStringField;
    SMDBGrid1: TSMDBGrid;
    dsValeItens: TDataSource;
    tValeItensFaturado: TBooleanField;
    tValeItensQtdRestante: TFloatField;
    tValeItensQtdFaturada: TFloatField;
    tValeItensNumOC: TStringField;
    tValeItensNumOS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsVale: TfConsVale;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsVale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not qVale.IsEmpty then
    begin
      DM1.tVale.IndexFieldNames := 'NumVale';
      DM1.tVale.SetKey;
      DM1.tValeNumVale.AsInteger := qValeNumVale.AsInteger;
      DM1.tVale.GotoKey;
    end;
  qVale.Close;
  Action := CaFree;
end;

procedure TfConsVale.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsVale.BitBtn5Click(Sender: TObject);
begin
  qVale.Close;
  qVale.SQL.Clear;
  qVale.SQL.Add('SELECT Dbvale.NumVale, Dbvale.DtEmissao, Dbvale.VlrTotal, Dbvale.CodCliente, Dbcliente.Nome, Dbvale.Faturado');
  qVale.SQL.Add('FROM "dbVale.db" Dbvale');
  qVale.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qVale.SQL.Add('   ON  (Dbvale.CodCliente = Dbcliente.Codigo)');
  case RadioGroup1.ItemIndex of
    0 : qVale.SQL.Add(' WHERE dbvale.Faturado = False');
    1 : qVale.SQL.Add(' WHERE dbvale.Faturado = True');
  end;
  case RadioGroup2.ItemIndex of
    0 : qVale.SQL.Add('ORDER BY Dbvale.NumVale');
    1 : qVale.SQL.Add('ORDER BY Dbvale.DtEmissao');
    2 : qVale.SQL.Add('ORDER BY Dbcliente.Nome');
  end;
  qVale.Open;
end;

procedure TfConsVale.FormShow(Sender: TObject);
begin
  BitBtn5Click(Sender);
end;

procedure TfConsVale.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qValeFaturado.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
end;

end.
