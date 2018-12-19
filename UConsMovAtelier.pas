unit UConsMovAtelier;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, CurrEdit, Mask, ToolEdit, RXLookup, Grids,
  DBGrids, Db, DBTables, RXDBCtrl, SMDBGrid, ALed;

type
  TfConsMovAtelier = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    qMovAtelier: TQuery;
    dsqMovAtelier: TDataSource;
    RadioGroup2: TRadioGroup;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    tMovAtelierItens: TTable;
    SMDBGrid1: TSMDBGrid;
    dsMovAtelierItens: TDataSource;
    tMovAtelierItensNumMov: TIntegerField;
    tMovAtelierItensItem: TIntegerField;
    tMovAtelierItensTalao: TIntegerField;
    tMovAtelierItensCodProduto: TIntegerField;
    tMovAtelierItensCodCor: TIntegerField;
    tMovAtelierItensQtd: TFloatField;
    tMovAtelierItensQtdDevolvida: TFloatField;
    tMovAtelierItensQtdRestante: TFloatField;
    tMovAtelierItensVlrUnitario: TFloatField;
    tMovAtelierItensVlrTotal: TFloatField;
    tProduto: TTable;
    tProdutoCodigo: TIntegerField;
    tProdutoCodGrupo: TIntegerField;
    tProdutoCodSubGrupo: TIntegerField;
    tProdutoReferencia: TStringField;
    tProdutoNome: TStringField;
    tProdutoUnidade: TStringField;
    tProdutoCodClasFiscal: TStringField;
    tProdutoCodSitTrib: TIntegerField;
    tProdutoLancaGrade: TBooleanField;
    tProdutoCodGrade: TIntegerField;
    tProdutoQParTalao: TFloatField;
    tProdutoPesoLiquido: TFloatField;
    tProdutoPesoBruto: TFloatField;
    tProdutoInativo: TBooleanField;
    tProdutoAliqIcms: TFloatField;
    tProdutoAliqIPI: TFloatField;
    tProdutoNomeExp: TStringField;
    tProdutoDescMaterial: TStringField;
    tProdutoReferencia2: TStringField;
    tProdutoVlrAtelier: TFloatField;
    tProdutoNomeModelo: TStringField;
    tProdutoFotoJpeg: TBlobField;
    tProdutoObs: TMemoField;
    tProdutoEndEtiq: TStringField;
    tProdutoLancaCor: TBooleanField;
    tProdutoPrecoGrade: TBooleanField;
    tProdutoVlrVenda: TFloatField;
    tProdutoProdMat: TStringField;
    tProdutoPrecoCusto: TFloatField;
    tProdutoPosseMat: TStringField;
    tProdutoEstoque: TBooleanField;
    tProdutoDtAlteracao: TDateField;
    tProdutoMaterialOutros: TStringField;
    tProdutoPrecoCor: TBooleanField;
    tProdutoCodFornecedor: TIntegerField;
    tProdutoEstMinimo: TFloatField;
    tProdutoEstMaximo: TFloatField;
    tMovAtelierItenslkReferencia: TStringField;
    tMovAtelierItenslkNomeProduto: TStringField;
    qMovAtelierCodCliente: TIntegerField;
    qMovAtelierNumMov: TIntegerField;
    qMovAtelierDtEmissao: TDateField;
    qMovAtelierVlrTotal: TFloatField;
    qMovAtelierNome: TStringField;
    RadioGroup1: TRadioGroup;
    qMovAtelierBaixado: TBooleanField;
    Label7: TLabel;
    ALed1: TALed;
    tMovAtelierItensDtBaixa: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsMovAtelier: TfConsMovAtelier;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsMovAtelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not qMovAtelier.IsEmpty then
    begin
      DM1.tMovAtelier.IndexFieldNames := 'NumMov';
      DM1.tMovAtelier.Locate('NumMov',qMovAtelierNumMov.AsInteger,[loCaseInsensitive]);
    end;
  qMovAtelier.Close;
  Action := CaFree;
end;

procedure TfConsMovAtelier.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMovAtelier.BitBtn5Click(Sender: TObject);
begin
  qMovAtelier.Close;
  qMovAtelier.SQL.Clear;
  qMovAtelier.SQL.Add('SELECT Dbmovatelier.CodCliente, Dbmovatelier.NumMov, Dbmovatelier.DtEmissao, Dbmovatelier.VlrTotal, Dbmovatelier.Baixado, Dbcliente.Nome');
  qMovAtelier.SQL.Add('FROM "dbMovAtelier.DB" Dbmovatelier');
  qMovAtelier.SQL.Add(' INNER JOIN "dbCliente.DB" Dbcliente');
  qMovAtelier.SQL.Add(' ON  (Dbmovatelier.CodCliente = Dbcliente.Codigo)');
  case RadioGroup1.ItemIndex of
    0 : qMovAtelier.SQL.Add('WHERE dbMovAtelier.Baixado = False');
    1 : qMovAtelier.SQL.Add('WHERE dbMovAtelier.Baixado = True');
  end;
  case RadioGroup2.ItemIndex of
    0 : qMovAtelier.SQL.Add('ORDER BY DbMovAtelier.NumMov');
    1 : qMovAtelier.SQL.Add('ORDER BY DbMovAtelier.DtEmissao');
    2 : qMovAtelier.SQL.Add('ORDER BY DbCliente.Nome');
  end;
  qMovAtelier.Open;
end;

procedure TfConsMovAtelier.FormShow(Sender: TObject);
begin
  BitBtn5Click(Sender);
end;

procedure TfConsMovAtelier.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qMovAtelierBaixado.AsBoolean then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
end;

procedure TfConsMovAtelier.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if tMovAtelierItensDtBaixa.AsDateTime > 1 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
end;

end.
