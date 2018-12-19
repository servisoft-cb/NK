unit UDMSetorTempo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMSetorTempo = class(TDataModule)
    sdsSetor_Tempo: TSQLDataSet;
    dspSetor_Tempo: TDataSetProvider;
    cdsSetor_Tempo: TClientDataSet;
    dsSetor_Tempo: TDataSource;
    sdsSetor_TempoCODSETOR: TIntegerField;
    sdsSetor_TempoDATA: TDateField;
    sdsSetor_TempoTOTALHORAS: TFloatField;
    sdsSetor_TempoTOTALHORASPARADA: TFloatField;
    sdsSetor_TempoTOTALHORASPROD: TFloatField;
    cdsSetor_TempoCODSETOR: TIntegerField;
    cdsSetor_TempoDATA: TDateField;
    cdsSetor_TempoTOTALHORAS: TFloatField;
    cdsSetor_TempoTOTALHORASPARADA: TFloatField;
    cdsSetor_TempoTOTALHORASPROD: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSetorTempo: TDMSetorTempo;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
