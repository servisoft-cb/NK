object fConsMateriaPrima: TfConsMateriaPrima
  Left = -1
  Top = 34
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Materia-Prima'
  ClientHeight = 509
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 571
    Top = 19
    Width = 35
    Height = 13
    Caption = 'Op'#231#227'o:'
  end
  object ALed2: TALed
    Left = 675
    Top = 491
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clRed
  end
  object Label11: TLabel
    Left = 695
    Top = 494
    Width = 82
    Height = 13
    Caption = 'Materiais em falta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 272
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Gera Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 465
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 36
    Width = 788
    Height = 452
    DataSource = dsmMateriaPrima
    FixedColor = clMoneyGreen
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Material'
        Title.Color = clBtnFace
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Material'
        Title.Color = clBtnFace
        Width = 202
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tamanho'
        Title.Alignment = taCenter
        Title.Color = clBtnFace
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Produto Final'
        Title.Color = clBtnFace
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdMateriaPrima'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Materia Prima'
        Title.Color = clBtnFace
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdEstoque'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo Estoque'
        Title.Color = clBtnFace
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdEstMinimo'
        Title.Alignment = taCenter
        Title.Caption = 'Est. M'#237'nimo'
        Title.Color = clBtnFace
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdOC'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. em O.C do Fornecedor'
        Title.Color = clBtnFace
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdComprar'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Para Comprar Necessidade de Produ'#231#227'o'
        Title.Color = clBtnFace
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdComprarEstMinimo'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd Para Comprar (Somado o Estoque M'#237'nimo)'
        Title.Color = clBtnFace
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor do Material'
        Title.Color = clBtnFace
        Width = 177
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 368
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object ProgressBar1: TProgressBar
    Left = 11
    Top = 12
    Width = 249
    Height = 16
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 608
    Top = 11
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 5
    Text = 'todos'
    Items.Strings = (
      'Materiais para compra'
      'Materiais em estoque'
      'todos')
  end
  object BitBtn4: TBitBtn
    Left = 754
    Top = 8
    Width = 25
    Height = 25
    Hint = 'Filtra'
    Caption = '...'
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object mMateriaPrima: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodMaterial'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeMaterial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QtdProduto'
        DataType = ftFloat
      end
      item
        Name = 'QtdMateriaPrima'
        DataType = ftFloat
      end
      item
        Name = 'QtdEstoque'
        DataType = ftFloat
      end
      item
        Name = 'QtdOC'
        DataType = ftFloat
      end
      item
        Name = 'QtdComprar'
        DataType = ftFloat
      end
      item
        Name = 'QtdEstMinimo'
        DataType = ftFloat
      end
      item
        Name = 'QtdComprarEstMinimo'
        DataType = ftFloat
      end
      item
        Name = 'CodGrade'
        DataType = ftInteger
      end
      item
        Name = 'Posicao'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    IndexFieldNames = 'NomeMaterial'
    Params = <>
    StoreDefs = True
    OnNewRecord = mMateriaPrimaNewRecord
    Left = 416
    Top = 184
    Data = {
      470100009619E0BD01000000180000000E00000000000300000047010B436F64
      4D6174657269616C040001000000000006436F64436F7204000100000000000C
      4E6F6D654D6174657269616C0100490000000100055749445448020002002800
      074E6F6D65436F720100490000000100055749445448020002001E000A517464
      50726F6475746F08000400000000000F5174644D6174657269615072696D6108
      000400000000000A5174644573746F7175650800040000000000055174644F43
      08000400000000000A517464436F6D7072617208000400000000000C51746445
      73744D696E696D6F080004000000000013517464436F6D707261724573744D69
      6E696D6F080004000000000008436F644772616465040001000000000007506F
      736963616F04000100000000000754616D616E686F0100490000000100055749
      445448020002000A000000}
    object mMateriaPrimaCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mMateriaPrimaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mMateriaPrimaNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mMateriaPrimaNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mMateriaPrimaQtdProduto: TFloatField
      FieldName = 'QtdProduto'
    end
    object mMateriaPrimaQtdMateriaPrima: TFloatField
      FieldName = 'QtdMateriaPrima'
      DisplayFormat = '###,###0.000000'
    end
    object mMateriaPrimaQtdEstoque: TFloatField
      FieldName = 'QtdEstoque'
      DisplayFormat = '###,###0.000000'
    end
    object mMateriaPrimaQtdOC: TFloatField
      FieldName = 'QtdOC'
      DisplayFormat = '###,###0.000000'
    end
    object mMateriaPrimaQtdComprar: TFloatField
      FieldName = 'QtdComprar'
      DisplayFormat = '###,###0.000000'
    end
    object mMateriaPrimaQtdEstMinimo: TFloatField
      FieldName = 'QtdEstMinimo'
      DisplayFormat = '###,###0.000000'
    end
    object mMateriaPrimaQtdComprarEstMinimo: TFloatField
      FieldName = 'QtdComprarEstMinimo'
      DisplayFormat = '###,###0.000000'
    end
    object mMateriaPrimaCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object mMateriaPrimaPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object mMateriaPrimaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
  end
  object dsmMateriaPrima: TDataSource
    DataSet = mMateriaPrima
    Left = 432
    Top = 184
  end
  object tProdutoConsumoItem: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbProdutoConsumoItem.DB'
    Left = 472
    Top = 184
    object tProdutoConsumoItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoConsumoItemCodCorProduto: TIntegerField
      FieldName = 'CodCorProduto'
    end
    object tProdutoConsumoItemItemMaterial: TIntegerField
      FieldName = 'ItemMaterial'
    end
    object tProdutoConsumoItemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoConsumoItemPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoConsumoItemConsumo: TFloatField
      FieldName = 'Consumo'
    end
  end
  object qEstoque: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodMaterial, CodCor, SUM( Qtd2 ) Qtd, Tamanho'
      'FROM "DBESTOQUEMATMOV.DB" Dbestoquematmov'
      'GROUP BY CodMaterial, CodCor, Tamanho')
    Left = 528
    Top = 184
    object qEstoqueCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodMaterial'
    end
    object qEstoqueCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodCor'
    end
    object qEstoqueQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Qtd2'
    end
    object qEstoqueTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Tamanho'
      Size = 6
    end
  end
  object mOSPedidos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodMaterial'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NumOSPedido'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodMaterial;CodCor;Tipo'
    MasterFields = 'CodMaterial;CodCor'
    MasterSource = dsmMateriaPrima
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 224
    Data = {
      8C0000009619E0BD0100000018000000040000000000030000008C000B436F64
      4D6174657269616C040001000000000006436F64436F72040001000000000004
      5469706F01004900000001000557494454480200020001000B4E756D4F535065
      6469646F0100490000000100055749445448020002001E0001000D4445464155
      4C545F4F524445520200820000000000}
    object mOSPedidosCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mOSPedidosCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mOSPedidosTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mOSPedidosNumOSPedido: TStringField
      FieldName = 'NumOSPedido'
      Size = 30
    end
  end
  object dsmOSPedidos: TDataSource
    DataSet = mOSPedidos
    Left = 432
    Top = 224
  end
  object qOC: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodMaterial, CodCor, SUM( QtdRestante ) QtdRestante'
      'FROM "dbOrdemCompraItem.DB" Dbordemcompraitem'
      'WHERE  QtdRestante > 0'
      'GROUP BY CodMaterial, CodCor')
    Left = 529
    Top = 223
    object qOCCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".CodMaterial'
    end
    object qOCCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".CodCor'
    end
    object qOCQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".QtdRestante'
      DisplayFormat = '0.00000'
    end
  end
  object mItem: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodMaterial'
        DataType = ftInteger
      end
      item
        Name = 'CodCorMaterial'
        DataType = ftInteger
      end
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'ConsumoMaterial'
        DataType = ftFloat
      end
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TamanhoMat'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodMaterial;CodCorMaterial;TamanhoMat;DtEntrega'
    MasterFields = 'CodMaterial;CodCor;Tamanho'
    MasterSource = dsmMateriaPrima
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    OnNewRecord = mItemNewRecord
    Left = 416
    Top = 280
    Data = {
      8D0100009619E0BD01000000180000000F0000000000030000008D010B436F64
      4D6174657269616C04000100000000000E436F64436F724D6174657269616C04
      000100000000000650656469646F0400010000000000044974656D0400010000
      0000000D50656469646F436C69656E7465010049000000010005574944544802
      0002001E00094474456E747265676104000600000000000B5174645265737461
      6E746508000400000000000F436F6E73756D6F4D6174657269616C0800040000
      0000000A436F6450726F6475746F04000100000000000A5265666572656E6369
      6101004900000001000557494454480200020014000B4E6F6D6550726F647574
      6F010049000000010005574944544802000200280006436F64436F7204000100
      00000000074E6F6D65436F720100490000000100055749445448020002002800
      054E756D4F530100490000000100055749445448020002001E000A54616D616E
      686F4D61740100490000000100055749445448020002000A0001000D44454641
      554C545F4F524445520200820000000000}
    object mItemCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mItemCodCorMaterial: TIntegerField
      FieldName = 'CodCorMaterial'
    end
    object mItemPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mItemItem: TIntegerField
      FieldName = 'Item'
    end
    object mItemPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
      Size = 30
    end
    object mItemDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object mItemQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mItemConsumoMaterial: TFloatField
      FieldName = 'ConsumoMaterial'
      DisplayFormat = '###,###0.000000'
    end
    object mItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mItemReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mItemNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mItemCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mItemNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 40
    end
    object mItemNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mItemTamanhoMat: TStringField
      FieldName = 'TamanhoMat'
      Size = 10
    end
  end
  object dsmItem: TDataSource
    DataSet = mItem
    Left = 440
    Top = 280
  end
  object tMaterial: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbProduto.DB'
    Left = 328
    Top = 176
    object tMaterialCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tMaterialCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object tMaterialCodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
    end
    object tMaterialReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tMaterialNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tMaterialCodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object tMaterialCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tMaterialLancaGrade: TBooleanField
      FieldName = 'LancaGrade'
    end
    object tMaterialCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tMaterialQParTalao: TFloatField
      FieldName = 'QParTalao'
    end
    object tMaterialPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tMaterialPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tMaterialInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tMaterialAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object tMaterialAliqIPI: TFloatField
      FieldName = 'AliqIPI'
    end
    object tMaterialNomeExp: TStringField
      FieldName = 'NomeExp'
      Size = 45
    end
    object tMaterialDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 30
    end
    object tMaterialReferencia2: TStringField
      FieldName = 'Referencia2'
    end
    object tMaterialVlrAtelier: TFloatField
      FieldName = 'VlrAtelier'
    end
    object tMaterialNomeModelo: TStringField
      FieldName = 'NomeModelo'
    end
    object tMaterialFotoJpeg: TBlobField
      FieldName = 'FotoJpeg'
      BlobType = ftParadoxOle
      Size = 1
    end
    object tMaterialObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tMaterialEndEtiq: TStringField
      FieldName = 'EndEtiq'
      Size = 60
    end
    object tMaterialLancaCor: TBooleanField
      FieldName = 'LancaCor'
    end
    object tMaterialPrecoGrade: TBooleanField
      FieldName = 'PrecoGrade'
    end
    object tMaterialVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object tMaterialProdMat: TStringField
      FieldName = 'ProdMat'
      Size = 1
    end
    object tMaterialPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object tMaterialPosseMat: TStringField
      FieldName = 'PosseMat'
      Size = 1
    end
    object tMaterialEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tMaterialDtAlteracao: TDateField
      FieldName = 'DtAlteracao'
    end
    object tMaterialMaterialOutros: TStringField
      FieldName = 'MaterialOutros'
      Size = 1
    end
    object tMaterialPrecoCor: TBooleanField
      FieldName = 'PrecoCor'
    end
    object tMaterialCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object tMaterialEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tMaterialEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object tMaterialPercComissaoVend: TFloatField
      FieldName = 'PercComissaoVend'
    end
    object tMaterialImpTabPreco: TBooleanField
      FieldName = 'ImpTabPreco'
    end
    object tMaterialUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tMaterialDtCad: TDateField
      FieldName = 'DtCad'
    end
    object tMaterialHrCad: TTimeField
      FieldName = 'HrCad'
    end
    object tMaterialCA: TStringField
      FieldName = 'CA'
    end
    object tMaterialVincularProduto: TBooleanField
      FieldName = 'VincularProduto'
    end
    object tMaterialCodProdutoEst: TIntegerField
      FieldName = 'CodProdutoEst'
    end
    object tMaterialPercQuebraTaloes: TFloatField
      FieldName = 'PercQuebraTaloes'
    end
    object tMaterialPercComissaoVend2: TFloatField
      FieldName = 'PercComissaoVend2'
    end
    object tMaterialFichaTecnicaConsPorTam: TBooleanField
      FieldName = 'FichaTecnicaConsPorTam'
    end
    object tMaterialPossuiLado: TBooleanField
      FieldName = 'PossuiLado'
    end
    object tMaterialJuntarLarguraEDI: TBooleanField
      FieldName = 'JuntarLarguraEDI'
    end
    object tMaterialTransfer: TBooleanField
      FieldName = 'Transfer'
    end
    object tMaterialCodProdAnt: TIntegerField
      FieldName = 'CodProdAnt'
    end
  end
  object tMaterialGradeNum: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodMaterial'
    MasterFields = 'Codigo'
    MasterSource = dsMaterial
    TableName = 'dbMaterialGradeNum.DB'
    Left = 328
    Top = 208
    object tMaterialGradeNumCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tMaterialGradeNumCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tMaterialGradeNumPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tMaterialGradeNumTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object tMaterialGradeNumTamMaterial: TStringField
      FieldName = 'TamMaterial'
      Size = 6
    end
    object tMaterialGradeNumPeso: TFloatField
      FieldName = 'Peso'
    end
    object tMaterialGradeNumCodGradeMat: TIntegerField
      FieldName = 'CodGradeMat'
    end
    object tMaterialGradeNumPosicaoMat: TIntegerField
      FieldName = 'PosicaoMat'
    end
  end
  object dsMaterial: TDataSource
    DataSet = tMaterial
    Left = 344
    Top = 176
  end
  object qOCGrade: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbordemcompraitem.CodMaterial, Dbordemcompraitem.CodCor, ' +
        'SUM( Dbordemcompraitemgrade.QtdRestante ) QtdRestante, Dbordemco' +
        'mpraitemgrade.CodGrade CodGrade, Dbordemcompraitemgrade.Posicao'
      'FROM "dbOrdemCompraItem.DB" Dbordemcompraitem'
      '   INNER JOIN "dbOrdemCompraItemGrade.DB" Dbordemcompraitemgrade'
      
        '   ON  (Dbordemcompraitem.Filial = Dbordemcompraitemgrade.Filial' +
        ')  '
      
        '   AND  (Dbordemcompraitem.Codigo = Dbordemcompraitemgrade.Codig' +
        'o)  '
      '   AND  (Dbordemcompraitem.Item = Dbordemcompraitemgrade.Item)  '
      'WHERE  Dbordemcompraitemgrade.QtdRestante > 0 '
      
        'GROUP BY Dbordemcompraitem.CodMaterial, Dbordemcompraitem.CodCor' +
        ', Dbordemcompraitemgrade.CodGrade, Dbordemcompraitemgrade.CodGra' +
        'de, Dbordemcompraitemgrade.Posicao')
    Left = 529
    Top = 271
    object qOCGradeCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".CodMaterial'
    end
    object qOCGradeCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".CodCor'
    end
    object qOCGradeQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".QtdRestante'
      DisplayFormat = '0.00000'
    end
    object qOCGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".CodGrade'
    end
    object qOCGradePosicao: TIntegerField
      FieldName = 'Posicao'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".Posicao'
    end
  end
end
