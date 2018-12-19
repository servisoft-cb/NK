unit URelEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelEstoque = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape3: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEstoque: TfRelEstoque;

implementation

uses UConsEstoqueMat, UDM1;

{$R *.DFM}

procedure TfRelEstoque.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  case fConsEstoqueMat.RadioGroup2.ItemIndex of
    0 : QRLabel1.Caption := 'Relatório do Estoque - Com Saldo';
    1 : QRLabel1.Caption := 'Relatório do Estoque - Todos';
  end;
  if fConsEstoqueMat.RadioGroup3.ItemIndex = 0 then
    QRLabel7.Caption := 'Qtd.Pedido'
  else
    QRLabel7.Caption := 'Qtd.OC';
end;

procedure TfRelEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoque.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fConsEstoqueMat.RadioGroup3.ItemIndex = 0 then
    QRDBText3.DataField := 'clQtdPedido'
  else
    QRDBText3.DataField := 'clQtdOC';
end;

end.
