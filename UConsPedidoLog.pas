unit UConsPedidoLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, SMDBGrid;

type
  TfConsPedidoLog = class(TForm)
    qConsulta: TQuery;
    SMDBGrid1: TSMDBGrid;
    qConsultaPedido: TIntegerField;
    qConsultaNumTalao: TIntegerField;
    qConsultaQtdTalao: TFloatField;
    qConsultaDtAlteracao: TDateField;
    qConsultaHrAlteracao: TTimeField;
    qConsultaUsuario: TStringField;
    qConsultaCodProduto: TIntegerField;
    qConsultaCodCor: TIntegerField;
    qConsultaTipo: TStringField;
    dsqConsulta: TDataSource;
    qConsultaItemPedido: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedidoLog: TfConsPedidoLog;

implementation

uses UDM1;

{$R *.dfm}

procedure TfConsPedidoLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qConsulta.Close;
  Action := Cafree;
end;

procedure TfConsPedidoLog.FormShow(Sender: TObject);
begin
  qConsulta.Close;
  qConsulta.Open;
end;

end.
