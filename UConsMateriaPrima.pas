unit UConsMateriaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, DBTables, Grids, DBGrids,
  SMDBGrid, ComCtrls, ALed;

type
  TfConsMateriaPrima = class(TForm)
    mMateriaPrima: TClientDataSet;
    mMateriaPrimaCodMaterial: TIntegerField;
    mMateriaPrimaNomeMaterial: TStringField;
    mMateriaPrimaCodCor: TIntegerField;
    mMateriaPrimaNomeCor: TStringField;
    mMateriaPrimaQtdProduto: TFloatField;
    mMateriaPrimaQtdMateriaPrima: TFloatField;
    mMateriaPrimaQtdEstoque: TFloatField;
    dsmMateriaPrima: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tProdutoConsumoItem: TTable;
    tProdutoConsumoItemCodProduto: TIntegerField;
    tProdutoConsumoItemCodCorProduto: TIntegerField;
    tProdutoConsumoItemItemMaterial: TIntegerField;
    tProdutoConsumoItemCodGrade: TIntegerField;
    tProdutoConsumoItemPosicao: TIntegerField;
    tProdutoConsumoItemConsumo: TFloatField;
    qEstoque: TQuery;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueCodCor: TIntegerField;
    qEstoqueQtd: TFloatField;
    SMDBGrid1: TSMDBGrid;
    BitBtn3: TBitBtn;
    ProgressBar1: TProgressBar;
    mOSPedidos: TClientDataSet;
    mOSPedidosTipo: TStringField;
    mOSPedidosNumOSPedido: TStringField;
    mOSPedidosCodMaterial: TIntegerField;
    mOSPedidosCodCor: TIntegerField;
    dsmOSPedidos: TDataSource;
    qOC: TQuery;
    qOCCodMaterial: TIntegerField;
    qOCCodCor: TIntegerField;
    qOCQtdRestante: TFloatField;
    mMateriaPrimaQtdOC: TFloatField;
    mMateriaPrimaQtdComprar: TFloatField;
    ComboBox1: TComboBox;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    ALed2: TALed;
    Label11: TLabel;
    mItem: TClientDataSet;
    dsmItem: TDataSource;
    mItemCodMaterial: TIntegerField;
    mItemCodCorMaterial: TIntegerField;
    mItemPedido: TIntegerField;
    mItemItem: TIntegerField;
    mItemPedidoCliente: TStringField;
    mItemDtEntrega: TDateField;
    mItemQtdRestante: TFloatField;
    mItemConsumoMaterial: TFloatField;
    mItemCodProduto: TIntegerField;
    mItemReferencia: TStringField;
    mItemNomeProduto: TStringField;
    mItemCodCor: TIntegerField;
    mItemNomeCor: TStringField;
    mItemNumOS: TStringField;
    mMateriaPrimaQtdEstMinimo: TFloatField;
    mMateriaPrimaQtdComprarEstMinimo: TFloatField;
    tMaterial: TTable;
    mMateriaPrimaCodGrade: TIntegerField;
    mMateriaPrimaPosicao: TIntegerField;
    mMateriaPrimaTamanho: TStringField;
    tMaterialCodigo: TIntegerField;
    tMaterialCodGrupo: TIntegerField;
    tMaterialCodSubGrupo: TIntegerField;
    tMaterialReferencia: TStringField;
    tMaterialNome: TStringField;
    tMaterialUnidade: TStringField;
    tMaterialCodClasFiscal: TStringField;
    tMaterialCodSitTrib: TIntegerField;
    tMaterialLancaGrade: TBooleanField;
    tMaterialCodGrade: TIntegerField;
    tMaterialQParTalao: TFloatField;
    tMaterialPesoLiquido: TFloatField;
    tMaterialPesoBruto: TFloatField;
    tMaterialInativo: TBooleanField;
    tMaterialAliqIcms: TFloatField;
    tMaterialAliqIPI: TFloatField;
    tMaterialNomeExp: TStringField;
    tMaterialDescMaterial: TStringField;
    tMaterialReferencia2: TStringField;
    tMaterialVlrAtelier: TFloatField;
    tMaterialNomeModelo: TStringField;
    tMaterialFotoJpeg: TBlobField;
    tMaterialObs: TMemoField;
    tMaterialEndEtiq: TStringField;
    tMaterialLancaCor: TBooleanField;
    tMaterialPrecoGrade: TBooleanField;
    tMaterialVlrVenda: TFloatField;
    tMaterialProdMat: TStringField;
    tMaterialPrecoCusto: TFloatField;
    tMaterialPosseMat: TStringField;
    tMaterialEstoque: TBooleanField;
    tMaterialDtAlteracao: TDateField;
    tMaterialMaterialOutros: TStringField;
    tMaterialPrecoCor: TBooleanField;
    tMaterialCodFornecedor: TIntegerField;
    tMaterialEstMinimo: TFloatField;
    tMaterialEstMaximo: TFloatField;
    tMaterialPercComissaoVend: TFloatField;
    tMaterialImpTabPreco: TBooleanField;
    tMaterialUsuario: TStringField;
    tMaterialDtCad: TDateField;
    tMaterialHrCad: TTimeField;
    tMaterialCA: TStringField;
    tMaterialVincularProduto: TBooleanField;
    tMaterialCodProdutoEst: TIntegerField;
    tMaterialPercQuebraTaloes: TFloatField;
    tMaterialPercComissaoVend2: TFloatField;
    tMaterialFichaTecnicaConsPorTam: TBooleanField;
    tMaterialPossuiLado: TBooleanField;
    tMaterialJuntarLarguraEDI: TBooleanField;
    tMaterialTransfer: TBooleanField;
    tMaterialCodProdAnt: TIntegerField;
    tMaterialGradeNum: TTable;
    tMaterialGradeNumCodMaterial: TIntegerField;
    tMaterialGradeNumCodGrade: TIntegerField;
    tMaterialGradeNumPosicao: TIntegerField;
    tMaterialGradeNumTamanho: TStringField;
    tMaterialGradeNumTamMaterial: TStringField;
    tMaterialGradeNumPeso: TFloatField;
    tMaterialGradeNumCodGradeMat: TIntegerField;
    tMaterialGradeNumPosicaoMat: TIntegerField;
    dsMaterial: TDataSource;
    qOCGrade: TQuery;
    qOCGradeCodMaterial: TIntegerField;
    qOCGradeCodCor: TIntegerField;
    qOCGradeQtdRestante: TFloatField;
    qOCGradeCodGrade: TIntegerField;
    qOCGradePosicao: TIntegerField;
    qEstoqueTamanho: TStringField;
    mItemTamanhoMat: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mMateriaPrimaNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mItemNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vTipo, vNumOSPedido : String;
    vCodGradeMat, vPosicaoMat : Integer;
    vTamanhoMat : String;
    procedure Grava_mItem(ConsumoMaterial, QtdProduto: Real);
    procedure Gera_MateriaPrima(CodProduto,CodCor,CodGrade,Posicao: Integer; QtdProduto: Real; Tamanho: String);
  public
    { Public declarations }
  end;

var
  fConsMateriaPrima: TfConsMateriaPrima;

implementation

uses UDM1, UConsPedidoBR, URelMateriaPrima,
  UConsMateriaPrimaPed, StrUtils, Masks;

{$R *.dfm}

procedure TfConsMateriaPrima.Grava_mItem(ConsumoMaterial, QtdProduto : Real);
begin
  if mItem.Locate('CodMaterial;CodCorMaterial;TamanhoMat;Pedido;Item',VarArrayOf([mMateriaPrimaCodMaterial.AsInteger,mMateriaPrimaCodCor.AsInteger,
         vTamanhoMat,fConsPedidoBR.qConsultaPedido.AsInteger,fConsPedidoBR.qConsultaItem.AsInteger]),[loCaseInsensitive]) then
    mItem.Edit
  else
    begin
      mItem.Insert;
      mItemCodMaterial.AsInteger    := mMateriaPrimaCodMaterial.AsInteger;
      mItemCodCorMaterial.AsInteger := mMateriaPrimaCodCor.AsInteger;
      mItemPedido.AsInteger         := fConsPedidoBR.qConsultaPedido.AsInteger;
      mItemItem.AsInteger           := fConsPedidoBR.qConsultaItem.AsInteger;
      mItemPedidoCliente.AsString   := fConsPedidoBR.qConsultaPedidoCliente.AsString;
      mItemDtEntrega.AsDateTime     := fConsPedidoBR.qConsultaDtReprogramacao.AsDateTime;
      mItemCodProduto.AsInteger     := fConsPedidoBR.qConsultaCodProduto.AsInteger;
      mItemReferencia.AsString      := fConsPedidoBR.qConsultaReferencia.AsString;
      mItemNomeProduto.AsString     := fConsPedidoBR.qConsultaNomeProduto.AsString;
      mItemCodCor.AsInteger         := fConsPedidoBR.qConsultaCodCor.AsInteger;
      mItemNomeCor.AsString         := fConsPedidoBR.qConsultalkNomeCor.AsString;
      mItemNumOS.AsString           := fConsPedidoBR.qConsultaNumOS.AsString;
      mItemTamanhoMat.AsString      := vTamanhoMat;
    end;
  mItemQtdRestante.AsFloat      := mItemQtdRestante.AsFloat + QtdProduto;
  mItemConsumoMaterial.AsFloat  := mItemConsumoMaterial.AsFloat + ConsumoMaterial;
  mItem.Post;
end;

procedure TfConsMateriaPrima.Gera_MateriaPrima(CodProduto,CodCor,CodGrade,Posicao: Integer;
  QtdProduto: Real; Tamanho: String);
var
  vAux : Real;
begin
  DM1.tProdutoMat.Filtered := False;
  if CodCor > 0 then
  begin
    DM1.tProdutoMat.Filter   := 'CodCorProd = '''+IntToStr(CodCor)+'''';
    DM1.tProdutoMat.Filtered := True;
  end;
  DM1.tProdutoMat.First;
  while not DM1.tProdutoMat.Eof do
    begin
      vCodGradeMat := 0;
      vPosicaoMat  := 0;
      vTamanhoMat  := '';
      if (tMaterial.Locate('Codigo',DM1.tProdutoMatCodMaterial.AsInteger,([LocaseInsensitive]))) and (tMaterialLancaGrade.AsBoolean) then
        begin
          vCodGradeMat := CodGrade;
          vPosicaoMat  := Posicao;
          vTamanhoMat  := Tamanho;
          if tMaterialGradeNum.Locate('CodMaterial;CodGrade;Posicao',VarArrayOf([DM1.tProdutoMatCodMaterial.AsInteger,CodGrade,Posicao]),[loCaseInsensitive]) then
            begin
              vCodGradeMat := tMaterialGradeNumCodGradeMat.AsInteger;
              vPosicaoMat  := tMaterialGradeNumPosicaoMat.AsInteger;
              vTamanhoMat  := tMaterialGradeNumTamMaterial.AsString;
            end;
        end;
      if DM1.tProdutoMatConsumo.AsString = 'T' then
        begin
          if tProdutoConsumoItem.Locate('CodProduto;CodCorProduto;ItemMaterial;CodGrade;Posicao',VarArrayOf([CodProduto,CodCor,
                                        DM1.tProdutoMatItem.AsInteger,CodGrade,Posicao]),[loCaseInsensitive]) then
            vAux := StrToFloat(FormatFloat('0.000000',QtdProduto * tProdutoConsumoItemConsumo.AsFloat));
        end
      else
        vAux := StrToFloat(FormatFloat('0.000000',QtdProduto * DM1.tProdutoMatQtd.AsFloat));

      if mMateriaPrima.Locate('CodMaterial;CodCor;CodGrade;Posicao',VarArrayOf([DM1.tProdutoMatCodMaterial.AsInteger,DM1.tProdutoMatCodCor.AsInteger,vCodGradeMat,vPosicaoMat]),[loCaseInsensitive]) then
        mMateriaPrima.Edit
      else
        begin
          mMateriaPrima.Insert;
          mMateriaPrimaCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
          mMateriaPrimaCodCor.AsInteger      := DM1.tProdutoMatCodCor.AsInteger;
          mMateriaPrimaNomeMaterial.AsString := DM1.tProdutoMatlkNomeMaterial.AsString;
          mMateriaPrimaNomeCor.AsString      := DM1.tProdutoMatlkNomeCor.AsString;
          if tMaterialLancaGrade.AsBoolean then
            begin
              if qOCGrade.Locate('CodMaterial;CodCor;CodGrade;Posicao',VarArrayOf([DM1.tProdutoMatCodMaterial.AsInteger,DM1.tProdutoMatCodCor.AsInteger,vCodGradeMat,vPosicaoMat]),[loCaseInsensitive]) then
                mMateriaPrimaQtdOC.AsFloat := qOCGradeQtdRestante.AsFloat;
              if qEstoque.Locate('CodMaterial;CodCor;Tamanho',VarArrayOf([DM1.tProdutoMatCodMaterial.AsInteger,DM1.tProdutoMatCodCor.AsInteger,vTamanhoMat]),[loCaseInsensitive]) then
                mMateriaPrimaQtdEstoque.AsFloat := qEstoqueQtd.AsFloat;
            end
          else
            begin
              if qOC.Locate('CodMaterial;CodCor',VarArrayOf([DM1.tProdutoMatCodMaterial.AsInteger,DM1.tProdutoMatCodCor.AsInteger]),[loCaseInsensitive]) then
                mMateriaPrimaQtdOC.AsFloat := qOCQtdRestante.AsFloat;
              if qEstoque.Locate('CodMaterial;CodCor',VarArrayOf([DM1.tProdutoMatCodMaterial.AsInteger,DM1.tProdutoMatCodCor.AsInteger]),[loCaseInsensitive]) then
                mMateriaPrimaQtdEstoque.AsFloat := qEstoqueQtd.AsFloat;
            end;
          mMateriaPrimaQtdEstMinimo.AsFloat := tMaterialEstMinimo.AsFloat;
        end;
      mMateriaPrimaQtdProduto.AsFloat          := mMateriaPrimaQtdProduto.AsFloat + QtdProduto;
      mMateriaPrimaQtdMateriaPrima.AsFloat     := StrToFloat(FormatFloat('0.000000',mMateriaPrimaQtdMateriaPrima.AsFloat + vAux));
      mMateriaPrimaQtdComprar.AsFloat          := mMateriaPrimaQtdMateriaPrima.AsFloat - (mMateriaPrimaQtdEstoque.AsFloat + mMateriaPrimaQtdOC.AsFloat);
      mMateriaPrimaQtdComprarEstMinimo.AsFloat := (mMateriaPrimaQtdMateriaPrima.AsFloat + mMateriaPrimaQtdEstMinimo.AsFloat) - (mMateriaPrimaQtdEstoque.AsFloat + mMateriaPrimaQtdOC.AsFloat);

      if mMateriaPrimaQtdComprar.AsFloat <= 0 then
        mMateriaPrimaQtdComprar.AsFloat := 0;
      if mMateriaPrimaQtdComprarEstMinimo.AsFloat <= 0 then
        mMateriaPrimaQtdComprarEstMinimo.AsFloat := 0;

      mMateriaPrimaCodGrade.AsInteger := vCodGradeMat;
      mMateriaPrimaPosicao.AsInteger  := vPosicaoMat;
      mMateriaPrimaTamanho.AsString   := vTamanhoMat;

      mMateriaPrima.Post;

      if not mOSPedidos.Locate('CodMaterial;CodCor;Tipo;NumOSPedido',VarArrayOf([mMateriaPrimaCodMaterial.AsInteger,mMateriaPrimaCodCor.AsInteger,vTipo,vNumOSPedido]),[loCaseInsensitive]) then
        begin
          mOSPedidos.Insert;
          mOSPedidosCodMaterial.AsInteger := mMateriaPrimaCodMaterial.AsInteger;
          mOSPedidosCodCor.AsInteger      := mMateriaPrimaCodCor.AsInteger;
          mOSPedidosTipo.AsString         := vTipo;
          mOSPedidosNumOSPedido.AsString  := vNumOSPedido;
          mOSPedidos.Post;
        end;
      if vTipo = 'P' then
        Grava_mItem(vAux,QtdProduto);
        
      DM1.tProdutoMat.Next;
    end;
  DM1.tProdutoMat.Filtered := False;
end;

procedure TfConsMateriaPrima.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.GravaGrid(SMDBGrid1,Name);
  qEstoque.Close;
  qOC.Close;
  qOCGrade.Close;
  Action := Cafree;
end;

procedure TfConsMateriaPrima.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMateriaPrima.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  SMDBGrid1.DataSource := Nil;
  qEstoque.Close;
  qEstoque.Open;
  qOC.Close;
  qOC.Open;
  qOCGrade.Close;
  qOCGrade.Open;
  mMateriaPrima.First;
  while not mMateriaPrima.Eof do
    begin
      mOSPedidos.EmptyDataSet;
      mItem.EmptyDataSet;
      mMateriaPrima.Delete;
    end;
  ProgressBar1.Position := 0;
  if BitBtn1.Tag = 0 then
    begin
      ProgressBar1.Max := fConsPedidoBr.qConsulta.RecordCount;
      fConsPedidoBR.qConsulta.First;
      while not fConsPedidoBR.qConsulta.Eof do
        begin
          ProgressBar1.Position := ProgressBar1.Position + 1;
          vTipo        := 'P';
          vNumOSPedido := fConsPedidoBR.qConsultaPedidoCliente.AsString;
          if DM1.tProduto.Locate('Codigo',fConsPedidoBR.qConsultaCodProduto.AsInteger,([LocaseInsensitive])) then
            Gera_MateriaPrima(fConsPedidoBR.qConsultaCodProduto.AsInteger,fConsPedidoBR.qConsultaCodCor.AsInteger,
                             fConsPedidoBR.qConsultaCodGrade.AsInteger,0,
                             fConsPedidoBR.qConsultaQtdParesRest.AsFloat,'');
          fConsPedidoBR.qConsulta.Next;
        end;
    end;
  mMateriaPrima.First;
  SMDBGrid1.DataSource := dsmMateriaPrima;
  Screen.Cursor   := crDefault;
end;

procedure TfConsMateriaPrima.mMateriaPrimaNewRecord(DataSet: TDataSet);
begin
  mMateriaPrimaQtdEstoque.AsFloat      := 0;
  mMateriaPrimaQtdMateriaPrima.AsFloat := 0;
  mMateriaPrimaQtdProduto.AsFloat      := 0;
  mMateriaPrimaQtdOC.AsFloat           := 0;
  mMateriaPrimaQtdComprar.AsFloat      := 0;
end;

procedure TfConsMateriaPrima.BitBtn3Click(Sender: TObject);
begin
  mMateriaPrima.First;
  fRelMateriaPrima := TfRelMateriaPrima.Create(Self);
  fRelMateriaPrima.RLReport1.PreviewModal;
  fRelMateriaPrima.RLReport1.Free;
end;

procedure TfConsMateriaPrima.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mMateriaPrimaQtdComprar.AsFloat > 0 then
    Background  := clRed;
end;

procedure TfConsMateriaPrima.BitBtn4Click(Sender: TObject);
var
  vQtd : Real;
begin
  vQtd := 0;
  mMateriaPrima.Filtered := False;
  if ComboBox1.ItemIndex = 0 then
    mMateriaPrima.Filter := 'QtdComprar > ''' + FloatToStr(vQtd) + ''''
  else
  if ComboBox1.ItemIndex = 1 then
    mMateriaPrima.Filter := 'QtdComprar <= ''' + FloatToStr(vQtd) + '''';
  if ComboBox1.ItemIndex < 2 then
    mMateriaPrima.Filtered := True;
end;

procedure TfConsMateriaPrima.SMDBGrid1DblClick(Sender: TObject);
begin
  fConsMateriaPrimaPed := TfConsMateriaPrimaPed.Create(Self);
  fConsMateriaPrimaPed.ShowModal;
end;

procedure TfConsMateriaPrima.FormCreate(Sender: TObject);
begin
  dm1.leGrid(SMDBGrid1,Name);
end;

procedure TfConsMateriaPrima.mItemNewRecord(DataSet: TDataSet);
begin
  mItemQtdRestante.AsFloat     := 0;
  mItemConsumoMaterial.AsFloat := 0;
end;

end.
