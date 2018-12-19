unit UConsHorasFuncionariosDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, DBCtrls, RXCtrls, RzTabs,
  Grids, DBGrids, RXDBCtrl;

type
  TfConsHorasFuncionariosDet = class(TForm)
    qConsulta: TQuery;
    qConsultaNomeSetor: TStringField;
    qConsultaCodSetor: TIntegerField;
    qConsultaHrEntrada1: TTimeField;
    qConsultaHrSaida1: TTimeField;
    qConsultaHrEntrada2: TTimeField;
    qConsultaHrSaida2: TTimeField;
    qConsultaHrEntrada3: TTimeField;
    qConsultaHrSaida3: TTimeField;
    qConsultaData: TDateField;
    qConsultaNumTalao: TIntegerField;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RxLabel1: TRxLabel;
    DBText2: TDBText;
    RxDBGrid1: TRxDBGrid;
    dsqConsulta: TDataSource;
    qConsultaclTotalHoras: TFloatField;
    qConsultaNomeProduto: TStringField;
    qConsultaQtdProduzida: TFloatField;
    qSetor: TQuery;
    dsqSetor: TDataSource;
    RxDBGrid2: TRxDBGrid;
    RxLabel2: TRxLabel;
    DBText1: TDBText;
    qSetorNomeFuncionario: TStringField;
    qSetorCodFuncionario: TIntegerField;
    qSetorHrEntrada1: TTimeField;
    qSetorHrSaida1: TTimeField;
    qSetorHrEntrada2: TTimeField;
    qSetorHrSaida2: TTimeField;
    qSetorHrEntrada3: TTimeField;
    qSetorHrSaida3: TTimeField;
    qSetorData: TDateField;
    qSetorNumTalao: TIntegerField;
    qSetorNomeProduto: TStringField;
    qSetorQtdProduzida: TFloatField;
    qSetorclTotalHoras: TFloatField;
    qConsultaReferencia: TStringField;
    qSetorReferencia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qConsultaCalcFields(DataSet: TDataSet);
    procedure qSetorCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsHorasFuncionariosDet: TfConsHorasFuncionariosDet;

implementation

uses UPrevHorasFuncionarios;

{$R *.dfm}

procedure TfConsHorasFuncionariosDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qConsulta.Close;
  qSetor.Close;
  Action := Cafree;
end;

procedure TfConsHorasFuncionariosDet.FormShow(Sender: TObject);
begin
  qConsulta.Close;
  qConsulta.ParamByName('Data1').AsDate             := fPrevHorasFuncionarios.DateEdit1.Date;
  qConsulta.ParamByName('Data2').AsDate             := fPrevHorasFuncionarios.DateEdit2.Date;
  qConsulta.ParamByName('CodFuncionario').AsInteger := fPrevHorasFuncionarios.mFuncionarioCodFuncionario.AsInteger;
  qConsulta.Open;

  qSetor.Close;
  qSetor.ParamByName('Data1').AsDate             := fPrevHorasFuncionarios.DateEdit1.Date;
  qSetor.ParamByName('Data2').AsDate             := fPrevHorasFuncionarios.DateEdit2.Date;
  qSetor.ParamByName('CodSetor').AsInteger       := fPrevHorasFuncionarios.mFuncionarioCodSetor.AsInteger;
  qSetor.ParamByName('CodFuncionario').AsInteger := fPrevHorasFuncionarios.mFuncionarioCodFuncionario.AsInteger;
  qSetor.Open;
end;

procedure TfConsHorasFuncionariosDet.qConsultaCalcFields(
  DataSet: TDataSet);
var
  vQtdHoras : Currency;
  vAux : Currency;
begin
  vQtdHoras := 0;
  if (qConsultaHrEntrada1.AsDateTime > 0) and (qConsultaHrSaida1.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qConsultaHrSaida1.AsDateTime - qConsultaHrEntrada1.AsDateTime) * 24);
  if (qConsultaHrEntrada2.AsDateTime > 0) and (qConsultaHrSaida2.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qConsultaHrSaida2.AsDateTime - qConsultaHrEntrada2.AsDateTime) * 24);
  if (qConsultaHrEntrada3.AsDateTime > 0) and (qConsultaHrSaida3.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qConsultaHrSaida3.AsDateTime - qConsultaHrEntrada3.AsDateTime) * 24);
  vAux := vQtdHoras - Int(vQtdHoras);
  vAux := (vAux * 60) / 100;
  vQtdHoras := Int(vQtdHoras) + vAux;
  qConsultaclTotalHoras.AsCurrency := vQtdHoras;
end;

procedure TfConsHorasFuncionariosDet.qSetorCalcFields(DataSet: TDataSet);
var
  vQtdHoras : Currency;
  vAux : Currency;
begin
  vQtdHoras   := 0;
  if (qSetorHrEntrada1.AsDateTime > 0) and (qSetorHrSaida1.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qSetorHrSaida1.AsDateTime - qSetorHrEntrada1.AsDateTime) * 24);
  if (qSetorHrEntrada2.AsDateTime > 0) and (qSetorHrSaida2.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qSetorHrSaida2.AsDateTime - qSetorHrEntrada2.AsDateTime) * 24);
  if (qSetorHrEntrada3.AsDateTime > 0) and (qSetorHrSaida3.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qSetorHrSaida3.AsDateTime - qSetorHrEntrada3.AsDateTime) * 24);
  vAux := vQtdHoras - Int(vQtdHoras);
  vAux := (vAux * 60) / 100;
  vQtdHoras := Int(vQtdHoras) + vAux;
  qSetorclTotalHoras.AsCurrency := vQtdHoras;
end;

procedure TfConsHorasFuncionariosDet.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
