object fGerarTalao: TfGerarTalao
  Left = 50
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tal'#227'o'
  ClientHeight = 527
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 35
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Pedido:'
    end
    object Label2: TLabel
      Left = 126
      Top = 5
      Width = 94
      Height = 26
      Caption = 'Informe o Pedido'#13#10'e pressione ENTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 385
      Top = 5
      Width = 118
      Height = 26
      Hint = 'Confirma a gera'#231#227'o dos tal'#245'es'
      Caption = '&Gerar Tal'#245'es'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 503
      Top = 5
      Width = 153
      Height = 26
      Caption = 'Consulta Pedidos Pendentes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 46
      Top = 9
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnChange = CurrencyEdit1Change
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object BitBtn3: TBitBtn
      Left = 656
      Top = 5
      Width = 118
      Height = 26
      Caption = 'Consulta Tal'#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn3Click
      NumGlyphs = 2
    end
    object CheckBox1: TCheckBox
      Left = 286
      Top = 11
      Width = 97
      Height = 17
      Caption = 'Tal'#227'o Teste'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 4
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 35
    Width = 781
    Height = 466
    Align = alClient
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 2
    RowCount = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 501
    Width = 781
    Height = 26
    Align = alBottom
    TabOrder = 2
    object Shape1: TShape
      Left = 7
      Top = 4
      Width = 26
      Height = 16
      Brush.Color = clYellow
    end
    object Label3: TLabel
      Left = 39
      Top = 5
      Width = 91
      Height = 13
      Caption = 'Item n'#227'o gera tal'#227'o'
    end
  end
end
