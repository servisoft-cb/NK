unit URelContrFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelContrFat = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRShape7: TQRShape;
    QRExpr1: TQRExpr;
    QRDBText6: TQRDBText;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape8: TQRShape;
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
  fRelContrFat: TfRelContrFat;

implementation

uses UDM1, UPrevContrFat;

{$R *.DFM}

procedure TfRelContrFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelContrFat.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel4.Caption := 'De '+ fPrevContrFat.DateEdit1.Text + ' até '+ fPrevContrFat.DateEdit2.Text;
end;

procedure TfRelContrFat.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption := FormatFloat('###,###,###,##0.00',fPrevContrFat.qDetalhadoVlrTotalDupl.AsFloat + fPrevContrFat.qDetalhadoVlrTransf.AsFloat);
  if fPrevContrFat.tNotaFiscalParc.RecordCount > 0 then
    begin
      fPrevContrFat.tNotaFiscalParc.First;
      QRLabel15.Caption := fPrevContrFat.tNotaFiscalParcDtVenc.AsString;
    end
  else
    QRLabel15.Caption := fPrevContrFat.qDetalhadoDtEmissao.AsString;
end;

end.
