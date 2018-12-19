unit UPrevRelRotulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, ExtCtrls, Db, DBTables,
  DBFilter, MemTable, RXCtrls, Menus;

type
  TfPrevRelRotulos = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevRelRotulos: TfPrevRelRotulos;
  Linha, Pagina : Integer;
  F: TextFile;
  textoNota1, textoNota2 : String;

implementation

uses UDM1, URelRotulos;

{$R *.DFM}

procedure TfPrevRelRotulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tPedido.Filtered     := False;
  DM1.tPedidoItem.Filtered := False;
  Action                   := Cafree;
end;

procedure TfPrevRelRotulos.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevRelRotulos.Imprimir1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
    begin
      DM1.tPedido.Filtered     := False;
      DM1.tPedido.Filter       := 'PedidoCliente = '''+Edit1.Text+''' and Cancelado <> True and PedCliDif = '''+Edit3.Text+'''';
      DM1.tPedido.Filtered     := True;
      DM1.tPedidoItem.Filtered := False;
      if Edit2.Text <> '' then
        DM1.tPedidoItem.Filter := 'Cancelado <> True and NumOS = '''+Edit2.Text+''''
      else
        DM1.tPedidoItem.Filter := 'Cancelado <> True';
      DM1.tPedidoItem.Filtered := True;
      DM1.tPedidoItem.First;
      fRelRotulos              := TfRelRotulos.Create(Self);
      fRelRotulos.QuickRep1.Print;
      fRelRotulos.QuickRep1.Free;
      DM1.tPedido.Filtered     := False;
      DM1.tPedidoItem.Filtered := False;
    end
  else
    ShowMessage('Você deve informar um nº de pedido p/ gerar o relatório!');
  Edit1.SetFocus;
end;

procedure TfPrevRelRotulos.Visualizar1Click(Sender: TObject);
begin
  if (Edit1.Text <> '')  then
    begin
      DM1.tPedido.Filtered     := False;
      DM1.tPedido.Filter       := 'PedidoCliente = '''+Edit1.Text+''' and Cancelado <> True and PedCliDif = '''+Edit3.Text+'''';
      DM1.tPedido.Filtered     := True;
      DM1.tPedidoItem.Filtered := False;
      if Edit2.Text <> '' then
        DM1.tPedidoItem.Filter := 'Cancelado <> True and NumOS = '''+Edit2.Text+''''
      else
        DM1.tPedidoItem.Filter := 'Cancelado <> True';
      DM1.tPedidoItem.Filtered := True;
      DM1.tPedidoItem.First;
      fRelRotulos              := TfRelRotulos.Create(Self);
      fRelRotulos.QuickRep1.Preview;
      fRelRotulos.QuickRep1.Free;
      DM1.tPedido.Filtered     := False;
      DM1.tPedidoItem.Filtered := False;
    end
  else
    ShowMessage('Você deve informar um nº de pedido e o digito p/ gerar o relatório!');
  Edit1.SetFocus;
end;

end.
