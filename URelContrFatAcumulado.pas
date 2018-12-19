unit URelContrFatAcumulado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelContrFatAcumulado = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel15: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel16: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand3: TRLBand;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLBand4: TRLBand;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw37: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw35: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    vTotalVenda, vTotalMObra, vTotalGeral : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelContrFatAcumulado: TfRelContrFatAcumulado;

implementation

uses UPrevContrFat, DB;

{$R *.dfm}

procedure TfRelContrFatAcumulado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelContrFatAcumulado.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Controle de Faturamento - ' + fPrevContrFat.DateEdit1.Text + ' a ' + fPrevContrFat.DateEdit2.Text;
  RLLabel3.Caption := '';
  if fPrevContrFat.RxDBLookupCombo2.Text <> '' then
    RLLabel3.Caption := RLLabel3.Caption + '  Cliente: ' + fPrevContrFat.RxDBLookupCombo2.Text;
end;

procedure TfRelContrFatAcumulado.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel18.Caption := FormatFloat('###,###,###,##0.00',vTotalVenda);
  RLLabel19.Caption := FormatFloat('###,###,###,##0.00',vTotalMObra);
  RLLabel23.Caption := FormatFloat('###,###,###,##0.00',vTotalGeral);
end;

procedure TfRelContrFatAcumulado.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDataAux, vDataAux2 : TDate;
  i : Integer;
begin
  PrintIt := False;
  if fPrevContrFat.mAcumulado.RecordCount = fPrevContrFat.mAcumulado.RecNo then
    PrintIt := True
  else
    begin
      vDataAux := fPrevContrFat.mAcumuladoData.AsDateTime;
      fPrevContrFat.mAcumulado.Next;
      if DayOfWeek(fPrevContrFat.mAcumuladoData.AsDateTime) = 1 then
        PrintIt := True
      else
      if DayOfWeek(vDataAux) = 7 then
        PrintIt := True
      else
        begin
          i := 7 - DayOfWeek(vDataAux);
          vDataAux2 := vDataAux + i;
          if fPrevContrFat.mAcumuladoData.AsDateTime > vDataAux2 then
            PrintIt := True;
        end;
      fPrevContrFat.mAcumulado.Prior;
    end;
  if PrintIt then
    begin
      RLLabel26.Caption := FormatFloat('###,###,###,##0.00',vTotalVenda);
      RLLabel27.Caption := FormatFloat('###,###,###,##0.00',vTotalMObra);
      RLLabel28.Caption := FormatFloat('###,###,###,##0.00',vTotalGeral);
    end;
end;

procedure TfRelContrFatAcumulado.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotalVenda := fPrevContrFat.mAcumuladoVlrAcumVenda.AsFloat;
  vTotalMObra := fPrevContrFat.mAcumuladoVlrAcumMObra.AsFloat;
  vTotalGeral := fPrevContrFat.mAcumuladoVlrAcumTotal.AsFloat;
end;

end.
