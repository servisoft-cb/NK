unit UConsEstUltMov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RxLookup, Buttons, Grids, DBGrids, RXDBCtrl, Db,
  DBTables, DBFilter, Mask, ToolEdit, CurrEdit, MemTable, Variants;

type
  TfConsEstUltMov = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    qMaterial: TQuery;
    qsMaterial: TDataSource;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    mEstoque: TMemoryTable;
    mEstoqueMes: TIntegerField;
    mEstoqueAno: TIntegerField;
    mEstoqueQtdEntrada: TFloatField;
    mEstoqueQtdSaida: TFloatField;
    mEstoqueVlrCustoMedio: TFloatField;
    mEstoqueSaldo: TFloatField;
    dsmEstoque: TDataSource;
    qMaterialCodMaterial: TIntegerField;
    qMaterialNumMov: TIntegerField;
    qMaterialLargura: TStringField;
    qMaterialDtMov: TDateField;
    qMaterialES: TStringField;
    qMaterialTipoMov: TStringField;
    qMaterialNumNota: TIntegerField;
    qMaterialVlrUnitario: TFloatField;
    qMaterialQtd: TFloatField;
    qMaterialUnidade: TStringField;
    qMaterialCodCor: TIntegerField;
    qMaterialPercIcms: TFloatField;
    qMaterialVlrDesconto: TFloatField;
    mEstoqueVlrEntrada: TFloatField;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    mEstoqueVlrSaida: TFloatField;
    mEstoqueVlrVendaMedio: TFloatField;
    Label5: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Bevel1: TBevel;
    Label6: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label7: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    qOC: TQuery;
    RxDBGrid2: TRxDBGrid;
    qsOC: TDataSource;
    qOCNomeForn: TStringField;
    qOCNumOC: TIntegerField;
    qOCQtd: TFloatField;
    qOCQtdEntregue: TFloatField;
    qOCCodigoMat: TIntegerField;
    qOCDtEntrega: TDateField;
    qOCQtdRestante: TFloatField;
    qOCNome: TStringField;
    qOCCodCor: TIntegerField;
    qMaterialTamanho: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mEstoqueNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    vPrecoMedio, vSaldoFisico, vSaldoFinan : Real;
    vVlrTotal, vVlrTotalICMS, vVlrTotalIPI : Real;
    vDataIni : TDate;
    procedure Grava_Memo;
  public
    { Public declarations }
  end;

var
  fConsEstUltMov: TfConsEstUltMov;

implementation

uses UDM1, UConsEstoqueMat, UConsHistMat;

{$R *.DFM}

procedure TfConsEstUltMov.Grava_Memo;
var
  ano,mes,dia : Word;
  vVlrAux     : Real;
  vQtdEntrada, vQtdSaida : Real;
  vSaldo      : Real;
  vVlrEntrada, vVlrSaida : Real;
  vQtdAux : Real;
begin
  qMaterial.First;
  while not qMaterial.Eof do
    begin
      DecodeDate(qMaterialDtMov.AsDateTime,ano,mes,dia);
      if mEstoque.Locate('Ano;Mes',VarArrayOf([Ano,Mes]),[locaseinsensitive]) then
        mEstoque.Edit
      else
        begin
          mEstoque.Insert;
          mEstoqueAno.AsInteger := Ano;
          mEstoqueMes.AsInteger := Mes;
        end;
      vVlrAux      := StrToFloat(FormatFloat('0.00',qMaterialQtd.AsFloat * qMaterialVlrUnitario.AsFloat));
      vVlrAux      := vVlrAux - qMaterialVlrDesconto.AsFloat;
      if qMaterialES.AsString = 'E' then
        begin
          mEstoqueVlrEntrada.AsFloat := mEstoqueVlrEntrada.AsFloat + vVlrAux;
          mEstoqueSaldo.AsFloat      := StrToFloat(FormatFloat('0.00000',mEstoqueSaldo.AsFloat + qMaterialQtd.AsFloat));
          mEstoqueQtdEntrada.AsFloat := StrToFloat(FormatFloat('0.00000',mEstoqueQtdEntrada.AsFloat + qMaterialQtd.AsFloat));
        end;
      if qMaterialES.AsString = 'S' then
        begin
          mEstoqueSaldo.AsFloat    := StrToFloat(FormatFloat('0.00000',mEstoqueSaldo.AsFloat - qMaterialQtd.AsFloat));
          mEstoqueQtdSaida.AsFloat := StrToFloat(FormatFloat('0.00000',mEstoqueQtdSaida.AsFloat + qMaterialQtd.AsFloat));
          mEstoqueVlrSaida.AsFloat := mEstoqueVlrSaida.AsFloat + vVlrAux;
        end;
      mEstoque.Post;
      qMaterial.Next;
    end;
  vQtdEntrada := 0;
  vVlrEntrada := 0;
  vVlrSaida   := 0;
  vQtdSaida   := 0;
  vsaldo      := 0;
  mEstoque.First;
  while not mEstoque.Eof do
    begin
      if (mEstoqueQtdEntrada.AsFloat > 0) and (mEstoqueVlrEntrada.AsFloat > 0) then
        begin
          mEstoque.Edit;
          mEstoqueVlrCustoMedio.AsFloat := StrToFloat(FormatFloat('0.00',mEstoqueVlrEntrada.AsFloat / mEstoqueQtdEntrada.AsFloat));
          mEstoque.Post;
        end;
      if (mEstoqueQtdSaida.AsFloat > 0) and (mEstoqueVlrSaida.AsFloat > 0) then
        begin
          mEstoque.Edit;
          mEstoqueVlrCustoMedio.AsFloat := StrToFloat(FormatFloat('0.00',mEstoqueVlrSaida.AsFloat / mEstoqueQtdSaida.AsFloat));
          mEstoque.Post;
        end;
      vQtdEntrada := vQtdEntrada + mEstoqueQtdEntrada.AsFloat;
      vVlrEntrada := StrToFloat(FormatFloat('0.00',vVlrEntrada + mEstoqueVlrEntrada.AsFloat));
      vQtdSaida   := vQtdSaida + mEstoqueQtdSaida.AsFloat;
      vVlrSaida   := StrToFloat(FormatFloat('0.00',vVlrSaida + mEstoqueVlrSaida.AsFloat));
      vSaldo      := vSaldo + mEstoqueSaldo.AsFloat;
      mEstoque.Next;
    end;
  if (vVlrEntrada > 0) and (vQtdEntrada > 0) then
    CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',vVlrEntrada / vQtdEntrada));
  if (vVlrSaida > 0) and (vQtdSaida > 0) then
    CurrencyEdit5.Value := StrToFloat(FormatFloat('0.00',vVlrSaida / vQtdSaida));
  CurrencyEdit4.Value := StrToFloat(FormatFloat('0.00000',vQtdEntrada));
  CurrencyEdit6.Value := StrToFloat(FormatFloat('0.00000',vQtdSaida));
  CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00000',vSaldo));
end;

procedure TfConsEstUltMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qMaterial.Close;
  Action := Cafree;
end;

procedure TfConsEstUltMov.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsEstUltMov.BitBtn1Click(Sender: TObject);
var
  ano,mes,dia : Word;
  i : Integer;
begin
  RxDBGrid1.DataSource := nil;
  mEstoque.EmptyTable;
  qMaterial.Close;
  qMaterial.SQL.Clear;
  qMaterial.SQL.Add('SELECT CodMaterial, NumMov, Largura, DtMov, ES, TipoMov, NumNota, VlrUnitario, Qtd, Unidade, CodCor, PercIcms, VlrDesconto, Tamanho');
  qMaterial.SQL.Add('FROM "dbEstoqueMatMov.db" dbEstoqueMatMov');
  qMaterial.SQL.Add('WHERE   (CodMaterial = :CodMaterial)');
  qMaterial.SQL.Add('   AND  (CodCor = :CodCor)');
  qMaterial.SQL.Add('   AND  (DtMov >= :DtMov)');
  if fConsEstoqueMat.qEstoqueTamanho.AsString <> '' then
    begin
      qMaterial.SQL.Add('   AND  (Tamanho = :Tamanho)');
      qMaterial.ParamByName('Tamanho').AsString := fConsEstoqueMat.qEstoqueTamanho.AsString;
    end;
  qMaterial.SQL.Add('ORDER BY DtMov, ES');

  Label2.Caption := 'Meses';
  if CurrencyEdit1.AsInteger > 0 then
    begin
      Screen.Cursor := crHourGlass;
      qMaterial.ParamByName('CodMaterial').AsInteger := fConsEstoqueMat.qEstoqueCodMaterial.AsInteger;
      if fConsEstoqueMat.qEstoqueCodCor.AsInteger > 0 then
        qMaterial.ParamByName('CodCor').AsInteger := fConsEstoqueMat.qEstoqueCodCor.AsInteger
      else
        qMaterial.ParamByName('CodCor').AsInteger := 0;
      DecodeDate(Date,ano,mes,dia);
      for i := 1 to (CurrencyEdit1.AsInteger - 1) do
        begin
          mes := mes - 1;
          if mes < 1 then
            begin
              mes := 12;
              ano := ano - 1;
            end;
        end;
      Dia      := 01;
      vDataIni := EncodeDate(ano,mes,dia);
      Label2.Caption := 'Meses  (Data Inicial: ' + IntToStr(Dia) + '/' + IntToStr(Mes) + '/' + IntToStr(Ano) + ')';
      qMaterial.ParamByName('DtMov').AsDate     := vDataIni;
      qMaterial.Open;
      if qMaterial.RecordCount > 0 then
        Grava_Memo;

      //Abre o sql da ordem de compra
      qOC.Close;
      qOC.SQL.Clear;
      qOC.SQL.Add('SELECT Dbfornecedores.NomeForn, Dbordemcompra.Codigo NumOC, Dbordemcompraitem.Qtd, Dbordemcompraitem.QtdEntregue, ');
      qOC.SQL.Add('Dbproduto.Codigo CodigoMat, Dbordemcompraitem.DtEntrega, Dbordemcompraitem.QtdRestante, Dbcor.Nome, Dbcor.Codigo CodCor');
      qOC.SQL.Add('FROM "dbOrdemCompraItem.DB" Dbordemcompraitem');
      qOC.SQL.Add('   INNER JOIN "dbOrdemCompra.DB" Dbordemcompra');
      qOC.SQL.Add('   ON  (Dbordemcompraitem.Codigo = Dbordemcompra.Codigo)');
      qOC.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
      qOC.SQL.Add('   ON  (Dbordemcompraitem.CodMaterial = Dbproduto.Codigo)');
      qOC.SQL.Add('   FULL OUTER JOIN "Dbcor.DB" Dbcor');
      qOC.SQL.Add('   ON  (Dbordemcompraitem.CodCor = Dbcor.Codigo)');
      qOC.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
      qOC.SQL.Add('   ON  (Dbordemcompra.CodFornecedor = Dbfornecedores.CodForn)');
      qOC.SQL.Add('Where (dbordemcompraitem.QtdRestante > 0)');
      qOC.SQL.Add('     AND (dbordemcompraitem.CodMaterial = :CodMaterial)');
      qOC.SQL.Add('     AND (dbordemcompraitem.CodCor = :CodCor)');
      qOC.ParamByName('CodMaterial').AsInteger := fConsEstoqueMat.qEstoqueCodMaterial.AsInteger;
      if fConsEstoqueMat.qEstoqueCodCor.AsInteger > 0 then
        qOC.ParamByName('CodCor').AsInteger := fConsEstoqueMat.qEstoqueCodCor.AsInteger
      else
        qOC.ParamByName('CodCor').AsInteger := 0;
      qOC.Open;
      Screen.Cursor              := crDefault;
    end
  else
    ShowMessage('Falta informar a quantidade de meses!');
  RxDBGrid1.DataSource := dsmEstoque;
end;

procedure TfConsEstUltMov.FormShow(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

procedure TfConsEstUltMov.mEstoqueNewRecord(DataSet: TDataSet);
begin
  mEstoqueQtdEntrada.AsFloat    := 0;
  mEstoqueQtdSaida.AsFloat      := 0;
  mEstoqueVlrCustoMedio.AsFloat := 0;
  mEstoqueSaldo.AsFloat         := 0;
  mEstoqueVlrEntrada.AsFloat    := 0;
end;

procedure TfConsEstUltMov.BitBtn3Click(Sender: TObject);
begin
  fConsHistMat := TfConsHistMat.Create(Self);
  fConsHistMat.RadioGroup1.ItemIndex     := fConsEstoqueMat.RadioGroup3.ItemIndex;
  fConsHistMat.RadioGroup1Click(Sender);
  fConsHistMat.RxDBFilter1.Active := True;
  fConsHistMat.RxDBLookupCombo2.KeyValue := qMaterialCodMaterial.AsInteger;
  fConsHistMat.RxDBLookupCombo1.KeyValue := qMaterialCodMaterial.AsInteger;
  fConsHistMat.CurrencyEdit1.AsInteger   := qMaterialCodMaterial.AsInteger;
  fConsHistMat.CurrencyEdit1Exit(fConsHistMat);
  if qMaterialCodCor.AsInteger > 0 then
    begin
      fConsHistMat.RxDBLookupCombo3Enter(Sender);
      fConsHistMat.RxDBLookupCombo3.KeyValue := qMaterialCodCor.AsInteger;
    end;
  fConsHistMat.ShowModal;
end;

end.
