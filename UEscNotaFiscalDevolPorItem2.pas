unit UEscNotaFiscalDevolPorItem2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, ExtCtrls, RXCtrls, StdCtrls, Mask, DBCtrls, RxLookup, Grids, DBGrids,
  RXDBCtrl, Buttons, ToolEdit, CurrEdit, Db, DBTables, DBFilter, MemTable, Variants;
  
type
  TfEscNotaFiscalDevolPorItem2 = class(TForm)
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CurrencyEdit4: TCurrencyEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    qNotaFiscal: TQuery;
    qMaterial: TQuery;
    qMaterialCodNatOper: TStringField;
    qMaterialCodProduto: TIntegerField;
    qMaterialReferencia: TStringField;
    qMaterialNome: TStringField;
    dsqMaterial: TDataSource;
    dsqNotaFiscal: TDataSource;
    qNotaFiscalNumNota: TIntegerField;
    qNotaFiscalDtEmissao: TDateField;
    qNotaFiscalCodProduto: TIntegerField;
    qNotaFiscalReferencia: TStringField;
    qNotaFiscalCodCli: TIntegerField;
    qNotaFiscalNomeProduto: TStringField;
    qNotaFiscalItem: TSmallintField;
    qNotaFiscalNomeCliente: TStringField;
    qNotaFiscalQtd: TFloatField;
    qNotaFiscalQtdRestante: TFloatField;
    qNotaFiscalQtdDevolvida: TFloatField;
    qNotaFiscalCodCor: TIntegerField;
    qNotaFiscalUnidade: TStringField;
    qNotaFiscalCodNatOper: TStringField;
    qNotaFiscalVlrUnit: TFloatField;
    qNotaFiscalVlrTotal: TFloatField;
    qNotaFiscallkNomeCor: TStringField;
    qNotaFiscalFilial: TIntegerField;
    qNotaFiscalNumSeq: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure CurrencyEdit4Change(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vCodCliente : Integer;
    vQtdSelecionada : Real;
    vItemNotaAux : Integer;
    procedure Monta_SQL;
    procedure Monta_SQLMaterial;
  public
    { Public declarations }
  end;

var
  fEscNotaFiscalDevolPorItem2: TfEscNotaFiscalDevolPorItem2;

implementation

uses UDM1, UNotaEntrada;

{$R *.DFM}

procedure TfEscNotaFiscalDevolPorItem2.Monta_SQLMaterial;
begin
  qMaterial.Close;
  qMaterial.SQL.Clear;
  qMaterial.SQL.Add('SELECT DISTINCT Dbnatoperacao.CodNatOper, Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, Dbproduto.Nome');
  qMaterial.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qMaterial.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qMaterial.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qMaterial.SQL.Add('   AND (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)');
  qMaterial.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qMaterial.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');
  qMaterial.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qMaterial.SQL.Add('   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');

  //if not DM1.tNatOperacaoDeduzirFat.AsBoolean then
  //  qMaterial.SQL.Add('WHERE  (Dbnatoperacao.ControlarRetorno = True)');

  qMaterial.SQL.Add('    WHERE  (DbNotaFiscal.CodCli = :CodCli)');
  qMaterial.ParamByName('CodCli').AsInteger := vCodCliente;
  qMaterial.SQL.Add('ORDER BY Dbproduto.Nome');
  qMaterial.Open;
  qMaterial.Last;
end;

procedure TfEscNotaFiscalDevolPorItem2.Monta_SQL;
begin
  qNotaFiscal.Close;
  qNotaFiscal.SQL.Clear;
  qNotaFiscal.SQL.Add('SELECT Dbnotafiscal.NumNota, Dbnotafiscal.DtEmissao, Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, Dbnotafiscal.CodCli, ');
  qNotaFiscal.SQL.Add('dbproduto.Nome NomeProduto, Dbnotafiscalitens.Item, Dbcliente.Nome NomeCliente, Dbnotafiscalitens.Qtd, Dbnotafiscalitens.QtdRestante, ');
  qNotaFiscal.SQL.Add('Dbnotafiscalitens.QtdDevolvida, Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Dbnatoperacao.CodNatOper, Dbnotafiscalitens.VlrUnit, ');
  qNotaFiscal.SQL.Add('Dbnotafiscalitens.VlrTotal, Dbnotafiscal.Filial, Dbnotafiscal.NumSeq ');
  qNotaFiscal.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qNotaFiscal.SQL.Add('INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens ON (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial) AND (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)');
  qNotaFiscal.SQL.Add('INNER JOIN "dbCliente.DB" Dbcliente ON (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qNotaFiscal.SQL.Add('INNER JOIN "dbProduto.DB" Dbproduto ON (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');
  qNotaFiscal.SQL.Add('INNER JOIN "dbNatOperacao.DB" Dbnatoperacao ON (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');

//  if not DM1.tNatOperacaoDeduzirFat.AsBoolean then
//    qNotaFiscal.SQL.Add('WHERE  (Dbnatoperacao.ControlarRetorno = TRUE)');

  qNotaFiscal.SQL.Add('   WHERE (dbNotaFiscalItens.QtdRestante > 0)');
  qNotaFiscal.SQL.Add('     AND (dbNotaFiscal.CodCli = :CodCli)');
//  qNotaFiscal.SQL.Add('     AND (dbNotaFiscal.Filial = :Filial)');
  qNotaFiscal.ParamByName('CodCli').AsInteger := vCodCliente;

  if RxDBLookupCombo2.Text <> '' then
    begin
      qNotaFiscal.SQL.Add('  AND (dbNotaFiscalItens.CodProduto = :CodProduto)');
      qNotaFiscal.ParamByName('CodProduto').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qNotaFiscal.Open;
  qNotaFiscal.First;
end;

procedure TfEscNotaFiscalDevolPorItem2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := CaFree;
end;

procedure TfEscNotaFiscalDevolPorItem2.BitBtn2Click(Sender: TObject);
var
  vGravar : Boolean;
begin
  vGravar := False;
  if fNotaEntrada.mSelecionado.IsEmpty then
    ShowMessage('Não existe nota selecionada!')
  else
  if CurrencyEdit2.Value > 0 then
    begin
      if MessageDlg('O material possue qtd.restante, confirmar material assim mesmo?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
        vGravar := True;
    end
  else
    vGravar := True;

  if vGravar then
    begin
      fNotaEntrada.mSelecionado.First;

//      fNotaEntrada.Panel6Enter(Sender);

      fNotaEntrada.CurrencyEdit14.AsInteger := fNotaEntrada.mSelecionadoCodMaterial.AsInteger;
      fNotaEntrada.RxDBLookupCombo5.KeyValue := fNotaEntrada.mSelecionadoCodMaterial.AsInteger;
//      fNotaEntrada.Panel6Exit(Sender);

      fNotaEntrada.RxDBLookupCombo2.KeyValue := fNotaEntrada.mSelecionadoCodCor.AsInteger;
      fNotaEntrada.Edit2.Text                := fNotaEntrada.mSelecionadoUnidade.AsString;
      fNotaEntrada.CurrencyEdit3.Value       := vQtdSelecionada;
      fNotaEntrada.CurrencyEdit7.Value       := fNotaEntrada.mSelecionadoVlrUnitario.AsFloat;
      fNotaEntrada.CurrencyEdit7Exit(Sender);
      fNotaEntrada.CheckBox1.Checked := True;
      
      Close;
    end;
end;

procedure TfEscNotaFiscalDevolPorItem2.FormShow(Sender: TObject);
begin
  if fNotaEntrada.RxDBLookupCombo10.Text <> '' then
    DM1.tNatOperacao.Locate('Codigo',fNotaEntrada.RxDBLookupCombo10.KeyValue,[loCaseInsensitive]);
  vQtdSelecionada := 0;
  vCodCliente     := 0;
  fNotaEntrada.mSelecionado.EmptyDataSet;

  if DM1.tCliente.Locate('CgcCpf',DM1.tFornecedoresCGC.AsString,[loCaseInsensitive]) then
    vCodCliente := DM1.tClienteCodigo.AsInteger
  else
    ShowMessage('Cliente não encontrado com o CNPJ do fornecedor!');
  qMaterial.Close;
  if vCodCliente > 0 then
    Monta_SQLMaterial;
  Monta_SQL;
end;

procedure TfEscNotaFiscalDevolPorItem2.RxDBGrid1DblClick(Sender: TObject);
begin
  if CurrencyEdit2.Value <= 0 then
    ShowMessage('Qtd.Restante zerada!')
  else
  if qNotaFiscal.RecordCount > 0 then
    begin
      fNotaEntrada.mSelecionado.Last;
      if (fNotaEntrada.mSelecionado.RecordCount > 0) and
         ((fNotaEntrada.mSelecionadoCodMaterial.AsInteger <> qNotaFiscalCodProduto.AsInteger) or
         (fNotaEntrada.mSelecionadoCodCor.AsInteger <> qNotaFiscalCodCor.AsInteger)) then
        ShowMessage('Material não é igual ao selecionado!')
      else
        begin
          fNotaEntrada.mSelecionado.Insert;
          fNotaEntrada.mSelecionadoFilial.AsInteger        := qNotaFiscalFilial.AsInteger;
          fNotaEntrada.mSelecionadoNumSeq.AsInteger        := qNotaFiscalNumSeq.AsInteger;
          fNotaEntrada.mSelecionadoNumNota.AsInteger       := qNotaFiscalNumNota.AsInteger;
          fNotaEntrada.mSelecionadoItem.AsInteger          := qNotaFiscalItem.AsInteger;
          fNotaEntrada.mSelecionadoCodCliente.AsInteger    := qNotaFiscalCodCli.AsInteger;
          fNotaEntrada.mSelecionadoCodMaterial.AsInteger   := qNotaFiscalCodProduto.AsInteger;
          fNotaEntrada.mSelecionadoCodCor.AsInteger        := qNotaFiscalCodCor.AsInteger;
          fNotaEntrada.mSelecionadoQtdRestante.AsFloat     := qNotaFiscalQtdRestante.AsFloat;
          if qNotaFiscalQtdRestante.AsFloat <= CurrencyEdit2.Value then
            fNotaEntrada.mSelecionadoQtd.AsFloat := qNotaFiscalQtdRestante.AsFloat
          else
            fNotaEntrada.mSelecionadoQtd.AsFloat := CurrencyEdit2.Value;
          fNotaEntrada.mSelecionadoNomeMaterial.AsString := qNotaFiscalNomeProduto.AsString;
          fNotaEntrada.mSelecionadoNomeCor.AsString      := qNotaFiscallkNomeCor.AsString;
          fNotaEntrada.mSelecionadoUnidade.AsString      := qNotaFiscalUnidade.AsString;
          fNotaEntrada.mSelecionadoVlrUnitario.AsFloat   := qNotaFiscalVlrUnit.AsFloat;
          fNotaEntrada.mSelecionadoVlrTotal.AsFloat      := qNotaFiscalVlrTotal.AsFloat;

          CurrencyEdit2.Value := CurrencyEdit2.Value - fNotaEntrada.mSelecionadoQtd.AsFloat;

          vQtdSelecionada     := vQtdSelecionada + fNotaEntrada.mSelecionadoQtd.AsFloat;

          fNotaEntrada.mSelecionado.Post;
        end;
    end;
end;

procedure TfEscNotaFiscalDevolPorItem2.RxDBGrid2DblClick(Sender: TObject);
begin
  if fNotaEntrada.mSelecionado.RecordCount > 0 then
    begin
      if MessageDlg('Deseja excluir a nota selecionada?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          CurrencyEdit2.Value := CurrencyEdit2.Value + fNotaEntrada.mSelecionadoQtd.AsFloat;
          vQtdSelecionada     := vQtdSelecionada - fNotaEntrada.mSelecionadoQtd.AsFloat;
          if vQtdSelecionada < 0 then
            vQtdSelecionada := 0;
          fNotaEntrada.mSelecionado.Delete;
        end;
    end;
end;

procedure TfEscNotaFiscalDevolPorItem2.CurrencyEdit4Change(Sender: TObject);
begin
  if (CurrencyEdit4.AsInteger > 0) and (qMaterial.Active) then
    begin
      RxDBLookupCombo2.KeyValue := CurrencyEdit4.AsInteger;
      qMaterial.Locate('CodProduto',CurrencyEdit4.AsInteger,[loCaseInsensitive]);
    end;
end;

procedure TfEscNotaFiscalDevolPorItem2.CurrencyEdit4Exit(Sender: TObject);
begin
  RxDBLookupCombo2.SetFocus;
end;

procedure TfEscNotaFiscalDevolPorItem2.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    CurrencyEdit4.AsInteger := RxDBLookupCombo2.KeyValue;
end;

procedure TfEscNotaFiscalDevolPorItem2.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfEscNotaFiscalDevolPorItem2.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tNatOperacao,Name);
end;

end.

