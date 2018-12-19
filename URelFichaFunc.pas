unit URelFichaFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelFichaFunc = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw3: TRLDraw;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText1: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLLabel14: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel19: TRLLabel;
    RLDraw9: TRLDraw;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelFichaFunc: TfRelFichaFunc;

implementation

uses UPrevFichaFunc;

{$R *.dfm}

procedure TfRelFichaFunc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFichaFunc.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel23.Caption := '';
  if fPrevFichaFunc.DateEdit1.Date > 0 then
    RLLabel23.Caption := RLLabel23.Caption + '   Dt.Inicial: ' + fPrevFichaFunc.DateEdit1.Text;
  if fPrevFichaFunc.DateEdit2.Date > 0 then
    RLLabel23.Caption := RLLabel23.Caption + '   Dt.Final: ' + fPrevFichaFunc.DateEdit2.Text;
  if fPrevFichaFunc.RxDBLookupCombo1.Text <> '' then
    RLLabel23.Caption := RLLabel23.Caption + '   Funcionário: ' + fPrevFichaFunc.RxDBLookupCombo1.Text
  else
    RLLabel23.Caption := RLLabel23.Caption + '   Funcionário: Todos';
end;

end.
