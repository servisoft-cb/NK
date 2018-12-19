unit URelOrcamentoMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg;

type
  TfRelOrcamentoMail = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel15: TRLLabel;
    RLDBText18: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel16: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel19: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText23: TRLDBText;
    RLDraw3: TRLDraw;
    RLLabel24: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDBText24: TRLDBText;
    RLLabel25: TRLLabel;
    RLBand4: TRLBand;
    RLMemo1: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelOrcamentoMail: TfRelOrcamentoMail;
  vTotal : Real;

implementation

uses UDM1;

{$R *.DFM}

procedure TfRelOrcamentoMail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vFormulario := '';
  Action      := Cafree;
end;

procedure TfRelOrcamentoMail.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal := 0;
end;

procedure TfRelOrcamentoMail.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal := vTotal + DM1.tOrcamentoItensVlrTotal.AsFloat;
end;

procedure TfRelOrcamentoMail.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel21.Caption := FormatFloat('###,###,##0.00',vTotal);
end;

end.
