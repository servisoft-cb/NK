unit URelEmbDiario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelEmbDiario = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    ChildBand1: TQRChildBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape6: TQRShape;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEmbDiario: TfRelEmbDiario;
  vData : TDate;
  vTotDia, vTotEmb, vTotSaldo : Real;

implementation

uses UDM1, UPrevEmbDiario;

{$R *.DFM}

procedure TfRelEmbDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEmbDiario.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vData     := fPrevEmbDiario.mEmbarqueData.AsDateTime;
  vTotDia   := vTotDia + fPrevEmbDiario.mEmbarqueQtdDia.AsFloat;
  vTotEmb   := vTotEmb + fPrevEmbDiario.mEmbarqueQtdFaturado.AsFloat;
  vTotSaldo := vTotSaldo + fPrevEmbDiario.mEmbarqueQtdRest.AsFloat;
end;

procedure TfRelEmbDiario.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vDia1, vDia2 : Integer;
begin
  if fPrevEmbDiario.mEmbarque.RecordCount = fPrevEmbDiario.mEmbarque.RecNo then
    begin
      PrintBand         := True;
      QRShape8.Enabled  := True;
      QRLabel11.Enabled := True;
      QRLabel12.Enabled := True;
      QRLabel12.Caption := FloatToStr(vTotDia);
      QRLabel13.Enabled := True;
      QRLabel13.Caption := FloatToStr(vTotEmb);
      QRLabel14.Enabled := True;
      QRLabel14.Caption := FloatToStr(vTotSaldo);
      vTotDia           := 0;
      vTotEmb           := 0;
      vTotSaldo         := 0;
    end
  else
    begin
      fPrevEmbDiario.mEmbarque.Next;
      if vData <> fPrevEmbDiario.mEmbarqueData.AsDateTime then
        begin
          PrintBand := True;
          vDia1 := DayOfWeek(vData);
          vDia2 := DayOfWeek(fPrevEmbDiario.mEmbarqueData.AsDateTime);
          if (vDia1 > vDia2) or (vDia1 = vDia2) or ((fPrevEmbDiario.mEmbarqueData.AsDateTime - vData) > 6) then
            begin
              QRShape8.Enabled  := True;
              QRLabel11.Enabled := True;
              QRLabel12.Enabled := True;
              QRLabel12.Caption := FloatToStr(vTotDia);
              QRLabel13.Enabled := True;
              QRLabel13.Caption := FloatToStr(vTotEmb);
              QRLabel14.Enabled := True;
              QRLabel14.Caption := FloatToStr(vTotSaldo);
              vTotDia           := 0;
              vTotEmb           := 0;
              vTotSaldo         := 0;
            end
          else
            begin
              QRShape8.Enabled  := False;
              QRLabel11.Enabled := False;
              QRLabel12.Enabled := False;
              QRLabel13.Enabled := False;
              QRLabel14.Enabled := False;
            end;
        end
      else
        PrintBand := False;
      fPrevEmbDiario.mEmbarque.Prior;
    end;
end;

procedure TfRelEmbDiario.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel10.Caption := 'De  '+ fPrevEmbDiario.DateEdit1.Text + '  até  ' + fPrevEmbDiario.DateEdit2.Text;
end;

end.
