unit UPrevVendasPeriodo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, RXCtrls, Mask, ToolEdit, ExtCtrls, Db, DBTables,
  MemTable, Grids, DBGrids, RXDBCtrl, DBClient, ComCtrls, RxLookup;

type
  TfPrevVendasPeriodo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    qVendas: TQuery;
    qVendasCodProduto: TIntegerField;
    qVendasReferencia: TStringField;
    qVendasNome: TStringField;
    qVendasVlrTotal: TFloatField;
    qVendasQtd: TFloatField;
    qVale: TQuery;
    qValeCodProduto: TIntegerField;
    qValeReferencia: TStringField;
    qValeNome: TStringField;
    qValeQtd: TFloatField;
    qValeVlrTotal: TFloatField;
    msVendas: TDataSource;
    Label5: TLabel;
    Edit1: TEdit;
    qVendasNumNota: TIntegerField;
    Label3: TLabel;
    ComboBox1: TComboBox;
    mVendas: TClientDataSet;
    mVendasCodProduto: TIntegerField;
    mVendasReferencia: TStringField;
    mVendasNomeProduto: TStringField;
    mVendasQtd: TFloatField;
    mVendasVlrTotal: TFloatField;
    mVendasQtdVale: TFloatField;
    mVendasVlrTotalVale: TFloatField;
    ProgressBar1: TProgressBar;
    qVendasPercDesc: TFloatField;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure mVendasNewRecord(DataSet: TDataSet);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Gera_Memo;
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fPrevVendasPeriodo: TfPrevVendasPeriodo;

implementation

uses URelVendasPeriodo, UDM1, rsDBUtils;

{$R *.DFM}

procedure TfPrevVendasPeriodo.Monta_SQL;
begin
  //Monta o SQL de Vendas
  qVendas.Close;
  qVendas.SQL.Clear;
  qVendas.SQL.Add('SELECT Dbnotafiscalitens.NumNota, Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, Dbproduto.Nome, SUM(Dbnotafiscalitens.VlrTotal) VlrTotal, SUM(Dbnotafiscalitens.Qtd) Qtd, dbNotaFiscal.PercDesc');
  qVendas.SQL.Add('FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qVendas.SQL.Add('INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal ON (Dbnotafiscalitens.NumSeq = Dbnotafiscal.NumSeq)');
  qVendas.SQL.Add('INNER JOIN "dbProduto.DB" Dbproduto ON (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');
  qVendas.SQL.Add('WHERE ((dbNotaFiscal.Cancelada = False) or (dbNotaFiscal.Cancelada is Null)) ');
  qVendas.SQL.Add('   and (dbNotaFiscal.SaidaEntrada = ''S'') and (dbNotaFiscal.DtEmissao BETWEEN :DataIni and :DataFin)');
  //qVendas.SQL.Add('   and ((dbNotaFiscal.CondPgto = ''P'') or (dbNotaFiscal.CondPgto = ''V'')) and (TipoNota = ''1'')');
  qVendas.SQL.Add('   and (dbNotaFiscalItens.GeraDupl = True)');
  if Edit1.Text <> '' then
    qVendas.SQL.Add(' And Dbproduto.Referencia LIKE ''%' + Edit1.Text + '%''');
  qVendas.ParamByName('DataIni').AsDate := DateEdit1.Date;
  qVendas.ParamByName('DataFin').AsDate := DateEdit2.Date;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qVendas.SQL.Add('  and (dbNotaFiscal.CodCli = :CodCli)');
      qVendas.ParamByName('CodCli').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qVendas.SQL.Add('GROUP BY Dbnotafiscalitens.NumNota, Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, Dbproduto.Nome, dbNotaFiscal.PercDesc');
  case ComboBox1.ItemIndex of
    0 : qVendas.SQL.Add('Order By Dbnotafiscalitens.VlrTotal asc');
    1 : qVendas.SQL.Add('Order By Dbnotafiscalitens.Qtd asc');
  end;
  qVendas.Open;

  //Monta o SQL dos Vales
  qVale.close;
  qVale.SQL.Clear;
  qVale.SQL.Add('SELECT Dbvaleitens.CodProduto, Dbproduto.Referencia, Dbproduto.Nome, SUM(Dbvaleitens.Qtd) Qtd, SUM(Dbvaleitens.VlrTotal) VlrTotal');
  qVale.SQL.Add('FROM "dbValeItens.DB" Dbvaleitens');
  qVale.SQL.Add('INNER JOIN "dbVale.DB" Dbvale ON  (Dbvaleitens.NumVale = Dbvale.NumVale)');
  qVale.SQL.Add('INNER JOIN "dbProduto.DB" Dbproduto ON (Dbvaleitens.CodProduto = Dbproduto.Codigo)');
  qVale.SQL.Add('WHERE ((DbvaleItens.Faturado = False ) or (DbvaleItens.Faturado is Null)) And');
  qVale.SQL.Add(' (Dbvale.DtEmissao BETWEEN :D1 and :D2)');
  if Edit1.Text <> '' then
    qVale.SQL.Add(' And Dbproduto.Referencia LIKE ''%' + Edit1.Text + '%''');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qVale.SQL.Add('  and (dbVale.CodCliente = :CodCliente)');
      qVale.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qVale.SQL.Add('GROUP BY Dbvaleitens.CodProduto, Dbproduto.Referencia, Dbproduto.Nome');

  case ComboBox1.ItemIndex of
    0 : qVale.SQL.Add('Order By Dbvaleitens.VlrTotal asc');
    1 : qVale.SQL.Add('Order By Dbvaleitens.Qtd asc');
  end;

  qVale.Params[0].AsDate := DateEdit1.Date;
  qVale.Params[1].AsDate := DateEdit2.Date;

  qVale.Open;
end;

procedure TfPrevVendasPeriodo.Gera_Memo;
var
  vAux : Currency;
begin
  ProgressBar1.Max      := qVendas.RecordCount + qVale.RecordCount;
  ProgressBar1.Position := 0;

  mVendas.EmptyDataSet;
  qVendas.First;
  while not qVendas.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if mVendas.Locate('CodProduto',qVendasCodProduto.AsInteger,([LocaseInsensitive])) then
        mVendas.Edit
      else
        begin
          mVendas.Insert;
          mVendasCodProduto.AsInteger := qVendasCodProduto.AsInteger;
          mVendasNomeProduto.AsString := qVendasNome.AsString;
          mVendasReferencia.AsString  := qVendasReferencia.AsString;
        end;
      mVendasQtd.AsFloat          := mVendasQtd.AsFloat + qVendasQtd.AsFloat;
      vAux := 0;
      if qVendasPercDesc.AsFloat > 0 then
        vAux := StrToFloat(FormatFloat('0.00',((qVendasVlrTotal.AsFloat * qVendasPercDesc.AsFloat) / 100)));
      mVendasVlrTotal.AsFloat := (mVendasVlrTotal.AsFloat + qVendasVlrTotal.AsFloat) - vAux;
      mVendas.Post;
      qVendas.Next;
    end;

  qVale.First;
  while not qVale.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if mVendas.Locate('CodProduto',qValeCodProduto.AsInteger,([LocaseInsensitive])) then
        mVendas.Edit
      else
        begin
          mVendas.Insert;
          mVendasCodProduto.AsInteger := qValeCodProduto.AsInteger;
          mVendasNomeProduto.AsString := qValeNome.AsString;
          mVendasReferencia.AsString  := qValeReferencia.AsString;
        end;
      mVendasQtdVale.AsFloat          := mVendasQtdVale.AsFloat + qValeQtd.AsFloat;
      mVendasVlrTotalVale.AsFloat     := mVendasVlrTotalVale.AsFloat + qValeVlrTotal.AsFloat;
      mVendas.Post;
      qVale.Next;
    end;
end;

procedure TfPrevVendasPeriodo.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevVendasPeriodo.BitBtn1Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfPrevVendasPeriodo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qVendas.Close;
  qVale.Close;
  oDBUtils.OpenTables(False,Self);

  Action := Cafree;
end;

procedure TfPrevVendasPeriodo.BitBtn3Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      Screen.Cursor := crHourGlass;
      Monta_SQL;

      Gera_Memo;
      case ComboBox1.ItemIndex of
        0 :  begin
               mVendas.IndexName := 'VlrTotal';
               mVendas.IndexDefs.Items[0].Fields := 'VlrTotal';
               mVendas.IndexDefs.Items[0].Options := [ixDescending];
             end;
        1 :  begin
               mVendas.IndexName := 'Qtd';
               mVendas.IndexDefs.Items[1].Fields := 'Qtd';
               mVendas.IndexDefs.Items[1].Options := [ixDescending];
             end;
      end;
      Screen.Cursor   := crDefault;

      fRelVendasPeriodo := TfRelVendasPeriodo.Create(Self);
      fRelVendasPeriodo.QuickRep1.Preview;
      fRelVendasPeriodo.QuickRep1.Free;

    end
  else
    ShowMessage('Deve haver datas válidas para efetuar a impressão!');
end;

procedure TfPrevVendasPeriodo.mVendasNewRecord(DataSet: TDataSet);
begin
  mVendasVlrTotal.AsFloat     := 0;
  mVendasVlrTotalVale.AsFloat := 0;
  mVendasQtd.AsFloat          := 0;
  mVendasQtdVale.AsFloat      := 0;
end;

procedure TfPrevVendasPeriodo.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevVendasPeriodo.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
