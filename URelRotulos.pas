unit URelRotulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Barcode;

type
  TfRelRotulos = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QST1: TQRShape;
    QTam1: TQRLabel;
    QSQ1: TQRShape;
    QQtd1: TQRLabel;
    QST2: TQRShape;
    QTam2: TQRLabel;
    QSQ2: TQRShape;
    QQtd2: TQRLabel;
    QST3: TQRShape;
    QSQ3: TQRShape;
    QQtd3: TQRLabel;
    QTam3: TQRLabel;
    QST4: TQRShape;
    QTam4: TQRLabel;
    QSQ4: TQRShape;
    QQtd4: TQRLabel;
    QST5: TQRShape;
    QTam5: TQRLabel;
    QSQ5: TQRShape;
    QQtd5: TQRLabel;
    QST6: TQRShape;
    QTam6: TQRLabel;
    QSQ6: TQRShape;
    QQtd6: TQRLabel;
    QTam7: TQRLabel;
    QST7: TQRShape;
    QSQ7: TQRShape;
    QQtd7: TQRLabel;
    QST8: TQRShape;
    QTam8: TQRLabel;
    QSQ8: TQRShape;
    QQtd8: TQRLabel;
    QST9: TQRShape;
    QTam9: TQRLabel;
    QSQ9: TQRShape;
    QQtd9: TQRLabel;
    QST10: TQRShape;
    QTam10: TQRLabel;
    QSQ10: TQRShape;
    QQtd10: TQRLabel;
    QST11: TQRShape;
    QTam11: TQRLabel;
    QSQ11: TQRShape;
    QQtd11: TQRLabel;
    QST12: TQRShape;
    QTam12: TQRLabel;
    QSQ12: TQRShape;
    QQtd12: TQRLabel;
    QST13: TQRShape;
    QTam13: TQRLabel;
    QSQ13: TQRShape;
    QQtd13: TQRLabel;
    QST14: TQRShape;
    QTam14: TQRLabel;
    QSQ14: TQRShape;
    QQtd14: TQRLabel;
    QST15: TQRShape;
    QTam15: TQRLabel;
    QSQ15: TQRShape;
    QQtd15: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QST16: TQRShape;
    QTam16: TQRLabel;
    QSQ16: TQRShape;
    QQtd16: TQRLabel;
    QST17: TQRShape;
    QTam17: TQRLabel;
    QSQ17: TQRShape;
    QQtd17: TQRLabel;
    QST18: TQRShape;
    QTam18: TQRLabel;
    QSQ18: TQRShape;
    QQtd18: TQRLabel;
    QST19: TQRShape;
    QTam19: TQRLabel;
    QSQ19: TQRShape;
    QQtd19: TQRLabel;
    QST20: TQRShape;
    QTam20: TQRLabel;
    QSQ20: TQRShape;
    QQtd20: TQRLabel;
    QRLabel7: TQRLabel;
    QRImage1: TQRImage;
    Barcode1: TBarcode;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelRotulos: TfRelRotulos;

implementation

uses UDM1, UPrevRelRotulos;

{$R *.DFM}

procedure TfRelRotulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRotulos.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i: Integer;
  vCodBarra : String;
begin
  QRImage1.Picture := nil;
  vCodBarra := '2' + FormatFloat('0000000',DM1.tPedidoItemPedido.AsInteger) +
                  FormatFloat('0000',DM1.tPedidoItemItem.AsInteger);
  Barcode1.Text := vCodBarra;
  Barcode1.DrawBarcode(QRImage1.Canvas);
  QRlabel7.Caption := vCodBarra;

  for i := 1 to 20 do
    begin
      TQRLabel(FindComponent('QTam'+IntToStr(i))).Enabled := False;
      TQRLabel(FindComponent('QQtd'+IntToStr(i))).Enabled := False;
      TQRShape(FindComponent('QST'+IntToStr(i))).Enabled  := False;
      TQRShape(FindComponent('QSQ'+IntToStr(i))).Enabled  := False;
    end;
  i := 0;
  DM1.tGrade.IndexFieldNames := 'Codigo';
  DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
  DM1.tPedidoGrade.First;
  while not DM1.tPedidoGrade.EOF do
    begin
      if Dm1.tPedidoGradeQtd.AsFloat > 0 then
        begin
          Inc(i);
          TQRLabel(FindComponent('QTam' + IntToStr(i))).Enabled := True;
          TQRLabel(FindComponent('QTam' + IntToStr(i))).Caption := DM1.tPedidoGradelkTamanho.AsString;
          TQRLabel(FindComponent('QQtd' + IntToStr(i))).Enabled := True;
          TQRLabel(FindComponent('QQtd' + IntToStr(i))).Caption := DM1.tPedidoGradeQtd.AsString;
          TQRShape(FindComponent('QST'+IntToStr(i))).Enabled    := True;
          TQRShape(FindComponent('QSQ'+IntToStr(i))).Enabled    := True;
        end;  
      DM1.tPedidoGrade.Next;
    end;
  Inc(i);
  TQRLabel(FindComponent('QTam' + IntToStr(i))).Enabled := True;
  TQRLabel(FindComponent('QTam' + IntToStr(i))).Caption := 'Total';
  TQRLabel(FindComponent('QQtd' + IntToStr(i))).Enabled := True;
  TQRLabel(FindComponent('QQtd' + IntToStr(i))).Caption := DM1.tPedidoItemQtdPares.AsString;
  TQRShape(FindComponent('QST'+IntToStr(i))).Enabled    := True;
  TQRShape(FindComponent('QSQ'+IntToStr(i))).Enabled    := True;
end;

end.
