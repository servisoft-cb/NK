object fBaixaProducaoItem: TfBaixaProducaoItem
  Left = 202
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Paradas /Quebras'
  ClientHeight = 452
  ClientWidth = 649
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 113
    Width = 320
    Height = 339
    Align = alLeft
    Ctl3D = False
    DataSource = dsParadas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
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
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Paradas'
        Width = 235
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 113
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 47
      Top = 40
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 8
      Top = 7
      Width = 244
      Height = 20
      Caption = 'Informar o motivo da PARADA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 176
      Top = 39
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCodigo: TEdit
      Left = 83
      Top = 32
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = edCodigoExit
    end
    object BitBtn1: TBitBtn
      Left = 432
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 508
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid2: TSMDBGrid
    Left = 329
    Top = 113
    Width = 320
    Height = 339
    Align = alRight
    Ctl3D = False
    DataSource = dsDefeitos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
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
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Defeitos'
        Width = 219
        Visible = True
      end>
  end
  object sdsParadas: TSQLDataSet
    CommandText = 'SELECT *'#13#10'   FROM  PARADAS'#13#10'WHERE TIPO = '#39'F'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 168
    object sdsParadasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsParadasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspParadas: TDataSetProvider
    DataSet = sdsParadas
    Left = 80
    Top = 168
  end
  object cdsParadas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParadas'
    Left = 136
    Top = 168
    object cdsParadasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsParadasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsParadas: TDataSource
    DataSet = cdsParadas
    Left = 192
    Top = 168
  end
  object sdsDefeitos: TSQLDataSet
    CommandText = 'SELECT *'#13#10'   FROM  DEFEITOS'#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 208
    object sdsDefeitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsDefeitosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspDefeitos: TDataSetProvider
    DataSet = sdsDefeitos
    Left = 472
    Top = 208
  end
  object cdsDefeitos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDefeitos'
    Left = 520
    Top = 208
    object cdsDefeitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDefeitosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsDefeitos: TDataSource
    DataSet = cdsDefeitos
    Left = 560
    Top = 208
  end
end
