unit UConsCPagarCReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, rsDBUtils, Dialogs, StdCtrls, Mask, ToolEdit, Grids, DBGrids, SMDBGrid, DB, DBTables,
  DBClient, Buttons, RzTabs, ExtCtrls, CurrEdit;

type
  TfConsCPagarCReceber = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    qCReceber: TQuery;
    qCPagar: TQuery;
    qCReceberNumCReceber: TIntegerField;
    qCReceberParcCReceber: TIntegerField;
    qCReceberVlrParcCReceber: TFloatField;
    qCReceberDtVencCReceber: TDateField;
    qCReceberDtPagParcCReceber: TDateField;
    qCReceberCodCli: TIntegerField;
    qCReceberNumNota: TIntegerField;
    qCReceberPgtoParcial: TFloatField;
    qCReceberRestParcela: TFloatField;
    qCReceberPercComissao: TFloatField;
    qCReceberVlrComissao: TFloatField;
    qCReceberVlrDevolucao: TFloatField;
    qCReceberTransferencia: TBooleanField;
    qCReceberNomeCliente: TStringField;
    qCReceberCodVendedor: TIntegerField;
    qCReceberDtGerado: TDateField;
    qCReceberTipoDoc: TStringField;
    qCPagarNumCPagar: TIntegerField;
    qCPagarParcCPagar: TIntegerField;
    qCPagarDtVencCPagar: TDateField;
    qCPagarVlrParcCPagar: TFloatField;
    qCPagarDtPagParcCPagar: TDateField;
    qCPagarCodForn: TIntegerField;
    qCPagarNomeForn: TStringField;
    qCPagarNumNotaEnt: TIntegerField;
    qCPagarPgtoParcial: TFloatField;
    qCPagarRestParcela: TFloatField;
    qCPagarNroDuplicata: TIntegerField;
    mDetalhado: TClientDataSet;
    dsmDetalhado: TDataSource;
    mDetalhadoCodCliForn: TIntegerField;
    mDetalhadoNome: TStringField;
    mDetalhadoDtVencimento: TDateField;
    mDetalhadoVlrReceber: TFloatField;
    mDetalhadoVlrPagar: TFloatField;
    mDetalhadoSaldo: TFloatField;
    BitBtn1: TBitBtn;
    mDetalhadoTipo: TIntegerField;
    mResumo: TClientDataSet;
    mResumoDtVencimento: TDateField;
    mResumoVlrReceber: TFloatField;
    mResumoVlrPagar: TFloatField;
    mResumoSaldo: TFloatField;
    dsmResumo: TDataSource;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    qCPagarAtraso: TQuery;
    qCReceberAtraso: TQuery;
    qCReceberAtrasoRestParcela: TFloatField;
    qCPagarAtrasoRestParcela: TFloatField;
    BitBtn3: TBitBtn;
    mDetalhadoNumNota: TIntegerField;
    mDetalhadoParcela: TIntegerField;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mDetalhadoNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure mResumoNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Monta_SQLAtraso;
    procedure Gera_Auxiliar;
    procedure Le_Auxiliar;
  public
    { Public declarations }
  end;

var
  fConsCPagarCReceber: TfConsCPagarCReceber;

implementation

uses URelCPagarCReceberDet, URelCPagarCReceberRes;

{$R *.dfm}

procedure TfConsCPagarCReceber.Monta_SQLAtraso;
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  if DateEdit1.Date > 1 then
    begin
      qCReceberAtraso.Close;
      qCReceberAtraso.SQL.Clear;
      qCReceberAtraso.SQL.Add('SELECT SUM( RestParcela ) RestParcela ');
      qCReceberAtraso.SQL.Add('FROM "dbCReceberParc.DB" Dbcreceberparc');
      qCReceberAtraso.SQL.Add('WHERE   ((Cancelado = FALSE) or (Cancelado is Null))');
      qCReceberAtraso.SQL.Add('   AND  (RestParcela > 0)');
      if DateEdit1.Date > 0 then
        begin
          qCReceberAtraso.SQL.Add(' AND (DtVencCReceber < :DataRef)');
          qCReceberAtraso.ParamByName('DataRef').AsDate := DateEdit1.Date;
        end;
      qCReceberAtraso.Open;
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',qCReceberAtrasoRestParcela.AsFloat));

      qCPagarAtraso.Close;
      qCPagarAtraso.SQL.Clear;
      qCPagarAtraso.SQL.Add('SELECT SUM( RestParcela ) RestParcela');
      qCPagarAtraso.SQL.Add('FROM "dbCPagarParc.DB" Dbcpagarparc');
      qCPagarAtraso.SQL.Add('WHERE  (RestParcela > 0)');
      if DateEdit1.Date > 0 then
        begin
          qCPagarAtraso.SQL.Add(' AND (DtVencCPagar < :DataRef)');
          qCPagarAtraso.ParamByName('DataRef').AsDate := DateEdit1.Date;
        end;
      qCPagarAtraso.Open;
      CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',qCPagarAtrasoRestParcela.AsFloat));
      CurrencyEdit3.Value := CurrencyEdit1.Value - CurrencyEdit2.Value;
    end;
end;

procedure TfConsCPagarCReceber.Le_Auxiliar;
var
  vSaldo : Real;
begin
  vSaldo := CurrencyEdit3.Value;
  mDetalhado.First;
  while not mDetalhado.Eof do
    begin
      mDetalhado.Edit;
      vSaldo := vSaldo + (mDetalhadoVlrReceber.AsFloat - mDetalhadoVlrPagar.AsFloat);
      mDetalhadoSaldo.AsFloat := vSaldo;
      mDetalhado.Post;
      mDetalhado.Next;
    end;

  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  CurrencyEdit6.Clear;
  vSaldo := CurrencyEdit3.Value;
  mResumo.First;
  while not mResumo.Eof do
    begin
      mResumo.Edit;
      vSaldo := vSaldo + (mResumoVlrReceber.AsFloat - mResumoVlrPagar.AsFloat);
      mResumoSaldo.AsFloat := vSaldo;
      mResumo.Post;
      CurrencyEdit4.Value := CurrencyEdit4.Value + mResumoVlrReceber.AsFloat;
      CurrencyEdit5.Value := CurrencyEdit5.Value + mResumoVlrPagar.AsFloat;
      mResumo.Next;
    end;
  CurrencyEdit6.Value := CurrencyEdit4.Value - CurrencyEdit5.Value;

  CurrencyEdit7.Value := CurrencyEdit1.Value + CurrencyEdit4.Value;
  CurrencyEdit8.Value := CurrencyEdit2.Value + CurrencyEdit5.Value;
  CurrencyEdit9.Value := CurrencyEdit7.Value - CurrencyEdit8.Value;
end;

procedure TfConsCPagarCReceber.Gera_Auxiliar;
begin

  //Lendo o Contas a Receber
  mDetalhado.EmptyDataSet;
  mResumo.EmptyDataSet;
  qCReceber.First;
  while not qCReceber.Eof do
    begin
      //Grava Detlhado
      mDetalhado.Insert;
      mDetalhadoCodCliForn.AsInteger    := qCReceberCodCli.AsInteger;
      mDetalhadoNome.AsString           := qCReceberNomeCliente.AsString;
      mDetalhadoDtVencimento.AsDateTime := qCReceberDtVencCReceber.AsDateTime;
      mDetalhadoVlrReceber.AsFloat      := qCReceberRestParcela.AsFloat;
      mDetalhadoNumNota.AsInteger       := qCReceberNumNota.AsInteger;
      mDetalhadoParcela.AsInteger       := qCReceberParcCReceber.AsInteger;
      mDetalhadoTipo.AsInteger          := 0;
      mDetalhado.Post;

      //Grava Resumo
      if mResumo.Locate('DtVencimento',qCReceberDtVencCReceber.AsDateTime,[loCaseInsensitive]) then
        mResumo.Edit
      else
        begin
          mResumo.Insert;
          mResumoDtVencimento.AsDateTime := qCReceberDtVencCReceber.AsDateTime;
        end;
      mResumoVlrReceber.AsFloat := mResumoVlrReceber.AsFloat + qCReceberRestParcela.AsFloat;
      mResumo.Post;
      qCReceber.Next;
    end;

  //Lendo o contas a pagar
  qCPagar.First;
  while not qCPagar.Eof do
    begin
      //Grava Detlhado
      mDetalhado.Insert;
      mDetalhadoCodCliForn.AsInteger    := qCPagarCodForn.AsInteger;
      mDetalhadoNome.AsString           := qCPagarNomeForn.AsString;
      mDetalhadoDtVencimento.AsDateTime := qCPagarDtVencCPagar.AsDateTime;
      mDetalhadoVlrPagar.AsFloat        := qCPagarRestParcela.AsFloat;
      mDetalhadoNumNota.AsInteger       := qCPagarNroDuplicata.AsInteger;
      mDetalhadoParcela.AsInteger       := qCPagarParcCPagar.AsInteger;
      mDetalhadoTipo.AsInteger          := 1;
      mDetalhado.Post;

      //Grava Resumo
      if mResumo.Locate('DtVencimento',qCPagarDtVencCPagar.AsDateTime,[loCaseInsensitive]) then
        mResumo.Edit
      else
        begin
          mResumo.Insert;
          mResumoDtVencimento.AsDateTime := qCPagarDtVencCPagar.AsDateTime;
        end;
      mResumoVlrPagar.AsFloat := mResumoVlrPagar.AsFloat + qCPagarRestParcela.AsFloat;
      mResumo.Post;
      qCPagar.Next;
    end;

end;

procedure TfConsCPagarCReceber.Monta_SQL;
begin
  //Contas a Receber
  qCReceber.Close;
  qCReceber.SQL.Clear;
  qCReceber.SQL.Add('SELECT Dbcreceberparc.NumCReceber, Dbcreceberparc.ParcCReceber, Dbcreceberparc.VlrParcCReceber, Dbcreceberparc.DtVencCReceber, ');
  qCReceber.SQL.Add(' Dbcreceberparc.DtPagParcCReceber, Dbcreceberparc.CodCli, Dbcreceberparc.NumNota, Dbcreceberparc.PgtoParcial, ');
  qCReceber.SQL.Add(' Dbcreceberparc.RestParcela, Dbcreceberparc.PercComissao, Dbcreceberparc.VlrComissao, Dbcreceberparc.VlrDevolucao, ');
  qCReceber.SQL.Add(' Dbcreceberparc.Transferencia, Dbcliente.Nome NomeCliente, Dbcreceberparc.CodVendedor, Dbcreceberparc.DtGerado, Dbcreceberparc.TipoDoc ');
  qCReceber.SQL.Add('FROM "dbCReceberParc.DB" Dbcreceberparc ');
  qCReceber.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente ');
  qCReceber.SQL.Add('   ON  (Dbcreceberparc.CodCli = Dbcliente.Codigo) ');
  qCReceber.SQL.Add('WHERE   ((Dbcreceberparc.Cancelado = FALSE) or (Dbcreceberparc.Cancelado is Null)) ');
  qCReceber.SQL.Add('   AND  (Dbcreceberparc.RestParcela > 0) ');
  if DateEdit1.Date > 0 then
    begin
      qCReceber.SQL.Add('  AND (dbCReceberParc.DtVencCReceber >= :DataIni)');
      qCReceber.ParamByName('DataIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qCReceber.SQL.Add('  AND (dbCReceberParc.DtVencCReceber <= :DataFin)');
      qCReceber.ParamByName('DataFin').AsDate := DateEdit2.Date;
    end;
  qCReceber.SQL.Add('ORDER BY dbCReceberParc.DtVencCReceber');
  qCReceber.Open;

  //Contas a Pagar
  qCPagar.Close;
  qCPagar.SQL.Clear;
  qCPagar.SQL.Add('SELECT Dbcpagarparc.NumCPagar, Dbcpagarparc.ParcCPagar, Dbcpagarparc.DtVencCPagar, Dbcpagarparc.VlrParcCPagar, ');
  qCPagar.SQL.Add(' Dbcpagarparc.DtPagParcCPagar, Dbcpagarparc.CodForn, Dbfornecedores.NomeForn, Dbcpagarparc.NumNotaEnt, ');
  qCPagar.SQL.Add(' Dbcpagarparc.PgtoParcial, Dbcpagarparc.RestParcela, Dbcpagarparc.NroDuplicata ');
  qCPagar.SQL.Add('FROM "dbCPagarParc.DB" Dbcpagarparc ');
  qCPagar.SQL.Add('   INNER JOIN "DBFORNECEDORES.DB" Dbfornecedores ');
  qCPagar.SQL.Add('   ON  (Dbcpagarparc.CodForn = Dbfornecedores.CodForn) ');
  qCPagar.SQL.Add('WHERE  (Dbcpagarparc.RestParcela > 0) ');
  if DateEdit1.Date > 0 then
    begin
      qCPagar.SQL.Add('  AND (Dbcpagarparc.DtVencCPagar >= :DataIni)');
      qCPagar.ParamByName('DataIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qCPagar.SQL.Add('  AND (Dbcpagarparc.DtVencCPagar <= :DataFin)');
      qCPagar.ParamByName('DataFin').AsDate := DateEdit2.Date;
    end;
  qCPagar.SQL.Add('ORDER BY Dbcpagarparc.DtVencCPagar');
  qCPagar.Open;
end;

procedure TfConsCPagarCReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCReceber.Close;
  qCPagar.Close;
  qCReceberAtraso.Close;
  qCPagarAtraso.Close;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfConsCPagarCReceber.mDetalhadoNewRecord(DataSet: TDataSet);
begin
  mDetalhadoSaldo.AsFloat       := 0;
  mDetalhadoVlrPagar.AsFloat   := 0;
  mDetalhadoVlrReceber.AsFloat := 0;
end;

procedure TfConsCPagarCReceber.BitBtn1Click(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  SMDBGrid2.DataSource := nil;
  Monta_SQL;
  Monta_SQLAtraso;
  Gera_Auxiliar;
  le_Auxiliar;
  SMDBGrid1.DataSource := dsmDetalhado;
  SMDBGrid2.DataSource := dsmResumo;
end;

procedure TfConsCPagarCReceber.mResumoNewRecord(DataSet: TDataSet);
begin
  mResumoSaldo.AsFloat      := 0;
  mResumoVlrPagar.AsFloat   := 0;
  mResumoVlrReceber.AsFloat := 0;
end;

procedure TfConsCPagarCReceber.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsCPagarCReceber.BitBtn3Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  mDetalhado.First;
  fRelCPagarCReceberDet := TfRelCPagarCReceberDet.Create(Self);
  fRelCPagarCReceberDet.RLReport1.Preview;
  fRelCPagarCReceberDet.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsCPagarCReceber.BitBtn4Click(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  mResumo.First;
  fRelCPagarCReceberRes := TfRelCPagarCReceberRes.Create(Self);
  fRelCPagarCReceberRes.RLReport1.Preview;
  fRelCPagarCReceberRes.RLReport1.Free;
  SMDBGrid2.EnableScroll;
end;

procedure TfConsCPagarCReceber.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
