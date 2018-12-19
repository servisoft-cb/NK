unit URelCPagarCReceberDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelCPagarCReceberDet = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand1: TRLBand;
    RLDraw5: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCPagarCReceberDet: TfRelCPagarCReceberDet;

implementation

uses UConsCPagarCReceber, ToolEdit;

{$R *.dfm}

procedure TfRelCPagarCReceberDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCPagarCReceberDet.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption  := 'Relatório Receber/Pagar no período - ' + fConsCPagarCReceber.DateEdit1.Text + ' a ' + fConsCPagarCReceber.DateEdit2.Text;
  RLLabel11.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit1.Value);
  RLLabel12.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit2.Value);
  RLLabel13.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit3.Value);

  RLLabel18.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit4.Value);
  RLLabel19.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit5.Value);
  RLLabel20.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit6.Value);

  RLLabel27.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit7.Value);
  RLLabel28.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit8.Value);
  RLLabel29.Caption := FormatFloat('###,###,##0.00',fConsCPagarCReceber.CurrencyEdit9.Value);
end;

end.
