unit UConsEstoqueMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, RXDBCtrl, StdCtrls, DBVGrids, Db, DBTables,
  Buttons, RxLookup, Mask, ToolEdit, DBFilter, ALed, MemTable, CurrEdit, Variants,
  SMDBGrid, ShellApi;

type
  TfConsEstoqueMat = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    qEstoque: TQuery;
    dsEstoque: TDataSource;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueNomeMaterial: TStringField;
    qEstoqueCodCor: TIntegerField;
    qEstoqueQtd: TFloatField;
    qEstoqueEstMinimo: TFloatField;
    qEstoqueLargura: TStringField;
    qEstoqueNomeCor: TStringField;
    qEstoqueReferencia: TStringField;
    qEstoqueEstMaximo: TFloatField;
    Panel2: TPanel;
    Label2: TLabel;
    ALed1: TALed;
    Label32: TLabel;
    ALed4: TALed;
    Label34: TLabel;
    ALed2: TALed;
    Label3: TLabel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    StaticText1: TStaticText;
    qOC: TQuery;
    dsOC: TDataSource;
    qEstoquelkQtdOC: TFloatField;
    RadioGroup4: TRadioGroup;
    qEstoqueTamanho: TStringField;
    qEstoqueclQtdOC: TFloatField;
    qOCCodMaterial: TIntegerField;
    qOCCodCor: TIntegerField;
    qOCQtdOC: TFloatField;
    SMDBGrid1: TSMDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RadioGroup5: TRadioGroup;
    qPedido: TQuery;
    qPedidoCodProduto: TIntegerField;
    qPedidoQtdPares: TFloatField;
    qPedidoCodCor: TIntegerField;
    qEstoqueclQtdPedido: TIntegerField;
    qTalao: TQuery;
    qTalaoCodProduto: TIntegerField;
    qTalaoQtdPares: TFloatField;
    qTalaoCodCor: TIntegerField;
    qTalaoQtdProduzida: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure qEstoqueCalcFields(DataSet: TDataSet);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    linha, pagina : Integer;
    TextoHifen, TextoQtd : String;
    vMostrarPreco : Boolean;
    procedure Monta_qPedido;
    procedure Monta_qTalao;
  public
    { Public declarations }
  end;

var
  fConsEstoqueMat: TfConsEstoqueMat;

implementation

uses UDM1, URelEstoque, UConsEstUltMov,
  uPrevProdMinimo, rsDBUtils;

{$R *.DFM}

procedure TfConsEstoqueMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qEstoque.Close;
  qOC.Close;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfConsEstoqueMat.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfConsEstoqueMat.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  DateEdit1.Date := Date;
end;

procedure TfConsEstoqueMat.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor   := crHourGlass;
  if DateEdit1.Text = '  /  /    ' then
    DateEdit1.Date := Date;
  //*** Monta o sql do estoque
  qOC.Close;
  qOC.SQL.Clear;
  qOC.SQL.Add('SELECT CodMaterial, CodCor, SUM( QtdRestante ) QtdOC');
  qOC.SQL.Add('FROM "dbOrdemCompraItem.db" Dbordemcompraitem');
  qOC.SQL.Add('GROUP BY CodMaterial, CodCor');
  qOC.Open;

  if RadioGroup3.ItemIndex > 0 then
    RadioGroup5.ItemIndex := 0;

  //Foi trocado para usar o talão no dia 18/10/2013 conforme o Guilherme
  //Monta_qPedido;
  Monta_qTalao;

  qEstoque.Close;
  qEstoque.SQL.Clear;
  qEstoque.SQL.Add('SELECT DISTINCT Dbproduto.Codigo CodMaterial, Dbproduto.Nome NomeMaterial, Dbestoquematmov.CodCor, ');
  qEstoque.SQL.Add('SUM(Dbestoquematmov.Qtd2) Qtd, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbestoquematmov.Largura, Dbcor.Nome NomeCor, Dbproduto.Referencia, dbEstoqueMatMov.Tamanho');
  qEstoque.SQL.Add('FROM "dbProduto.DB" Dbproduto');
  qEstoque.SQL.Add('FULL OUTER JOIN "dbEstoqueMatMov.DB" Dbestoquematmov ON (Dbproduto.Codigo = Dbestoquematmov.CodMaterial)');
  qEstoque.SQL.Add('FULL OUTER JOIN "dbCor.DB" Dbcor ON (Dbestoquematmov.CodCor = Dbcor.Codigo)');
  //qEstoque.SQL.Add('WHERE ((Dbestoquematmov.DtMov <= :Data) or (Dbestoquematmov.DtMov is NULL)) and (Dbproduto.Estoque = True) and (dbproduto.ProdMat = :T1)');
  qEstoque.SQL.Add('WHERE ((Dbestoquematmov.DtMov <= :Data) or (Dbestoquematmov.DtMov is NULL)) and (Dbproduto.Estoque = True) ');
  case RadioGroup3.ItemIndex of
    0 : qEstoque.SQL.Add(' AND (dbproduto.ProdMat = ''P'')');
    1 : qEstoque.SQL.Add(' AND (dbproduto.ProdMat = ''M'') and (dbproduto.MaterialOutros = ''M'') ');
    2 : qEstoque.SQL.Add(' AND (dbproduto.ProdMat = ''M'') and (dbproduto.MaterialOutros = ''O'') ');
  end;
  qEstoque.SQL.Add('GROUP BY Dbproduto.Codigo, Dbproduto.Nome, Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbestoquematmov.Largura, Dbcor.Nome, Dbproduto.Referencia, dbEstoqueMatMov.Tamanho');
  case RadioGroup4.ItemIndex of
    0 : qEstoque.SQL.Add('ORDER BY Referencia, NomeCor, Tamanho');
    1 : qEstoque.SQL.Add('ORDER BY NomeMaterial, NomeCor, Tamanho');
    2 : qEstoque.SQL.Add('ORDER BY Codigo, NomeCor, Tamanho');
  end;
  qEstoque.ParamByName('Data').AsDate := DateEdit1.Date;
  qEstoque.Open;

  RadioGroup2Click(Sender);

  Screen.Cursor   := crDefault;
end;

procedure TfConsEstoqueMat.RadioGroup2Click(Sender: TObject);
var
  vQtd : Real;
begin
  if qEstoque.Active then
    begin
      vQtd := 0;
      qEstoque.Filtered := False;
      case RadioGroup2.ItemIndex of
        0 : begin
              qEstoque.Filter   := 'Qtd > ''' +FloatToStr(vQtd)+ '''';
              qEstoque.Filtered := True;
            end;
        1 : begin
              qEstoque.Filter   := 'Qtd < ''' +FloatToStr(vQtd)+ ''' and Qtd is not null';
              qEstoque.Filtered := True;
            end;
      end;
    end
  else
    qEstoque.Filtered := False;
end;

procedure TfConsEstoqueMat.BitBtn6Click(Sender: TObject);
begin
  qEstoque.First;
  fRelEstoque := TfRelEstoque.Create(Self);
  fRelEstoque.QuickRep1.Preview;
  fRelEstoque.QuickRep1.Free;
end;

procedure TfConsEstoqueMat.qEstoqueCalcFields(DataSet: TDataSet);
begin
  if qOC.Locate('CodMaterial;CodCor',VarArrayOf([qEstoqueCodMaterial.AsInteger,qEstoqueCodCor.AsInteger]),[locaseinsensitive]) then
    qEstoqueclQtdOC.AsFloat := qOCQtdOC.AsFloat
  else
    qEstoqueclQtdOC.AsFloat := 0;
  if RadioGroup5.ItemIndex > 0 then
  begin
    //Foi trocado para usar o talão no dia 18/10/2013 conforme o Guilherme
    //if qPedido.Locate('CodProduto;CodCor',VarArrayOf([qEstoqueCodMaterial.AsInteger,qEstoqueCodCor.AsInteger]),[locaseinsensitive]) then
      //qEstoqueclQtdPedido.AsInteger := qPedidoQtdPares.AsInteger;
    if qTalao.Locate('CodProduto;CodCor',VarArrayOf([qEstoqueCodMaterial.AsInteger,qEstoqueCodCor.AsInteger]),[locaseinsensitive]) then
      qEstoqueclQtdPedido.AsInteger := qTalaoQtdPares.AsInteger - qTalaoQtdProduzida.AsInteger;
  end;
end;

procedure TfConsEstoqueMat.SMDBGrid1DblClick(Sender: TObject);
begin
  if qEstoqueCodMaterial.AsInteger > 0 then
  begin
    fConsEstUltMov := TfConsEstUltMov.Create(Self);
    fConsEstUltMov.ShowModal;
  end;
end;

procedure TfConsEstoqueMat.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd : Real;
begin
  vQtd := 0;
  if StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat)) <  StrToFloat(FormatFloat('0.00000',vQtd)) then
    begin
      Background  := clRed;
      AFont.Color := clBlack;
    end
  else
  if StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat)) <  StrToFloat(FormatFloat('0.00000',qEstoqueEstMinimo.AsFloat)) then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end
  else
  if StrToFloat(FormatFloat('0.00000',qEstoqueEstMaximo.AsFloat)) > 0 then
    begin
      if StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat)) >  StrToFloat(FormatFloat('0.00000',qEstoqueEstMaximo.AsFloat)) then
        begin
          Background  := clAqua;
          AFont.Color := clBlack;
        end;
    end;
end;

procedure TfConsEstoqueMat.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsEstoqueMat.BitBtn2Click(Sender: TObject);
begin
  fPrevProdMinimo := TfPrevProdMinimo.Create(Self);
  fPrevProdMinimo.ShowModal;
end;

procedure TfConsEstoqueMat.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tProduto,Name);
end;

procedure TfConsEstoqueMat.Monta_qPedido;
begin
  qPedido.Close;
  if RadioGroup5.ItemIndex = 0 then
    exit;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT Dbpedidoitem.CodProduto, Sum(Dbpedidoitem.QtdPares) QtdPares, Dbpedidoitem.CodCor');
  qPedido.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
  qPedido.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)');
  if RadioGroup5.ItemIndex = 1 then
  begin
    qPedido.SQL.Add('   INNER JOIN "dbParametros.DB" Dbparametros');
    qPedido.SQL.Add('   ON  (Dbpedido.CodCliente = Dbparametros.CliEstoque)');
  end;
  qPedido.SQL.Add('WHERE   (Dbpedidoitem.DtBaixa IS NULL)');
  qPedido.SQL.Add('   AND  ( (Dbpedidoitem.Cancelado = FALSE)  OR  (Dbpedidoitem.Cancelado IS NULL) )');
  qPedido.SQL.Add('   AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado IS NULL) )');
  qPedido.SQL.Add('   AND  (DbpedidoItem.QtdParesRest > 0)');
  qPedido.SQL.Add('GROUP BY Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor');
  qPedido.Open;
end;

procedure TfConsEstoqueMat.Monta_qTalao;
begin
  qTalao.Close;
  if RadioGroup5.ItemIndex = 0 then
    exit;
  qTalao.SQL.Clear;
  qTalao.SQL.Add('SELECT dbTalao.CodProduto, Sum(dbTalao.Quantidade) QtdPares, dbTalao.CodCor, Sum(dbTalao.QtdProduzida) QtdProduzida');
  qTalao.SQL.Add('FROM "dbTalao.DB" dbTalao');
  if RadioGroup5.ItemIndex = 1 then
  begin
    qTalao.SQL.Add('   INNER JOIN "dbParametros.DB" Dbparametros');
    qTalao.SQL.Add('   ON  (dbTalao.CodCliente = Dbparametros.CliEstoque)');
  end;
  qTalao.SQL.Add('WHERE   (dbTalao.Produzido = False)');
  qTalao.SQL.Add('   AND  (dbTalao.Cancelado = FALSE)');
  qTalao.SQL.Add('   AND (dbTalao.QtdProduzida < dbTalao.Quantidade)');
  qTalao.SQL.Add('GROUP BY dbTalao.CodProduto, dbTalao.CodCor');
  qTalao.Open;
end;

end.
