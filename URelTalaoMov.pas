unit URelTalaoMov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelTalaoMov = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelTalaoMov: TfRelTalaoMov;

implementation

uses UDM1, UPrevTalaoMov;

{$R *.DFM}

procedure TfRelTalaoMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTalaoMov.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption := 'Opções:';
  if fPrevTalaoMov.CurrencyEdit1.AsInteger > 0 then
    QRLabel2.Caption := QRLabel2.Caption + '    Talão: ' + fPrevTalaoMov.CurrencyEdit1.Text + ' a ' + fPrevTalaoMov.CurrencyEdit2.Text;
  if fPrevTalaoMov.DateEdit1.Text <> '  /  /    ' then
    QRLabel2.Caption := QRLabel2.Caption + '    Dt.Gerado: ' + fPrevTalaoMov.DateEdit1.Text + ' a ' + fPrevTalaoMov.DateEdit2.Text;
  if fPrevTalaoMov.DateEdit3.Text <> '  /  /    ' then
    QRLabel2.Caption := QRLabel2.Caption + '    Dt.Produzido: ' + fPrevTalaoMov.DateEdit3.Text + ' a ' + fPrevTalaoMov.DateEdit4.Text;
  if fPrevTalaoMov.Edit1.Text <> '' then
    QRLabel2.Caption := QRLabel2.Caption + '   Referência: ' + fPrevTalaoMov.Edit1.Text;

  case fPrevTalaoMov.RadioGroup3.ItemIndex of
    0 : QRLabel1.Caption := 'Relatório dos Talões - Horários (Encerrados)';
    1 : QRLabel1.Caption := 'Relatório dos Talões - Horários (Pendentes)';
    2 : QRLabel1.Caption := 'Relatório dos Talões - Horários (Enc./Pend.)';
  end;
end;

procedure TfRelTalaoMov.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fPrevTalaoMov.qTalaoCancelado.AsBoolean then
    QRLabel13.Caption := 'Canc.'
  else
  if fPrevTalaoMov.qTalaoDtReprogramacao.AsDateTime < Date then
    QRLabel13.Caption := 'Atr.'
  else
    QRLabel13.Caption := '';
end;

end.
