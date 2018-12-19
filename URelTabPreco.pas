unit URelTabPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Variants, DB;

type
  TfRelTabPreco = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRShape6: TQRShape;
    QRDBText3: TQRDBText;
    QRShape7: TQRShape;
    QRDBText4: TQRDBText;
    QRShape8: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText6: TQRDBText;
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
  fRelTabPreco: TfRelTabPreco;

implementation

uses UDM1, UTabPreco;

{$R *.DFM}

procedure TfRelTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTabPreco.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel9.Caption := fTabPreco.RxDBLookupCombo1.Text;
end;

procedure TfRelTabPreco.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := (fTabPreco.mTabPreco.Locate('CodCliente;CodProduto',VarArrayOf([fTabPreco.qTabelaPrecoCodCliente.AsInteger,fTabPreco.qTabelaPrecoCODPRODUTO.AsInteger]),[locaseinsensitive]));
end;

end.
