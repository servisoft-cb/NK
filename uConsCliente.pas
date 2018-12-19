unit uConsCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, RxLookup, StdCtrls, ExtCtrls,
  Buttons, Db, DBTables, Grids, DBGrids, RXDBCtrl;

type
  TfConsCliente = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    dsqCliente: TDataSource;
    qCliente: TQuery;
    qClienteCodigo: TIntegerField;
    qClienteEndereco: TStringField;
    qClienteNomeCliente: TStringField;
    qClienteBairro: TStringField;
    qClienteUf: TStringField;
    qClienteCep: TStringField;
    qClienteTelefone: TStringField;
    qClienteTelefone2: TStringField;
    qClienteFax: TStringField;
    qClientePessoa: TStringField;
    qClienteCgcCpf: TStringField;
    qClienteInscrEst: TStringField;
    qClienteContato: TStringField;
    qClienteFantasia: TStringField;
    qClienteNomeVendedor: TStringField;
    qClienteNomeCidade: TStringField;
    StaticText1: TStaticText;
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsCliente: TfConsCliente;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsCliente.Monta_SQL;
begin
  qCliente.Close;
  qCliente.SQL.Clear;
  qCliente.SQL.Add('Select CLI.Codigo, CLI.Endereco, CLI.Nome NomeCliente, CLI.Bairro, ');
  qCliente.SQL.Add('CLI.Uf, CLI.Cep, CLI.Telefone, CLI.Telefone2, CLI.Fax, CLI.Pessoa,  ');
  qCliente.SQL.Add('CLI.CgcCpf, CLI.InscrEst, CLI.Contato, CLI.Fantasia, dbVendedor.Nome NomeVendedor, dbCidade.Nome NomeCidade');
  qCliente.SQL.Add('FROM "dbCliente.DB" CLI');
  qCliente.SQL.Add('LEFT JOIN "DBCIDADE.DB" Dbcidade ON (CLI.CodCidade = Dbcidade.Codigo)');
  qCliente.SQL.Add('LEFT JOIN "dbVendedor.DB" Dbvendedor ON (CLI.CodVendedor = Dbvendedor.Codigo)');
  qCliente.SQL.Add('WHERE (0=0)');
  if Edit1.Text <> '' then
    qCliente.SQL.Add(' AND ((CLI.Nome LIKE  + ''%' + Edit1.Text + '%'') OR (CLI.Fantasia LIKE + ''%' + Edit1.Text + '%''))');
  if Edit2.Text <> '' then
    qCliente.SQL.Add('  AND (CLI.Endereco LIKE ''%' + Edit2.Text + '%'')');
  if Edit3.Text <> '' then
    qCliente.SQL.Add('  AND (CLI.Bairro LIKE ''%' + Edit3.Text + '%'')');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qCliente.SQL.Add('  AND (CLI.CodCidade = :CodCidade)');
      qCliente.ParamByName('CodCidade').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qCliente.SQL.Add('  AND (CLI.CodVendedor = :CodVendedor)');
      qCliente.ParamByName('CodVendedor').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qCliente.SQL.Add('ORDER BY CLI.Nome');
  qCliente.Open;
end;

procedure TfConsCliente.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfConsCliente.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfConsCliente.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfConsCliente.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfConsCliente.RxDBGrid1DblClick(Sender: TObject);
begin
  if qClienteCodigo.AsInteger > 0 then
    DM1.tCliente.Locate('Codigo',qClienteCodigo.AsInteger,[loCaseInsensitive]);
  Close;
end;

procedure TfConsCliente.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
