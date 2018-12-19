unit URelAcumuladoFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelAcumuladoFat = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw3: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw4: TRLDraw;
    RLBand3: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw16: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelAcumuladoFat: TfRelAcumuladoFat;

implementation

uses UPrevAcumuladoFat;

{$R *.dfm}

procedure TfRelAcumuladoFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelAcumuladoFat.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  ano, mes, dia : Word;
begin
  RLLabel1.Caption := 'Relatório de Acumulados (Faturado)';
  DecodeDate(fPrevAcumuladoFat.DateEdit1.Date,ano,mes,dia);
  case mes of
    1 : RLLabel1.Caption := RLLabel1.Caption + ' Janeiro / ' + IntToStr(ano);
    2 : RLLabel1.Caption := RLLabel1.Caption + ' Fevereiro / ' + IntToStr(ano);
    3 : RLLabel1.Caption := RLLabel1.Caption + ' Março / ' + IntToStr(ano);
    4 : RLLabel1.Caption := RLLabel1.Caption + ' Abril / ' + IntToStr(ano);
    5 : RLLabel1.Caption := RLLabel1.Caption + ' Maio / ' + IntToStr(ano);
    6 : RLLabel1.Caption := RLLabel1.Caption + ' Junho / ' + IntToStr(ano);
    7 : RLLabel1.Caption := RLLabel1.Caption + ' Julho / ' + IntToStr(ano);
    8 : RLLabel1.Caption := RLLabel1.Caption + ' Agosto / ' + IntToStr(ano);
    9 : RLLabel1.Caption := RLLabel1.Caption + ' Setembro / ' + IntToStr(ano);
   10 : RLLabel1.Caption := RLLabel1.Caption + ' Outubro / ' + IntToStr(ano);
   11 : RLLabel1.Caption := RLLabel1.Caption + ' Novembro / ' + IntToStr(ano);
   12 : RLLabel1.Caption := RLLabel1.Caption + ' Dezembro / ' + IntToStr(ano);
  end;
  if fPrevAcumuladoFat.RxDBLookupCombo2.Text <> '' then
    RLLabel3.Caption := RLLabel3.Caption + '  Cliente: ' + fPrevAcumuladoFat.RxDBLookupCombo2.Text;
  if fPrevAcumuladoFat.RxDBLookupCombo3.Text <> '' then
    RLLabel3.Caption := RLLabel3.Caption + '  Refer: ' + fPrevAcumuladoFat.RxDBLookupCombo3.Text;
  RLLabel11.Caption := fPrevAcumuladoFat.DateEdit1.Text;
  RLLabel12.Caption := 'Ac.até ' + DateToStr(fPrevAcumuladoFat.vDataAnt);
end;

procedure TfRelAcumuladoFat.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;  
begin
  RLLabel14.Caption := FormatFloat('###,###,##0',fPrevAcumuladoFat.vQtdDia);
  RLLabel16.Caption := FormatFloat('###,###,##0',fPrevAcumuladoFat.vQtdAnt);
  RLLabel23.Caption := FormatFloat('###,###,##0',fPrevAcumuladoFat.vQtdGeral);
  if fPrevAcumuladoFat.CheckBox1.Checked then
    begin
      RLLabel15.Caption := FormatFloat('###,###,##0.00',fPrevAcumuladoFat.vValorDia);
      RLLabel17.Caption := FormatFloat('###,###,##0.00',fPrevAcumuladoFat.vValorAnt);
      RLLabel24.Caption := FormatFloat('###,###,##0.00',fPrevAcumuladoFat.vValorGeral);
      RLLabel20.Caption := FormatFloat('###,###,##0.00',fPrevAcumuladoFat.vVlrProjecao);
    end
  else
    begin
      RLLabel15.Caption := '';
      RLLabel17.Caption := '';
      RLLabel24.Caption := '';
      RLLabel20.Caption := '';
    end;
  vAux := fPrevAcumuladoFat.vVlrProjecao / 1000;
  RLLabel25.Caption := FormatFloat('0',vAux);
  vAux := fPrevAcumuladoFat.vValorGeral / 1000;
  RLLabel26.Caption := FormatFloat('0',vAux);
  vAux := fPrevAcumuladoFat.vValorDia / 1000;
  RLLabel27.Caption := FormatFloat('0',vAux);
end;

procedure TfRelAcumuladoFat.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText5.Visible := fPrevAcumuladoFat.CheckBox1.Checked;
  RLDBText7.Visible := fPrevAcumuladoFat.CheckBox1.Checked;
end;

end.
