unit URelPrevComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport;

type
  TfRelPrevComissao = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel18: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLLabel25: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel30: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPrevComissao: TfRelPrevComissao;
  vTotal, vBase : Real;

implementation

uses UPrevPrevComissao, UDM1;

{$R *.DFM}

procedure TfRelPrevComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPrevComissao.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel5.Caption := fPrevPrevComissao.DateEdit1.Text + ' á ' + fPrevPrevComissao.DateEdit2.Text;
  RLLabel2.Caption := fPrevPrevComissao.RxDBLookupCombo1.Text;
end;

procedure TfRelPrevComissao.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel11.Caption := FormatFloat('###,###,##0.00',(fPrevPrevComissao.tCReceberParcPercComissao.AsFloat * fPrevPrevComissao.tCReceberParcRestParcela.AsFloat) /100);
  vTotal := vTotal + (fPrevPrevComissao.tCReceberParcPercComissao.AsFloat * fPrevPrevComissao.tCReceberParcRestParcela.AsFloat) / 100;
  vbase := vBase + fPrevPrevComissao.tCReceberParcRestParcela.AsFloat;
end;

procedure TfRelPrevComissao.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal := 0;
  vBase  := 0;
end;

procedure TfRelPrevComissao.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel30.Caption := FormatFloat('###,###,##0.00',vTotal);
  RLLabel12.Caption := FormatFloat('###,###,##0.00',vBase);
end;

end.
