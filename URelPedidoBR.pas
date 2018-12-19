unit URelPedidoBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TfRelPedidoBR = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape9: TQRShape;
    QRShape2: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape1: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape3: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedidoBR: TfRelPedidoBR;

implementation

uses UDM1, UConsPedidoBR;

{$R *.dfm}

procedure TfRelPedidoBR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedidoBR.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption := '';
  case fConsPedidoBR.RadioGroup1.ItemIndex of
    0 : QRLabel3.Caption := 'Pendentes';
    1 : QRLabel3.Caption := 'Faturados';
  end;
  if fConsPedidoBR.RxDBLookupCombo3.Text <> '' then
    QRLabel3.Caption := '    Filial: ' + fConsPedidoBR.RxDBLookupCombo3.Text;
  if fConsPedidoBR.Edit3.Text <> '' then
    QRLabel3.Caption := '    BR (OS): ' + fConsPedidoBR.Edit3.Text;
  if fConsPedidoBR.RxDBLookupCombo1.Text <> '' then
    QRLabel3.Caption := '    Cliente: ' + fConsPedidoBR.RxDBLookupCombo1.Text;
  if fConsPedidoBR.RxDBLookupCombo2.Text <> '' then
    QRLabel3.Caption := '    Produto: ' + fConsPedidoBR.RxDBLookupCombo2.Text;
end;


end.
