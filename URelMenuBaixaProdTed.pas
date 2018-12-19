unit URelMenuBaixaProdTed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode;

type
  TfRelMenuBaixaProdTed = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBarcode1: TRLBarcode;
    rlMarcar: TRLLabel;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBarcode2: TRLBarcode;
    rlOcorrencia: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw2: TRLDraw;
    RLBarcode3: TRLBarcode;
    rlTerceirizado: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw3: TRLDraw;
    RLBarcode4: TRLBarcode;
    rlFim: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw4: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMenuBaixaProdTed: TfRelMenuBaixaProdTed;

implementation

uses UDM1;

{$R *.dfm}

procedure TfRelMenuBaixaProdTed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMenuBaixaProdTed.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  vCodBarra : String;
begin
  vCodBarra := FormatFloat('0000',1);
  RLBarcode1.Caption := vCodBarra;
  rlMarcar.Caption := vCodBarra;

  vCodBarra := FormatFloat('0000',2);
  RLBarcode2.Caption := vCodBarra;
  rlOcorrencia.Caption := vCodBarra;

  vCodBarra := FormatFloat('0000',3);
  RLBarcode3.Caption := vCodBarra;
  rlTerceirizado.Caption := vCodBarra;

  vCodBarra := FormatFloat('0000',4);
  RLBarcode4.Caption := vCodBarra;
  rlFim.Caption := vCodBarra;
end;

end.
