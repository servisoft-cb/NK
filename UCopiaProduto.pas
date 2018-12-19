unit UCopiaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, RxLookup, StdCtrls, DB, Buttons;

type
  TfCopiaProduto = class(TForm)
    tProduto: TTable;
    tProdutoCodigo: TIntegerField;
    tProdutoCodGrupo: TIntegerField;
    tProdutoCodSubGrupo: TIntegerField;
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
    tProdutoVlrAtelier: TFloatField;
    tProdutoObs: TMemoField;
    tProdutoReferencia: TStringField;
    tProdutoReferencia2: TStringField;
    dsProduto: TDataSource;
    tProdutoCor: TTable;
    tProdutoCorCodProduto: TIntegerField;
    tProdutoCorCodCor: TIntegerField;
    tProdutoMat: TTable;
    tProdutoMatCodProduto: TIntegerField;
    tProdutoMatCodCorProd: TIntegerField;
    tProdutoMatItem: TIntegerField;
    tProdutoMatCodMaterial: TIntegerField;
    tProdutoMatCodGrade: TIntegerField;
    tProdutoMatCodCor: TIntegerField;
    tProdutoMatQtd: TFloatField;
    tProdutoMatVlrUnitario: TFloatField;
    tProdutoMatVlrTotal: TFloatField;
    tProdutoMatImpTalao: TStringField;
    tProdutoMatUnidade: TStringField;
    tProdutoMatConsumo: TStringField;
    dsProdutoCor: TDataSource;
    dsProdutoMat: TDataSource;
    Label27: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tProdutoLancaCor: TBooleanField;
    tProdutoPrecoGrade: TBooleanField;
    tProdutoVlrVenda: TFloatField;
    tProdutoPrecoCusto: TFloatField;
    tProdutoPosseMat: TStringField;
    tProdutoEstoque: TBooleanField;
    tProdutoPrecoCor: TBooleanField;
    tProdutoEstMinimo: TFloatField;
    tProdutoEstMaximo: TFloatField;
    tProdutoDiametro: TStringField;
    tProdutoComprimento: TStringField;
    tProdutoRosca: TStringField;
    tProdutoCabeca: TStringField;
    tProdutoCorPrCusto: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCopiaProduto: TfCopiaProduto;

implementation

uses UDM1;

{$R *.dfm}

procedure TfCopiaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCopiaProduto.RxDBLookupCombo10Enter(Sender: TObject);
begin
  tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfCopiaProduto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfCopiaProduto.BitBtn1Click(Sender: TObject);
var
  x : Integer;
begin
  if RxDBLookupCombo10.Text = '' then
    begin
      ShowMessage('Referência não foi informada!');
      exit;
    end;

  for x := 0 to (tProduto.FieldCount - 1) do
    begin
      if (tProduto.Fields[x].FieldName <> 'Codigo') and (tProduto.Fields[x].FieldName <> 'Referencia') then
        if not (tProduto.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
          DM1.tProduto.FieldByName(tProduto.Fields[x].FieldName).AsVariant := tProduto.Fields[x].Value;
    end;

  tProdutoCor.First;
  while not tProdutoCor.Eof do
    begin
      DM1.tProdutoCor.Insert;
      for x := 0 to (tProdutoCor.FieldCount - 1) do
        begin
          if tProdutoCor.Fields[x].FieldName <> 'CodProduto' then
            if not (tProdutoCor.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
              DM1.tProdutoCor.FieldByName(tProdutoCor.Fields[x].FieldName).AsVariant := tProdutoCor.Fields[x].Value;
        end;
      DM1.tProdutoCor.Post;
      tProdutoCor.Next;
    end;

  tProdutoMat.First;
  while not tProdutoMat.Eof do
    begin
      DM1.tProdutoMat.Insert;
      for x := 0 to (tProdutoMat.FieldCount - 1) do
        begin
          if tProdutoMat.Fields[x].FieldName <> 'CodProduto' then
            if not (tProdutoMat.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
              DM1.tProdutoMat.FieldByName(tProdutoMat.Fields[x].FieldName).AsVariant := tProdutoMat.Fields[x].Value;
        end;
      DM1.tProdutoMat.Post;
      tProdutoMat.Next;
    end;
  ShowMessage('Copia Concluida!');
  Close;
end;

end.

