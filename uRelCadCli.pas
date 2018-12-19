unit URelCadCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables;

type
  TfRelCadCli = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel21: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBRichText2: TQRDBRichText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText27: TQRDBText;
    QRShape4: TQRShape;
    QRLabel27: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText34: TQRDBText;
    ChildBand1: TQRChildBand;
    QRShape5: TQRShape;
    qRef: TQuery;
    qRefQtdPares: TFloatField;
    qRefQtdParesFat: TFloatField;
    qRefQtdParesRest: TFloatField;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    qRefReferencia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCadCli: TfRelCadCli;

implementation

uses UCliente, UDM1, UDM2;

{$R *.DFM}

procedure TfRelCadCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCadCli.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qRef.Close;
  qRef.Params[0].AsInteger := Dm1.tClienteCodigo.AsInteger;
  qRef.Open;
end;

end.
