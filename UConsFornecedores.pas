unit UConsFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, RXDBCtrl, RxLookup, Db, DBTables,
  Buttons;

type
  TfConsFornecedores = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    RxDBGrid1: TRxDBGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qFornecedores: TQuery;
    dsqFornecedores: TDataSource;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    StaticText1: TStaticText;
    BitBtn2: TBitBtn;
    qFornecedoresCodForn: TIntegerField;
    qFornecedoresNomeForn: TStringField;
    qFornecedoresEndForn: TStringField;
    qFornecedoresBairroForn: TStringField;
    qFornecedoresCEPForn: TStringField;
    qFornecedoresEstadoForn: TStringField;
    qFornecedoresContatoForn: TStringField;
    qFornecedoresCGC: TStringField;
    qFornecedoresTel1Forn: TStringField;
    qFornecedoresFaxForn: TStringField;
    qFornecedoresTel2Forn: TStringField;
    qFornecedoresInsc: TStringField;
    qFornecedoresEmail: TStringField;
    qFornecedoresNome: TStringField;
    qFornecedoresFornecedorOutros: TStringField;
    qFornecedoresFantasia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Consulta(Tipo : Integer); //0 Pelo nome  1= Pela cidade ou estado
  public
    { Public declarations }
  end;

var
  fConsFornecedores: TfConsFornecedores;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsFornecedores.Consulta(Tipo : Integer);
begin
  qFornecedores.Close;
  qFornecedores.SQL.Clear;
  qFornecedores.SQL.Add('SELECT Dbfornecedores.CodForn, Dbfornecedores.NomeForn, Dbfornecedores.EndForn, Dbfornecedores.BairroForn, Dbfornecedores.CEPForn,');
  qFornecedores.SQL.Add('  Dbfornecedores.EstadoForn, Dbfornecedores.ContatoForn, Dbfornecedores.CGC, Dbfornecedores.Tel1Forn, Dbfornecedores.FaxForn,');
  qFornecedores.SQL.Add(' Dbfornecedores.Tel2Forn, Dbfornecedores.Insc, Dbfornecedores.Email, Dbcidade.Nome, Dbfornecedores.FornecedorOutros, Dbfornecedores.Fantasia');
  qFornecedores.SQL.Add('FROM "dbFornecedores.DB" Dbfornecedores');
  qFornecedores.SQL.Add('   LEFT OUTER JOIN "DBCIDADE.DB" Dbcidade');
  qFornecedores.SQL.Add('   ON  (Dbfornecedores.CodCidade = Dbcidade.Codigo)');
  if (Edit1.Text <> '') and (Tipo = 0) then
    begin
      qFornecedores.SQL.Add('WHERE (Dbfornecedores.NomeForn LIKE ''%' + Edit1.Text + '%'')');
      qFornecedores.SQL.Add(' OR (Dbfornecedores.Fantasia LIKE ''%' + Edit1.Text + '%'')');
    end;
  if Tipo = 1 then
    begin
      if RxDBLookupCombo1.Text <> '' then
        begin
          qFornecedores.SQL.Add('WHERE (dbfornecedores.CodCidade = :CodCidade)');
          qFornecedores.ParamByName('CodCidade').AsInteger := RxDBLookupCombo1.KeyValue;
        end;
      if RxDBLookupCombo2.Text <> '' then
        begin
          if RxDBLookupCombo1.Text = '' then
            qFornecedores.SQL.Add('WHERE (dbfornecedores.EstadoForn = :Estado)')
          else
            qFornecedores.SQL.Add('AND (dbfornecedores.EstadoForn = :Estado)');
          qFornecedores.ParamByName('Estado').AsString := RxDBLookupCombo2.Value;
        end;
    end;
  qFornecedores.SQL.Add('ORDER BY dbfornecedores.NomeForn');
  qFornecedores.Open;
end;

procedure TfConsFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qFornecedores.Close;
  Action := Cafree;
end;

procedure TfConsFornecedores.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Consulta(0);
end;

procedure TfConsFornecedores.BitBtn1Click(Sender: TObject);
begin
  Consulta(1);
end;

procedure TfConsFornecedores.RxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if qFornecedoresCodForn.AsInteger > 0 then
        DM1.tFornecedores.Locate('CodForn',qFornecedoresCodForn.AsInteger,[loCaseInsensitive]);
      Close;
    end;
end;

procedure TfConsFornecedores.RxDBGrid1DblClick(Sender: TObject);
begin
  if qFornecedoresCodForn.AsInteger > 0 then
    DM1.tFornecedores.Locate('CodForn',qFornecedoresCodForn.AsInteger,[loCaseInsensitive]);
  Close;
end;

procedure TfConsFornecedores.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsFornecedores.RxDBLookupCombo1Enter(Sender: TObject);
begin
  dm1.tCidade.IndexFieldNames := 'Nome';
end;

end.
