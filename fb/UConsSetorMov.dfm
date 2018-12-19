object fConsSetorMov: TfConsSetorMov
  Left = 146
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Movimento Setor'
  ClientHeight = 461
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 689
    Height = 461
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Situa'#231#227'o'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 33
        Width = 685
        Height = 249
        Align = alClient
        DataSource = dsmSetor
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
        ColCount = 4
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodSetor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeSetor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 685
        Height = 33
        Align = alTop
        TabOrder = 1
        DesignSize = (
          685
          33)
        object Shape1: TShape
          Left = 301
          Top = 8
          Width = 21
          Height = 15
          Anchors = [akTop, akRight]
          Brush.Color = clRed
        end
        object Shape2: TShape
          Left = 421
          Top = 8
          Width = 21
          Height = 15
          Anchors = [akTop, akRight]
          Brush.Color = clTeal
        end
        object Shape3: TShape
          Left = 517
          Top = 8
          Width = 21
          Height = 15
          Anchors = [akTop, akRight]
          Brush.Color = clYellow
        end
        object Label3: TLabel
          Left = 325
          Top = 9
          Width = 88
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Com Tal'#227'o Parado'
        end
        object Label4: TLabel
          Left = 445
          Top = 8
          Width = 64
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Em Produ'#231#227'o'
        end
        object Label5: TLabel
          Left = 541
          Top = 8
          Width = 139
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Em Produ'#231#227'o / Tal'#227'o Parado'
        end
        object BitBtn1: TBitBtn
          Left = 8
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 300
        Width = 685
        Height = 138
        Align = alBottom
        DataSource = dsmMovimento
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
        ColCount = 16
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Talao'
            Title.Alignment = taCenter
            Title.Caption = 'Tal'#227'o'
            Width = 39
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtSaida'
            Title.Alignment = taCenter
            Title.Caption = 'Data Saida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrSaida'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Saida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdProduzido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Produzido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdQuebra'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Quebra'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoSaida'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Saida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFuncionario'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Funcion'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeParada'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Parada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodFuncionario'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Funcion'#225'rio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodParada'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Parada'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 282
        Width = 685
        Height = 18
        Align = alBottom
        TabOrder = 3
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Tempo por Setor'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 33
        Width = 685
        Height = 405
        Align = alClient
        DataSource = dsmSetorTempo
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
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CodSetor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeSetor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalHoras'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalHorasParada'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalHorasProd'
            Width = 104
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 685
        Height = 33
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 4
          Top = 14
          Width = 44
          Height = 13
          Caption = 'Dt.Inicial:'
        end
        object Label2: TLabel
          Left = 156
          Top = 14
          Width = 39
          Height = 13
          Caption = 'Dt.Final:'
        end
        object BitBtn2: TBitBtn
          Left = 312
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object DateEdit1: TDateEdit
          Left = 50
          Top = 6
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object DateEdit2: TDateEdit
          Left = 198
          Top = 6
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
      end
    end
  end
  object sdsTalaoSetor: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT T.TALAO, TS.CODSETOR, TS.PROCESSO'#13#10'FROM TALAO T'#13 +
      #10'INNER JOIN TALAOSETOR TS'#13#10'ON TS.TALAO = T.TALAO'#13#10'WHERE T.CANCEL' +
      'ADO = '#39'N'#39#13#10'      AND ((TS.PROCESSO <> '#39'E'#39')'#13#10'      AND (TS.PROCES' +
      'SO <> '#39'N'#39'))'#13#10'      AND TS.CODSETOR = :CODSETOR'#13#10'      AND T.ENCE' +
      'RRADO = '#39'N'#39#13#10'ORDER BY TS.PROCESSO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODSETOR'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 104
    object sdsTalaoSetorTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoSetorCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsTalaoSetorPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspTalaoSetor: TDataSetProvider
    DataSet = sdsTalaoSetor
    Left = 176
    Top = 104
  end
  object cdsTalaoSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoSetor'
    Left = 208
    Top = 104
    object cdsTalaoSetorTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoSetorCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsTalaoSetorPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsTalaoSetor: TDataSource
    DataSet = cdsTalaoSetor
    Left = 240
    Top = 104
  end
  object mSetor: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodSetor'
        DataType = ftInteger
      end
      item
        Name = 'NomeSetor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Processo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Processo2'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodSetor'
    Params = <>
    StoreDefs = True
    Left = 568
    Top = 120
    Data = {
      840000009619E0BD010000001800000004000000000003000000840008436F64
      5365746F720400010000000000094E6F6D655365746F72010049000000010005
      5749445448020002001E000850726F636573736F010049000000010005574944
      54480200020014000950726F636573736F320100490000000100055749445448
      0200020002000000}
    object mSetorCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mSetorNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 30
    end
    object mSetorProcesso: TStringField
      FieldName = 'Processo'
    end
    object mSetorProcesso2: TStringField
      FieldName = 'Processo2'
      Size = 2
    end
  end
  object dsmSetor: TDataSource
    DataSet = mSetor
    Left = 592
    Top = 120
  end
  object sdsSetor_Tempo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.*, S.NOME'#13#10'FROM SETOR_TEMPO T'#13#10'INNER JOIN SETOR S'#13#10'ON S' +
      '.CODIGO = T.CODSETOR'#13#10'WHERE DATA BETWEEN :DATAI AND :DATAF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAF'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 152
    object sdsSetor_TempoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsSetor_TempoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sdsSetor_TempoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object sdsSetor_TempoTOTALHORASPARADA: TFloatField
      FieldName = 'TOTALHORASPARADA'
    end
    object sdsSetor_TempoTOTALHORASPROD: TFloatField
      FieldName = 'TOTALHORASPROD'
    end
    object sdsSetor_TempoNOME: TStringField
      FieldName = 'NOME'
      Size = 15
    end
  end
  object dspSetor_Tempo: TDataSetProvider
    DataSet = sdsSetor_Tempo
    Left = 184
    Top = 152
  end
  object cdsSetor_Tempo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor_Tempo'
    Left = 224
    Top = 152
    object cdsSetor_TempoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsSetor_TempoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object cdsSetor_TempoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object cdsSetor_TempoTOTALHORASPARADA: TFloatField
      FieldName = 'TOTALHORASPARADA'
    end
    object cdsSetor_TempoTOTALHORASPROD: TFloatField
      FieldName = 'TOTALHORASPROD'
    end
    object cdsSetor_TempoNOME: TStringField
      FieldName = 'NOME'
      Size = 15
    end
  end
  object dsSetor_Tempo: TDataSource
    DataSet = cdsSetor_Tempo
    Left = 256
    Top = 152
  end
  object mSetorTempo: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodSetor'
    Params = <>
    OnNewRecord = mSetorTempoNewRecord
    Left = 561
    Top = 196
    Data = {
      8C0000009619E0BD0100000018000000050000000000030000008C0008436F64
      5365746F720400010000000000094E6F6D655365746F72010049000000010005
      5749445448020002001E000A546F74616C486F72617308000400000000001054
      6F74616C486F72617350617261646108000400000000000E546F74616C486F72
      617350726F6408000400000000000000}
    object mSetorTempoCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mSetorTempoNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 30
    end
    object mSetorTempoTotalHoras: TFloatField
      FieldName = 'TotalHoras'
      DisplayFormat = '0.000'
    end
    object mSetorTempoTotalHorasParada: TFloatField
      FieldName = 'TotalHorasParada'
      DisplayFormat = '0.000'
    end
    object mSetorTempoTotalHorasProd: TFloatField
      FieldName = 'TotalHorasProd'
      DisplayFormat = '0.000'
    end
  end
  object dsmSetorTempo: TDataSource
    DataSet = mSetorTempo
    Left = 593
    Top = 196
  end
  object sdsTalaoMov: TSQLDataSet
    CommandText = 
      'SELECT T.*, F.NOME NOMEFUNCIONARIO , P.NOME NOMEPRODUTO, PS.NOME' +
      ' NOMEPARADA'#13#10'FROM TALAOMOV T '#13#10'INNER JOIN FUNCIONARIO F ON F.COD' +
      'IGO = T.CODFUNCIONARIO '#13#10'LEFT JOIN PRODUTO P ON P.CODIGO = T.COD' +
      'PRODUTO'#13#10'LEFT JOIN PARADAS  PS ON PS.CODIGO = T.CODPARADA'#13#10'WHERE' +
      ' T.TALAO = :TALAO  AND T.CODSETOR = :CODSETOR'#13#10'ORDER BY T.ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODSETOR'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 145
    Top = 220
    object sdsTalaoMovTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoMovCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsTalaoMovITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsTalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalaoMovQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object sdsTalaoMovQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object sdsTalaoMovQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object sdsTalaoMovCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object sdsTalaoMovTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoMovTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object sdsTalaoMovCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object sdsTalaoMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsTalaoMovNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
    object sdsTalaoMovNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object sdsTalaoMovNOMEPARADA: TStringField
      FieldName = 'NOMEPARADA'
      Size = 30
    end
  end
  object cdsTalaoMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoMov'
    Left = 217
    Top = 220
    object cdsTalaoMovTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoMovCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsTalaoMovITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsTalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalaoMovQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object cdsTalaoMovQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object cdsTalaoMovQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object cdsTalaoMovCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object cdsTalaoMovTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoMovTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object cdsTalaoMovCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object cdsTalaoMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsTalaoMovNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
    object cdsTalaoMovNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object cdsTalaoMovNOMEPARADA: TStringField
      FieldName = 'NOMEPARADA'
      Size = 30
    end
  end
  object dspTalaoMov: TDataSetProvider
    DataSet = sdsTalaoMov
    Left = 185
    Top = 220
  end
  object dsTalaoMov: TDataSource
    DataSet = cdsTalaoMov
    Left = 257
    Top = 220
  end
  object mMovimento: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodSetor;Talao;DtEntrada'
    MasterFields = 'CodSetor'
    MasterSource = dsmSetor
    PacketRecords = 0
    Params = <>
    Left = 425
    Top = 164
    Data = {
      740100009619E0BD010000001800000010000000000003000000740108436F64
      5365746F7204000100000000000554616C616F0400010000000000094474456E
      74726164610400060000000000094872456E7472616461040007000000000007
      447453616964610400060000000000074872536169646104000700000000000A
      517464456E747261646104000100000000000C51746450726F64757A69646F04
      000100000000000951746451756562726104000100000000000E436F6446756E
      63696F6E6172696F04000100000000000A436F6450726F6475746F0400010000
      00000009436F645061726164610400010000000000095469706F536169646101
      00490000000100055749445448020002000F000F4E6F6D6546756E63696F6E61
      72696F01004900000001000557494454480200020028000B4E6F6D6550726F64
      75746F01004900000001000557494454480200020028000A4E6F6D6550617261
      646101004900000001000557494454480200020028000000}
    object mMovimentoCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mMovimentoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object mMovimentoDtEntrada: TDateField
      FieldName = 'DtEntrada'
    end
    object mMovimentoHrEntrada: TTimeField
      FieldName = 'HrEntrada'
    end
    object mMovimentoDtSaida: TDateField
      FieldName = 'DtSaida'
    end
    object mMovimentoHrSaida: TTimeField
      FieldName = 'HrSaida'
    end
    object mMovimentoQtdEntrada: TIntegerField
      FieldName = 'QtdEntrada'
    end
    object mMovimentoQtdProduzido: TIntegerField
      FieldName = 'QtdProduzido'
    end
    object mMovimentoQtdQuebra: TIntegerField
      FieldName = 'QtdQuebra'
    end
    object mMovimentoCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object mMovimentoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mMovimentoCodParada: TIntegerField
      FieldName = 'CodParada'
    end
    object mMovimentoTipoSaida: TStringField
      FieldName = 'TipoSaida'
      Size = 15
    end
    object mMovimentoNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 40
    end
    object mMovimentoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mMovimentoNomeParada: TStringField
      FieldName = 'NomeParada'
      Size = 40
    end
  end
  object dsmMovimento: TDataSource
    DataSet = mMovimento
    Left = 457
    Top = 164
  end
end
