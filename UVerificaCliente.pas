unit UVerificaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, ALed;

type
  TfVerificaCliente = class(TForm)
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaNumCReceber: TIntegerField;
    qConsultaParcCReceber: TIntegerField;
    qConsultaVlrParcCReceber: TFloatField;
    qConsultaDtVencCReceber: TDateField;
    qConsultaQuitParcCReceber: TBooleanField;
    qConsultaJurosParcCReceber: TFloatField;
    qConsultaDtPagParcCReceber: TDateField;
    qConsultaCodCli: TIntegerField;
    qConsultaNumNota: TIntegerField;
    qConsultaDesconto: TFloatField;
    qConsultaPgtoParcial: TFloatField;
    qConsultaRestParcela: TFloatField;
    qConsultaContaDupl: TSmallintField;
    qConsultaSelecionado: TBooleanField;
    qConsultaCodVendedor: TIntegerField;
    qConsultaBaixada: TBooleanField;
    qConsultaPercComissao: TFloatField;
    qConsultaVlrComissao: TFloatField;
    qConsultaPlanoContas: TIntegerField;
    qConsultaAgencia: TStringField;
    qConsultaTitPortador: TStringField;
    qConsultaCodTipoCobranca: TIntegerField;
    qConsultaDespesas: TFloatField;
    qConsultaAbatimentos: TFloatField;
    qConsultaCodConta: TIntegerField;
    qConsultaPgCartorio: TBooleanField;
    qConsultaDiasAtraso: TFloatField;
    qConsultaLetraCambio: TBooleanField;
    qConsultaNroLancExtComissao: TIntegerField;
    qConsultaJurosPagos: TFloatField;
    qConsultaCancelado: TBooleanField;
    qConsultaTitProtestado: TBooleanField;
    qConsultaDtGerado: TDateField;
    qConsultaTipoDoc: TStringField;
    qConsultaVlrDevolucao: TFloatField;
    qConsultaArqGerado: TBooleanField;
    qConsultaTransferencia: TBooleanField;
    qConsultaNumTitBanco: TStringField;
    qConsultaclAtraso: TIntegerField;
    RxDBGrid1: TRxDBGrid;
    BitBtn1: TBitBtn;
    ALed3: TALed;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qConsultaCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vCodCliente : Integer;
  end;

var
  fVerificaCliente: TfVerificaCliente;

implementation

{$R *.dfm}

procedure TfVerificaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfVerificaCliente.qConsultaCalcFields(DataSet: TDataSet);
begin
  qConsultaclAtraso.AsFloat := Date - qConsultaDtVencCReceber.AsDateTime;
  if qConsultaclAtraso.AsFloat <= 0 then
    qConsultaclAtraso.AsFloat := 0;
end;

procedure TfVerificaCliente.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfVerificaCliente.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qConsultaclAtraso.AsInteger > 0 then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
end;

end.
