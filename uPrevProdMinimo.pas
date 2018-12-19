unit uPrevProdMinimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ComCtrls, MemTable, ALed,
  Grids, DBGrids, RXDBCtrl, DBClient;

type
  TfPrevProdMinimo = class(TForm)
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    qEstoque: TQuery;
    qEstoqueCodCor: TIntegerField;
    qEstoqueEstMinimo: TFloatField;
    qEstoqueNomeMaterial: TStringField;
    qEstoqueNomeCor: TStringField;
    qEstoqueSaldo: TFloatField;
    qEstoqueReferencia: TStringField;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Bevel1: TBevel;
    qEstoqueCodProduto: TIntegerField;
    qPedido: TQuery;
    mEstMinimo: TMemoryTable;
    mEstMinimoCodProduto: TIntegerField;
    mEstMinimoNomeProduto: TStringField;
    mEstMinimoCodCor: TIntegerField;
    mEstMinimoNomeCor: TStringField;
    mEstMinimoQtdPedido: TIntegerField;
    mEstMinimoQtdMinimo: TIntegerField;
    mEstMinimoQtdDiferenca: TIntegerField;
    dsmEstMinimo: TDataSource;
    qPedidoCodProduto: TIntegerField;
    qPedidoQtdPares: TFloatField;
    qPedidoCodCor: TIntegerField;
    mEstMinimoQtdEstoque: TIntegerField;
    BitBtn2: TBitBtn;
    ALed2: TALed;
    Label3: TLabel;
    RxDBGrid1: TRxDBGrid;
    mEstMinimoObs: TStringField;
    ALed1: TALed;
    Label2: TLabel;
    StaticText1: TStaticText;
    mEstMinimoGerar: TBooleanField;
    mEstMinimoReferencia: TStringField;
    mEstMinimoPedido: TIntegerField;
    Label5: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    mEstMinimoQtdDiferencaMax: TFloatField;
    mEstMinimoQtdMaximo: TFloatField;
    qEstoqueEstMaximo: TFloatField;
    qPedidoPedidoCliente: TStringField;
    mAuxiliar: TClientDataSet;
    mAuxiliarReferencia: TStringField;
    mAuxiliarDtEntrega: TDateField;
    dsmAuxiliar: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mAuxiliarBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vGerado : Boolean;
    procedure Gera_Pedido;
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fPrevProdMinimo: TfPrevProdMinimo;

implementation

uses UDM1, UConsEstoqueMat, UInfDtEntrega, rsDBUtils;

{$R *.DFM}

procedure TfPrevProdMinimo.Monta_SQL;
begin
  //Monta o SQL do Estoque
  qEstoque.Close;
  qEstoque.SQL.Clear;
  qEstoque.SQL.Add('SELECT Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbproduto.Nome NomeMaterial, Dbproduto.Referencia, Dbcor.Nome NomeCor, SUM( Dbestoquematmov.Qtd2 ) Saldo, Dbproduto.Codigo CodProduto');
  qEstoque.SQL.Add('FROM "dbEstoqueMatMov.DB" Dbestoquematmov');
  qEstoque.SQL.Add('   FULL OUTER JOIN "Dbcor.DB" Dbcor');
  qEstoque.SQL.Add('   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)');
  qEstoque.SQL.Add('   FULL OUTER JOIN "Dbproduto.DB" Dbproduto');
  qEstoque.SQL.Add('   ON  (Dbproduto.Codigo = Dbestoquematmov.CodMaterial)');
  qEstoque.SQL.Add('WHERE  (Dbproduto.ProdMat = ''P'') and ((Dbproduto.EstMinimo > 0) or (Dbproduto.EstMaximo > 0))');
  if Edit1.Text <> '' then
    qEstoque.SQL.Add(' And Dbproduto.Referencia LIKE ''%' + Edit1.Text + '%''');
  qEstoque.SQL.Add('GROUP BY Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbproduto.Nome, Dbproduto.Referencia, Dbcor.Nome, Dbproduto.Codigo, Dbproduto.Codigo');
  case fConsEstoqueMat.RadioGroup4.ItemIndex of
    0 : qEstoque.SQL.Add('ORDER BY Dbproduto.Referencia, NomeCor');
    1 : qEstoque.SQL.Add('ORDER BY NomeMaterial, NomeCor');
  end;
  qEstoque.Open;

  //Monta o SQL do Pedido
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT Dbpedidoitem.CodProduto, Dbpedidoitem.QtdPares, Dbpedidoitem.CodCor, Dbpedido.PedidoCliente');
  qPedido.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
  qPedido.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)');
  qPedido.SQL.Add('   INNER JOIN "dbParametros.DB" Dbparametros');
  qPedido.SQL.Add('   ON  (Dbpedido.CodCliente = Dbparametros.CliEstoque)');
  qPedido.SQL.Add('   INNER JOIN "Dbproduto.DB" Dbproduto');
  qPedido.SQL.Add('   ON  (Dbproduto.Codigo = DbPedidoItem.CodProduto)');
  qPedido.SQL.Add('WHERE   (Dbpedidoitem.DtBaixa IS NULL)');
  qPedido.SQL.Add('   AND  ( (Dbpedidoitem.Cancelado = FALSE)  OR  (Dbpedidoitem.Cancelado IS NULL) )');
  qPedido.SQL.Add('   AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado IS NULL) )');
  qPedido.SQL.Add('   AND  (DbpedidoItem.QtdParesRest > 0)');
  if Edit1.Text <> '' then
    qPedido.SQL.Add(' And Dbproduto.Referencia LIKE ''%' + Edit1.Text + '%''');
  qPedido.Open;

end;

procedure TfPrevProdMinimo.Gera_Pedido;
var
  vCodigo, vItem, vOrdem : Integer;
begin
  ProgressBar1.Position := 0;
  ProgressBar1.Max      := mEstMinimo.RecordCount;

  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tPedido.IndexFieldNames  := 'Pedido';
  DM1.tPedido.Last;
  vCodigo := DM1.tPedidoPedido.AsInteger + 1;

  DM1.tPedido.Insert;
  DM1.tPedidoPedido.AsInteger         := vCodigo;
  DM1.tPedidoPedidoCliente.AsString   := IntToStr(vCodigo);
  DM1.tPedidoCodCliente.AsInteger     := DM1.tParametrosCliEstoque.AsInteger;
  DM1.tPedidoSituacao.AsInteger       := 1;
  DM1.tPedidoDtEmissao.AsDateTime     := Date;
  DM1.tPedidoQtdPares.AsFloat         := 0;
  DM1.tPedidoQtdParesRep.AsFloat      := 0;
  DM1.tPedidoVlrReposicao.AsFloat     := 0;
  DM1.tPedidoVlrDesconto.AsFloat      := 0;
  DM1.tPedidoEstoque.AsBoolean        := True;
  DM1.tPedido.Post;
  DM1.tPedido.Edit;
  vItem := 0;
  mEstMinimo.First;
  while not mEstMinimo.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if (mEstMinimoGerar.AsBoolean) and (mEstMinimoPedido.AsInteger < 1) then
        begin
          mEstMinimo.Edit;
          mEstMinimoPedido.AsInteger := vCodigo;
          mEstMinimo.Post;
          vGerado := True;
          inc(vItem);
          DM1.tPedidoItem.Insert;
          DM1.tPedidoItemPedido.AsInteger         := DM1.tPedidoPedido.AsInteger;
          DM1.tPedidoItemItem.AsInteger           := vItem;
          DM1.tPedidoItemCodProduto.AsInteger     := mEstMinimoCodProduto.AsInteger;
          DM1.tPedidoItemSitTrib.AsInteger        := 0;
          DM1.tPedidoItemCodCor.AsInteger         := mEstMinimoCodCor.AsInteger;
          DM1.tPedidoItemCancelado.AsBoolean      := False;
          DM1.tPedidoItemCodGrade.AsInteger       := 0;
          DM1.tProduto.SetKey;
          DM1.tProdutoCodigo.AsInteger            := mEstMinimoCodProduto.AsInteger;
          if DM1.tProduto.GotoKey then
            DM1.tPedidoItemPreco.AsFloat          := DM1.tProdutoVlrVenda.AsFloat;
          DM1.tPedidoItemVlrDesconto.AsFloat      := 0;
          if (RadioGroup1.ItemIndex = 0) or ((RadioGroup1.ItemIndex = 1) and (mEstMinimoQtdMaximo.AsFloat <= 0)) then
            begin
              if mEstMinimoQtdDiferenca.AsInteger < 0 then
                DM1.tPedidoItemQtdPares.AsFloat         := StrToFloat(FormatFloat('0',mEstMinimoQtdDiferenca.AsInteger * -1))
              else
                DM1.tPedidoItemQtdPares.AsFloat         := StrToFloat(FormatFloat('0',mEstMinimoQtdDiferenca.AsInteger));
            end
          else
            begin
              if mEstMinimoQtdDiferencaMax.AsInteger < 0 then
                DM1.tPedidoItemQtdPares.AsFloat         := StrToFloat(FormatFloat('0',mEstMinimoQtdDiferencaMax.AsInteger * -1))
              else
                DM1.tPedidoItemQtdPares.AsFloat         := StrToFloat(FormatFloat('0',mEstMinimoQtdDiferencaMax.AsInteger));
            end;

          DM1.tPedidoItemQtdParesFat.AsFloat      := 0;
          DM1.tPedidoItemQtdParesRest.AsFloat     := DM1.tPedidoItemQtdPares.AsFloat;
          DM1.tPedidoItemReposicao.AsBoolean      := False;
          DM1.tPedidoItemVlrTotal.AsFloat         := StrToFloat(FormatFloat('0.00',DM1.tPedidoItemPreco.AsFloat * DM1.tPedidoItemQtdPares.AsInteger));
          DM1.tPedidoItemCopiado.AsBoolean        := False;
          DM1.tPedidoItemSelecionado.AsBoolean    := False;
          DM1.tPedidoItemNumOS.AsString           := '';
          
          DM1.tPedidoItemDtEmbarque.AsDateTime    := Date;
          mAuxiliar.First;
          while not mAuxiliar.Eof do
            begin
              if mAuxiliarReferencia.AsString = Copy(mEstMinimoReferencia.AsString,1,Length(mAuxiliarReferencia.AsString)) then
                begin
                  DM1.tPedidoItemDtEmbarque.AsDateTime := mAuxiliarDtEntrega.AsDateTime;
                  mAuxiliar.Last;
                end;
              mAuxiliar.Next;
            end;
          DM1.tPedidoItemCodCia.AsInteger           := 0;
          DM1.tPedidoItemDtReprogramacao.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
          DM1.tPedidoItemReprogramacao.AsBoolean    := False;
          DM1.tPedidoItemFabrica.AsString           := '';
          DM1.tPedidoItemGerarTalao.AsBoolean       := True;
          DM1.tPedidoVlrTotal.AsFloat             := DM1.tPedidoVlrTotal.AsFloat + DM1.tPedidoItemVlrTotal.AsFloat;
          DM1.tPedidoVlrMercadoria.AsFloat        := DM1.tPedidoVlrMercadoria.AsFloat + DM1.tPedidoItemVlrTotal.AsFloat;
          DM1.tPedidoPesoBruto.AsFloat            := DM1.tPedidoPesoBruto.AsFloat + (DM1.tPedidoItemQtdPares.AsFloat * DM1.tProdutoPesoBruto.AsFloat);
          DM1.tPedidoPesoLiquido.AsFloat          := DM1.tPedidoPesoLiquido.AsFloat + (DM1.tPedidoItemQtdPares.AsFloat * DM1.tProdutoPesoLiquido.AsFloat);
          DM1.tPedidoQtdPares.AsFloat             := DM1.tPedidoQtdPares.AsFloat + DM1.tPedidoItemQtdPares.AsFloat;
          DM1.tPedidoQtdParesRest.AsFloat         := DM1.tPedidoQtdPares.AsFloat;
          DM1.tProdutoMat.Filtered := False;
          if DM1.tProdutoLancaCor.AsBoolean then
            begin
              DM1.tProdutoMat.Filter   := 'CodCorProd = '''+DM1.tPedidoItemCodCor.AsString+'''';
              DM1.tProdutoMat.Filtered := True;
            end;

          vOrdem := 0;
          DM1.tProdutoMat.First;
          while not DM1.tProdutoMat.EOF do
            begin
              inc(vOrdem);
              DM1.tPedidoMaterial.Insert;
              DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
              DM1.tPedidoMaterialCodCor.AsInteger      := DM1.tProdutoMatCodCor.AsInteger;
              DM1.tPedidoMaterialCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
              DM1.tPedidoMaterialConsumoPr.AsFloat     := DM1.tProdutoMatQtd.AsFloat;
              DM1.tPedidoMaterialItemPed.AsInteger     := DM1.tPedidoItemItem.AsInteger;
              DM1.tPedidoMaterialOrdem.AsInteger       := vOrdem; 
              DM1.tPedidoMaterialImpTalao.AsString     := DM1.tProdutoMatImpTalao.AsString;
              DM1.tPedidoMaterialTipoConsumo.AsString  := DM1.tProdutoMatConsumo.AsString;
              DM1.tPedidoMaterial.Post;
              DM1.tProdutoMat.Next;
            end;
          DM1.tPedidoItem.Post;
        end;
      mEstMinimo.Next;
    end;
  if not vGerado then
    begin
      if DM1.tPedido.State in [dsEdit] then
        DM1.tPedido.Cancel;
      DM1.tPedido.SetKey;
      DM1.tPedidoPedido.AsInteger := vCodigo;
      if DM1.tPedido.GotoKey then
        DM1.tPedido.Delete;
    end;
end;

procedure TfPrevProdMinimo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tProdutoMat.Filtered := False;
  qEstoque.Close;
  qPedido.Close;
  Action := Cafree;
end;

procedure TfPrevProdMinimo.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevProdMinimo.BitBtn1Click(Sender: TObject);
var
  vTexto1 : String;
begin
  Screen.Cursor   := crHourGlass;
  mEstMinimo.EmptyTable;
  Monta_SQL;
  //qEstoque.Close;
  //qEstoque.Open;
  ProgressBar1.Position := 0;
  ProgressBar1.Max      := qEstoque.RecordCount;
  //qPedido.Close;
  //qPedido.Open;
  qEstoque.First;
  while not qEstoque.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if qEstoqueSaldo.AsInteger < qEstoqueEstMinimo.AsInteger then
        begin
          mEstMinimo.Insert;
          mEstMinimoReferencia.AsString  := qEstoqueReferencia.AsString;
          mEstMinimoCodProduto.AsInteger := qEstoqueCodProduto.AsInteger;
          mEstMinimoNomeProduto.AsString := qEstoqueNomeMaterial.AsString;
          mEstMinimoCodCor.AsInteger     := qEstoqueCodCor.AsInteger;
          mEstMinimoNomeCor.AsString     := qEstoqueNomeCor.AsString;
          mEstMinimoQtdMinimo.AsInteger  := qEstoqueEstMinimo.AsInteger;
          mEstMinimoQtdMaximo.AsInteger  := qEstoqueEstMaximo.AsInteger;
          mEstMinimoQtdEstoque.AsInteger := qEstoqueSaldo.AsInteger;
          mEstMinimoGerar.AsBoolean      := False;
          mEstMinimoPedido.AsInteger     := 0;
          mEstMinimoQtdPedido.AsInteger  := 0;
          mEstMinimoObs.AsString         := '';

          //Filtra o sql do pedido para ver se existe algum produto que esta abaixo do minimo na produção
          qPedido.Filtered := False;
          if qEstoqueCodCor.IsNull then
            qPedido.Filter   := 'CodProduto = '''+qEstoqueCodProduto.AsString+''''
          else
            qPedido.Filter   := 'CodProduto = '''+qEstoqueCodProduto.AsString+''' and CodCor <= '''+qEstoqueCodCor.AsString+'''';
          qPedido.Filtered := True;
          qPedido.First;
          vTexto1 := 'Pedidos:';
          while not qPedido.Eof do
            begin
              mEstMinimoQtdPedido.AsInteger := mEstMinimoQtdPedido.AsInteger + qPedidoQtdPares.AsInteger;
              vTexto1 := vTexto1 + ', ' + qPedidoPedidoCliente.AsString;
              qPedido.Next;
            end;
          if vTexto1 <> 'Pedidos:' then
            mEstMinimoObs.AsString := vTexto1;
          mEstMinimoQtdDiferenca.AsInteger    := (mEstMinimoQtdEstoque.AsInteger +  mEstMinimoQtdPedido.AsInteger)  - mEstMinimoQtdMinimo.AsInteger;
          mEstMinimoQtdDiferencaMax.AsInteger := (mEstMinimoQtdEstoque.AsInteger +  mEstMinimoQtdPedido.AsInteger)  - mEstMinimoQtdMaximo.AsInteger;
          mEstMinimo.Post;
        end;
      qEstoque.Next;
    end;
  Screen.Cursor := crDefault;
end;

procedure TfPrevProdMinimo.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mEstMinimoQtdPedido.AsInteger > 0 then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
  if mEstMinimoGerar.AsBoolean then
    begin
      Background  := clLime;
      AFont.Color := clBlack;
    end;
end;

procedure TfPrevProdMinimo.RxDBGrid1DblClick(Sender: TObject);
begin
  if mEstMinimoCodProduto.AsInteger > 0 then
    begin
      mEstMinimo.Edit;
      mEstMinimoGerar.AsBoolean := not(mEstMinimoGerar.AsBoolean);
      mEstMinimo.Post;
    end;
end;

procedure TfPrevProdMinimo.BitBtn2Click(Sender: TObject);
begin
  if DM1.tParametrosCliEstoque.AsInteger < 1 then
    ShowMessage('Falta informar no parametros qual é o cliente do estoque!')
  else
    begin
      Screen.Cursor   := crHourGlass;
      vGerado         := False;
      fInfDtEntrega := TfInfDtEntrega.Create(Self);
      fInfDtEntrega.ShowModal;
      Gera_Pedido;
      Screen.Cursor := crDefault;
      if vGerado then
        ShowMessage('Pedido ' + DM1.tPedidoPedidoCliente.AsString + ' gerado!')
      else
        ShowMessage('Não foi gerado pedido!');
    end;
end;

procedure TfPrevProdMinimo.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfPrevProdMinimo.mAuxiliarBeforePost(DataSet: TDataSet);
begin
  mAuxiliarReferencia.AsString := UpperCase(mAuxiliarReferencia.AsString);
end;

procedure TfPrevProdMinimo.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tProduto,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProdutoMat,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedido,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoItem,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoMaterial,Name);
end;

end.
