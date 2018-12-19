unit UBaixaPedido2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, Db, DBTables, Grids, DBGrids, RXDBCtrl, DBFilter, StdCtrls, RXLookup,
  Buttons, ExtCtrls, DBIProcs, Mask, ToolEdit, CurrEdit, ALed, SMDBGrid;

type
  TfBaixaPedido2 = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    qPedido: TQuery;
    dsqPedido: TDataSource;
    qPedidoPedido: TIntegerField;
    qPedidoDtEmissao: TDateField;
    qPedidoItem: TIntegerField;
    qPedidoCodCliente: TIntegerField;
    qPedidoCodProduto: TIntegerField;
    qPedidoNomeCliente: TStringField;
    qPedidoReferencia: TStringField;
    qPedidoQtdPares: TFloatField;
    qPedidoNomeProduto: TStringField;
    qPedidoQtdParesFat: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoPreco: TFloatField;
    qPedidoVlrTotal: TFloatField;
    qPedidoDtEmbarque: TDateField;
    qPedidoNumOS: TStringField;
    qPedidoPedidoCliente: TStringField;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
//    procedure Grava_Comissao;
//    procedure Grava_Comissao_Mod;
  public
    { Public declarations }
  end;

var
  fBaixaPedido2: TfBaixaPedido2;

implementation

uses UDM1, UBaixaPedido2Det;

{$R *.DFM}

procedure TfBaixaPedido2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBaixaPedido2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaPedido2.SMDBGrid1DblClick(Sender: TObject);
begin
  if qPedidoPedido.AsInteger > 0 then
    begin
      if DM1.tPedido.Locate('Pedido',qPedidoPedido.AsInteger,[loCaseInsensitive]) then
        begin
          if (DM1.tPedidoItem.Locate('Item',qPedidoItem.AsInteger,[loCaseInsensitive])) and
             (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
            begin
              fBaixaPedido2Det := TfBaixaPedido2Det.Create(Self);
              fBaixaPedido2Det.vOpcao := 'I';
              fBaixaPedido2Det.CurrencyEdit1.Value    := DM1.tPedidoItemQtdParesRest.AsFloat;
              fBaixaPedido2Det.CurrencyEdit1.ReadOnly := False;
              fBaixaPedido2Det.BitBtn1.Caption        := 'Confirma Baixa do Item';
              fBaixaPedido2Det.ShowModal;
            end
          else
            ShowMessage('Item já baixado!');
        end;
    end;
end;

procedure TfBaixaPedido2.BitBtn1Click(Sender: TObject);
begin
  qPedido.Close;
  qPedido.Open;
end;

procedure TfBaixaPedido2.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tPedido,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoItem,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoNota,Name);
  oDBUtils.ActiveDataSet(True,dm1.tEstoqueMatMov,Name);
  oDBUtils.ActiveDataSet(True,dm1.tEstoqueMatMovGrade,Name);
  qPedido.Open;
  DM1.tPedido.IndexFieldNames := 'Pedido';
end;

end.
