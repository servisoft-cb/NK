unit UPrevHorasFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RxLookup, DB, DBTables, DBClient,
  Buttons, Grids, DBGrids, RXDBCtrl, ExtCtrls, ComCtrls;

type
  TfPrevHorasFuncionarios = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qTalaoHor: TQuery;
    qTalaoHorNomeFuncionario: TStringField;
    qTalaoHorNomeSetor: TStringField;
    qTalaoHorCodSetor: TIntegerField;
    qTalaoHorCodFuncionario: TIntegerField;
    qTalaoHorHrEntrada1: TTimeField;
    qTalaoHorHrSaida1: TTimeField;
    qTalaoHorHrEntrada2: TTimeField;
    qTalaoHorHrSaida2: TTimeField;
    qTalaoHorHrEntrada3: TTimeField;
    qTalaoHorHrSaida3: TTimeField;
    qTalaoHorData: TDateField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsmFuncionario: TDataSource;
    RxDBGrid1: TRxDBGrid;
    dsqTalaoHor: TDataSource;
    mFuncionario: TClientDataSet;
    mFuncionarioCodSetor: TIntegerField;
    mFuncionarioCodFuncionario: TIntegerField;
    mFuncionarioNomeSetor: TStringField;
    mFuncionarioNomeFuncionario: TStringField;
    mFuncionarioTotalHoras: TCurrencyField;
    Bevel1: TBevel;
    BitBtn3: TBitBtn;
    StaticText1: TStaticText;
    Label4: TLabel;
    ProgressBar1: TProgressBar;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure mFuncionarioNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Gera_Memo;
  public
    { Public declarations }
  end;

var
  fPrevHorasFuncionarios: TfPrevHorasFuncionarios;

implementation

uses UDM1, URelHorasFuncionarios, UConsHorasFuncionariosDet, rsDBUtils;

{$R *.dfm}

procedure TfPrevHorasFuncionarios.Gera_Memo;
var
  vQtdHoras : Currency;
  vAux : Currency;
  vMinuto1, vMinuto2 : Currency;
begin
  ProgressBar1.Max      := qTalaoHor.RecordCount;
  ProgressBar1.Position := 0;
  mFuncionario.EmptyDataSet;
  qTalaoHor.First;
  while not qTalaoHor.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      vQtdHoras := 0;
      if (qTalaoHorHrEntrada1.AsDateTime > 0) and (qTalaoHorHrSaida1.AsDateTime > 0) then
        vQtdHoras := (qTalaoHorHrSaida1.AsDateTime - qTalaoHorHrEntrada1.AsDateTime) * 24;
      if (qTalaoHorHrEntrada2.AsDateTime > 0) and (qTalaoHorHrSaida2.AsDateTime > 0) then
        vQtdHoras := vQtdHoras + ((qTalaoHorHrSaida2.AsDateTime - qTalaoHorHrEntrada2.AsDateTime) * 24);
      if (qTalaoHorHrEntrada3.AsDateTime > 0) and (qTalaoHorHrSaida3.AsDateTime > 0) then
        vQtdHoras := vQtdHoras + ((qTalaoHorHrSaida3.AsDateTime - qTalaoHorHrEntrada3.AsDateTime) * 24);
      vAux := vQtdHoras - Int(vQtdHoras);
      vAux := (vAux * 60) / 100;
      vQtdHoras := Int(vQtdHoras) + vAux;
      if mFuncionario.Locate('CodSetor;CodFuncionario',VarArrayOf([qTalaoHorCodSetor.AsInteger,qTalaoHorCodFuncionario.AsInteger]),[locaseinsensitive]) then
        mFuncionario.Edit
      else
        begin
          mFuncionario.Insert;
          mFuncionarioCodSetor.AsInteger       := qTalaoHorCodSetor.AsInteger;
          mFuncionarioCodFuncionario.AsInteger := qTalaoHorCodFuncionario.AsInteger;
          mFuncionarioNomeSetor.AsString       := qTalaoHorNomeSetor.AsString;
          mFuncionarioNomeFuncionario.AsString := qTalaoHorNomeFuncionario.AsString;
        end;
      //Bloco incluido dia 30/03/2007
      vMinuto1 := StrToFloat(FormatFloat('0.00',(vQtdHoras - Int(vQtdHoras)) * 100));
      vMinuto2 := StrToFloat(FormatFloat('0.00',(mFuncionarioTotalHoras.AsFloat - Int(mFuncionarioTotalHoras.AsFloat)) * 100));
      vAux     := vMinuto1 + vMinuto2;
      while vAux >= 60 do
        begin
          vAux := vAux - 60;
          vQtdHoras := Int(vQtdHoras) + 1;
        end;
      if vAux > 0 then
        vAux := vAux / 100;
      mFuncionarioTotalHoras.AsFloat   := StrToFloat(FormatFloat('0.00',Int(mFuncionarioTotalHoras.AsFloat) + Int(vQtdHoras) + vAux));
      //*************************
      //mFuncionarioTotalHoras.AsFloat := mFuncionarioTotalHoras.AsFloat + vQtdHoras;
      mFuncionario.Post;
      qTalaoHor.Next;
    end;

  {mFuncionario.EmptyDataSet;
  qTalaoHor.First;
  while not qTalaoHor.Eof do
    begin
      vQtdHoras := 0;
      if (qTalaoHorHrEntrada1.AsDateTime > 0) and (qTalaoHorHrSaida1.AsDateTime > 0) then
        //vQtdHoras := FormatDateTime('HH:MM',(qTalaoHorHrSaida1.AsDateTime - qTalaoHorHrEntrada1.AsDateTime));
        vQtdHoras := StrToTime(FormatDateTime('HH:MM',(qTalaoHorHrSaida1.AsDateTime - qTalaoHorHrEntrada1.AsDateTime)));
      if (qTalaoHorHrEntrada2.AsDateTime > 0) and (qTalaoHorHrSaida2.AsDateTime > 0) then
        vQtdHoras := vQtdHoras + (qTalaoHorHrSaida2.AsDateTime - qTalaoHorHrEntrada2.AsDateTime);
      if (qTalaoHorHrEntrada3.AsDateTime > 0) and (qTalaoHorHrSaida3.AsDateTime > 0) then
        vQtdHoras := vQtdHoras + (qTalaoHorHrSaida3.AsDateTime - qTalaoHorHrEntrada3.AsDateTime);
      if mFuncionario.Locate('CodSetor;CodFuncionario',VarArrayOf([qTalaoHorCodSetor.AsInteger,qTalaoHorCodFuncionario.AsInteger]),[locaseinsensitive]) then
        mFuncionario.Edit
      else
        begin
          mFuncionario.Insert;
          mFuncionarioCodSetor.AsInteger       := qTalaoHorCodSetor.AsInteger;
          mFuncionarioCodFuncionario.AsInteger := qTalaoHorCodFuncionario.AsInteger;
          mFuncionarioNomeSetor.AsString       := qTalaoHorNomeSetor.AsString;
          mFuncionarioNomeFuncionario.AsString := qTalaoHorNomeFuncionario.AsString;
        end;
      mFuncionarioTotalHoras.AsFloat := mFuncionarioTotalHoras.AsFloat + vQtdHoras;
      mFuncionario.Post;
      qTalaoHor.Next;
    end;}

end;

procedure TfPrevHorasFuncionarios.Monta_SQL;
begin
  qTalaoHor.Close;
  qTalaoHor.SQL.Clear;
  qTalaoHor.SQL.Add('SELECT Dbfuncionario.Nome NomeFuncionario, Dbsetor.Nome NomeSetor, Dbtalaohor.CodSetor, Dbtalaohor.CodFuncionario, Dbtalaohor.HrEntrada1, Dbtalaohor.HrSaida1,');
  qTalaoHor.SQL.Add(' Dbtalaohor.HrEntrada2, Dbtalaohor.HrSaida2, Dbtalaohor.HrEntrada3, Dbtalaohor.HrSaida3, Dbtalaohor.Data');
  qTalaoHor.SQL.Add('FROM "dbTalaoHor.DB" Dbtalaohor');
  qTalaoHor.SQL.Add('   INNER JOIN "dbFuncionario.DB" Dbfuncionario');
  qTalaoHor.SQL.Add('   ON  (Dbtalaohor.CodFuncionario = Dbfuncionario.Codigo)');
  qTalaoHor.SQL.Add('   INNER JOIN "dbSetor.DB" Dbsetor');
  qTalaoHor.SQL.Add('   ON  (Dbtalaohor.CodSetor = Dbsetor.Codigo)');
  qTalaoHor.SQL.Add('WHERE  (Dbtalaohor.Data BETWEEN :Data1 AND :Data2)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qTalaoHor.SQL.Add(' AND (Dbtalaohor.CodSetor = :CodSetor)');
      qTalaoHor.ParamByName('CodSetor').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qTalaoHor.SQL.Add(' AND (Dbtalaohor.CodFuncionario = :CodFuncionario)');
      qTalaoHor.ParamByName('CodFuncionario').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qTalaoHor.ParamByName('Data1').AsDate := DateEdit1.Date;
  qTalaoHor.ParamByName('Data2').AsDate := DateEdit2.Date;
  qTalaoHor.SQL.Add('ORDER BY NomeSetor, NomeFuncionario, Dbtalaohor.Data');
  qTalaoHor.Open;

end;

procedure TfPrevHorasFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  qTalaoHor.Close;
  Action := Cafree;
end;

procedure TfPrevHorasFuncionarios.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      RxDBGrid1.DataSource := nil;
      Monta_SQL;
      Gera_Memo;
      RxDBGrid1.DataSource := dsmFuncionario;
      BitBtn2.Enabled := True;
    end
  else
    begin
      ShowMessage('Falta informar a data!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevHorasFuncionarios.mFuncionarioNewRecord(DataSet: TDataSet);
begin
  mFuncionarioTotalHoras.AsFloat := 0;
end;

procedure TfPrevHorasFuncionarios.BitBtn2Click(Sender: TObject);
begin
  if mFuncionario.RecordCount > 0 then
    begin
      fRelHorasFuncionarios := TfRelHorasFuncionarios.Create(Self);
      fRelHorasFuncionarios.QuickRep1.Preview;
      fRelHorasFuncionarios.Free;
    end
  else
    ShowMessage('Não existe registro para a impressão!');
end;

procedure TfPrevHorasFuncionarios.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevHorasFuncionarios.RxDBGrid1DblClick(Sender: TObject);
begin
  if (mFuncionario.RecordCount > 0) and (mFuncionarioCodFuncionario.AsInteger > 0) then
  begin
    fConsHorasFuncionariosDet := TfConsHorasFuncionariosDet.Create(Self);
    fConsHorasFuncionariosDet.ShowModal;
  end;
end;

procedure TfPrevHorasFuncionarios.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfPrevHorasFuncionarios.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
