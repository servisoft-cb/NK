unit URelCPagar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelCPagar2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
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
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel13: TRLLabel;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel15: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel16: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBResult4: TRLDBResult;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCPagar2: TfRelCPagar2;

implementation

uses UDM1, UContasPagar2;

{$R *.dfm}

procedure TfRelCPagar2.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel11.Caption := Trim(fContasPagar2.qParcelasNroDuplicata.AsString) + '/' + fContasPagar2.qParcelasParcCPagar.AsString;
  if fContasPagar2.qParcelasRestParcela.AsFloat > 0 then
    RLLabel12.Caption := fContasPagar2.qParcelasclDiasAtraso.AsString
  else
    RLLabel12.Caption := '';
end;

procedure TfRelCPagar2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
