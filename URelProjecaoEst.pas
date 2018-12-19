unit URelProjecaoEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables;

type
  TfRelProjecaoEst = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    QRLabel13: TQRLabel;
    QRShape11: TQRShape;
    QRLabel14: TQRLabel;
    QRShape12: TQRShape;
    QRLabel15: TQRLabel;
    QRShape13: TQRShape;
    QRLabel16: TQRLabel;
    QRShape14: TQRShape;
    QRLabel17: TQRLabel;
    QRShape15: TQRShape;
    QRDBText2: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRDBText4: TQRDBText;
    QRShape18: TQRShape;
    QRDBText5: TQRDBText;
    QRShape19: TQRShape;
    QRDBText6: TQRDBText;
    QRShape20: TQRShape;
    QRDBText7: TQRDBText;
    QRShape21: TQRShape;
    QRDBText8: TQRDBText;
    QRShape22: TQRShape;
    QRDBText9: TQRDBText;
    QRShape23: TQRShape;
    QRDBText10: TQRDBText;
    QRShape24: TQRShape;
    QRDBText11: TQRDBText;
    QRShape25: TQRShape;
    QRDBText12: TQRDBText;
    QRShape26: TQRShape;
    QRDBText13: TQRDBText;
    QRShape27: TQRShape;
    QRDBText14: TQRDBText;
    QRShape28: TQRShape;
    QRDBText15: TQRDBText;
    QRSaldo: TQRLabel;
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
  fRelProjecaoEst: TfRelProjecaoEst;

implementation

uses UDM1, UProjecaoEst;

{$R *.DFM}

procedure TfRelProjecaoEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProjecaoEst.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
 QRLabel1.Caption := 'Projeção do Estoque do Ano : ' + fProjecaoEst.CurrencyEdit1.Text;
end;

procedure TfRelProjecaoEst.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fProjecaoEst.qEstoque.Locate('CodMaterial',DM1.tProjecaoEstCodProduto.AsInteger,[loCaseInsensitive]) then
    QRSaldo.Caption := fProjecaoEst.qEstoqueQtd.AsString
  else
    QRSaldo.Caption := '';
end;

end.
