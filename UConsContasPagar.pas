unit UConsContasPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, Grids, DBGrids, RXDBCtrl,
  RXLookup, Db, DBTables, RXSplit, DBFilter, RXCtrls, Menus, Printers,
  Mask, ToolEdit, CurrEdit, ALed, Variants, SMDBGrid, DBClient;

type
  TfConsContasPagar = class(TForm)
    qParcelas: TQuery;
    dsqParcelas: TDataSource;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn7: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    ComboBox2: TComboBox;
    Panel3: TPanel;
    Label15: TLabel;
    Label4: TLabel;
    SMDBGrid1: TSMDBGrid;
    Label6: TLabel;
    DateEdit5: TDateEdit;
    Label9: TLabel;
    DateEdit6: TDateEdit;
    ComboBox1: TComboBox;
    Label10: TLabel;
    qParcelasNumCPagar: TIntegerField;
    qParcelasNomeForn: TStringField;
    qParcelasNomeConta: TStringField;
    qParcelasVlrUltPgto: TFloatField;
    qParcelasDtPrevCheque: TDateField;
    qParcelasNumCheque: TIntegerField;
    qParcelasParcCPagar: TIntegerField;
    qParcelasDtVencCPagar: TDateField;
    qParcelasVlrParcCPagar: TFloatField;
    qParcelasNumNotaEnt: TIntegerField;
    qParcelasCodForn: TIntegerField;
    qParcelasDtUltPgto: TDateField;
    qParcelasRestParcela: TFloatField;
    qParcelasDtGerado: TDateField;
    qParcelasNroDuplicata: TIntegerField;
    BitBtn1: TBitBtn;
    RxSpeedButton1: TRxSpeedButton;
    BitBtn4: TBitBtn;
    qParcelasVlrDevolucao: TFloatField;
    PopupMenu1: TPopupMenu;
    Detalhado1: TMenuItem;
    AcumuladoPorFornecedor1: TMenuItem;
    mAcumFornecedor: TClientDataSet;
    mAcumFornecedorCodigo: TIntegerField;
    mAcumFornecedorNome: TStringField;
    dsmAcumFornecedor: TDataSource;
    mAcumFornecedorValorDevolucao: TFloatField;
    mAcumFornecedorValorPagamento: TFloatField;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure AcumuladoPorFornecedor1Click(Sender: TObject);
    procedure mAcumFornecedorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vSQL : String;
    vExiste : Boolean;
    procedure Monta_SQLqParcelas;
    procedure Le_qParcelas(Tipo : String); //C=Calculo  F=Fornecedor
  public
    { Public declarations }
  end;

var
  fConsContasPagar: TfConsContasPagar;

implementation

uses UDM1, URelCPagarPagto, URelCPagarPagtoForn;


{$R *.DFM}

procedure TfConsContasPagar.Le_qParcelas(Tipo : String); //C=Calculo  F=Fornecedor
var
  vTotal : Real;
begin
  vTotal := 0;
  qParcelas.First;
  while not qParcelas.Eof do
  begin
    if Tipo = 'C' then
    begin
      case ComboBox1.ItemIndex of
        0 : vTotal := vTotal + qParcelasVlrUltPgto.AsFloat;
        1 : vTotal := vTotal + qParcelasVlrDevolucao.AsFloat;
      end;
    end
    else
    begin
      if mAcumFornecedor.Locate('Codigo',qParcelasCodForn.AsInteger,([Locaseinsensitive])) then
        mAcumFornecedor.Edit
      else
      begin
        mAcumFornecedor.Insert;
        mAcumFornecedorCodigo.AsInteger := qParcelasCodForn.AsInteger;
        mAcumFornecedorNome.AsString    := qParcelasNomeForn.AsString;
      end;
      mAcumFornecedorValorPagamento.AsFloat := StrToFloat(FormatFloat('0.00',mAcumFornecedorValorPagamento.AsFloat + qParcelasVlrUltPgto.AsFloat));
      mAcumFornecedorValorDevolucao.AsFloat := StrToFloat(FormatFloat('0.00',mAcumFornecedorValorDevolucao.AsFloat + qParcelasVlrDevolucao.AsFloat));
      mAcumFornecedor.Post;
    end;
    qParcelas.Next;
  end;

  if Tipo = 'C' then
    Label15.Caption := FormatFloat('###,###,###,##0.00',vTotal);
end;

procedure TfConsContasPagar.Monta_SQLqParcelas;
begin
  qParcelas.Close;
  qParcelas.SQL.Clear;
  qParcelas.SQL.Add(vSQL);
  case ComboBox1.ItemIndex of
    //0 : qParcelas.SQL.Add('WHERE (Dbcpagarparchist.Tipo = ''PAG'')');
    //1 : qParcelas.SQL.Add('WHERE (Dbcpagarparchist.Tipo = ''DEV'')');
    0 : qParcelas.SQL.Add('WHERE (Dbcpagarparchist.Pgto = True)');
    1 : qParcelas.SQL.Add('WHERE (Dbcpagarparchist.Devolucao = True)');
  end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qParcelas.SQL.Add(' AND (dbCPagarParc.CodForn = :CodForn) ');
      qParcelas.ParamByName('CodForn').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qParcelas.SQL.Add(' AND (dbCPagarParc.DtVencCPagar >= :DtVectoIni) ');
      qParcelas.ParamByName('DtVectoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qParcelas.SQL.Add(' AND (dbCPagarParc.DtVencCPagar <= :DtVectoFin) ');
      qParcelas.ParamByName('DtVectoFin').AsDate := DateEdit2.Date;
    end;
  if DateEdit3.Date > 0 then
    begin
      qParcelas.SQL.Add(' AND (dbCPagarParc.DtGerado >= :DtEmissaoIni) ');
      qParcelas.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qParcelas.SQL.Add(' AND (dbCPagarParc.DtGerado <= :DtEmissaoFin) ');
      qParcelas.ParamByName('DtEmissaoFin').AsDate := DateEdit4.Date;
    end;

  if DateEdit5.Date > 0 then
    begin
      qParcelas.SQL.Add(' AND (Dbcpagarparchist.DtUltPgto >= :DtPagtoIni) ');
      qParcelas.ParamByName('DtPagtoIni').AsDate := DateEdit5.Date;
    end;
  if DateEdit6.Date > 0 then
    begin
      qParcelas.SQL.Add(' AND (Dbcpagarparchist.DtUltPgto <= :DtPagtoFin) ');
      qParcelas.ParamByName('DtPagtoFin').AsDate := DateEdit6.Date;
    end;
    
  case ComboBox2.ItemIndex of
    0 : qParcelas.SQL.Add('ORDER BY Dbcpagarparchist.DtUltPgto, dbFornecedores.NomeForn, dbCPagarParc.NroDuplicata');
    1 : qParcelas.SQL.Add('ORDER BY dbCPagarParc.DtVencCPagar, dbFornecedores.NomeForn, dbCPagarParc.NroDuplicata');
    2 : qParcelas.SQL.Add('ORDER BY dbCPagarParc.DtGerado, dbFornecedores.NomeForn, dbCPagarParc.NroDuplicata');
    3 : qParcelas.SQL.Add('ORDER BY dbFornecedores.NomeForn, dbCPagarParc.DtVencCPagar, dbCPagarParc.NroDuplicata');
    4 : qParcelas.SQL.Add('ORDER BY dbCPagarParc.NroDuplicata, dbFornecedores.NomeForn, dbCPagarParc.DtVencCPagar');
  end;
  qParcelas.Open;
end;

procedure TfConsContasPagar.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsContasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      Dm1.tCPagar.Close;
      Dm1.tCPagarParc.Close;
      Dm1.tCPagarParcHist.Close;
      Dm1.tFornecedores.Close;
      DM1.tContas.Close;
      DM1.tJuros.Close;
      DM1.tMovimentos.Close;
      DM1.tCheque.Close;
      DM1.tChequeCPagar.Close;
      DM1.tNEntrada.Close;
      DM1.tPlanoContas.Close;
      DM1.tPlanoContasItens.Close;
    end;
  Action := Cafree;
end;

procedure TfConsContasPagar.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfConsContasPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F4 then
    BitBtn7Click(Sender);
end;

procedure TfConsContasPagar.BitBtn7Click(Sender: TObject);
begin
  Monta_SQLqParcelas;
  SMDBGrid1.DisableScroll;
  Le_qParcelas('C');
  SMDBGrid1.EnableScroll;
end;

procedure TfConsContasPagar.FormCreate(Sender: TObject);
begin
  Dm1.tCPagar.Open;
  Dm1.tCPagarParc.Open;
  Dm1.tCPagarParcHist.Open;
  Dm1.tFornecedores.Open;
  DM1.tContas.Open;
  DM1.tJuros.Open;
  DM1.tMovimentos.Open;
  DM1.tCheque.Open;
  DM1.tChequeCPagar.Open;
  DM1.tNEntrada.Open;
  DM1.tPlanoContas.Open;
  DM1.tPlanoContasItens.Open;
end;

procedure TfConsContasPagar.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  vSQL := qParcelas.SQL.Text;
end;

procedure TfConsContasPagar.BitBtn1Click(Sender: TObject);
begin
  Le_qParcelas('C');
end;

procedure TfConsContasPagar.Detalhado1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelCPagarPagto := TfRelCPagarPagto.Create(Self);
  fRelCPagarPagto.vVlrTotal := 0;
  fRelCPagarPagto.RLReport1.Preview;
  fRelCPagarPagto.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsContasPagar.AcumuladoPorFornecedor1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  mAcumFornecedor.EmptyDataSet;
  Le_qParcelas('F');
  fRelCPagarPagtoForn := TfRelCPagarPagtoForn.Create(Self);
  fRelCPagarPagtoForn.RLReport1.Preview;
  fRelCPagarPagtoForn.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsContasPagar.mAcumFornecedorNewRecord(DataSet: TDataSet);
begin
  mAcumFornecedorValorDevolucao.AsFloat := 0;
  mAcumFornecedorValorPagamento.AsFloat := 0;
end;

end.
