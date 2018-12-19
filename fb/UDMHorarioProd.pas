unit UDMHorarioProd;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMHorarioProd = class(TDataModule)
    sdsHorarioProd: TSQLDataSet;
    dspHorarioProd: TDataSetProvider;
    cdsHorarioProd: TClientDataSet;
    dsHorarioProd: TDataSource;
    sdsHorarioProdDIASEMANA: TIntegerField;
    sdsHorarioProdQTDHORAS: TFloatField;
    cdsHorarioProdDIASEMANA: TIntegerField;
    cdsHorarioProdQTDHORAS: TFloatField;
    sdsHorarioProdDIA: TStringField;
    cdsHorarioProdDIA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMHorarioProd: TDMHorarioProd;
  ctHorarioProd : String;

implementation

uses DmdDatabase, SysConst;

{$R *.dfm}

procedure TDMHorarioProd.DataModuleCreate(Sender: TObject);
begin
  ctHorarioProd := sdsHorarioProd.CommandText;
end;

end.
