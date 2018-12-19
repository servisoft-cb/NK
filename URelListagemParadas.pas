unit URelListagemParadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode;

type
  TfRelListagemParadas = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
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
  fRelListagemParadas: TfRelListagemParadas;

implementation

uses UConsParadas;

{$R *.dfm}

procedure TfRelListagemParadas.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var vCodBarra : String;
begin
  vCodBarra := FormatFloat('0000',fConsParadas.tParadasCODIGO.AsInteger);
  RLBarcode1.Caption := vCodBarra;
  RLLabel2.Caption := vCodBarra;
end;

end.
