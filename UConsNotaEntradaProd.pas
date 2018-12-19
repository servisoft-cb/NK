unit UConsNotaEntradaProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, RXDBCtrl, StdCtrls, DBVGrids, Db, DBTables,
  Buttons, RxLookup, Mask, ToolEdit, DBFilter, ALed, CurrEdit;

type
  TfConsNotaEntradaProd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBGrid1: TRxDBGrid;
    qNotas: TQuery;
    dsqNotas: TDataSource;
    BitBtn1: TBitBtn;
    qNotasCodForn: TIntegerField;
    qNotasNumNEntr: TIntegerField;
    qNotasSerie: TStringField;
    qNotasCodMaterial: TIntegerField;
    qNotasReferencia: TStringField;
    qNotasNome: TStringField;
    qNotasQtd: TFloatField;
    qNotasVlrUnit: TFloatField;
    qNotasVlrTotalItens: TFloatField;
    qNotasIcms: TFloatField;
    qNotasIpi: TFloatField;
    qNotasUnidade: TStringField;
    qNotasCodCor: TIntegerField;
    qNotasSitTrib: TSmallintField;
    qNotasSomaEstoque: TBooleanField;
    qNotasCodNatOper: TIntegerField;
    qNotasDtEmissaoNEntr: TDateField;
    qNotasDtEntrada: TDateField;
    qNotaslkNomeCor: TStringField;
    qNotasNomeForn: TStringField;
    qNotaslkCodNatOper: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsNotaEntradaProd: TfConsNotaEntradaProd;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsNotaEntradaProd.Monta_SQL;
var
  vSeparador : String;
begin
  qNotas.Close;
  qNotas.SQL.Clear;
  qNotas.SQL.Add('SELECT Dbnentrada.CodForn, Dbnentrada.NumNEntr, Dbnentrada.Serie, Dbnentradaitens.CodMaterial, Dbproduto.Referencia, Dbproduto.Nome, ');
  qNotas.SQL.Add(' Dbnentradaitens.Qtd, Dbnentradaitens.VlrUnit, Dbnentradaitens.VlrTotalItens, Dbnentradaitens.Icms, Dbnentradaitens.Ipi, Dbnentradaitens.Unidade, ');
  qNotas.SQL.Add(' Dbnentradaitens.CodCor, Dbnentradaitens.SitTrib, Dbnentradaitens.SomaEstoque, Dbnentradaitens.CodNatOper, Dbnentrada.DtEmissaoNEntr, Dbnentrada.DtEntrada, dbFornecedores.NomeForn');
  qNotas.SQL.Add('FROM "dbNEntrada.DB" Dbnentrada');
  qNotas.SQL.Add('   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens');
  qNotas.SQL.Add('   ON  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)');
  qNotas.SQL.Add('   AND  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)');
  qNotas.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qNotas.SQL.Add('   ON  (Dbnentradaitens.CodMaterial = Dbproduto.Codigo)');
  qNotas.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
  qNotas.SQL.Add('   ON  (Dbnentradaitens.CodForn = dbFornecedores.CodForn)');
  vSeparador := 'WHERE';
  if (DateEdit1.Date > 1) and (DateEdit2.Date > 1) then
    begin
      qNotas.SQL.Add(vSeparador + ' (Dbnentrada.DtEntrada BETWEEN :Data1 AND :Data2)');
      qNotas.ParamByName('Data1').AsDate := DateEdit1.Date;
      qNotas.ParamByName('Data2').AsDate := DateEdit2.Date;
      vSeparador := 'AND';
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qNotas.SQL.Add(vSeparador + ' (dbnentradaitens.codmaterial = :CodMaterial)');
      qNotas.ParamByName('CodMaterial').AsInteger := CurrencyEdit1.AsInteger;
      vSeparador := 'AND';
    end;
  if RxDBLookupCombo3.Text <> '' then
    begin
      qNotas.SQL.Add(vSeparador + ' (dbnentradaitens.codforn = :CodFornecedor)');
      qNotas.ParamByName('CodFornecedor').AsInteger := RxDBLookupCombo3.KeyValue;
      vSeparador := 'AND';
    end;
  qNotas.SQL.Add('ORDER BY Dbnentrada.DtEmissaoNEntr, dbFornecedores.NomeForn');
  qNotas.Open;
end;

procedure TfConsNotaEntradaProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qNotas.Close;
  Action := Cafree;
end;

procedure TfConsNotaEntradaProd.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfConsNotaEntradaProd.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaEntradaProd.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor   := crHourGlass;
  Monta_SQL;
  Screen.Cursor   := crDefault;
end;

procedure TfConsNotaEntradaProd.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfConsNotaEntradaProd.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo2.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end;
    end;
end;

procedure TfConsNotaEntradaProd.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsNotaEntradaProd.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
      CurrencyEdit1.AsInteger   := RxDBLookupCombo2.KeyValue;
    end;
end;

procedure TfConsNotaEntradaProd.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfConsNotaEntradaProd.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
      CurrencyEdit1.AsInteger   := RxDBLookupCombo1.KeyValue;
    end;
end;

end.
