unit UConsPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, CurrEdit, StdCtrls, Mask, ToolEdit, RXLookup, Buttons,
  ExtCtrls, RXDBCtrl, ALed, db, dbTables, DBCtrls;

type
  TfConsPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    RxDBGrid1: TRxDBGrid;
    Bevel2: TBevel;
    ALed3: TALed;
    Label4: TLabel;
    ALed1: TALed;
    Label5: TLabel;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    qPedIt: TQuery;
    qPedItPedido: TIntegerField;
    qPedItNumOS: TStringField;
    qsPed: TDataSource;
    RxDBGrid2: TRxDBGrid;
    ALed2: TALed;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedido: TfConsPedido;

implementation

uses UDM1, UConsPedidoNota;

{$R *.DFM}

procedure TfConsPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsPedido.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedido.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames   := 'Nome';
  DateEdit1.Clear;
  CurrencyEdit1.Clear;
  Edit1.Clear;
  DM1.tPedido.IndexFieldNames := 'CodCliente';
end;

procedure TfConsPedido.DateEdit1Enter(Sender: TObject);
begin
  Edit1.Clear;
  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.Clear;
  DM1.tPedido.IndexFieldNames := 'DtEmissao';
end;

procedure TfConsPedido.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
  DM1.tPedido.FindKey([DM1.tClienteCodigo.AsInteger])
end;

procedure TfConsPedido.DateEdit1Change(Sender: TObject);
begin
  DM1.tPedido.FindKey([DateEdit1.Date])
end;

procedure TfConsPedido.CurrencyEdit1Enter(Sender: TObject);
begin
  Edit1.Clear;
  RxDBLookupCombo1.ClearValue;
  DateEdit1.Clear;
  DM1.tPedido.IndexFieldNames := 'PedidoCliente';
end;

procedure TfConsPedido.CurrencyEdit1Change(Sender: TObject);
begin
  try
    DM1.tPedido.FindNearest([CurrencyEdit1.Text]);
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfConsPedido.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tPedidoQtdParesFat.AsInteger > 0 then
    BackGround := $006FDD00
  else
  if ((DM1.tPedidoQtdPares.AsInteger = DM1.tPedidoQtdParesCanc.AsInteger) and (DM1.tPedidoQtdPares.AsInteger > 0) and (DM1.tPedidoQtdParesCanc.AsInteger > 0)) or (DM1.tPedidoCancelado.AsBoolean) then
    BackGround := clRed
  else
  if DM1.tPedidoEstoque.AsBoolean then
    BackGround := clAqua;
end;

procedure TfConsPedido.RxDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tPedidoQtdParesFat.AsInteger > 0 then
    begin
      fConsPedidoNota := TfConsPedidoNota.Create(Self);
      fConsPedidoNota.ShowModal;
    end;
end;

procedure TfConsPedido.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
    begin
      Dm1.tPedido.IndexFieldNames := 'Pedido';
      qPedIt.Close;
      qPedIt.Params[0].AsString := Edit1.Text;
      qPedIt.Open;
      Dm1.tPedido.Locate('Pedido',qPedItPedido.AsInteger,([LocaseInsensitive]));
    end;
end;

procedure TfConsPedido.Edit1Enter(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  DateEdit1.Clear;
  CurrencyEdit1.Clear;
end;

end.
