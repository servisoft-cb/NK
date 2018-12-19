unit UPrevFichaFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons, Grids, DBGrids,
  RzDBGrid, DB, DBTables, RzTabs, RxLookup, DBClient;

type
  TfPrevFichaFunc = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qFerias: TQuery;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    RzDBGrid1: TRzDBGrid;
    RzDBGrid2: TRzDBGrid;
    RzDBGrid3: TRzDBGrid;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qSalarios: TQuery;
    dsqFerias: TDataSource;
    dsqSalarios: TDataSource;
    qFaltas: TQuery;
    dsqFaltas: TDataSource;
    mAuxiliar: TClientDataSet;
    mAuxiliarCodigo: TIntegerField;
    dsmAuxiliar: TDataSource;
    qFeriasDtInicial: TDateField;
    qFeriasDtFinal: TDateField;
    qFeriasCodigo: TIntegerField;
    qFeriasNome: TStringField;
    qFeriasEndereco: TStringField;
    qFeriasCodCidade: TIntegerField;
    qFeriasBairro: TStringField;
    qFeriasCep: TStringField;
    qFeriasFone: TStringField;
    qFeriasDtAdmissao: TDateField;
    qFeriasCPF: TStringField;
    qFeriasRG: TStringField;
    qFeriasCTPS: TIntegerField;
    qFeriasSerie: TStringField;
    qFeriasPIS: TStringField;
    qFeriasDtNascimento: TDateField;
    qFeriasHrSemanais: TFloatField;
    qFeriasTipoPgto: TStringField;
    qFeriasVlrSalario: TFloatField;
    qFeriasDtDemissao: TDateField;
    qFeriasHorario1: TStringField;
    qFeriasHorario2: TStringField;
    qFeriasPercInsalubridade: TFloatField;
    qFeriasPercPericulosidade: TFloatField;
    qFeriasUf: TStringField;
    qFeriasObs: TMemoField;
    qFeriasEstCivil: TStringField;
    qFeriasEscolaridade: TStringField;
    qFeriasFuncao: TStringField;
    qFeriasNomeConjuge: TStringField;
    qSalariosData: TDateField;
    qSalariosMotivo: TStringField;
    qSalariosValor: TFloatField;
    qSalariosCodigo: TIntegerField;
    qSalariosNome: TStringField;
    qSalariosEndereco: TStringField;
    qSalariosCodCidade: TIntegerField;
    qSalariosBairro: TStringField;
    qSalariosCep: TStringField;
    qSalariosFone: TStringField;
    qSalariosDtAdmissao: TDateField;
    qSalariosCPF: TStringField;
    qSalariosRG: TStringField;
    qSalariosCTPS: TIntegerField;
    qSalariosSerie: TStringField;
    qSalariosPIS: TStringField;
    qSalariosDtNascimento: TDateField;
    qSalariosHrSemanais: TFloatField;
    qSalariosTipoPgto: TStringField;
    qSalariosVlrSalario: TFloatField;
    qSalariosDtDemissao: TDateField;
    qSalariosHorario1: TStringField;
    qSalariosHorario2: TStringField;
    qSalariosPercInsalubridade: TFloatField;
    qSalariosPercPericulosidade: TFloatField;
    qSalariosUf: TStringField;
    qSalariosObs: TMemoField;
    qSalariosEstCivil: TStringField;
    qSalariosEscolaridade: TStringField;
    qSalariosFuncao: TStringField;
    qSalariosNomeConjuge: TStringField;
    qFaltasData: TDateField;
    qFaltasDescricao: TStringField;
    qFaltasCodigo: TIntegerField;
    qFaltasNome: TStringField;
    qFaltasEndereco: TStringField;
    qFaltasCodCidade: TIntegerField;
    qFaltasBairro: TStringField;
    qFaltasCep: TStringField;
    qFaltasFone: TStringField;
    qFaltasDtAdmissao: TDateField;
    qFaltasCPF: TStringField;
    qFaltasRG: TStringField;
    qFaltasCTPS: TIntegerField;
    qFaltasSerie: TStringField;
    qFaltasPIS: TStringField;
    qFaltasDtNascimento: TDateField;
    qFaltasHrSemanais: TFloatField;
    qFaltasTipoPgto: TStringField;
    qFaltasVlrSalario: TFloatField;
    qFaltasDtDemissao: TDateField;
    qFaltasHorario1: TStringField;
    qFaltasHorario2: TStringField;
    qFaltasPercInsalubridade: TFloatField;
    qFaltasPercPericulosidade: TFloatField;
    qFaltasUf: TStringField;
    qFaltasObs: TMemoField;
    qFaltasEstCivil: TStringField;
    qFaltasEscolaridade: TStringField;
    qFaltasFuncao: TStringField;
    qFaltasNomeConjuge: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fPrevFichaFunc: TfPrevFichaFunc;

implementation

uses UDM1, URelFichaFunc;

{$R *.dfm}

procedure TfPrevFichaFunc.Monta_SQL;
begin
  qFerias.Close;
  qSalarios.Close;
  qFaltas.Close;

  if CheckBox1.Checked then
    begin
      qFerias.SQL.Clear;
      qFerias.SQL.Add('SELECT Dbferias.DtInicial, Dbferias.DtFinal, Dbfuncionario.Codigo, Dbfuncionario.Nome, Dbfuncionario.Endereco, ');
      qFerias.SQL.Add(' Dbfuncionario.CodCidade, Dbfuncionario.Bairro, Dbfuncionario.Cep, Dbfuncionario.Fone, Dbfuncionario.DtAdmissao, ');
      qFerias.SQL.Add(' Dbfuncionario.CPF, Dbfuncionario.RG, Dbfuncionario.CTPS, Dbfuncionario.Serie, Dbfuncionario.PIS, Dbfuncionario.DtNascimento, ');
      qFerias.SQL.Add(' Dbfuncionario.HrSemanais, Dbfuncionario.TipoPgto, Dbfuncionario.VlrSalario, Dbfuncionario.DtDemissao, ');
      qFerias.SQL.Add(' Dbfuncionario.Horario1, Dbfuncionario.Horario2, Dbfuncionario.PercInsalubridade, Dbfuncionario.PercPericulosidade, Dbfuncionario.Uf, ');
      qFerias.SQL.Add(' Dbfuncionario.Obs, Dbfuncionario.EstCivil, Dbfuncionario.Escolaridade, Dbfuncionario.Funcao, Dbfuncionario.NomeConjuge');
      qFerias.SQL.Add('FROM "dbFuncionario.DB" Dbfuncionario');
      qFerias.SQL.Add('   INNER JOIN "dbFerias.DB" Dbferias');
      qFerias.SQL.Add('   ON  (Dbfuncionario.Codigo = Dbferias.CodFuncionario)');
      qFerias.SQL.Add('WHERE   ((Dbferias.DtInicial BETWEEN :DtInicial1 AND :DtInicial2)');
      qFerias.SQL.Add('   OR  (Dbferias.DtFinal BETWEEN :DtFinal1 AND :DtFinal2))');
      if RxDBLookupCombo1.Text <> '' then
        begin
          qFerias.SQL.Add(' AND (dbFuncionario.Codigo = :Codigo)');
          qFerias.ParamByName('Codigo').AsInteger := RxDBLookupCombo1.KeyValue;
        end;
      qFerias.ParamByName('DtInicial1').AsDate := DateEdit1.Date;
      qFerias.ParamByName('DtInicial2').AsDate := DateEdit2.Date;
      qFerias.ParamByName('DtFinal1').AsDate   := DateEdit1.Date;
      qFerias.ParamByName('DtFinal2').AsDate   := DateEdit2.Date;
      qFerias.SQL.Add('ORDER BY Dbfuncionario.Nome, Dbferias.DtInicial');
      qFerias.Open;
    end;

  if CheckBox2.Checked then
    begin
      qSalarios.SQL.Clear;
      qSalarios.SQL.Add('SELECT Dbsalario.Data, Dbsalario.Motivo, Dbsalario.Valor, Dbfuncionario.Codigo, Dbfuncionario.Nome, Dbfuncionario.Endereco, ');
      qSalarios.SQL.Add(' Dbfuncionario.CodCidade, Dbfuncionario.Bairro, Dbfuncionario.Cep, Dbfuncionario.Fone, Dbfuncionario.DtAdmissao, ');
      qSalarios.SQL.Add(' Dbfuncionario.CPF, Dbfuncionario.RG, Dbfuncionario.CTPS, Dbfuncionario.Serie, Dbfuncionario.PIS, Dbfuncionario.DtNascimento, ');
      qSalarios.SQL.Add(' Dbfuncionario.HrSemanais, Dbfuncionario.TipoPgto, Dbfuncionario.VlrSalario, Dbfuncionario.DtDemissao, Dbfuncionario.Horario1, ');
      qSalarios.SQL.Add(' Dbfuncionario.Horario2, Dbfuncionario.PercInsalubridade, Dbfuncionario.PercPericulosidade, Dbfuncionario.Uf, Dbfuncionario.Obs, ');
      qSalarios.SQL.Add(' Dbfuncionario.EstCivil, Dbfuncionario.Escolaridade, Dbfuncionario.Funcao, Dbfuncionario.NomeConjuge');
      qSalarios.SQL.Add('FROM "dbFuncionario.DB" Dbfuncionario');
      qSalarios.SQL.Add('   INNER JOIN "dbSalario.DB" Dbsalario');
      qSalarios.SQL.Add('   ON  (Dbfuncionario.Codigo = Dbsalario.CodFuncionario)');
      qSalarios.SQL.Add('WHERE  (Dbsalario.Data BETWEEN :DtInicial AND :DtFinal)');
      if RxDBLookupCombo1.Text <> '' then
        begin
          qSalarios.SQL.Add(' AND (dbFuncionario.Codigo = :Codigo)');
          qSalarios.ParamByName('Codigo').AsInteger := RxDBLookupCombo1.KeyValue;
        end;
      qSalarios.ParamByName('DtInicial').AsDate := DateEdit1.Date;
      qSalarios.ParamByName('DtFinal').AsDate   := DateEdit2.Date;
      qSalarios.SQL.Add('ORDER BY Dbfuncionario.Nome, Dbsalario.Data');
      qSalarios.Open;
    end;

  if CheckBox3.Checked then
    begin
      qFaltas.SQL.Clear;
      qFaltas.SQL.Add('SELECT Dbfuncfaltas.Data, Dbfuncfaltas.Descricao, Dbfuncionario.Codigo, Dbfuncionario.Nome, Dbfuncionario.Endereco, Dbfuncionario.CodCidade, ');
      qFaltas.SQL.Add(' Dbfuncionario.Bairro, Dbfuncionario.Cep, Dbfuncionario.Fone, Dbfuncionario.DtAdmissao, Dbfuncionario.CPF, Dbfuncionario.RG, Dbfuncionario.CTPS, ');
      qFaltas.SQL.Add(' Dbfuncionario.Serie, Dbfuncionario.PIS, Dbfuncionario.DtNascimento, Dbfuncionario.HrSemanais, Dbfuncionario.TipoPgto, Dbfuncionario.VlrSalario, ');
      qFaltas.SQL.Add(' Dbfuncionario.DtDemissao, Dbfuncionario.Horario1, Dbfuncionario.Horario2, Dbfuncionario.PercInsalubridade, Dbfuncionario.PercPericulosidade, ');
      qFaltas.SQL.Add(' Dbfuncionario.Uf, Dbfuncionario.Obs, Dbfuncionario.EstCivil, Dbfuncionario.Escolaridade, Dbfuncionario.Funcao, Dbfuncionario.NomeConjuge ');
      qFaltas.SQL.Add('FROM "dbFuncionario.DB" Dbfuncionario');
      qFaltas.SQL.Add('   INNER JOIN "dbFuncFaltas.DB" Dbfuncfaltas');
      qFaltas.SQL.Add('   ON  (Dbfuncionario.Codigo = Dbfuncfaltas.CodFuncionario)');
      qFaltas.SQL.Add('WHERE  (Dbfuncfaltas.Data BETWEEN :DtInicial AND :DtFinal)');
      if RxDBLookupCombo1.Text <> '' then
        begin
          qFaltas.SQL.Add(' AND (dbFuncionario.Codigo = :Codigo)');
          qFaltas.ParamByName('Codigo').AsInteger := RxDBLookupCombo1.KeyValue;
        end;
      qFaltas.ParamByName('DtInicial').AsDate := DateEdit1.Date;
      qFaltas.ParamByName('DtFinal').AsDate   := DateEdit2.Date;
      qFaltas.SQL.Add('ORDER BY Dbfuncfaltas.Data');
      qFaltas.Open;
    end;
end;


procedure TfPrevFichaFunc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qFerias.Close;
  qSalarios.Close;
  qFaltas.Close;
  Action := Cafree;
end;

procedure TfPrevFichaFunc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevFichaFunc.BitBtn3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if (DateEdit1.Date < 1) or (DateEdit2.Date < 1) then
    ShowMessage('Falta informar as datas!')
  else
    Monta_SQL;
  Screen.Cursor   := crDefault;
end;

procedure TfPrevFichaFunc.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfPrevFichaFunc.BitBtn1Click(Sender: TObject);
begin
      mAuxiliar.EmptyDataSet;
      mAuxiliar.Insert;
      mAuxiliarCodigo.AsInteger := 1;
      mauxiliar.Post;

      fRelFichaFunc := TfRelFichaFunc.Create(Self);
      fRelFichaFunc.RLReport1.Preview;
      fRelFichaFunc.RLReport1.Free;
end;

end.
