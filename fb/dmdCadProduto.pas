unit dmdCadProduto;

interface

uses
  SysUtils, Classes, DmdDatabase, FMTBcd, DB, SqlExpr, DBClient, Provider,
  arTypes;

type
  TdmCadProduto = class(TDataModule)
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoCODIGO: TIntegerField;
    sdsProdutoCODGRUPO: TIntegerField;
    sdsProdutoCODSUBGRUPO: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoCODCLASFISCAL: TStringField;
    sdsProdutoCODSITTRIB: TIntegerField;
    sdsProdutoLANCAGRADE: TStringField;
    sdsProdutoCODGRADE: TIntegerField;
    sdsProdutoQPARTALAO: TFloatField;
    sdsProdutoPESOLIQUIDO: TFloatField;
    sdsProdutoPESOBRUTO: TFloatField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoALIQICMS: TFloatField;
    sdsProdutoALIQIPI: TFloatField;
    sdsProdutoNOMEEXP: TStringField;
    sdsProdutoDESCMATERIAL: TStringField;
    sdsProdutoREFERENCIA2: TStringField;
    sdsProdutoVLRATELIER: TFloatField;
    sdsProdutoNOMEMODELO: TStringField;
    sdsProdutoFOTOJPEG: TMemoField;
    sdsProdutoOBS: TMemoField;
    sdsProdutoENDETIQ: TStringField;
    sdsProdutoLANCACOR: TStringField;
    sdsProdutoPRECOGRADE: TStringField;
    sdsProdutoVLRVENDA: TFloatField;
    sdsProdutoPRODMAT: TStringField;
    sdsProdutoPRECOCUSTO: TFloatField;
    sdsProdutoPOSSEMAT: TStringField;
    sdsProdutoESTOQUE: TStringField;
    sdsProdutoDTALTERACAO: TSQLTimeStampField;
    sdsProdutoMATERIALOUTROS: TStringField;
    sdsProdutoPRECOCOR: TStringField;
    sdsProdutoCODFORNECEDOR: TIntegerField;
    sdsProdutoESTMINIMO: TFloatField;
    sdsProdutoESTMAXIMO: TFloatField;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoCODGRUPO: TIntegerField;
    cdsProdutoCODSUBGRUPO: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoCODCLASFISCAL: TStringField;
    cdsProdutoCODSITTRIB: TIntegerField;
    cdsProdutoLANCAGRADE: TStringField;
    cdsProdutoCODGRADE: TIntegerField;
    cdsProdutoQPARTALAO: TFloatField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoALIQICMS: TFloatField;
    cdsProdutoALIQIPI: TFloatField;
    cdsProdutoNOMEEXP: TStringField;
    cdsProdutoDESCMATERIAL: TStringField;
    cdsProdutoREFERENCIA2: TStringField;
    cdsProdutoVLRATELIER: TFloatField;
    cdsProdutoNOMEMODELO: TStringField;
    cdsProdutoFOTOJPEG: TMemoField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoENDETIQ: TStringField;
    cdsProdutoLANCACOR: TStringField;
    cdsProdutoPRECOGRADE: TStringField;
    cdsProdutoVLRVENDA: TFloatField;
    cdsProdutoPRODMAT: TStringField;
    cdsProdutoPRECOCUSTO: TFloatField;
    cdsProdutoPOSSEMAT: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoDTALTERACAO: TSQLTimeStampField;
    cdsProdutoMATERIALOUTROS: TStringField;
    cdsProdutoPRECOCOR: TStringField;
    cdsProdutoCODFORNECEDOR: TIntegerField;
    cdsProdutoESTMINIMO: TFloatField;
    cdsProdutoESTMAXIMO: TFloatField;
    sdsProdutoDIAMETRO: TStringField;
    sdsProdutoCOMPRIMENTO: TStringField;
    sdsProdutoROSCA: TStringField;
    sdsProdutoCABECA: TStringField;
    cdsProdutoDIAMETRO: TStringField;
    cdsProdutoCOMPRIMENTO: TStringField;
    cdsProdutoROSCA: TStringField;
    cdsProdutoCABECA: TStringField;
    sdsProdutoENDFOTOTALAO: TStringField;
    cdsProdutoENDFOTOTALAO: TStringField;
    sdsProdutoCODCSTIPI: TStringField;
    sdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoCODCSTIPI: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    sdsProdutoORIGEMPROD: TStringField;
    cdsProdutoORIGEMPROD: TStringField;
    sdsProdutoNCM_EX: TStringField;
    cdsProdutoNCM_EX: TStringField;
    sdsProdutoID_ENQIPI: TIntegerField;
    cdsProdutoID_ENQIPI: TIntegerField;
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
  dmCadProduto : TdmCadProduto;
  ctProduto : String;

implementation


{$R *.dfm}

{ TdmCadFuncionario }

procedure TdmCadProduto.AtualizaConsulta;
begin
  if cdsProduto.Active then
  begin
    if not cdsProduto.Eof then
      LocalizarRegistro(True)
    else
      LocalizarRegistro(False);
  end
  else
    LocalizarRegistro(False);
end;

procedure TdmCadProduto.AutoEditar(Ativar: Boolean);
begin

end;

procedure TdmCadProduto.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if Estado = csEdit then
    iCodigo := cdsProdutoCODIGO.AsInteger;

  if cdsProduto.Active then
    cdsProduto.CancelUpdates;
  AutoEditar(False);

  if (Estado = csEdit) and (cdsProdutoCODIGO.AsInteger <> iCodigo) then
    cdsProduto.Locate('CODIGO', iCodigo, []);

  AtualizaConsulta;
end;

procedure TdmCadProduto.DataModuleCreate(Sender: TObject);
begin
  sCommandText := sdsProduto.CommandText;
  ctProduto    := sdsProduto.CommandText;
  AutoEditar(False);
end;

procedure TdmCadProduto.EditarRegistro;
begin
  cdsProduto.Edit;
  AutoEditar(True);

end;

procedure TdmCadProduto.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsProduto.Bookmark;
  try
    cdsProduto.DisableControls;
    try
      cdsProduto.Delete;
      if (cdsProduto.ChangeCount > 0) and (cdsProduto.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsProduto.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsProduto.EnableControls;
  end;
end;

procedure TdmCadProduto.ExecutaConsulta(SQL: string);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := SQL;
  cdsProduto.Open;
end;

procedure TdmCadProduto.GravarRegistro;
begin
  if cdsProduto.State in [dsEdit, dsInsert] then
    cdsProduto.Post;

  if cdsProduto.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmCadProduto.IncluirRegistro;
begin
  if not cdsProduto.Active then
    LocalizarRegistro(False);
  cdsProduto.Insert;
  AutoEditar(True);
end;

function TdmCadProduto.LocalizarRegistro(bLocalizar: Boolean;
  Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsProduto.Active then
  begin
    ExecutaConsulta(sCommandText + ' WHERE CODIGO = ' + IntToStr(Codigo));
    Result := not cdsProduto.IsEmpty;
  end
  else if (not cdsProduto.IsEmpty) and (Codigo > 0) then
  begin
    cdsProduto.First;
    Result := cdsProduto.Locate('CODIGO', Codigo, []);
  end
  else
    Result := not cdsProduto.IsEmpty;
end;

end.

