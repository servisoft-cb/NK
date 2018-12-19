unit uConsFuncionarioTalao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Grids, DBGrids, StdCtrls, Mask,
  Buttons, ExtCtrls, RxLookup, RXDBCtrl, ToolEdit, DBClient, Provider;

type
  TfConsFuncionarioTalao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    qConsulta: TSQLQuery;
    RxDBGrid1: TRxDBGrid;
    RxDBLookupFuncionario: TRxDBLookupCombo;
    RxDBLookupProduto: TRxDBLookupCombo;
    RxDBLookupSetor: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    qConsultaCODSETOR: TIntegerField;
    qConsultaNOME: TStringField;
    qConsultaDTENTRADA: TDateField;
    qConsultaHRENTRADA: TTimeField;
    qConsultaDTSAIDA: TDateField;
    qConsultaHRSAIDA: TTimeField;
    qConsultaTEMPOTOTAL: TFMTBCDField;
    qConsultaCODPRODUTO: TIntegerField;
    qConsultaNOME_1: TStringField;
    qConsultaREFERENCIA: TStringField;
    qConsultaFUNCIONARIO: TStringField;
    qConsultaCODFUNCIONARIO: TIntegerField;
    cdsConsultaCODSETOR: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaDTENTRADA: TDateField;
    cdsConsultaHRENTRADA: TTimeField;
    cdsConsultaDTSAIDA: TDateField;
    cdsConsultaHRSAIDA: TTimeField;
    cdsConsultaTEMPOTOTAL: TFMTBCDField;
    cdsConsultaCODPRODUTO: TIntegerField;
    cdsConsultaNOME_1: TStringField;
    cdsConsultaREFERENCIA: TStringField;
    cdsConsultaFUNCIONARIO: TStringField;
    cdsConsultaCODFUNCIONARIO: TIntegerField;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupFuncionarioEnter(Sender: TObject);
    procedure RxDBLookupFuncionarioExit(Sender: TObject);
    procedure RxDBLookupProdutoEnter(Sender: TObject);
    procedure RxDBLookupProdutoExit(Sender: TObject);
    procedure RxDBLookupSetorEnter(Sender: TObject);
    procedure RxDBLookupSetorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsFuncionarioTalao: TfConsFuncionarioTalao;

implementation

uses UDM1;

{$R *.dfm}



procedure TfConsFuncionarioTalao.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsFuncionarioTalao.BitBtn1Click(Sender: TObject);
begin
  cdsConsulta.Close;
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add(' select TALAOMOV.CODSETOR, SETOR.NOME, TALAOMOV.DTENTRADA, TALAOMOV.HRENTRADA, ');
  qConsulta.SQL.Add(' TALAOMOV.DTSAIDA, TALAOMOV.HRSAIDA, ((TALAOMOV.HRSAIDA-TALAOMOV.HRENTRADA) / 60) AS TEMPOTOTAL, ');
  qConsulta.SQL.Add(' TALAO.CODPRODUTO, PRODUTO.NOME, PRODUTO.REFERENCIA, FUNCIONARIO.NOME AS FUNCIONARIO,  TALAOMOV.CODFUNCIONARIO ');
  qConsulta.SQL.Add(' FROM TALAOMOV ');
  qConsulta.SQL.Add(' INNER JOIN SETOR ON (TALAOMOV.CODSETOR = SETOR.CODIGO) ');
  qConsulta.SQL.Add(' INNER JOIN TALAO ON (TALAOMOV.TALAO = TALAO.TALAO) ');
  qConsulta.SQL.Add(' INNER JOIN PRODUTO ON (TALAO.CODPRODUTO = PRODUTO.CODIGO) ');
  qConsulta.SQL.Add(' INNER JOIN FUNCIONARIO ON (TALAOMOV.CODFUNCIONARIO = FUNCIONARIO.CODIGO) ');
  qConsulta.SQL.Add(' WHERE 0 = 0 ');
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    qConsulta.SQL.Add(' AND TALAOMOV.DTENTRADA BETWEEN ' + QuotedStr(Copy(DateEdit1.Text,4,2)+'/'+Copy(DateEdit1.Text,1,2)+'/'+Copy(DateEdit1.Text,7,4))
    + ' AND ' + QuotedStr(Copy(DateEdit2.Text,4,2)+'/'+Copy(DateEdit2.Text,1,2)+'/'+Copy(DateEdit2.Text,7,4)));
  if RxDBLookupFuncionario.KeyValue > 0 then
    qConsulta.SQL.Add(' AND TALAOMOV.CODFUNCIONARIO = ' + RxDBLookupFuncionario.KeyValue);
  if RxDBLookupProduto.KeyValue > 0 then
    qConsulta.SQL.Add(' AND TALAO.CODPRODUTO = ' + RxDBLookupProduto.KeyValue);
  if RxDBLookupSetor.KeyValue > 0 then
    qConsulta.SQL.Add(' AND TALAOMOV.CODSETOR = ' + RxDBLookupSetor.KeyValue);
  qConsulta.SQL.Add(' ORDER BY TALAOMOV.DTENTRADA, FUNCIONARIO.NOME');
  cdsConsulta.Open;
end;

procedure TfConsFuncionarioTalao.RxDBLookupFuncionarioEnter(
  Sender: TObject);
begin
  Dm1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfConsFuncionarioTalao.RxDBLookupFuncionarioExit(
  Sender: TObject);
begin
  Dm1.tFuncionario.IndexFieldNames := 'Codigo';
end;

procedure TfConsFuncionarioTalao.RxDBLookupProdutoEnter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfConsFuncionarioTalao.RxDBLookupProdutoExit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
end;

procedure TfConsFuncionarioTalao.RxDBLookupSetorEnter(Sender: TObject);
begin
  DM1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfConsFuncionarioTalao.RxDBLookupSetorExit(Sender: TObject);
begin
  DM1.tSetor.IndexFieldNames := 'Codigo';
end;

end.
