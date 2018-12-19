unit UConsPedPendFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, Db, DBTables, RXCtrls;

type
  TfConsPedPendFat = class(TForm)
    RxDBGrid1: TRxDBGrid;
    qPedPendente: TQuery;
    dsPedPendente: TDataSource;
    qPedPendentePedido: TIntegerField;
    qPedPendenteDtEmissao: TDateField;
    qPedPendenteNomeCliente: TStringField;
    qPedPendenteNomeCor: TStringField;
    qPedPendenteDtReprogramacao: TDateField;
    qPedPendenteQtdParesRest: TFloatField;
    qPedPendentePedCliDif: TStringField;
    qPedPendenteNumOS: TStringField;
    RxLabel1: TRxLabel;
    qPedPendenteReferencia: TStringField;
    qPedPendentePedidoCliente: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedPendFat: TfConsPedPendFat;

implementation

{$R *.DFM}

procedure TfConsPedPendFat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qPedPendente.Close;
  Action := Cafree;
end;

procedure TfConsPedPendFat.FormShow(Sender: TObject);
begin
  Screen.Cursor   := crHourGlass;
  qPedPendente.Open;
  Screen.Cursor   := crDefault;
end;

end.
