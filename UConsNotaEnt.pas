unit UConsNotaEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, CurrEdit, Mask, ToolEdit, RXLookup, Grids,
  DBGrids, DB, DBTables, SMDBGrid,Variants;

type
  TfConsNotaEnt = class(TForm)
    qConsNota: TQuery;
    dsqConsNota: TDataSource;
    qConsNotaCodForn: TIntegerField;
    qConsNotaNumNEntr: TIntegerField;
    qConsNotaSerie: TStringField;
    qConsNotaDtEntrada: TDateField;
    qConsNotaDtEmissaoNEntr: TDateField;
    qConsNotaVlrTotalNEntr: TFloatField;
    qConsNotaNomeForn: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    DateEdit2: TDateEdit;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure qConsNotaAfterScroll(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    qSQLConsNota : String;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  fConsNotaEnt: TfConsNotaEnt;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsNotaEnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfConsNotaEnt.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaEnt.qConsNotaAfterScroll(DataSet: TDataSet);
begin
  DM1.tNEntrada.Locate('CodForn;NumNEntr;Serie',VarArrayOf([qConsNotaCodForn.AsInteger,qConsNotaNumNEntr.AsInteger,qConsNotaSerie.AsString]),[locaseinsensitive]);
end;

procedure TfConsNotaEnt.BitBtn3Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfConsNotaEnt.prc_Consultar;
begin
  qConsNota.Close;
  qConsNota.SQL.Clear;
  qConsNota.SQL.Text := qSQLConsNota + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
  begin
    qConsNota.SQL.Text := qConsNota.SQL.Text + ' AND CodForn = :CodForn ';
    qConsNota.ParamByName('CodForn').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if DateEdit1.Date > 10 then
  begin
    qConsNota.SQL.Text := qConsNota.SQL.Text + ' N.DtEntrada >= :DtEntrada1 ';
    qConsNota.ParamByName('DtEntrada1').AsDate := DateEdit1.Date;
  end;
  if DateEdit2.Date > 10 then
  begin
    qConsNota.SQL.Text := qConsNota.SQL.Text + ' N.DtEntrada <= :DtEntrada2 ';
    qConsNota.ParamByName('DtEntrada2').AsDate := DateEdit2.Date;
  end;
  if CurrencyEdit1.AsInteger > 0 then
  begin
    qConsNota.SQL.Text := qConsNota.SQL.Text + ' N.NumNEntr = :NumNEntr ';
    qConsNota.ParamByName('NumNEntr').AsInteger := CurrencyEdit1.AsInteger;
  end;
  qConsNota.Open;
end;

procedure TfConsNotaEnt.FormShow(Sender: TObject);
begin
  qSQLConsNota := qConsNota.SQL.Text;
end;

procedure TfConsNotaEnt.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

end.
