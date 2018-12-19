unit URelCalcMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TFRelCalcMaterial = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel13: TQRLabel;
    Tam1: TQRLabel;
    Tam2: TQRLabel;
    Tam3: TQRLabel;
    Tam4: TQRLabel;
    Tam5: TQRLabel;
    Tam6: TQRLabel;
    Tam7: TQRLabel;
    Tam8: TQRLabel;
    Tam9: TQRLabel;
    Tam10: TQRLabel;
    Tam11: TQRLabel;
    Tam12: TQRLabel;
    Tam13: TQRLabel;
    Par1: TQRLabel;
    Par2: TQRLabel;
    Par3: TQRLabel;
    Par4: TQRLabel;
    Par5: TQRLabel;
    Par6: TQRLabel;
    Par7: TQRLabel;
    Par8: TQRLabel;
    Par9: TQRLabel;
    Par10: TQRLabel;
    Par11: TQRLabel;
    Par12: TQRLabel;
    Par13: TQRLabel;
    QRLabel8: TQRLabel;
    Tam14: TQRLabel;
    Tam15: TQRLabel;
    Tam16: TQRLabel;
    Tam17: TQRLabel;
    Par14: TQRLabel;
    Par15: TQRLabel;
    Par16: TQRLabel;
    Par17: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    lbl_lote_ini: TQRLabel;
    QRLabel3: TQRLabel;
    lbl_lote_fim: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCalcMaterial: TFRelCalcMaterial;

implementation

uses UPrevCalcMaterialLote;

{$R *.DFM}

procedure TFRelCalcMaterial.ChildBand1BeforePrint(Sender: TQRCustomBand;  var PrintBand: Boolean);
  var posicao : integer;
begin
   if fPrevCalcMaterialLote.tAuxCalcMaterialGrade.recordcount = 0 then
   begin
      printband := false;
      exit;
   end;

  for posicao := 1 to 13 do
    begin
      TQRLabel(FindComponent('Tam'+IntToStr(Posicao))).Enabled := False;
      TQRLabel(FindComponent('Par'+IntToStr(Posicao))).Enabled := False;
    end;

  Posicao := 0;

  with fPrevCalcMaterialLote do
  begin
    tAuxCalcMaterialGrade.first;
    while not tAuxCalcMaterialGrade.EOF do
      begin
        Inc(Posicao);
        TQRLabel(FindComponent('Tam' + IntToStr(Posicao))).Enabled  := True;
        TQRLabel(FindComponent('Tam' + IntToStr(Posicao))).Caption  := tAuxCalcMaterialGradeTamMaterial.AsString;
        TQRLabel(FindComponent('Par' + IntToStr(Posicao))).Enabled  := True;
        TQRLabel(FindComponent('Par' + IntToStr(Posicao))).Caption  := tAuxCalcMaterialGradeQtdPares.AsString;
        tAuxCalcMaterialGrade.Next;
    end;
  end;
end;

end.
