unit dmdCadFuncionario;

interface

uses
  SysUtils, Classes, DmdDatabase, FMTBcd, DB, SqlExpr, DBClient, Provider,
  arTypes;

type
  TdmCadFuncionario = class(TDataModule)
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    sdsFuncionarioENDERECO: TStringField;
    sdsFuncionarioCODCIDADE: TIntegerField;
    sdsFuncionarioBAIRRO: TStringField;
    sdsFuncionarioCEP: TStringField;
    sdsFuncionarioFONE: TStringField;
    sdsFuncionarioDTADMISSAO: TDateField;
    sdsFuncionarioCPF: TStringField;
    sdsFuncionarioRG: TStringField;
    sdsFuncionarioCTPS: TIntegerField;
    sdsFuncionarioSERIE: TStringField;
    sdsFuncionarioPIS: TStringField;
    sdsFuncionarioDTNASCIMENTO: TDateField;
    sdsFuncionarioHRSEMANAIS: TFloatField;
    sdsFuncionarioTIPOPGTO: TStringField;
    sdsFuncionarioVLRSALARIO: TFloatField;
    sdsFuncionarioDTDEMISSAO: TDateField;
    sdsFuncionarioHORARIO1: TStringField;
    sdsFuncionarioHORARIO2: TStringField;
    sdsFuncionarioPERCINSALUBRIDADE: TFloatField;
    sdsFuncionarioPERCPERICULOSIDADE: TFloatField;
    sdsFuncionarioUF: TStringField;
    sdsFuncionarioOBS: TMemoField;
    sdsFuncionarioESTCIVIL: TStringField;
    sdsFuncionarioESCOLARIDADE: TStringField;
    sdsFuncionarioFUNCAO: TStringField;
    sdsFuncionarioNOMECONJUGE: TStringField;
    sdsFuncionarioNUMMATRICULA: TIntegerField;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioENDERECO: TStringField;
    cdsFuncionarioCODCIDADE: TIntegerField;
    cdsFuncionarioBAIRRO: TStringField;
    cdsFuncionarioCEP: TStringField;
    cdsFuncionarioFONE: TStringField;
    cdsFuncionarioDTADMISSAO: TDateField;
    cdsFuncionarioCPF: TStringField;
    cdsFuncionarioRG: TStringField;
    cdsFuncionarioCTPS: TIntegerField;
    cdsFuncionarioSERIE: TStringField;
    cdsFuncionarioPIS: TStringField;
    cdsFuncionarioDTNASCIMENTO: TDateField;
    cdsFuncionarioHRSEMANAIS: TFloatField;
    cdsFuncionarioTIPOPGTO: TStringField;
    cdsFuncionarioVLRSALARIO: TFloatField;
    cdsFuncionarioDTDEMISSAO: TDateField;
    cdsFuncionarioHORARIO1: TStringField;
    cdsFuncionarioHORARIO2: TStringField;
    cdsFuncionarioPERCINSALUBRIDADE: TFloatField;
    cdsFuncionarioPERCPERICULOSIDADE: TFloatField;
    cdsFuncionarioUF: TStringField;
    cdsFuncionarioOBS: TMemoField;
    cdsFuncionarioESTCIVIL: TStringField;
    cdsFuncionarioESCOLARIDADE: TStringField;
    cdsFuncionarioFUNCAO: TStringField;
    cdsFuncionarioNOMECONJUGE: TStringField;
    cdsFuncionarioNUMMATRICULA: TIntegerField;
    sdsFuncionarioMOSTRARNAPRODUCAO: TStringField;
    cdsFuncionarioMOSTRARNAPRODUCAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    sCommandText: string;
    FEstado: TarCadState;
    procedure AtualizaConsulta;
  public

    procedure AutoEditar(Ativar: Boolean);
    procedure IncluirRegistro;
    procedure GravarRegistro;
    procedure EditarRegistro;
    procedure ExcluirRegistro;
    procedure CancelarRegistro;
    function LocalizarRegistro(bLocalizar: Boolean; Codigo: Integer = 0): Boolean;
    procedure ExecutaConsulta(SQL: string);
    property Estado: TarCadState read FEstado write FEstado;

  end;

var
  ctFuncionario : String;  

implementation

{$R *.dfm}

{ TdmCadFuncionario }

procedure TdmCadFuncionario.AtualizaConsulta;
begin
  if cdsFuncionario.Active then
  begin
    if not cdsFuncionario.Eof then
      LocalizarRegistro(True)
    else
      LocalizarRegistro(False);
  end
  else
    LocalizarRegistro(False);
end;

procedure TdmCadFuncionario.AutoEditar(Ativar: Boolean);
begin

end;

procedure TdmCadFuncionario.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if Estado = csEdit then
    iCodigo := cdsFuncionarioCODIGO.AsInteger;

  if cdsFuncionario.Active then
    cdsFuncionario.CancelUpdates;
  AutoEditar(False);

  if (Estado = csEdit) and (cdsFuncionarioCODIGO.AsInteger <> iCodigo) then
    cdsFuncionario.Locate('CODIGO', iCodigo, []);

  AtualizaConsulta;
end;

procedure TdmCadFuncionario.DataModuleCreate(Sender: TObject);
begin
  sCommandText  := sdsFuncionario.CommandText;
  ctFuncionario := sdsFuncionario.CommandText;
  AutoEditar(False);
end;

procedure TdmCadFuncionario.EditarRegistro;
begin
  cdsFuncionario.Edit;
  AutoEditar(True);

end;

procedure TdmCadFuncionario.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsFuncionario.Bookmark;
  try
    cdsFuncionario.DisableControls;
    try
      cdsFuncionario.Delete;
      if (cdsFuncionario.ChangeCount > 0) and (cdsFuncionario.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsFuncionario.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsFuncionario.EnableControls;
  end;
end;

procedure TdmCadFuncionario.ExecutaConsulta(SQL: string);
begin
  cdsFuncionario.Close;
  sdsFuncionario.CommandText := SQL;
  cdsFuncionario.Open;
end;

procedure TdmCadFuncionario.GravarRegistro;
begin
  if cdsFuncionario.State in [dsEdit, dsInsert] then
    cdsFuncionario.Post;

  if cdsFuncionario.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmCadFuncionario.IncluirRegistro;
begin
  if not cdsFuncionario.Active then
    LocalizarRegistro(False);
  cdsFuncionario.Insert;
  AutoEditar(True);
end;

function TdmCadFuncionario.LocalizarRegistro(bLocalizar: Boolean;
  Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsFuncionario.Active then
  begin
    ExecutaConsulta(sCommandText + ' WHERE CODIGO = ' + IntToStr(Codigo));
    Result := not cdsFuncionario.IsEmpty;
  end
  else if (not cdsFuncionario.IsEmpty) and (Codigo > 0) then
  begin
    cdsFuncionario.First;
    Result := cdsFuncionario.Locate('CODIGO', Codigo, []);
  end
  else
    Result := not cdsFuncionario.IsEmpty;
end;

end.

