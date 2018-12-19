unit dmdCadDefeitos;

interface

uses
  SysUtils, Classes, DmdDatabase, FMTBcd, DB, SqlExpr, DBClient, Provider,
  arTypes;

type
  TdmCadDefeitos = class(TDataModule)
    sdsDefeitos: TSQLDataSet;
    dspDefeitos: TDataSetProvider;
    cdsDefeitos: TClientDataSet;
    dsDefeitos: TDataSource;
    sdsDefeitosCODIGO: TIntegerField;
    sdsDefeitosNOME: TStringField;
    cdsDefeitosCODIGO: TIntegerField;
    cdsDefeitosNOME: TStringField;
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
  DmCadDefeitos: TDmCadDefeitos;
  ctDefeitos : String;

implementation

{$R *.dfm}

{ TdmCadNatOperacao }

procedure TdmCadDefeitos.AtualizaConsulta;
begin
  if cdsDefeitos.Active then
  begin
    if not cdsDefeitos.Eof then
      LocalizarRegistro(True)
    else
      LocalizarRegistro(False);
  end
  else
    LocalizarRegistro(False);
end;

procedure TdmCadDefeitos.AutoEditar(Ativar: Boolean);
begin

end;

procedure TdmCadDefeitos.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if Estado = csEdit then
    iCodigo := cdsDefeitosCODIGO.AsInteger;

  if cdsDefeitos.Active then
    cdsDefeitos.CancelUpdates;
  AutoEditar(False);

  if (Estado = csEdit) and (cdsDefeitosCODIGO.AsInteger <> iCodigo) then
    cdsDefeitos.Locate('CODIGO', iCodigo, []);

  AtualizaConsulta;
end;

procedure TdmCadDefeitos.DataModuleCreate(Sender: TObject);
begin
  sCommandText := sdsDefeitos.CommandText;
  ctDefeitos   := sdsDefeitos.CommandText;
  AutoEditar(False);
end;

procedure TdmCadDefeitos.EditarRegistro;
begin
  cdsDefeitos.Edit;
  AutoEditar(True);

end;

procedure TdmCadDefeitos.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsDefeitos.Bookmark;
  try
    cdsDefeitos.DisableControls;
    try
      cdsDefeitos.Delete;
      if (cdsDefeitos.ChangeCount > 0) and (cdsDefeitos.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsDefeitos.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsDefeitos.EnableControls;
  end;
end;

procedure TdmCadDefeitos.ExecutaConsulta(SQL: string);
begin
  cdsDefeitos.Close;
  sdsDefeitos.CommandText := SQL;
  cdsDefeitos.Open;
end;

procedure TdmCadDefeitos.GravarRegistro;
begin
  if cdsDefeitos.State in [dsEdit, dsInsert] then
    cdsDefeitos.Post;

  if cdsDefeitos.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmCadDefeitos.IncluirRegistro;
begin
  if not cdsDefeitos.Active then
    LocalizarRegistro(False);
  cdsDefeitos.Insert;
  AutoEditar(True);
end;

function TdmCadDefeitos.LocalizarRegistro(bLocalizar: Boolean;
  Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsDefeitos.Active then
  begin
    ExecutaConsulta(sCommandText + ' WHERE CODIGO = ' + IntToStr(Codigo));
    Result := not cdsDefeitos.IsEmpty;
  end
  else if (not cdsDefeitos.IsEmpty) and (Codigo <> 0) then
  begin
    cdsDefeitos.First;
    Result := cdsDefeitos.Locate('CODIGO', Codigo, []);
  end
  else
    Result := not cdsDefeitos.IsEmpty;
end;

end.

