unit UConsTalaoSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, ExtCtrls, Grids, DBGrids,
  SMDBGrid, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfConsTalaoSetor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    RxDBLookupSetor: TRxDBLookupCombo;
    RxDBLookupProduto: TRxDBLookupCombo;
    RxDBLookupFuncionario: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    qConsulta: TSQLQuery;
    edTalao: TEdit;
    cdsConsultaCODSETOR: TIntegerField;
    cdsConsultaNOMESETOR: TStringField;
    cdsConsultaTALAO: TIntegerField;
    cdsConsultaQTDENTRADA: TIntegerField;
    cdsConsultaQTDPRODUZIDO: TIntegerField;
    cdsConsultaQTDQUEBRA: TIntegerField;
    cdsConsultaREFERENCIA: TStringField;
    cdsConsultaNOMEFUNCIONARIO: TStringField;
    cdsConsultaDTENTRADA: TDateField;
    cdsConsultaHRENTRADA: TTimeField;
    cdsConsultaDTSAIDA: TDateField;
    cdsConsultaHRSAIDA: TTimeField;
    cdsConsultaTOTALHORAS: TFloatField;
    Label9: TLabel;
    ComboBox1: TComboBox;
    Label10: TLabel;
    edTalao2: TEdit;
    ComboBox2: TComboBox;
    Label11: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupSetorEnter(Sender: TObject);
    procedure RxDBLookupSetorExit(Sender: TObject);
    procedure RxDBLookupProdutoEnter(Sender: TObject);
    procedure RxDBLookupProdutoExit(Sender: TObject);
    procedure RxDBLookupFuncionarioEnter(Sender: TObject);
    procedure RxDBLookupFuncionarioExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsTalaoSetor: TfConsTalaoSetor;

implementation

uses DmdDatabase, UDM1;

{$R *.dfm}

procedure TfConsTalaoSetor.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsTalaoSetor.BitBtn1Click(Sender: TObject);
begin
  cdsConsulta.Close;
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(' SELECT TALAOSETOR.CODSETOR, SETOR.NOME AS NOMESETOR, TALAOSETOR.TALAO, TALAOMOV.QTDENTRADA, ');
  qConsulta.SQL.Add(' TALAOMOV.QTDPRODUZIDO, TALAOMOV.QTDQUEBRA, PRODUTO.CODIGO, PRODUTO.REFERENCIA, FUNCIONARIO.CODIGO, FUNCIONARIO.NOME AS NOMEFUNCIONARIO, ');
  qConsulta.SQL.Add(' TALAOMOV.DTENTRADA, TALAOMOV.HRENTRADA, TALAOMOV.DTSAIDA,  TALAOMOV.HRSAIDA, TALAOMOV.TOTALHORAS ');
  qConsulta.SQL.Add(' FROM TALAO ');
  qConsulta.SQL.Add(' INNER JOIN TALAOSETOR ON TALAOSETOR.TALAO = TALAO.TALAO ');
  qConsulta.SQL.Add(' INNER JOIN SETOR ON (TALAOSETOR.CODSETOR = SETOR.CODIGO) ');
  qConsulta.SQL.Add(' LEFT JOIN TALAOMOV ');
  qConsulta.SQL.Add('   ON (TALAOSETOR.TALAO = TALAOMOV.TALAO) ');
  qConsulta.SQL.Add('   AND (TALAOSETOR.CODSETOR = TALAOMOV.CODSETOR) ');
  qConsulta.SQL.Add(' LEFT JOIN PRODUTO ON (TALAOMOV.CODPRODUTO = PRODUTO.CODIGO) ');
  qConsulta.SQL.Add(' LEFT JOIN FUNCIONARIO ON (TALAOMOV.CODFUNCIONARIO = FUNCIONARIO.CODIGO) WHERE 1=1');
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
  begin
    qConsulta.SQL.Add('AND TALAOMOV.DTENTRADA BETWEEN :D1 AND :D2');
    qConsulta.ParamByName('D1').AsDate := DateEdit1.Date;
    qConsulta.ParamByName('D2').AsDate := DateEdit2.Date;
  end;
  if (DateEdit3.Date > 10) and (DateEdit4.Date > 10) then
  begin
    qConsulta.SQL.Add('AND TALAOMOV.DTSAIDA BETWEEN :D3 AND :D4');
    qConsulta.ParamByName('D3').AsDate := DateEdit3.Date;
    qConsulta.ParamByName('D4').AsDate := DateEdit4.Date;
  end;
  if RxDBLookupSetor.Text <> '' then
    qConsulta.SQL.Add('AND TALAOSETOR.CODSETOR = ' + RxDBLookupSetor.KeyValue);
  if RxDBLookupProduto.Text <> '' then
    qConsulta.SQL.Add('AND PRODUTO.CODIGO = ' + RxDBLookupSetor.KeyValue);
  if RxDBLookupFuncionario.Text <> '' then
    qConsulta.SQL.Add('AND FUNCIONARIO.CODIGO = ' + RxDBLookupFuncionario.KeyValue);
  if (edTalao.Text <> '') and (edTalao2.Text <> '') then
    qConsulta.SQL.Add('AND TALAOSETOR.TALAO BETWEEN ' + edTalao.Text + ' AND ' + edTalao2.Text)
  else
  if (edTalao.Text <> '') then
    qConsulta.SQL.Add('AND TALAOSETOR.TALAO >= ' + edTalao.Text)
  else
  if (edTalao2.Text <> '') then
    qConsulta.SQL.Add('AND TALAOSETOR.TALAO <= ' + edTalao2.Text);
  case ComboBox1.ItemIndex of
    0 : qConsulta.SQL.Add(' AND TALAOMOV.CODPARADA > 0 ');
    1 : qConsulta.SQL.Add(' AND (((TALAOMOV.CODPARADA = 0) OR (TALAOMOV.CODPARADA IS NULL)) AND TALAOMOV.DTSAIDA IS NOT NULL) ');
    2 : qConsulta.SQL.Add(' AND (TALAOMOV.DTENTRADA IS NULL) AND (TALAO.PROCESSO  <> ''E'')');
    3 : qConsulta.SQL.Add(' AND (TALAOMOV.DTENTRADA IS NOT NULL) AND (TALAOMOV.DTSAIDA IS NULL)');
    4 : qConsulta.SQL.Add(' AND (((TALAO.PROCESSO = ''E'') AND (TALAOMOV.DTENTRADA IS NOT NULL)) OR (TALAO.PROCESSO <> ''E''))');
  end;
  case combobox2.ItemIndex of
    0 : qConsulta.SQL.Add(' ORDER BY SETOR.NOME, TALAOMOV.DTENTRADA, TALAOMOV.DTSAIDA');
    1 : qConsulta.SQL.Add(' ORDER BY TALAO.TALAO, TALAOMOV.DTENTRADA, TALAOMOV.DTSAIDA');
    2 : qConsulta.SQL.Add(' ORDER BY TALAOMOV.DTENTRADA, TALAOMOV.DTSAIDA, TALAO.TALAO');
    3 : qConsulta.SQL.Add(' ORDER BY TALAOMOV.DTSAIDA, TALAOMOV.DTENTRADA, TALAO.TALAO');
  end;
  cdsConsulta.Open;
end;

procedure TfConsTalaoSetor.RxDBLookupSetorEnter(Sender: TObject);
begin
  Dm1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfConsTalaoSetor.RxDBLookupSetorExit(Sender: TObject);
begin
  Dm1.tSetor.IndexFieldNames := 'Codigo';
end;

procedure TfConsTalaoSetor.RxDBLookupProdutoEnter(Sender: TObject);
begin
  Dm1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsTalaoSetor.RxDBLookupProdutoExit(Sender: TObject);
begin
  Dm1.tProduto.IndexFieldNames := 'Codigo';
end;

procedure TfConsTalaoSetor.RxDBLookupFuncionarioEnter(Sender: TObject);
begin
  Dm1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfConsTalaoSetor.RxDBLookupFuncionarioExit(Sender: TObject);
begin
  Dm1.tFuncionario.IndexFieldNames := 'Codigo';
end;

procedure TfConsTalaoSetor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsTalaoSetor.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;
end;

end.
