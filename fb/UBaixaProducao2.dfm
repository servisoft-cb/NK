object fBaixaProducao2: TfBaixaProducao2
  Left = 132
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Tal'#245'es'
  ClientHeight = 563
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 30
      Height = 13
      Caption = 'Tal'#227'o:'
    end
    object Label2: TLabel
      Left = 142
      Top = 3
      Width = 83
      Height = 26
      Caption = 'Informe o Tal'#227'o e'#13#10'pressione Enter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ceTalao: TCurrencyEdit
      Left = 48
      Top = 5
      Width = 91
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnChange = ceTalaoChange
      OnKeyDown = ceTalaoKeyDown
    end
    object BitBtn3: TBitBtn
      Left = 703
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 782
    Height = 42
    Align = alTop
    TabOrder = 1
    Visible = False
    object Label3: TLabel
      Left = 24
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object DBText1: TDBText
      Left = 83
      Top = 9
      Width = 134
      Height = 13
      DataField = 'Referencia'
      DataSource = dmCadProduto.dsProduto
    end
    object DBText2: TDBText
      Left = 219
      Top = 9
      Width = 406
      Height = 13
      DataField = 'NOME'
      DataSource = dmCadProduto.dsProduto
    end
    object Label4: TLabel
      Left = 43
      Top = 25
      Width = 36
      Height = 13
      Caption = 'Pedido:'
    end
    object DBText3: TDBText
      Left = 83
      Top = 25
      Width = 134
      Height = 13
      DataField = 'PEDIDO'
      DataSource = DMTalao.dsTalao
    end
    object Label5: TLabel
      Left = 379
      Top = 24
      Width = 20
      Height = 13
      Caption = 'Qtd:'
    end
    object DBText4: TDBText
      Left = 403
      Top = 25
      Width = 134
      Height = 13
      DataField = 'QUANTIDADE'
      DataSource = DMTalao.dsTalao
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 83
    Width = 782
    Height = 274
    Align = alClient
    TabOrder = 2
    Visible = False
    object Shape1: TShape
      Left = 672
      Top = 10
      Width = 28
      Height = 18
      Brush.Color = clYellow
    end
    object Label6: TLabel
      Left = 703
      Top = 14
      Width = 64
      Height = 13
      Caption = 'Em Produ'#231#227'o'
    end
    object Label7: TLabel
      Left = 703
      Top = 38
      Width = 49
      Height = 13
      Caption = 'Encerrado'
    end
    object Shape2: TShape
      Left = 672
      Top = 34
      Width = 28
      Height = 18
      Brush.Color = clTeal
    end
    object Shape3: TShape
      Left = 672
      Top = 58
      Width = 28
      Height = 18
      Brush.Color = clAqua
    end
    object Label8: TLabel
      Left = 703
      Top = 62
      Width = 34
      Height = 13
      Caption = 'Parado'
    end
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 640
      Height = 272
      Align = alLeft
      DataSource = DMTalao.dsTalaoSetor
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
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
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 9
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODSETOR'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Setor'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMESETOR'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Setor'
          Width = 126
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Entrada'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDQUEBRAS'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Quebras'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDPRODUZIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Produzida'
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTALHORAS'
          Title.Alignment = taCenter
          Title.Caption = 'Total de Horas'
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HORASPARADAS'
          Title.Alignment = taCenter
          Title.Caption = 'Horas Paradas'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HORASPRODUCAO'
          Title.Alignment = taCenter
          Title.Caption = 'Horas de Produ'#231#227'o'
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 672
      Top = 176
      Width = 97
      Height = 30
      Caption = 'Incluir Movimento'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 672
      Top = 205
      Width = 97
      Height = 30
      Caption = 'Parada'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 672
      Top = 234
      Width = 97
      Height = 30
      Caption = 'Excluir Movimento'
      TabOrder = 2
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 357
    Width = 782
    Height = 206
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alBottom
    TabIndex = 0
    TabOrder = 3
    Visible = False
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Movimento'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 183
        Align = alClient
        DataSource = DMTalao.dsTalaoMov
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
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
        ColCount = 12
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Saida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Saida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDPRODUZIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Produzida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDQUEBRA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Quebra'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPOSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Saida'
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TOTALHORAS'
            Title.Alignment = taCenter
            Title.Caption = 'Total Horas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEFUNCIONARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Funcion'#225'rio'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Paradas'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 183
        Align = alClient
        DataSource = DMTalao.dsTalaoParadas
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 27
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODPARADA'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Parada'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEPARADA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Parada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Inicio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Inicio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Final'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Final'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TOTALHORAS'
            Title.Alignment = taCenter
            Title.Caption = 'Total Horas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Complemento'
            Visible = True
          end>
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Quebras'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 183
        Align = alClient
        DataSource = DMTalao.dsTalaoQuebras
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 34
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDEFEITO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Defeito'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEDEFEITO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Defeito/Quebra'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HORA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Complemento'
            Visible = True
          end>
      end
    end
  end
  object tPedidoItem2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Pedido;Item'
    TableName = 'DBPEDIDOITEM.DB'
    Left = 688
    Top = 488
    object tPedidoItem2Pedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedidoItem2Item: TIntegerField
      FieldName = 'Item'
    end
    object tPedidoItem2DtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object tPedidoItem2Obs: TStringField
      FieldName = 'Obs'
      Size = 100
    end
  end
end
