object fPrevOrcamento: TfPrevOrcamento
  Left = 324
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Or'#231'amentos'
  ClientHeight = 506
  ClientWidth = 773
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 113
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Label3: TLabel
      Left = 85
      Top = 38
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 92
      Top = 14
      Width = 30
      Height = 13
      Caption = 'Inicial:'
    end
    object Label1: TLabel
      Left = 227
      Top = 14
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label6: TLabel
      Left = 21
      Top = 14
      Width = 68
      Height = 13
      Caption = 'Data Emiss'#227'o '
    end
    object Label4: TLabel
      Left = 92
      Top = 90
      Width = 30
      Height = 13
      Caption = 'Inicial:'
    end
    object Label5: TLabel
      Left = 228
      Top = 90
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label7: TLabel
      Left = 10
      Top = 90
      Width = 78
      Height = 13
      Caption = 'Data Aprova'#231#227'o'
    end
    object Label8: TLabel
      Left = 76
      Top = 62
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object DateEdit1: TDateEdit
      Left = 126
      Top = 10
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 126
      Top = 35
      Width = 306
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object DateEdit2: TDateEdit
      Left = 255
      Top = 10
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit3: TDateEdit
      Left = 126
      Top = 86
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object DateEdit4: TDateEdit
      Left = 258
      Top = 86
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 126
      Top = 60
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 5
      Text = 'Todos'
      Items.Strings = (
        'Aprovado'
        'Pendente'
        'N'#227'o Aprovado'
        'Todos')
    end
    object BitBtn1: TBitBtn
      Left = 568
      Top = 75
      Width = 87
      Height = 28
      Caption = 'Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 656
      Top = 75
      Width = 88
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 480
      Top = 75
      Width = 87
      Height = 28
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn3Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 113
    Width = 773
    Height = 231
    Align = alClient
    DataSource = dsqOrcamento
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
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NumOrcamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodCliente'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtAprovado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MotivoNaoAprov'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Situacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aprovado'
        Width = 60
        Visible = True
      end>
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 344
    Width = 773
    Height = 162
    Align = alBottom
    DataSource = dsOrcamentoItens
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
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
    Columns = <
      item
        Expanded = False
        FieldName = 'Item'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrUnitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ComMatriz'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtEntrega'
        Visible = True
      end>
  end
  object qOrcamento: TQuery
    OnCalcFields = qOrcamentoCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'select o.* from dborcamento o')
    Left = 280
    Top = 56
    object qOrcamentoNumOrcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'NumOrcamento'
      Origin = 'TABELAS."dbOrcamento.DB".NumOrcamento'
    end
    object qOrcamentoData: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'Data'
      Origin = 'TABELAS."dbOrcamento.DB".Data'
    end
    object qOrcamentoCodCliente: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbOrcamento.DB".CodCliente'
    end
    object qOrcamentoNomeCliente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbOrcamento.DB".NomeCliente'
      Size = 40
    end
    object qOrcamentoDtAprovado: TDateField
      DisplayLabel = 'Dt. Aprovado'
      FieldName = 'DtAprovado'
      Origin = 'TABELAS."dbOrcamento.DB".DtAprovado'
    end
    object qOrcamentoVlrTotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbOrcamento.DB".VlrTotal'
      DisplayFormat = '###,###,##0.000'
    end
    object qOrcamentoMotivoNaoAprov: TMemoField
      FieldName = 'MotivoNaoAprov'
      Origin = 'TABELAS."dbOrcamento.DB".MotivoNaoAprov'
      BlobType = ftMemo
      Size = 1
    end
    object qOrcamentoSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Calculated = True
    end
    object qOrcamentoAprovado: TStringField
      FieldName = 'Aprovado'
      Origin = 'TABELAS."dbOrcamento.DB".Aprovado'
      Size = 1
    end
  end
  object dsqOrcamento: TDataSource
    DataSet = qOrcamento
    Left = 312
    Top = 56
  end
  object tOrcamentoItens: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'NumOrcamento'
    MasterFields = 'NumOrcamento'
    MasterSource = dsqOrcamento
    TableName = 'dbOrcamentoItens.DB'
    Left = 368
    Top = 56
    object tOrcamentoItensNumOrcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'NumOrcamento'
    end
    object tOrcamentoItensItem: TIntegerField
      FieldName = 'Item'
    end
    object tOrcamentoItensReferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'Referencia'
    end
    object tOrcamentoItensNomeProduto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'NomeProduto'
      Size = 40
    end
    object tOrcamentoItensVlrUnitario: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VlrUnitario'
      DisplayFormat = '###,###,##0.000'
    end
    object tOrcamentoItensComMatriz: TBooleanField
      FieldName = 'ComMatriz'
      DisplayValues = 'Sim'
    end
    object tOrcamentoItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tOrcamentoItensVlrTotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.000'
    end
    object tOrcamentoItensDtEntrega: TDateField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'DtEntrega'
    end
  end
  object dsOrcamentoItens: TDataSource
    DataSet = tOrcamentoItens
    Left = 400
    Top = 56
  end
end
