unit URelRecibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, ValorPor;

type
  TfRelRecibo = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    ValorPorExtenso2: TValorPorExtenso;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelRecibo: TfRelRecibo;

implementation

uses UDM1;

{$R *.DFM}

procedure TfRelRecibo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption  := ValorPorExtenso2.Texto;
  QRLabel10.Caption := DM1.tCPagarParcHistHistorico.AsString;
  QRLabel13.Caption := DM1.tCPagarParcNroDuplicata.AsString + '/' + DM1.tCPagarParcParcCPagar.AsString;

  if DM1.tCPagarParcCodConta.AsInteger = 1 then
    QRLabel11.Caption := ''
  else
    QRLabel11.Caption := 'Banco:';
end;

procedure TfRelRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRecibo.FormCreate(Sender: TObject);
begin
  ValorPorExtenso2.Valor := DM1.tCPagarParcHistVlrUltPgto.AsFloat;
end;

end.
