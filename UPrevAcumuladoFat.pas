unit UPrevAcumuladoFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons, DB,
  DBTables, Grids, DBGrids, RXDBCtrl, DBClient, RXCtrls, ExtCtrls, ComCtrls;

type
  TfPrevAcumuladoFat = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qAcumulado: TQuery;
    qAcumuladoNumNota: TIntegerField;
    qAcumuladoDtEmissao: TDateField;
    qAcumuladoCodCli: TIntegerField;
    qAcumuladoCodProduto: TIntegerField;
    qAcumuladoQtd: TFloatField;
    qAcumuladoVlrTotal: TFloatField;
    qAcumuladoReferencia: TStringField;
    qAcumuladoNomeProduto: TStringField;
    qAcumuladoNome: TStringField;
    qAcumuladoFantasia: TStringField;
    dsqAcumulado: TDataSource;
    RxDBGrid1: TRxDBGrid;
    mAcumulado: TClientDataSet;
    mAcumuladoNomeCliente: TStringField;
    mAcumuladoReferencia: TStringField;
    mAcumuladoNomeProduto: TStringField;
    mAcumuladoQtdDia: TFloatField;
    mAcumuladoValorDia: TFloatField;
    mAcumuladoQtdAnt: TFloatField;
    mAcumuladoValorAnt: TFloatField;
    mAcumuladoCodCliente: TIntegerField;
    mAcumuladoCodProduto: TIntegerField;
    mAcumuladoFantasia: TStringField;
    dsmAcumulado: TDataSource;
    CheckBox1: TCheckBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    RxLabel16: TRxLabel;
    RxLabel17: TRxLabel;
    qPedido: TQuery;
    qPedidoPreco: TFloatField;
    qPedidoVlrDesconto: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    ProgressBar1: TProgressBar;
    Label6: TLabel;
    qAcumuladoPercDesc: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure mAcumuladoNewRecord(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Monta_Memo;
  public
    vDataAnt : TDate;
    vQtdDia, vQtdAnt, vValorDia, vValorAnt, vQtdGeral, vValorGeral, vVlrProjecao : Real;
    { Public declarations }
  end;

var
  fPrevAcumuladoFat: TfPrevAcumuladoFat;

implementation

uses UDM1, URelAcumuladoFat, rsDBUtils;

{$R *.dfm}

procedure TfPrevAcumuladoFat.Monta_Memo;
var
  vAux : Real;
  vCodProduto2  : Integer;
  vReferencia2  : String;
  vNomeProduto2 : String;
  vExiste : Boolean;
  vVlrDesc : Real;
begin
  vQtdDia      := 0;
  vQtdAnt      := 0;
  vQtdGeral    := 0;
  vValorDia    := 0;
  vValorAnt    := 0;
  vValorGeral  := 0;
  vVlrProjecao := 0;

  mAcumulado.EmptyDataSet;
  ProgressBar1.Position := 0;
  ProgressBar1.Max      := qAcumulado.RecordCount + qPedido.RecordCount;
  qAcumulado.First;
  while not qAcumulado.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      vReferencia2  := qAcumuladoReferencia.AsString;
      vCodProduto2  := qAcumuladoCodProduto.AsInteger;
      vNomeProduto2 := qAcumuladoNomeProduto.AsString;
      vExiste := False;
      if mAcumulado.Locate('CodCliente;CodProduto',VarArrayOf([qAcumuladoCodCli.AsInteger,qAcumuladoCodProduto.AsInteger]),[locaseinsensitive]) then
        vExiste := True;
      if vExiste then
        mAcumulado.Edit
      else
        begin
          mAcumulado.Insert;
          mAcumuladoCodCliente.AsInteger := qAcumuladoCodCli.AsInteger;
          mAcumuladoCodProduto.AsInteger := vCodProduto2;
          mAcumuladoNomeCliente.AsString := qAcumuladoNome.AsString;
          mAcumuladoNomeProduto.AsString := vNomeProduto2;
          mAcumuladoReferencia.AsString  := vReferencia2;
          mAcumuladoFantasia.AsString    := qAcumuladoFantasia.AsString;
        end;
      vVlrDesc                   := 0;
      if qAcumuladoPercDesc.AsFloat > 0 then
        vVlrDesc := (qAcumuladoVlrTotal.AsFloat * qAcumuladoPercDesc.AsFloat) / 100;
      if qAcumuladoDtEmissao.AsDateTime = DateEdit1.Date then
        begin
          mAcumuladoQtdDia.AsFloat   := mAcumuladoQtdDia.AsFloat + qAcumuladoQtd.AsFloat;
          mAcumuladoValorDia.AsFloat := mAcumuladoValorDia.AsFloat + qAcumuladoVlrTotal.AsFloat - StrToFloat(FormatFloat('0.00',vVlrDesc));
          vQtdDia                    := vQtdDia + qAcumuladoQtd.AsFloat;
          vValorDia                  := vValorDia + qAcumuladoVlrTotal.AsFloat - StrToFloat(FormatFloat('0.00',vVlrDesc));
        end
      else
        begin
          mAcumuladoQtdAnt.AsFloat   := mAcumuladoQtdAnt.AsFloat + qAcumuladoQtd.AsFloat;
          mAcumuladoValorAnt.AsFloat := mAcumuladoValorAnt.AsFloat + qAcumuladoVlrTotal.AsFloat - StrToFloat(FormatFloat('0.00',vVlrDesc));
          vQtdAnt                    := vQtdAnt + qAcumuladoQtd.AsFloat;
          vValorAnt                  := vValorAnt + qAcumuladoVlrTotal.AsFloat - StrToFloat(FormatFloat('0.00',vVlrDesc));
        end;
      vQtdGeral   := vQtdGeral + qAcumuladoQtd.AsFloat;
      vValorGeral := vValorGeral + qAcumuladoVlrTotal.AsFloat - StrToFloat(FormatFloat('0.00',vVlrDesc));
      mAcumulado.Post;
      qAcumulado.Next;
    end;
  qPedido.First;
  while not qPedido.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      vAux := StrToFloat(FormatFloat('0.00',qPedidoQtdParesRest.AsFloat * (qPedidoPreco.AsFloat - qPedidoVlrDesconto.AsFloat)));
      vVlrProjecao := vVlrProjecao + vAux;
      qPedido.Next;
    end;

  RxLabel2.Caption  := FormatFloat('###,###,###',vQtdDia);
  RxLabel10.Caption := FormatFloat('###,###,###',vQtdAnt);
  RxLabel4.Caption  := FormatFloat('###,###,###',vQtdGeral);
  if CheckBox1.Checked then
    begin
      RxLabel8.Caption  := FormatFloat('###,###,##0.00',vValorDia);
      RxLabel13.Caption := FormatFloat('###,###,##0.00',vValorAnt);
      RxLabel15.Caption := FormatFloat('###,###,##0.00',vValorGeral);
      //RxLabel17.Caption := FormatFloat('###,###,###.##',qPedidoVlrTotal.AsFloat);
      RxLabel17.Caption := FormatFloat('###,###,##0.00',vVlrProjecao);
    end
  else
    begin
      RxLabel8.Caption  := '';
      RxLabel13.Caption := '';
      RxLabel15.Caption := '';
      RxLabel17.Caption := '';
    end;
end;

procedure TfPrevAcumuladoFat.Monta_Sql;
var
  vDataIni : TDate;
  ano, mes, dia : Word;
begin
  DecodeDate(DateEdit1.Date,ano,mes,dia);
  if dia = 1 then
    vDataAnt := DateEdit1.Date
  else
    vDataAnt := DateEdit1.Date - 1;
  vDataIni := EncodeDate(ano,mes,01);

  qAcumulado.Close;
  qAcumulado.SQL.Clear;
  qAcumulado.SQL.Add('SELECT Dbnotafiscal.NumNota, Dbnotafiscal.DtEmissao, Dbnotafiscal.CodCli, Dbnotafiscalitens.CodProduto, SUM( Dbnotafiscalitens.Qtd ) Qtd,');
  qAcumulado.SQL.Add('  SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbcliente.Nome, Dbcliente.Fantasia, dbNotaFiscal.PercDesc');
  qAcumulado.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qAcumulado.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qAcumulado.SQL.Add('   ON  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qAcumulado.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qAcumulado.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qAcumulado.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qAcumulado.SQL.Add('   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');
  qAcumulado.SQL.Add('WHERE   (Dbnotafiscalitens.GeraDupl = TRUE)');
  qAcumulado.SQL.Add('   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) )');
  //qAcumulado.SQL.Add('   AND  (dbProduto.ProdMat = ''P'')');
  qAcumulado.SQL.Add('   AND  Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2');
  qAcumulado.ParamByName('Data1').AsDate := vDataIni;
  qAcumulado.ParamByName('Data2').AsDate := DateEdit1.Date;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qAcumulado.SQL.Add(' AND Dbnotafiscal.CodCli = :CodCli');
      qAcumulado.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qAcumulado.SQL.Add(' AND Dbnotafiscalitens.CodProduto = :CodProduto');
      qAcumulado.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;
    end;
  qAcumulado.SQL.Add('GROUP BY Dbnotafiscal.NumNota, Dbnotafiscal.DtEmissao, Dbnotafiscal.CodCli, Dbnotafiscalitens.CodProduto, ');
  qAcumulado.SQL.Add(' Dbproduto.Referencia, Dbproduto.Nome, Dbproduto.Nome, Dbcliente.Nome, Dbcliente.Fantasia, dbNotaFiscal.PercDesc');
  qAcumulado.SQL.Add('ORDER BY Dbcliente.Fantasia, Dbproduto.Referencia, NomeProduto');
  qAcumulado.Open;
  qAcumulado.First;

  //Monta o SQL dos Pedidos (Projeção a Faturar)
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT SUM( DbpedidoItem.QtdParesRest ) QtdParesRest, Dbpedidoitem.Preco, Dbpedidoitem.VlrDesconto');
  qPedido.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedido.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedido.SQL.Add('WHERE   (Dbpedidoitem.QtdParesRest > 0)');
  qPedido.SQL.Add('   AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado IS NULL) )');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedido.SQL.Add(' AND dbpedido.CodCliente = :CodCliente');
      qPedido.ParamByName('CodCliente').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qPedido.SQL.Add(' AND dbpedidoItem.CodProduto = :CodProduto');
      qPedido.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;
    end;
  qPedido.SQL.Add('GROUP BY Dbpedidoitem.Preco, Dbpedidoitem.VlrDesconto');
  qPedido.Open;
  qPedido.First;
end;

procedure TfPrevAcumuladoFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Screen.Cursor   := crDefault;
  Action := Cafree;
end;

procedure TfPrevAcumuladoFat.FormShow(Sender: TObject);
begin
  DateEdit1.Date := Date;
end;

procedure TfPrevAcumuladoFat.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if DM1.tProduto.GotoKey then
        RxDBLookupCombo3.KeyValue := DM1.tProdutoCodigo.AsInteger
      else
        ShowMessage('Produto não cadastrado!');
    end
  else
    RxDBLookupCombo3.ClearValue;
end;

procedure TfPrevAcumuladoFat.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfPrevAcumuladoFat.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    CurrencyEdit1.Value := RxDBLookupCombo3.KeyValue
  else
    CurrencyEdit1.Clear;
end;

procedure TfPrevAcumuladoFat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevAcumuladoFat.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevAcumuladoFat.BitBtn3Click(Sender: TObject);
begin
  if DateEdit1.Date > 1 then
    begin
      Screen.Cursor := crHourGlass;
      RxDBGrid1.Columns[4].Visible := CheckBox1.Checked;
      RxDBGrid1.Columns[6].Visible := CheckBox1.Checked;
      Monta_SQL;
      Monta_Memo;
      Screen.Cursor   := crDefault;
    end
  else
    begin
      ShowMessage('Falta informar a data!');
      DateEdit1.Date;
    end;
end;

procedure TfPrevAcumuladoFat.mAcumuladoNewRecord(DataSet: TDataSet);
begin
  mAcumuladoQtdDia.AsFloat   := 0;
  mAcumuladoQtdAnt.AsFloat   := 0;
  mAcumuladoValorDia.AsFloat := 0;
  mAcumuladoValorAnt.AsFloat := 0;
end;

procedure TfPrevAcumuladoFat.CheckBox1Click(Sender: TObject);
begin
  RxDBGrid1.Columns[4].Visible := CheckBox1.Checked;
  RxDBGrid1.Columns[6].Visible := CheckBox1.Checked;
  if CheckBox1.Checked then
    begin
      RxLabel8.Caption  := FormatFloat('###,###,###.##',vValorDia);
      RxLabel13.Caption := FormatFloat('###,###,###.##',vValorAnt);
      RxLabel15.Caption := FormatFloat('###,###,###.##',vValorGeral);
      {if qPedido.Active then
        RxLabel17.Caption := FormatFloat('###,###,###.##',qPedidoVlrTotal.AsFloat)
      else
        RxLabel17.Caption := FormatFloat('###,###,###.##',qPedidoVlrTotal.AsFloat);}
      RxLabel17.Caption := FormatFloat('###,###,###.##',vVlrProjecao);
    end
  else
    begin
      RxLabel8.Caption  := '';
      RxLabel13.Caption := '';
      RxLabel15.Caption := '';
      RxLabel17.Caption := '';
    end;
end;

procedure TfPrevAcumuladoFat.BitBtn1Click(Sender: TObject);
begin
  if mAcumulado.RecordCount > 0 then
    begin
      mAcumulado.First;
      fRelAcumuladoFat := TfRelAcumuladoFat.Create(Self);
      fRelAcumuladoFat.RLReport1.Preview;
      fRelAcumuladoFat.RLReport1.Free;
      ProgressBar1.Position := 0;
    end;
end;

procedure TfPrevAcumuladoFat.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
