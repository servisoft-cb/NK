unit UBaixaProducaoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, DB, ExtCtrls, DBTables, Grids, DBGrids,
  rsDBUtils, SMDBGrid, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfBaixaProducaoItem = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edCodigo: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    sdsParadas: TSQLDataSet;
    sdsParadasCODIGO: TIntegerField;
    sdsParadasNOME: TStringField;
    dspParadas: TDataSetProvider;
    cdsParadas: TClientDataSet;
    cdsParadasCODIGO: TIntegerField;
    cdsParadasNOME: TStringField;
    dsParadas: TDataSource;
    sdsDefeitos: TSQLDataSet;
    sdsDefeitosCODIGO: TIntegerField;
    sdsDefeitosNOME: TStringField;
    dspDefeitos: TDataSetProvider;
    cdsDefeitos: TClientDataSet;
    cdsDefeitosCODIGO: TIntegerField;
    cdsDefeitosNOME: TStringField;
    dsDefeitos: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCodigoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Verifica_Paradas;
    procedure Verifica_Defeitos;
  public
    { Public declarations }
  end;

var
  fBaixaProducaoItem: TfBaixaProducaoItem;

implementation

uses UDMTalao, UBaixaProducaoPC;

{$R *.dfm}

procedure TfBaixaProducaoItem.Verifica_Defeitos;
begin
  if not cdsDefeitos.Locate('Codigo', StrToInt(edCodigo.Text) , [loCaseInsensitive]) then
    begin
      ShowMessage('Parada não cadastrada!');
      edCodigo.Clear;
      edCodigo.SetFocus;
    end
  else
    Label3.Caption := cdsDefeitosNOME.Value;
end;

procedure TfBaixaProducaoItem.Verifica_Paradas;
begin
  if not cdsParadas.Locate('Codigo', StrToInt(edCodigo.Text) , [loCaseInsensitive]) then
    begin
      ShowMessage('Parada não cadastrada!');
      edCodigo.Clear;
      edCodigo.SetFocus;
    end
  else
    Label3.Caption := cdsParadasNOME.Value;
end;

procedure TfBaixaProducaoItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBaixaProducaoItem.edCodigoExit(Sender: TObject);
begin
  Label3.Caption := '';
  if Trim(edCodigo.Text) = '' then
    exit;

  if Tag = 1 then
    Verifica_Paradas
  else
    Verifica_Defeitos;
end;

procedure TfBaixaProducaoItem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaProducaoItem.BitBtn1Click(Sender: TObject);
begin
  if Trim(edCodigo.Text) = '' then
    begin
      ShowMessage('Faltou informar o motivo!');
      edCodigo.SetFocus;
    end
  else
    begin
      if Tag = 1 then
        fBaixaProducaoPC.vCodParada := StrToInt(edCodigo.Text)
      else
        fBaixaProducaoPC.vCodDefeito := StrToInt(edCodigo.Text);
      Close;
    end;
end;

procedure TfBaixaProducaoItem.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  if Tag = 1 then
  begin
    Label2.Caption    := 'Informar o motivo da PARADA';
    SMDBGrid2.Visible := False;
    cdsParadas.Close;
    cdsParadas.Open;
  end
  else
  if Tag = 2 then
  begin
    Label2.Caption    := 'Informar o motivo da QUEBRA (DEFEITO)';
    SMDBGrid1.Visible := False;
    cdsDefeitos.Close;
    cdsDefeitos.Open;
  end;
end;

end.
