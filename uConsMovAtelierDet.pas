unit uConsMovAtelierDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, DB,
  DBTables, Grids, DBGrids, SMDBGrid;

type
  TfConsMovAtelierDet = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Label9: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qMovimento: TQuery;
    qMovimentoCodCliente: TIntegerField;
    qMovimentoDtEmissao: TDateField;
    qMovimentoVlrTotal: TFloatField;
    qMovimentoNumMov: TIntegerField;
    qMovimentoTalao: TIntegerField;
    qMovimentoCodProduto: TIntegerField;
    qMovimentoCodCor: TIntegerField;
    qMovimentoQtd: TFloatField;
    qMovimentoQtdRestante: TFloatField;
    qMovimentoVlrUnitario: TFloatField;
    qMovimentoVlrTotalItem: TFloatField;
    qMovimentoDtBaixa: TDateField;
    qMovimentoItem: TIntegerField;
    qMovimentoReferencia: TStringField;
    qMovimentoNomeProduto: TStringField;
    qMovimentoNomeCliente: TStringField;
    Label12: TLabel;
    ComboBox2: TComboBox;
    SMDBGrid1: TSMDBGrid;
    dsqMovimento: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsMovAtelierDet: TfConsMovAtelierDet;

implementation

uses UDM1;

{$R *.dfm}

procedure TfConsMovAtelierDet.Monta_SQL;
begin
  qMovimento.Close;
  qMovimento.SQL.Clear;
  qMovimento.SQL.Add('SELECT Dbmovatelier.CodCliente, Dbmovatelier.DtEmissao, Dbmovatelier.VlrTotal, ');
  qMovimento.SQL.Add(' Dbmovatelier.NumMov, Dbmovatelieritens.Talao, Dbmovatelieritens.CodProduto, ');
  qMovimento.SQL.Add(' Dbmovatelieritens.CodCor, Dbmovatelieritens.Qtd, Dbmovatelieritens.QtdRestante, ');
  qMovimento.SQL.Add(' Dbmovatelieritens.VlrUnitario, Dbmovatelieritens.VlrTotal VlrTotalItem, Dbmovatelieritens.DtBaixa, ');
  qMovimento.SQL.Add(' Dbmovatelieritens.Item, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbcliente.Nome NomeCliente ');
  qMovimento.SQL.Add('FROM "dbMovAtelier.DB" Dbmovatelier');
  qMovimento.SQL.Add('   INNER JOIN "dbMovAtelierItens.DB" Dbmovatelieritens');
  qMovimento.SQL.Add('   ON  (Dbmovatelier.NumMov = Dbmovatelieritens.NumMov)');
  qMovimento.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qMovimento.SQL.Add('   ON  (Dbmovatelier.CodCliente = Dbcliente.Codigo)');
  qMovimento.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qMovimento.SQL.Add('   ON  (Dbmovatelieritens.CodProduto = Dbproduto.Codigo)');
  qMovimento.SQL.Add('WHERE (0=0)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelier.CodCliente = :CodCliente)');
      qMovimento.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end
  else
  if Edit2.Text <> '' then
    qMovimento.SQL.Add(' And (dbCliente.Nome LIKE ''%' + Edit2.Text + '%'')');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelierItens.CodProduto = :CodProduto)');
      qMovimento.ParamByName('CodProduto').AsInteger := RxDBLookupCombo2.KeyValue;
    end
  else
    qMovimento.SQL.Add(' And (Dbproduto.Referencia LIKE ''%' + Edit1.Text + '%'')');
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelierItens.Talao >= :TalaoIni)');
      qMovimento.ParamByName('TalaoIni').AsInteger := CurrencyEdit1.AsInteger;
    end;
  if CurrencyEdit2.AsInteger > 0 then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelierItens.Talao <= :TalaoFin)');
      qMovimento.ParamByName('TalaoFin').AsInteger := CurrencyEdit2.AsInteger;
    end;
  if DateEdit1.Date > 0 then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelier.DtEmissao >= :DtEmissaoIni)');
      qMovimento.ParamByName('DtEmissaoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelier.DtEmissao <= :DtEmissaoFin)');
      qMovimento.ParamByName('DtEmissaoFin').AsDate := DateEdit2.Date;
    end;
  if DateEdit3.Date > 0 then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelierItens.DtBaixa >= :DtBaixaIni)');
      qMovimento.ParamByName('DtBaixaIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qMovimento.SQL.Add(' AND (dbMovAtelierItens.DtBaixa <= :DtBaixaFin)');
      qMovimento.ParamByName('DtBaixaFin').AsDate := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qMovimento.SQL.Add(' AND ((dbMovAtelierItens.DtBaixa < 1) or (dbMovAtelierItens.DtBaixa is null))');
    1 : qMovimento.SQL.Add(' AND (dbMovAtelierItens.DtBaixa not is null)');
  end;
  case ComboBox2.ItemIndex of
    0 : qMovimento.SQL.Add('ORDER BY dbMovAtelier.DtEmissao, dbCliente.Nome, dbProduto.Referencia');
    1 : qMovimento.SQL.Add('ORDER BY dbCliente.Nome, dbProduto.Referencia, dbMovAtelier.DtEmissao');
    2 : qMovimento.SQL.Add('ORDER BY dbProduto.Referencia, dbCliente.Nome, dbMovAtelier.DtEmissao');
    3 : qMovimento.SQL.Add('ORDER BY dbMovAtelierItens.DtBaixa, dbProduto.Referencia, dbCliente.Nome, dbMovAtelier.DtEmissao');
    4 : qMovimento.SQL.Add('ORDER BY dbMovAtelierItens.Talao, dbProduto.Referencia, dbCliente.Nome, dbMovAtelier.DtEmissao');
  end;
  qMovimento.Open;
end;

procedure TfConsMovAtelierDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qMovimento.Close;
  Action := Cafree;
end;

procedure TfConsMovAtelierDet.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsMovAtelierDet.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsMovAtelierDet.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    Edit2.Text := RxDBLookupCombo1.Text;
end;

procedure TfConsMovAtelierDet.RxDBLookupCombo2Change(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfConsMovAtelierDet.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMovAtelierDet.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfConsMovAtelierDet.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qMovimentoDtBaixa.AsDateTime > 1 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
end;

end.
