object fConsFuncionarioMovHist: TfConsFuncionarioMovHist
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
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid3: TSMDBGrid
    Left = 0
    Top = 35
    Width = 689
    Height = 426
    Align = alClient
    DataSource = dsTalaoMov
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
    ColCount = 16
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TALAO'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrada'
        Width = 64
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
        Title.Caption = 'Qtd. Produzido'
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
        FieldName = 'CODPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Saida'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFUNCIONARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Funcion'#225'rio'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPARADA'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Parada'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFUNCIONARIO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Funcion'#225'rio'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPARADA'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Parada'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 35
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 608
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
    end
  end
  object sdsTalaoMov: TSQLDataSet
    CommandText = 
      'SELECT T.*, F.NOME NOMEFUNCIONARIO ,  PS.NOME NOMEPARADA, ST.NOM' +
      'E NOMESETOR'#13#10'FROM TALAOMOV T '#13#10'INNER JOIN FUNCIONARIO F ON F.COD' +
      'IGO = T.CODFUNCIONARIO '#13#10'LEFT JOIN PARADAS  PS ON PS.CODIGO = T.' +
      'CODPARADA'#13#10'INNER JOIN SETOR ST ON ST.CODIGO = T.CODSETOR'#13#10'WHERE ' +
      'T.TALAO = :TALAO  '#13#10'ORDER BY T.ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
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
    object sdsTalaoMovNOMEPARADA: TStringField
      FieldName = 'NOMEPARADA'
      Size = 30
    end
    object sdsTalaoMovNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
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
    object cdsTalaoMovNOMEPARADA: TStringField
      FieldName = 'NOMEPARADA'
      Size = 30
    end
    object cdsTalaoMovNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
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
end
