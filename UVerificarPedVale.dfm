object fVerificarPedVale: TfVerificarPedVale
  Left = 194
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fVerificarPedVale'
  ClientHeight = 446
  ClientWidth = 688
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
  object BitBtn1: TBitBtn
    Left = 24
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Verificar Pedido'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Verificar Vale'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 72
    Width = 688
    Height = 374
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Pedido'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 346
        Align = alClient
        DataSource = dsmPedido
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 3
        RowCount = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vale'
      ImageIndex = 1
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 346
        Align = alClient
        DataSource = dsmVale
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 3
        RowCount = 2
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 296
    Top = 16
    Width = 353
    Height = 17
    TabOrder = 3
  end
  object mPedido: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 24
    Data = {
      3B0000009619E0BD0100000018000000020000000000030000003B0006506564
      69646F0400010000000000094474456D697373616F04000600000000000000}
    object mPedidoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
  end
  object dsmPedido: TDataSource
    DataSet = mPedido
    Left = 376
    Top = 24
  end
  object mVale: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 24
    Data = {
      3C0000009619E0BD0100000018000000020000000000030000003C00074E756D
      56616C650400010000000000094474456D697373616F04000600000000000000}
    object mValeNumVale: TIntegerField
      FieldName = 'NumVale'
    end
    object mValeDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
  end
  object dsmVale: TDataSource
    DataSet = mVale
    Left = 464
    Top = 24
  end
end
