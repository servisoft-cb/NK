unit UConsPedCarteiraDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, DB, DBTables;

type
  TfConsPedCarteiraDet = class(TForm)
    RxDBGrid1: TRxDBGrid;
    BitBtn2: TBitBtn;
    StaticText1: TStaticText;
    qDetalhado: TQuery;
    qDetalhadoPedido: TIntegerField;
    qDetalhadoDtEmissao: TDateField;
    qDetalhadoItem: TIntegerField;
    qDetalhadoQtdPares: TFloatField;
    qDetalhadoQtdParesFat: TFloatField;
    qDetalhadoQtdParesRest: TFloatField;
    qDetalhadoPreco: TFloatField;
    qDetalhadoDtReprogramacao: TDateField;
    qDetalhadoDtEmbarque: TDateField;
    qDetalhadoCodCor: TIntegerField;
    qDetalhadoPedidoCliente: TStringField;
    dsqDetalhado: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedCarteiraDet: TfConsPedCarteiraDet;

implementation

uses UPrevPedCarteira, UBaixaPedido, UDM1;

{$R *.dfm}

procedure TfConsPedCarteiraDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsPedCarteiraDet.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
