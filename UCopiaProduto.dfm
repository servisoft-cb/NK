object fCopiaProduto: TfCopiaProduto
  Left = 182
  Top = 185
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copia do produto'
  ClientHeight = 95
  ClientWidth = 465
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label27: TLabel
    Left = 39
    Top = 29
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object RxDBLookupCombo10: TRxDBLookupCombo
    Left = 96
    Top = 21
    Width = 361
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Referencia;DescMaterial;Codigo'
    LookupSource = dsProduto
    TabOrder = 0
    OnEnter = RxDBLookupCombo10Enter
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 64
    Width = 78
    Height = 28
    Caption = 'Copiar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 173
    Top = 64
    Width = 78
    Height = 28
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object tProduto: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Codigo'
    TableName = 'dbProduto.DB'
    Left = 144
    Top = 32
    object tProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProdutoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object tProdutoCodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
    end
    object tProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoCodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object tProdutoCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tProdutoLancaGrade: TBooleanField
      FieldName = 'LancaGrade'
    end
    object tProdutoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoQParTalao: TFloatField
      FieldName = 'QParTalao'
    end
    object tProdutoPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tProdutoPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProdutoInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tProdutoAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object tProdutoAliqIPI: TFloatField
      FieldName = 'AliqIPI'
    end
    object tProdutoNomeExp: TStringField
      FieldName = 'NomeExp'
      Size = 45
    end
    object tProdutoDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 10
    end
    object tProdutoVlrAtelier: TFloatField
      FieldName = 'VlrAtelier'
    end
    object tProdutoObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tProdutoReferencia2: TStringField
      FieldName = 'Referencia2'
    end
    object tProdutoLancaCor: TBooleanField
      FieldName = 'LancaCor'
    end
    object tProdutoPrecoGrade: TBooleanField
      FieldName = 'PrecoGrade'
    end
    object tProdutoVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object tProdutoPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object tProdutoPosseMat: TStringField
      FieldName = 'PosseMat'
      Size = 1
    end
    object tProdutoEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tProdutoPrecoCor: TBooleanField
      FieldName = 'PrecoCor'
    end
    object tProdutoEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tProdutoEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object tProdutoDiametro: TStringField
      FieldName = 'Diametro'
      Size = 12
    end
    object tProdutoComprimento: TStringField
      FieldName = 'Comprimento'
      Size = 12
    end
    object tProdutoRosca: TStringField
      FieldName = 'Rosca'
      Size = 12
    end
    object tProdutoCabeca: TStringField
      FieldName = 'Cabeca'
      Size = 12
    end
  end
  object dsProduto: TDataSource
    DataSet = tProduto
    Left = 160
    Top = 32
  end
  object tProdutoCor: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCor'
    MasterFields = 'Codigo'
    MasterSource = dsProduto
    TableName = 'dbProdutoCor.DB'
    Left = 224
    Top = 32
    object tProdutoCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoCorPrCusto: TFloatField
      FieldName = 'PrCusto'
    end
  end
  object tProdutoMat: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProd;Item'
    MasterFields = 'Codigo'
    MasterSource = dsProduto
    TableName = 'dbProdutoMat.DB'
    Left = 311
    Top = 32
    object tProdutoMatCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoMatCodCorProd: TIntegerField
      FieldName = 'CodCorProd'
    end
    object tProdutoMatItem: TIntegerField
      FieldName = 'Item'
    end
    object tProdutoMatCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tProdutoMatCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoMatCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoMatQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tProdutoMatVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tProdutoMatVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tProdutoMatImpTalao: TStringField
      FieldName = 'ImpTalao'
      Size = 1
    end
    object tProdutoMatUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoMatConsumo: TStringField
      FieldName = 'Consumo'
      Size = 1
    end
  end
  object dsProdutoCor: TDataSource
    DataSet = tProdutoCor
    Left = 247
    Top = 32
  end
  object dsProdutoMat: TDataSource
    DataSet = tProdutoMat
    Left = 342
    Top = 32
  end
end
