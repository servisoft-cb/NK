unit URelHorasFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TfRelHorasFuncionarios = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape2: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    vCodSetor : Integer;
  public
    { Public declarations }
  end;

var
  fRelHorasFuncionarios: TfRelHorasFuncionarios;

implementation

uses UPrevHorasFuncionarios;

{$R *.dfm}

procedure TfRelHorasFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelHorasFuncionarios.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel1.Caption := 'Total de Horas por Funcionários - ' + fPrevHorasFuncionarios.DateEdit1.Text + ' a ' + fPrevHorasFuncionarios.DateEdit2.Text;
end;

procedure TfRelHorasFuncionarios.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  vCodSetor := 0;
end;

procedure TfRelHorasFuncionarios.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if vCodSetor = fPrevHorasFuncionarios.mFuncionarioCodSetor.AsInteger then
    QRDBText1.Enabled := False
  else
    QRDBText1.Enabled := True;
end;

procedure TfRelHorasFuncionarios.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  vCodSetor := fPrevHorasFuncionarios.mFuncionarioCodSetor.AsInteger;
end;

end.
