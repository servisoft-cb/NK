unit URelNotaFiscalBeneficiamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelNotaFiscalBeneficiamento = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText14: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw2: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel25: TRLLabel;
    RLBand3: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand4: TRLBand;
    RLLabel26: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDraw3: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelNotaFiscalBeneficiamento: TfRelNotaFiscalBeneficiamento;

implementation

uses UConsNotaFiscalBeneficiamento, UDM1;

{$R *.dfm}

procedure TfRelNotaFiscalBeneficiamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotaFiscalBeneficiamento.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fConsNotaFiscalBeneficiamento.qNotaFiscal.Filtered := False;
  fConsNotaFiscalBeneficiamento.qNotaFiscal.Filter   := 'CodCli = '''+ fConsNotaFiscalBeneficiamento.qClienteCodCli.AsString +'''';
  fConsNotaFiscalBeneficiamento.qNotaFiscal.Filtered := True;
end;

procedure TfRelNotaFiscalBeneficiamento.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel5.Caption := 'Opção: ';

{  if fConsNotaFiscalBeneficiamento.RxDBLookupCombo3.Text <> '' then
    RLLabel5.Caption := RLLabel5.Caption + '   Grupo: ' + fConsNotaFiscalBeneficiamento.RxDBLookupCombo3.Text
  else
    RLLabel5.Caption := RLLabel5.Caption + '   Grupo: Todos';
}
  case fConsNotaFiscalBeneficiamento.RadioGroup1.ItemIndex of
    0 : RLLabel5.Caption := RLLabel5.Caption + '   (Pendentes)';
    1 : RLLabel5.Caption := RLLabel5.Caption + '   (Encerradas)';
    2 : RLLabel5.Caption := RLLabel5.Caption + '   (Ambas)';
  end;
end;

end.
