unit UBaixaPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, Db, DBTables, Grids, DBGrids, RXDBCtrl, DBFilter, StdCtrls, RXLookup,
  Buttons, ExtCtrls, DBIProcs, Mask, ToolEdit, CurrEdit, ALed, SMDBGrid;

type
  TfBaixaPedido = class(TForm)
    RxDBFilter1: TRxDBFilter;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
//    procedure Grava_Comissao;
//    procedure Grava_Comissao_Mod;
  public
    { Public declarations }
  end;

var
  fBaixaPedido: TfBaixaPedido;

implementation

uses UDM1, UBaixaPedidoDet;

{$R *.DFM}

procedure TfBaixaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBaixaPedido.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaPedido.SMDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tPedidoPedido.AsInteger > 0 then
    begin
      fBaixaPedidoDet := TfBaixaPedidoDet.Create(Self);
      fBaixaPedidoDet.vOpcao := 'P';
      fBaixaPedidoDet.CurrencyEdit1.Value    := DM1.tPedidoQtdParesRest.AsFloat;
      fBaixaPedidoDet.CurrencyEdit1.ReadOnly := True;
      fBaixaPedidoDet.BitBtn1.Caption        := 'Confirma Baixa do Pedido';
      fBaixaPedidoDet.ShowModal;
    end;
end;

procedure TfBaixaPedido.SMDBGrid2DblClick(Sender: TObject);
begin
  if DM1.tPedidoPedido.AsInteger > 0 then
    begin
      fBaixaPedidoDet := TfBaixaPedidoDet.Create(Self);
      fBaixaPedidoDet.vOpcao := 'I';
      fBaixaPedidoDet.CurrencyEdit1.Value    := DM1.tPedidoItemQtdParesRest.AsFloat;
      fBaixaPedidoDet.CurrencyEdit1.ReadOnly := False;
      fBaixaPedidoDet.BitBtn1.Caption        := 'Confirma Baixa do Item';
      fBaixaPedidoDet.ShowModal;
    end;
end;

procedure TfBaixaPedido.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tPedidoNota,Name);
  oDBUtils.ActiveDataSet(True,DM1.tEstoqueMatMov,Name);
  RxDBFilter1.Active := True;
end;

end.
