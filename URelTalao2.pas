unit URelTalao2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, DB, DBTables, RLReport, RLBarcode;

type
  TfRelTalao2 = class(TForm)
    tProdutoSetor: TTable;
    tProdutoSetorCodProduto: TIntegerField;
    tProdutoSetorItem: TIntegerField;
    tProdutoSetorCodSetor: TIntegerField;
    tProdutoSetorTempo: TIntegerField;
    tProdutoSetorTempoRegMaquina: TIntegerField;
    tProdutoSetorlkNomeSetor: TStringField;
    RLReport1: TRLReport;
    dsProdutoSetor: TDataSource;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText10: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vCodBarra : String;
    vDigito   : String;
    procedure Calcula_Digito;

  public
    { Public declarations }
  end;

var
  fRelTalao2: TfRelTalao2;

implementation

uses UDM1, UTalao;

{$R *.DFM}

procedure TfRelTalao2.Calcula_Digito;
var
  vCodAux : String;
  i : Integer;
  vSoma : Integer;
  vSoma2 : Integer;
begin
  vSoma   := 0;
  vCodAux := vCodBarra;
  for i := 1 to 12 do
    begin
      if i mod 2 > 0 then  //Quando for impar multiplica por 1 se for par multiplica por 3
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 1)
      else
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 3);
    end;
  vSoma2 := vSoma div 10;
  vSoma2 := (vSoma2 + 1) * 10;
  vSoma  := vSoma2 - vSoma;
  if vSoma = 10 then
    vDigito := '0'
  else
    vDigito := FloatToStr(vSoma);
end;

procedure TfRelTalao2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
