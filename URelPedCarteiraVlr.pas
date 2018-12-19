unit URelPedCarteiraVlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelPedCarteiraVlr = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw6: TRLDraw;
    RLData1: TRLLabel;
    RLDraw7: TRLDraw;
    RLData2: TRLLabel;
    RLDraw8: TRLDraw;
    RLData3: TRLLabel;
    RLDraw9: TRLDraw;
    RLData4: TRLLabel;
    RLDraw10: TRLDraw;
    RLData5: TRLLabel;
    RLDraw11: TRLDraw;
    RLData6: TRLLabel;
    RLDraw12: TRLDraw;
    RLData7: TRLLabel;
    RLDraw13: TRLDraw;
    RLData8: TRLLabel;
    RLDraw14: TRLDraw;
    RLData9: TRLLabel;
    RLDraw15: TRLDraw;
    RLData10: TRLLabel;
    RLDraw16: TRLDraw;
    RLData11: TRLLabel;
    RLDraw17: TRLDraw;
    RLData12: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw22: TRLDraw;
    RLDBText3: TRLDBText;
    RLDraw23: TRLDraw;
    RLDBText4: TRLDBText;
    RLDraw24: TRLDraw;
    RLDBText5: TRLDBText;
    RLDraw25: TRLDraw;
    RLDBText6: TRLDBText;
    RLDraw26: TRLDraw;
    RLDBText7: TRLDBText;
    RLDraw27: TRLDraw;
    RLDBText8: TRLDBText;
    RLDraw28: TRLDraw;
    RLDBText9: TRLDBText;
    RLDraw29: TRLDraw;
    RLDBText10: TRLDBText;
    RLDraw30: TRLDraw;
    RLDBText11: TRLDBText;
    RLDraw31: TRLDraw;
    RLDBText12: TRLDBText;
    RLDraw32: TRLDraw;
    RLDBText13: TRLDBText;
    RLDraw33: TRLDraw;
    RLDBText14: TRLDBText;
    RLDraw34: TRLDraw;
    RLDBText15: TRLDBText;
    RLDraw35: TRLDraw;
    RLDBText16: TRLDBText;
    RLDraw36: TRLDraw;
    RLDBText17: TRLDBText;
    RLDraw37: TRLDraw;
    RLDBText18: TRLDBText;
    RLDraw38: TRLDraw;
    RLDBText19: TRLDBText;
    RLDraw21: TRLDraw;
    RLDraw20: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLLabel7: TRLLabel;
    RLDraw39: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw40: TRLDraw;
    RLTotal1: TRLLabel;
    RLDraw41: TRLDraw;
    RLTotal2: TRLLabel;
    RLDraw42: TRLDraw;
    RLTotal3: TRLLabel;
    RLDraw43: TRLDraw;
    RLTotal4: TRLLabel;
    RLDraw44: TRLDraw;
    RLTotal5: TRLLabel;
    RLDraw45: TRLDraw;
    RLTotal6: TRLLabel;
    RLDraw46: TRLDraw;
    RLTotal7: TRLLabel;
    RLDraw47: TRLDraw;
    RLTotal8: TRLLabel;
    RLDraw48: TRLDraw;
    RLTotal9: TRLLabel;
    RLDraw49: TRLDraw;
    RLTotal10: TRLLabel;
    RLDraw50: TRLDraw;
    RLTotal11: TRLLabel;
    RLDraw51: TRLDraw;
    RLTotal12: TRLLabel;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand2AfterPrint(Sender: TObject);
  private
    vTotalAtrazo, vTotalAcumulado, vTotalGeral : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedCarteiraVlr: TfRelPedCarteiraVlr;

implementation

uses UDM1, UPrevPedCarteiraVlr;

{$R *.dfm}

procedure TfRelPedCarteiraVlr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedCarteiraVlr.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
  ano,mes,dia : Word;
begin
  for i := 1 to 12 do
    TRLLabel(FindComponent('RLData'+IntToStr(i))).Caption := '';
  RLLabel20.Caption := 'Pedidos em Carteira (Valor) - ' + fPrevPedCarteiraVlr.DateEdit1.Text;
  RLLabel24.Caption := '';
  if fPrevPedCarteiraVlr.RxDBLookupCombo2.Text <> '' then
    RLLabel24.Caption := RLLabel24.Caption + '   Cliente: ' + fPrevPedCarteiraVlr.RxDBLookupCombo2.Text;
  if fPrevPedCarteiraVlr.RxDBLookupCombo3.Text <> '' then
    RLLabel24.Caption := RLLabel24.Caption + '   Refer.: ' + fPrevPedCarteiraVlr.RxDBLookupCombo3.Text;
  fPrevPedCarteiraVlr.mData.First;
  while not fPrevPedCarteiraVlr.mData.Eof do
    begin
      if fPrevPedCarteiraVlr.mDataIndice.AsInteger > 12 then
        fPrevPedCarteiraVlr.mData.Last
      else
        begin
          DecodeDate(fPrevPedCarteiraVlr.mDataData.AsDateTime,ano,mes,dia);
          TRLLabel(FindComponent('RLData'+fPrevPedCarteiraVlr.mDataIndice.AsString)).Enabled := True;
          TRLLabel(FindComponent('RLData'+fPrevPedCarteiraVlr.mDataIndice.AsString)).Caption := IntToStr(Dia) + '/' + IntToStr(Mes);
        end;
      fPrevPedCarteiraVlr.mData.Next;
    end;
end;

procedure TfRelPedCarteiraVlr.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  for i := 1 to 12 do
    TRLLabel(FindComponent('RLTotal'+IntToStr(i))).Caption := '';
  i := 0;
  fPrevPedCarteiraVlr.qData.First;
  while not fPrevPedCarteiraVlr.qData.Eof do
    begin
      inc(i);
      if i > 12 then
        fPrevPedCarteiraVlr.qData.Last
      else
        TRLLabel(FindComponent('RLTotal'+IntToStr(i))).Caption := FormatFloat('#,###',fPrevPedCarteiraVlr.qDataQtdParesRest.AsFloat);
      fPrevPedCarteiraVlr.qData.Next;
    end;
  
  RLLabel8.Caption  := FormatFloat('#,###',vTotalAtrazo);
  RLLabel28.Caption := FormatFloat('#,###',vTotalAcumulado);
  RLLabel27.Caption := FormatFloat('#,###',vTotalGeral);

  vTotalAtrazo    := 0;
  vTotalAcumulado := 0;
  vTotalGeral     := 0;
end;

procedure TfRelPedCarteiraVlr.FormCreate(Sender: TObject);
begin
  vTotalAtrazo    := 0;
  vTotalAcumulado := 0;
  vTotalGeral     := 0;
end;

procedure TfRelPedCarteiraVlr.RLBand2AfterPrint(Sender: TObject);
begin
  vTotalAtrazo    := vTotalAtrazo + fPrevPedCarteiraVlr.mProdutoQtdAtrazo.AsFloat;
  vTotalAcumulado := vTotalAcumulado + fPrevPedCarteiraVlr.mProdutoQtdAcumulada.AsFloat;
  vTotalGeral     := vTotalGeral + fPrevPedCarteiraVlr.mProdutoQtdTotal.AsFloat;
end;

end.
