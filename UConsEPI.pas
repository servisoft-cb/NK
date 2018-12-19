unit UConsEPI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBClient, Grids, DBGrids, SMDBGrid,
  Buttons, ComCtrls;

type
  TfConsEPI = class(TForm)
    qEPI: TQuery;
    mEPI: TClientDataSet;
    mEPICodFuncionario: TIntegerField;
    mEPINomeFuncionario: TStringField;
    mEPICodEPI: TIntegerField;
    mEPINomeEPI: TStringField;
    mEPIDataRecto: TDateField;
    mEPIQtdRecebido: TIntegerField;
    mEPIDataProxima: TDateField;
    dsmEPI: TDataSource;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    qEPICodEpi: TIntegerField;
    qEPINomeEpi: TStringField;
    qEPICodFuncionario: TIntegerField;
    qEPINomeFuncionario: TStringField;
    qEPIData: TDateField;
    qEPIQtd: TIntegerField;
    qEPIQtdMes: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Gera_Auxiliar;
  public
    { Public declarations }
  end;

var
  fConsEPI: TfConsEPI;

implementation

uses Math;

{$R *.dfm}

procedure TfConsEPI.Gera_Auxiliar;
var
  ano,mes,dia : Word;
begin
  mEPI.EmptyDataSet;
  qEPI.First;
  ProgressBar1.Max := qEpi.RecordCount;
  while not qEPI.Eof do
    begin
      DecodeDate(qEPIData.AsDateTime,ano,mes,dia);
      if mEPI.Locate('CodFuncionario;CodEPI',VarArrayOf([qEPICodFuncionario.AsInteger,qEPICodEpi.AsInteger]),[locaseinsensitive]) then
        mEPI.Edit
      else
        begin
          mEPI.Insert;
          mEPICodFuncionario.AsInteger := qEPICodFuncionario.AsInteger;
          mEPICodEPI.AsInteger         := qEPICodEpi.AsInteger;
          mEPINomeEPI.AsString         := qEPINomeEpi.AsString;
          mEPINomeFuncionario.AsString := qEPINomeFuncionario.AsString;
        end;
      mEPIDataRecto.AsDateTime   := qEPIData.AsDateTime;
      mEPIQtdRecebido.AsInteger  := qEPIQtd.AsInteger;
      mEPIDataProxima.AsDateTime := qEPIData.AsDateTime;
      mEPIDataProxima.AsDateTime := IncMonth(mEPIDataProxima.AsDateTime,qEPIQtdMes.AsInteger);
      mEPI.Post;
      qEPI.Next;
    end;
end;

procedure TfConsEPI.Monta_SQL;
begin
  qEPI.Close;
  qEPI.SQL.Clear;
  qEPI.SQL.Add('SELECT Dbfuncionarioepi.CodEpi, Dbequipepi.Nome NomeEpi, Dbfuncionario.Codigo CodFuncionario, Dbfuncionario.Nome NomeFuncionario, Dbfuncionarioepi.Data, Dbfuncionarioepi.Qtd, Dbequipepi.QtdMes');
  qEPI.SQL.Add('FROM "dbFuncionario.DB" Dbfuncionario');
  qEPI.SQL.Add('   INNER JOIN "dbFuncionarioEPI.db" Dbfuncionarioepi');
  qEPI.SQL.Add('   ON  (Dbfuncionario.Codigo = Dbfuncionarioepi.CodFuncionario)');
  qEPI.SQL.Add('   INNER JOIN "dbEquipEPI.db" Dbequipepi');
  qEPI.SQL.Add('   ON  (Dbfuncionarioepi.CodEpi = Dbequipepi.Codigo)');
  qEPI.SQL.Add('WHERE  Dbfuncionario.DtDemissao IS NULL');
  qEPI.Open;
end;

procedure TfConsEPI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qEPI.Close;
  Action := Cafree;
end;

procedure TfConsEPI.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsEPI.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
  Gera_Auxiliar;
end;

procedure TfConsEPI.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mEPIDataProxima.AsDateTime <= Date then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end
end;

end.
