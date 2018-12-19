unit dmdCadParadas;

interface

uses
  SysUtils, Classes, DmdDatabase, FMTBcd, DB, SqlExpr, DBClient, Provider,
  arTypes;

type
  TdmCadParadas = class(TDataModule)
    sdsParadas: TSQLDataSet;
    dspParadas: TDataSetProvider;
    cdsParadas: TClientDataSet;
    dsParadas: TDataSource;
    sdsParadasCODIGO: TIntegerField;
    sdsParadasNOME: TStringField;
    cdsParadasCODIGO: TIntegerField;
    cdsParadasNOME: TStringField;
    sdsParadasTIPO: TStringField;
    cdsParadasTIPO: TStringField;
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
  DmCadParadas: TDmCadParadas;
  ctParadas : String;

implementation

{$R *.dfm}

{ TdmCadNatOperacao }


procedure TdmCadParadas.AtualizaConsulta;
begin
  if cdsParadas.Active then
  begin
    if not cdsParadas.Eof then
      LocalizarRegistro(True)
    else
      LocalizarRegistro(False);
  end
  else
    LocalizarRegistro(False);
end;

procedure TdmCadParadas.AutoEditar(Ativar: Boolean);
begin

end;

procedure TdmCadParadas.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if Estado = csEdit then
    iCodigo := cdsParadasCODIGO.AsInteger;

  if cdsParadas.Active then
    cdsParadas.CancelUpdates;
  AutoEditar(False);

  if (Estado = csEdit) and (cdsParadasCODIGO.AsInteger <> iCodigo) then
    cdsParadas.Locate('CODIGO', iCodigo, []);

  AtualizaConsulta;
end;

procedure TdmCadParadas.DataModuleCreate(Sender: TObject);
begin
  sCommandText := sdsParadas.CommandText;
  ctParadas    := sdsParadas.CommandText;
  AutoEditar(False);
end;

procedure TdmCadParadas.EditarRegistro;
begin
  cdsParadas.Edit;
  AutoEditar(True);

end;

procedure TdmCadParadas.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsParadas.Bookmark;
  try
    cdsParadas.DisableControls;
    try
      cdsParadas.Delete;
      if (cdsParadas.ChangeCount > 0) and (cdsParadas.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsParadas.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsParadas.EnableControls;
  end;
end;

procedure TdmCadParadas.ExecutaConsulta(SQL: string);
begin
  cdsParadas.Close;
  sdsParadas.CommandText := SQL;
  cdsParadas.Open;
end;

procedure TdmCadParadas.GravarRegistro;
begin
  if cdsParadas.State in [dsEdit, dsInsert] then
    cdsParadas.Post;

  if cdsParadas.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmCadParadas.IncluirRegistro;
begin
  if not cdsParadas.Active then
    LocalizarRegistro(False);
  cdsParadas.Insert;
  AutoEditar(True);
end;

function TdmCadParadas.LocalizarRegistro(bLocalizar: Boolean;
  Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsParadas.Active then
  begin
    ExecutaConsulta(sCommandText + ' WHERE CODIGO = ' + IntToStr(Codigo));
    Result := not cdsParadas.IsEmpty;
  end
  else if (not cdsParadas.IsEmpty) and (Codigo <> 0) then
  begin
    cdsParadas.First;
    Result := cdsParadas.Locate('CODIGO', Codigo, []);
  end
  else
    Result := not cdsParadas.IsEmpty;
end;

end.

