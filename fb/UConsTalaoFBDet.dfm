object FConsTalaoFBDet: TFConsTalaoFBDet
  Left = 137
  Top = 74
  Width = 790
  Height = 590
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'FConsTalaoFBDet'
  Color = clBtnFace
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 240
    Align = alClient
    TabOrder = 0
    object Shape1: TShape
      Left = 628
      Top = 50
      Width = 28
      Height = 18
      Brush.Color = clYellow
    end
    object Label4: TLabel
      Left = 660
      Top = 53
      Width = 64
      Height = 13
      Caption = 'Em Produ'#231#227'o'
    end
    object Shape2: TShape
      Left = 628
      Top = 74
      Width = 28
      Height = 18
      Brush.Color = clTeal
    end
    object Label5: TLabel
      Left = 660
      Top = 78
      Width = 49
      Height = 13
      Caption = 'Encerrado'
    end
    object Shape3: TShape
      Left = 628
      Top = 98
      Width = 28
      Height = 18
      Brush.Color = clAqua
    end
    object Label1: TLabel
      Left = 660
      Top = 102
      Width = 34
      Height = 13
      Caption = 'Parado'
    end
    object SMDBGrid6: TSMDBGrid
      Left = 1
      Top = 1
      Width = 616
      Height = 238
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
          Width = 64
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HORASPRODUCAO'
          Title.Alignment = taCenter
          Title.Caption = 'Horas de Produ'#231#227'o'
          Width = 64
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 696
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 240
    Width = 782
    Height = 289
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alBottom
    TabIndex = 0
    TabOrder = 1
    OnChange = RzPageControl1Change
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Movimento'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 266
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
            Width = 64
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
            Width = 64
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
            Width = 64
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
        Height = 266
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
        ColCount = 9
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
          end>
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Quebras'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 266
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
        ColCount = 7
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
          end>
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Mov. Terceiros'
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 266
        Align = alClient
        DataSource = dsTalaoTerceiro
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
        ColCount = 11
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEM'
            Title.Caption = 'Item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENTRADA'
            Title.Caption = 'Dt. Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HRENTRADA'
            Title.Caption = 'Hr. Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTSAIDA'
            Title.Caption = 'Dt. Sa'#237'da'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HRSAIDA'
            Title.Caption = 'Hr. Sa'#237'da'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDENTRADA'
            Title.Caption = 'Qtd. Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDPRODUZIDO'
            Title.Caption = 'Qtd. Produzida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDQUEBRA'
            Title.Caption = 'Qtd. Quebra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARADA'
            Title.Caption = 'Parada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTALHORAS'
            Title.Caption = 'Total de Horas'
            Width = 77
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 529
    Width = 782
    Height = 34
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 6
      Top = 5
      Width = 195
      Height = 25
      Caption = 'Excluir movimento'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object dsTalaoTerceiro: TDataSource
    DataSet = cdsTalaoTerceiro
    Left = 552
    Top = 352
  end
  object cdsTalaoTerceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoTerceiro'
    Left = 488
    Top = 352
    object cdsTalaoTerceiroTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoTerceiroITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalaoTerceiroDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalaoTerceiroHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsTalaoTerceiroDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalaoTerceiroHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalaoTerceiroCODFUNCIONARIOLIB: TIntegerField
      FieldName = 'CODFUNCIONARIOLIB'
    end
    object cdsTalaoTerceiroCODSETORLIB: TIntegerField
      FieldName = 'CODSETORLIB'
    end
    object cdsTalaoTerceiroQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object cdsTalaoTerceiroQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object cdsTalaoTerceiroQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object cdsTalaoTerceiroCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object cdsTalaoTerceiroTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object cdsTalaoTerceiroPARADA: TStringField
      FieldName = 'PARADA'
      Size = 30
    end
  end
  object dspTalaoTerceiro: TDataSetProvider
    DataSet = sdsTalaoTerceiro
    Left = 432
    Top = 352
  end
  object sdsTalaoTerceiro: TSQLDataSet
    CommandText = 
      'SELECT TALAOTERCEIRO.*, PARADAS.NOME AS PARADA'#13#10'FROM TALAOTERCEI' +
      'RO'#13#10'LEFT JOIN PARADAS ON (TALAOTERCEIRO.CODPARADA = PARADAS.CODI' +
      'GO)'#13#10'WHERE TALAO = :TALAO'#13#10'ORDER BY ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TALAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 352
    object sdsTalaoTerceiroTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoTerceiroITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalaoTerceiroDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalaoTerceiroHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsTalaoTerceiroDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalaoTerceiroHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalaoTerceiroCODFUNCIONARIOLIB: TIntegerField
      FieldName = 'CODFUNCIONARIOLIB'
    end
    object sdsTalaoTerceiroCODSETORLIB: TIntegerField
      FieldName = 'CODSETORLIB'
    end
    object sdsTalaoTerceiroQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object sdsTalaoTerceiroQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object sdsTalaoTerceiroQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object sdsTalaoTerceiroCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object sdsTalaoTerceiroTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object sdsTalaoTerceiroPARADA: TStringField
      FieldName = 'PARADA'
      Size = 30
    end
  end
end
