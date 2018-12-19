unit URelListagemDefeito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode;

type
  TfRelListagemDefeito = class(TForm)
    RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLBarcode1: TRLBarcode;
    RLLabel2: TRLLabel;
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelListagemDefeito: TfRelListagemDefeito;

implementation

uses UConsDefeito;


{$R *.dfm}

procedure TfRelListagemDefeito.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var vCodBarra : String;
begin
  vCodBarra := FormatFloat('0000',fConsDefeito.tDefeitosCODIGO.AsInteger);
  RLBarcode1.Caption := vCodBarra;
  RLLabel2.Caption := vCodBarra;
end;

end.
