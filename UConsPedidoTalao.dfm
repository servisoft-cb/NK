object fConsPedidoTalao: TfConsPedidoTalao
  Left = 245
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fConsPedidoTalao'
  ClientHeight = 442
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 74
    Align = alTop
    TabOrder = 0
    object RxLabel7: TRxLabel
      Left = 102
      Top = 15
      Width = 88
      Height = 13
      Caption = 'Dt.Emiss'#227'o Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 304
      Top = 15
      Width = 83
      Height = 13
      Caption = 'Dt.Emiss'#227'o Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 153
      Top = 36
      Width = 37
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 137
      Top = 57
      Width = 53
      Height = 13
      Caption = 'N'#186' Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 96
      Height = 72
      Align = alLeft
      Caption = ' Pedido '
      Items.Strings = (
        'Pendente'
        'Faturado'
        'Ambos')
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 192
      Top = 7
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 389
      Top = 7
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 192
      Top = 29
      Width = 297
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 3
      OnEnter = RxDBLookupCombo1Enter
    end
    object BitBtn1: TBitBtn
      Left = 488
      Top = 46
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 192
      Top = 50
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 565
      Top = 46
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 74
    Width = 912
    Height = 368
    Align = alClient
    DataSource = dsmConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 9
    RowCount = 2
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'Select p.Pedido, p.CodCliente, p.DtEmissao, p.QtdPares, p.QtdPar' +
        'esRest, p.QtdParesFat, c.nome NomeCliente'
      'From dbPedido p'
      'inner join dbCliente c'
      'on p.codcliente = c.codigo')
    Left = 408
    Top = 128
    object qPedidoPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbPedido.DB".Pedido'
    end
    object qPedidocodcliente: TIntegerField
      FieldName = 'codcliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbPedido.DB".DtEmissao'
    end
    object qPedidoQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedido.DB".QtdPares'
    end
    object qPedidoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedido.DB".QtdParesRest'
    end
    object qPedidoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
      Origin = 'TABELAS."dbPedido.DB".QtdParesFat'
    end
    object qPedidoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 40
    end
  end
  object tTalao: TTable
    DatabaseName = 'Tabelas'
    TableName = 'DBTALAO.DB'
    Left = 408
    Top = 168
    object tTalaoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object tTalaoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tTalaoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object tTalaoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tTalaoItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tTalaoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tTalaoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tTalaoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object tTalaoPedCliDif: TStringField
      FieldName = 'PedCliDif'
      Size = 2
    end
    object tTalaoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tTalaoProduzido: TBooleanField
      FieldName = 'Produzido'
    end
    object tTalaoNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tTalaoDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object tTalaoQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
    end
    object tTalaoCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tTalaoMotivoCancelado: TStringField
      FieldName = 'MotivoCancelado'
      Size = 100
    end
    object tTalaoDtCancelado: TDateField
      FieldName = 'DtCancelado'
    end
    object tTalaoDtGerado: TDateField
      FieldName = 'DtGerado'
    end
    object tTalaoImprimir: TBooleanField
      FieldName = 'Imprimir'
    end
    object tTalaoEncerrado: TBooleanField
      FieldName = 'Encerrado'
    end
    object tTalaoImpressoData: TDateField
      FieldName = 'ImpressoData'
    end
    object tTalaoImpressoHora: TDateField
      FieldName = 'ImpressoHora'
    end
    object tTalaoImpressoUsuario: TStringField
      FieldName = 'ImpressoUsuario'
      Size = 10
    end
    object tTalaoProcesso: TStringField
      FieldName = 'Processo'
      Size = 1
    end
    object tTalaolkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'CodProduto'
      Lookup = True
    end
  end
  object dsqPedido: TDataSource
    DataSet = qPedido
    Left = 448
    Top = 128
  end
  object dsTalao: TDataSource
    DataSet = qPedido
    Left = 448
    Top = 168
  end
  object mConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 208
    Data = {
      D80000009619E0BD010000001800000008000000000003000000D80006506564
      69646F0400010000000000094474456D697373616F04000600000000000A436F
      64436C69656E746504000100000000000B4E6F6D65436C69656E746501004900
      0000010005574944544802000200280008517464506172657308000400000000
      000C51746450617265735265737408000400000000000B517464506172657346
      61740800040000000000084F627354616C616F04004B00000002000753554254
      5950450200490005005465787400055749445448020002000A000000}
    object mConsultaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mConsultaDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mConsultaCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mConsultaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mConsultaQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object mConsultaQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object mConsultaQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object mConsultaObsTalao: TMemoField
      FieldName = 'ObsTalao'
      BlobType = ftMemo
      Size = 10
    end
  end
  object dsmConsulta: TDataSource
    DataSet = mConsulta
    Left = 448
    Top = 208
  end
end
