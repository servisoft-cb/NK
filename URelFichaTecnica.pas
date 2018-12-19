unit URelFichaTecnica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, StdCtrls;

type
  TfRelFichaTecnica = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText22: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText25: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRShape3: TQRShape;
    QRLabel28: TQRLabel;
    QRShape4: TQRShape;
    QRLabel29: TQRLabel;
    QRShape5: TQRShape;
    QRLabel30: TQRLabel;
    QRShape6: TQRShape;
    QRLabel31: TQRLabel;
    QRShape7: TQRShape;
    QRLabel32: TQRLabel;
    QRShape8: TQRShape;
    QRLabel33: TQRLabel;
    QRShape9: TQRShape;
    QRLabel34: TQRLabel;
    QRShape10: TQRShape;
    QRLabel35: TQRLabel;
    QRShape2: TQRShape;
    QRLabel27: TQRLabel;
    QRShape11: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText34: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelFichaTecnica: TfRelFichaTecnica;

implementation

uses UDM1, UProduto;

{$R *.DFM}

procedure TfRelFichaTecnica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFichaTecnica.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRImage1.Picture := fProduto.Image1.Picture;
end;

end.
