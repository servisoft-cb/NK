unit UPrevCliCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, DB, DBClient,
  DBTables, ComCtrls;

type
  TfPrevCliCompra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    qsVendas: TDataSource;
    qVendas: TQuery;
    qVendasQtd: TFloatField;
    qVendasVlrTotal: TFloatField;
    qVendasNome: TStringField;
    qVendasPercDesc: TFloatField;
    mAuxiliar: TClientDataSet;
    mAuxiliarNome: TStringField;
    mAuxiliarVlrTotal: TFloatField;
    ProgressBar1: TProgressBar;
    qVale: TQuery;
    qValeCodCliente: TIntegerField;
    qValeNome: TStringField;
    qValeQtd: TFloatField;
    qValeVlrTotal: TFloatField;
    mAuxiliarQtdVale: TFloatField;
    mAuxiliarVlrVale: TFloatField;
    mAuxiliarVlrNota: TFloatField;
    mAuxiliarQtdNota: TFloatField;
    mAuxiliarQtdTotal: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_qVendas;
    procedure Monta_qVale;
    procedure Le_qVendas;
  public
    { Public declarations }
  end;

var
  fPrevCliCompra: TfPrevCliCompra;

implementation

uses URelCliCompras, rsDBUtils;

{$R *.dfm}

procedure TfPrevCliCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevCliCompra.BitBtn1Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfPrevCliCompra.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevCliCompra.BitBtn3Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      Screen.Cursor := crHourGlass;
      Monta_qVendas;
      Monta_qVale;
      Le_qVendas;
      Screen.Cursor   := crDefault;

      fRelCliCompras := TfRelCliCompras.Create(Self);
      fRelCliCompras.QuickREp1.Preview;
      fRelCliCompras.quickRep1.Free;
    end
  else
    ShowMessage('Deve haver datas válidas!');

end;

procedure TfPrevCliCompra.Le_qVendas;
var
  vAux : Real;
begin
  mAuxiliar.EmptyDataSet;
  ProgressBar1.Max      := qVendas.RecordCount + qVale.RecordCount;
  ProgressBar1.Position := 0;
  qVendas.First;
  while not qVendas.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if mAuxiliar.Locate('Nome',qVendasNome.AsString,([LocaseInsensitive])) then
        mAuxiliar.Edit
      else
        begin
          mAuxiliar.Insert;
          mAuxiliarNome.AsString := qVendasNome.AsString;
        end;
      mAuxiliarQtdNota.AsFloat  := mAuxiliarQtdNota.AsFloat + qVendasQtd.AsFloat;
      mAuxiliarQtdTotal.AsFloat := mAuxiliarQtdTotal.AsFloat + qVendasQtd.AsFloat;
      vAux := 0;
      if qVendasPercDesc.AsFloat > 0 then
        vAux := StrToFloat(FormatFloat('0.00',qVendasVlrTotal.AsFloat * qVendasPercDesc.AsFloat / 100));
      vAux := StrToFloat(FormatFloat('0.00',qVendasVlrTotal.AsFloat - vAux));
      mAuxiliarVlrNota.AsFloat  := mAuxiliarVlrNota.AsFloat + vAux;
      mAuxiliarVlrTotal.AsFloat := mAuxiliarVlrTotal.AsFloat + vAux;
      mAuxiliar.Post;
      qVendas.Next;
    end;

  qVale.First;
  while not qVale.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if mAuxiliar.Locate('Nome',qValeNome.AsString,([LocaseInsensitive])) then
        mAuxiliar.Edit
      else
        begin
          mAuxiliar.Insert;
          mAuxiliarNome.AsString := qValeNome.AsString;
        end;
      mAuxiliarQtdVale.AsFloat  := mAuxiliarQtdVale.AsFloat + qValeQtd.AsFloat;
      mAuxiliarVlrVale.AsFloat  := mAuxiliarVlrVale.AsFloat + qValeVlrTotal.AsFloat;
      mAuxiliarVlrTotal.AsFloat := mAuxiliarVlrTotal.AsFloat + qValeVlrTotal.AsFloat;
      mAuxiliar.Post;
      qVale.Next;
    end;
  mAuxiliar.First;
  case ComboBox1.ItemIndex of
    0 : mAuxiliar.IndexName       := 'iValor';
    1 : mAuxiliar.IndexName 			:= 'iQtd';
    2 : mAuxiliar.IndexFieldNames := 'Nome';
  end;
end;

procedure TfPrevCliCompra.Monta_qVendas;
begin
  qVendas.Close;
  qVendas.SQL.Clear;
  qVendas.SQL.Add('SELECT SUM(Dbnotafiscalitens.Qtd) Qtd, SUM(Dbnotafiscalitens.VlrTotal) VlrTotal, Dbcliente.Nome, dbNotaFiscal.PercDesc');
  qVendas.SQL.Add('FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qVendas.SQL.Add('   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal');
  qVendas.SQL.Add('   ON  (Dbnotafiscalitens.NumNota = Dbnotafiscal.NumNota)');
  qVendas.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qVendas.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qVendas.SQL.Add('WHERE (Dbnotafiscal.DtEmissao BETWEEN :DataIni AND :DataFin) ');
  qVendas.SQL.Add('  AND (Dbnotafiscalitens.GeraDupl = True)');
  qVendas.SQL.Add('  AND ((dbNotaFiscal.Cancelada = False) OR (dbNotaFiscal.Cancelada is Null)) ');
  qVendas.SQL.Add('  AND (dbNotaFiscal.SaidaEntrada = ''S'') ');
//  qVendas.SQL.Add('  AND ((dbNotaFiscal.CondPgto = ''P'') or (dbNotaFiscal.CondPgto = ''V'')) and (TipoNota = ''1'')');
  qVendas.SQL.Add('GROUP BY Dbcliente.Nome, dbNotaFiscal.PercDesc');
  case ComboBox1.ItemIndex of
    0 : qVendas.SQL.Add('ORDER BY Dbnotafiscalitens.VlrTotal DESC');
    1 : qVendas.SQL.Add('ORDER BY Dbnotafiscalitens.Qtd DESC');
  end;
  qVendas.ParamByName('DataIni').AsDate := DateEdit1.Date;
  qVendas.ParamByName('DataFin').AsDate := DateEdit2.Date;
  qVendas.Open;
end;

procedure TfPrevCliCompra.Monta_qVale;
begin
  qVale.Close;
  qVale.ParamByName('D1').AsDate := DateEdit1.Date;
  qVale.ParamByName('D2').AsDate := DateEdit2.Date;
  qVale.Open;
end;

procedure TfPrevCliCompra.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
