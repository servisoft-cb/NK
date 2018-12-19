unit dmdCadSetor;

interface

uses
  SysUtils, Classes, DmdDatabase, FMTBcd, DB, SqlExpr, DBClient, Provider,
  arTypes;

type
  TdmCadSetor = class(TDataModule)
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    sdsSetorCODIGO: TIntegerField;
    sdsSetorNOME: TStringField;
    sdsSetorIMPTALAO: TStringField;
    sdsSetorATELIER: TStringField;
    sdsSetorMETADIA: TIntegerField;
    sdsSetorFINAL: TStringField;
    cdsSetorCODIGO: TIntegerField;
    cdsSetorNOME: TStringField;
    cdsSetorIMPTALAO: TStringField;
    cdsSetorATELIER: TStringField;
    cdsSetorMETADIA: TIntegerField;
    cdsSetorFINAL: TStringField;
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
  ctSetor : String;  

implementation

{$R *.dfm}

{ TdmCadSetor }

procedure TdmCadSetor.AtualizaConsulta;
begin
  if cdsSetor.Active then
  begin
    if not cdsSetor.Eof then
      LocalizarRegistro(True)
    else
      LocalizarRegistro(False);
  end
  else
    LocalizarRegistro(False);
end;

procedure TdmCadSetor.AutoEditar(Ativar: Boolean);
begin

end;

procedure TdmCadSetor.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if Estado = csEdit then
    iCodigo := cdsSetorCODIGO.AsInteger;

  if cdsSetor.Active then
    cdsSetor.CancelUpdates;
  AutoEditar(False);

  if (Estado = csEdit) and (cdsSetorCODIGO.AsInteger <> iCodigo) then
    cdsSetor.Locate('CODIGO', iCodigo, []);

  AtualizaConsulta;
end;

procedure TdmCadSetor.DataModuleCreate(Sender: TObject);
begin
  sCommandText := sdsSetor.CommandText;
  ctSetor      := sdsSetor.CommandText;
  AutoEditar(False);
end;

procedure TdmCadSetor.EditarRegistro;
begin
  cdsSetor.Edit;
  AutoEditar(True);

end;

procedure TdmCadSetor.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsSetor.Bookmark;
  try
    cdsSetor.DisableControls;
    try
      cdsSetor.Delete;
      if (cdsSetor.ChangeCount > 0) and (cdsSetor.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsSetor.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsSetor.EnableControls;
  end;
end;

procedure TdmCadSetor.ExecutaConsulta(SQL: string);
begin
  cdsSetor.Close;
  sdsSetor.CommandText := SQL;
  cdsSetor.Open;
end;

procedure TdmCadSetor.GravarRegistro;
begin
  if cdsSetor.State in [dsEdit, dsInsert] then
    cdsSetor.Post;

  if cdsSetor.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmCadSetor.IncluirRegistro;
begin
  if not cdsSetor.Active then
    LocalizarRegistro(False);
  cdsSetor.Insert;
  AutoEditar(True);
end;

function TdmCadSetor.LocalizarRegistro(bLocalizar: Boolean;
  Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsSetor.Active then
  begin
    ExecutaConsulta(sCommandText + ' WHERE CODIGO = ' + IntToStr(Codigo));
    Result := not cdsSetor.IsEmpty;
  end
  else if (not cdsSetor.IsEmpty) and (Codigo > 0) then
  begin
    cdsSetor.First;
    Result := cdsSetor.Locate('CODIGO', Codigo, []);
  end
  else
    Result := not cdsSetor.IsEmpty;
end;

end.

