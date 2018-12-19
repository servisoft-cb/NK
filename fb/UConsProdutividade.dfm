object fConsProdutividade: TfConsProdutividade
  Left = 332
  Top = 100
  BorderIcons = [biSystemMenu, biMaximize]
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
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 72
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 60
      Top = 10
      Width = 30
      Height = 13
      Caption = 'Tal'#227'o:'
    end
    object Label2: TLabel
      Left = 189
      Top = 9
      Width = 36
      Height = 13
      Caption = 'Pedido:'
    end
    object Label3: TLabel
      Left = 331
      Top = 11
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label9: TLabel
      Left = 35
      Top = 32
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label10: TLabel
      Left = 8
      Top = 56
      Width = 82
      Height = 13
      Caption = 'Dt.Gerado Inicial:'
    end
    object Label11: TLabel
      Left = 200
      Top = 56
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 91
      Top = 2
      Width = 81
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 226
      Top = 1
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 368
      Top = 3
      Width = 222
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 2
      OnEnter = RxDBLookupCombo1Enter
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 91
      Top = 25
      Width = 235
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'REFERENCIA'
      LookupSource = dmCadProduto.dsProduto
      TabOrder = 3
      OnEnter = RxDBLookupCombo2Enter
    end
    object DateEdit1: TDateEdit
      Left = 91
      Top = 48
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object DateEdit2: TDateEdit
      Left = 226
      Top = 48
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 782
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Shape1: TShape
      Left = 8
      Top = 10
      Width = 28
      Height = 18
      Brush.Color = clYellow
    end
    object Label4: TLabel
      Left = 39
      Top = 14
      Width = 64
      Height = 13
      Caption = 'Em Produ'#231#227'o'
    end
    object Shape2: TShape
      Left = 120
      Top = 10
      Width = 28
      Height = 18
      Brush.Color = clTeal
    end
    object Label5: TLabel
      Left = 151
      Top = 14
      Width = 49
      Height = 13
      Caption = 'Encerrado'
    end
    object Shape3: TShape
      Left = 217
      Top = 11
      Width = 28
      Height = 18
      Brush.Color = clRed
    end
    object Label6: TLabel
      Left = 248
      Top = 15
      Width = 51
      Height = 13
      Caption = 'Cancelado'
    end
    object Shape4: TShape
      Left = 313
      Top = 11
      Width = 28
      Height = 18
      Brush.Color = clAqua
    end
    object Label7: TLabel
      Left = 344
      Top = 15
      Width = 34
      Height = 13
      Caption = 'Parado'
    end
    object Shape5: TShape
      Left = 401
      Top = 11
      Width = 28
      Height = 18
      Brush.Color = 8454016
    end
    object Label8: TLabel
      Left = 432
      Top = 15
      Width = 39
      Height = 13
      Caption = 'Terceiro'
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 72
    Width = 782
    Height = 450
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Tal'#227'o'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 35
        Width = 778
        Height = 392
        Align = alClient
        Ctl3D = True
        DataSource = dsmTalao
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 3
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 35
        Align = alTop
        TabOrder = 1
        object Label12: TLabel
          Left = 24
          Top = 16
          Width = 60
          Height = 13
          Caption = 'Ordenar Por:'
        end
        object Label13: TLabel
          Left = 280
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
        end
        object BitBtn1: TBitBtn
          Left = 584
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object ComboBox1: TComboBox
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Tal'#227'o'
          Items.Strings = (
            'Tal'#227'o'
            'Refer'#234'ncia'
            'C'#243'd.Produto'
            'Nome Produto'
            'Nome Cliente'
            'Pedido'
            'Dt.Gerado')
        end
        object ComboBox2: TComboBox
          Left = 320
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 2
          Text = 'Ambos'
          Items.Strings = (
            'Encerrado'
            'Aberto'
            'Ambos')
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Setor'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 35
        Align = alTop
        TabOrder = 0
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 35
        Width = 778
        Height = 392
        Align = alClient
        Ctl3D = True
        DataSource = dsmTalaoSetor
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 3
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet7: TRzTabSheet
      Caption = 'Setor/Funcion'#225'rio'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label14: TLabel
          Left = 24
          Top = 16
          Width = 60
          Height = 13
          Caption = 'Ordenar Por:'
        end
        object Label15: TLabel
          Left = 280
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
        end
        object BitBtn2: TBitBtn
          Left = 632
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object ComboBox3: TComboBox
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Tal'#227'o'
          Items.Strings = (
            'Tal'#227'o'
            'Refer'#234'ncia'
            'C'#243'd.Produto'
            'Nome Produto'
            'Nome Cliente'
            'Pedido'
            'Dt.Gerado')
        end
        object ComboBox4: TComboBox
          Left = 320
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 2
          Text = 'Ambos'
          Items.Strings = (
            'Encerrado'
            'Aberto'
            'Ambos')
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 35
        Width = 778
        Height = 392
        Align = alClient
        Ctl3D = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 3
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet8: TRzTabSheet
      Caption = 'Setor/Funcion'#225'rio/Produto'
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label16: TLabel
          Left = 24
          Top = 16
          Width = 60
          Height = 13
          Caption = 'Ordenar Por:'
        end
        object Label17: TLabel
          Left = 280
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
        end
        object BitBtn4: TBitBtn
          Left = 632
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object ComboBox5: TComboBox
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Tal'#227'o'
          Items.Strings = (
            'Tal'#227'o'
            'Refer'#234'ncia'
            'C'#243'd.Produto'
            'Nome Produto'
            'Nome Cliente'
            'Pedido'
            'Dt.Gerado')
        end
        object ComboBox6: TComboBox
          Left = 320
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 2
          Text = 'Ambos'
          Items.Strings = (
            'Encerrado'
            'Aberto'
            'Ambos')
        end
      end
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 35
        Width = 778
        Height = 392
        Align = alClient
        Ctl3D = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 3
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet9: TRzTabSheet
      Caption = 'Setor/Produto'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label18: TLabel
          Left = 24
          Top = 16
          Width = 60
          Height = 13
          Caption = 'Ordenar Por:'
        end
        object Label19: TLabel
          Left = 280
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
        end
        object BitBtn5: TBitBtn
          Left = 632
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object ComboBox7: TComboBox
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Tal'#227'o'
          Items.Strings = (
            'Tal'#227'o'
            'Refer'#234'ncia'
            'C'#243'd.Produto'
            'Nome Produto'
            'Nome Cliente'
            'Pedido'
            'Dt.Gerado')
        end
        object ComboBox8: TComboBox
          Left = 320
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 2
          Text = 'Ambos'
          Items.Strings = (
            'Encerrado'
            'Aberto'
            'Ambos')
        end
      end
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 35
        Width = 778
        Height = 392
        Align = alClient
        Ctl3D = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 3
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet10: TRzTabSheet
      Caption = 'Funcion'#225'rio/Produto'
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label20: TLabel
          Left = 24
          Top = 16
          Width = 60
          Height = 13
          Caption = 'Ordenar Por:'
        end
        object Label21: TLabel
          Left = 280
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
        end
        object BitBtn6: TBitBtn
          Left = 632
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object ComboBox9: TComboBox
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Tal'#227'o'
          Items.Strings = (
            'Tal'#227'o'
            'Refer'#234'ncia'
            'C'#243'd.Produto'
            'Nome Produto'
            'Nome Cliente'
            'Pedido'
            'Dt.Gerado')
        end
        object ComboBox10: TComboBox
          Left = 320
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 2
          Text = 'Ambos'
          Items.Strings = (
            'Encerrado'
            'Aberto'
            'Ambos')
        end
      end
      object SMDBGrid6: TSMDBGrid
        Left = 0
        Top = 35
        Width = 778
        Height = 392
        Align = alClient
        Ctl3D = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 3
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet11: TRzTabSheet
      Caption = 'Detalhado'
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label22: TLabel
          Left = 24
          Top = 16
          Width = 60
          Height = 13
          Caption = 'Ordenar Por:'
        end
        object Label23: TLabel
          Left = 280
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
        end
        object BitBtn7: TBitBtn
          Left = 632
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object ComboBox11: TComboBox
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Tal'#227'o'
          Items.Strings = (
            'Tal'#227'o'
            'Refer'#234'ncia'
            'C'#243'd.Produto'
            'Nome Produto'
            'Nome Cliente'
            'Pedido'
            'Dt.Gerado')
        end
        object ComboBox12: TComboBox
          Left = 320
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 2
          Text = 'Ambos'
          Items.Strings = (
            'Encerrado'
            'Aberto'
            'Ambos')
        end
      end
      object SMDBGrid7: TSMDBGrid
        Left = 0
        Top = 35
        Width = 778
        Height = 392
        Align = alClient
        Ctl3D = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 3
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
  end
  object Talao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.*, CL.NOME NOMECLIENTE, CL.FANTASIA, P.REFERENCIA, P.NO' +
      'ME NOMEPRODUTO, P.DIAMETRO, P.COMPRIMENTO, P.ROSCA, P.CABECA, P.' +
      'ENDFOTOTALAO'#13#10'FROM TALAO T'#13#10'INNER JOIN CLIENTE  CL ON CL.CODIGO ' +
      '= T.CODCLIENTE'#13#10'INNER JOIN PRODUTO P ON P.CODIGO = T.CODPRODUTO'#13 +
      #10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 272
    object TalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object TalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object TalaoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object TalaoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object TalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object TalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object TalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
    end
    object TalaoPEDCLIDIF: TStringField
      FieldName = 'PEDCLIDIF'
      Size = 2
    end
    object TalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object TalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object TalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object TalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object TalaoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
    object TalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object TalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 100
    end
    object TalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object TalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object TalaoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object TalaoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object TalaoIMPRESSODATA: TDateField
      FieldName = 'IMPRESSODATA'
    end
    object TalaoIMPRESSOHORA: TTimeField
      FieldName = 'IMPRESSOHORA'
    end
    object TalaoIMPRESSOUSUARIO: TStringField
      FieldName = 'IMPRESSOUSUARIO'
      Size = 15
    end
    object TalaoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object TalaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object TalaoFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object TalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object TalaoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object TalaoDIAMETRO: TStringField
      FieldName = 'DIAMETRO'
      Size = 12
    end
    object TalaoCOMPRIMENTO: TStringField
      FieldName = 'COMPRIMENTO'
      Size = 12
    end
    object TalaoROSCA: TStringField
      FieldName = 'ROSCA'
      Size = 12
    end
    object TalaoCABECA: TStringField
      FieldName = 'CABECA'
      Size = 12
    end
    object TalaoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object TalaoHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
    end
    object TalaoHORASPARADA: TFloatField
      FieldName = 'HORASPARADA'
    end
    object TalaoQTDEMPROCESSO: TIntegerField
      FieldName = 'QTDEMPROCESSO'
    end
    object TalaoQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object TalaoENDFOTOTALAO: TStringField
      FieldName = 'ENDFOTOTALAO'
      Size = 250
    end
    object TalaoHORASTERCEIRO: TFloatField
      FieldName = 'HORASTERCEIRO'
    end
  end
  object pTalao: TDataSetProvider
    DataSet = Talao
    Left = 136
    Top = 272
  end
  object tTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTalao'
    Left = 168
    Top = 272
    object tTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object tTalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object tTalaoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object tTalaoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object tTalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object tTalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object tTalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
    end
    object tTalaoPEDCLIDIF: TStringField
      FieldName = 'PEDCLIDIF'
      Size = 2
    end
    object tTalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tTalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object tTalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object tTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object tTalaoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
    object tTalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tTalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 100
    end
    object tTalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object tTalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object tTalaoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object tTalaoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object tTalaoIMPRESSODATA: TDateField
      FieldName = 'IMPRESSODATA'
    end
    object tTalaoIMPRESSOHORA: TTimeField
      FieldName = 'IMPRESSOHORA'
    end
    object tTalaoIMPRESSOUSUARIO: TStringField
      FieldName = 'IMPRESSOUSUARIO'
      Size = 15
    end
    object tTalaoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object tTalaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object tTalaoFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object tTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object tTalaoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object tTalaoDIAMETRO: TStringField
      FieldName = 'DIAMETRO'
      Size = 12
    end
    object tTalaoCOMPRIMENTO: TStringField
      FieldName = 'COMPRIMENTO'
      Size = 12
    end
    object tTalaoROSCA: TStringField
      FieldName = 'ROSCA'
      Size = 12
    end
    object tTalaoCABECA: TStringField
      FieldName = 'CABECA'
      Size = 12
    end
    object tTalaoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
      DisplayFormat = '0.00'
    end
    object tTalaoHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
      DisplayFormat = '0.00'
    end
    object tTalaoHORASPARADA: TFloatField
      FieldName = 'HORASPARADA'
      DisplayFormat = '0.00'
    end
    object tTalaoQTDEMPROCESSO: TIntegerField
      FieldName = 'QTDEMPROCESSO'
    end
    object tTalaoQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object tTalaoENDFOTOTALAO: TStringField
      FieldName = 'ENDFOTOTALAO'
      Size = 250
    end
    object tTalaoHORASTERCEIRO: TFloatField
      FieldName = 'HORASTERCEIRO'
    end
    object tTalaoTalaoSetor: TDataSetField
      FieldName = 'TalaoSetor'
    end
  end
  object dsTalao: TDataSource
    DataSet = tTalao
    Left = 200
    Top = 272
  end
  object tPedidoItem2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Pedido;Item'
    TableName = 'DBPEDIDOITEM.DB'
    Left = 168
    Top = 401
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
  object mTalaoSetor: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 169
    Top = 336
    object mTalaoSetorTalao: TIntegerField
      FieldName = 'Talao'
    end
    object mTalaoSetorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mTalaoSetorReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mTalaoSetorNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mTalaoSetorQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mTalaoSetorQtdProduzida: TIntegerField
      FieldName = 'QtdProduzida'
    end
    object mTalaoSetorQtdQuebra: TIntegerField
      FieldName = 'QtdQuebra'
    end
    object mTalaoSetorTotalHorasPrevista: TFloatField
      FieldName = 'TotalHorasPrevista'
    end
    object mTalaoSetorTotalHorasParada: TFloatField
      FieldName = 'TotalHorasParada'
    end
    object mTalaoSetorTotalHorasProducao: TFloatField
      FieldName = 'TotalHorasProducao'
    end
    object mTalaoSetorPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mTalaoSetorPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object mTalaoSetorItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object mTalaoSetorProcesso: TStringField
      FieldName = 'Processo'
      Size = 1
    end
    object mTalaoSetorCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mTalaoSetorNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mTalaoSetorEncerrado: TStringField
      FieldName = 'Encerrado'
      Size = 1
    end
    object mTalaoSetorCancelado: TStringField
      FieldName = 'Cancelado'
      Size = 1
    end
    object mTalaoSetorDtCancelado: TDateField
      FieldName = 'DtCancelado'
    end
    object mTalaoSetorDtGerado: TDateField
      FieldName = 'DtGerado'
    end
    object mTalaoSetorNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 40
    end
  end
  object dsmTalaoSetor: TDataSource
    DataSet = mTalaoSetor
    Left = 201
    Top = 336
  end
  object TalaoSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT TS.* '#13#10'FROM TALAOSETOR TS'#13#10'WHERE TALAO = :TALAO'
    DataSource = dsTalaoMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 304
    object TalaoSetorTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoSetorCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object TalaoSetorPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TalaoSetorQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object TalaoSetorQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object TalaoSetorQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object TalaoSetorTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object TalaoSetorHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
    end
    object TalaoSetorHORASPARADAS: TFloatField
      FieldName = 'HORASPARADAS'
    end
  end
  object tTalaoSetor: TClientDataSet
    Aggregates = <>
    DataSetField = tTalaoTalaoSetor
    Params = <>
    Left = 168
    Top = 304
    object tTalaoSetorTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoSetorCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object tTalaoSetorPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tTalaoSetorQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object tTalaoSetorQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object tTalaoSetorQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object tTalaoSetorTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object tTalaoSetorHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
    end
    object tTalaoSetorHORASPARADAS: TFloatField
      FieldName = 'HORASPARADAS'
    end
  end
  object dsTalaoSetor: TDataSource
    DataSet = tTalaoSetor
    Left = 200
    Top = 304
  end
  object dsTalaoMestre: TDataSource
    DataSet = Talao
    Left = 232
    Top = 272
  end
  object mTalao: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Talao'
        DataType = ftInteger
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
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'QtdProduzida'
        DataType = ftInteger
      end
      item
        Name = 'QtdQuebra'
        DataType = ftInteger
      end
      item
        Name = 'TotalHorasPrevista'
        DataType = ftFloat
      end
      item
        Name = 'TotalHorasParada'
        DataType = ftFloat
      end
      item
        Name = 'TotalHorasProducao'
        DataType = ftFloat
      end
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ItemPedido'
        DataType = ftInteger
      end
      item
        Name = 'Processo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Encerrado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Cancelado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DtCancelado'
        DataType = ftDate
      end
      item
        Name = 'DtGerado'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 169
    Top = 368
    object mTalaoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object mTalaoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mTalaoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mTalaoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mTalaoQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mTalaoQtdProduzida: TIntegerField
      FieldName = 'QtdProduzida'
    end
    object mTalaoQtdQuebra: TIntegerField
      FieldName = 'QtdQuebra'
    end
    object mTalaoTotalHorasPrevista: TFloatField
      FieldName = 'TotalHorasPrevista'
      DisplayFormat = '0.000'
    end
    object mTalaoTotalHorasParada: TFloatField
      FieldName = 'TotalHorasParada'
    end
    object mTalaoTotalHorasProducao: TFloatField
      FieldName = 'TotalHorasProducao'
    end
    object mTalaoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mTalaoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object mTalaoItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object mTalaoProcesso: TStringField
      FieldName = 'Processo'
      Size = 1
    end
    object mTalaoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mTalaoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mTalaoEncerrado: TStringField
      FieldName = 'Encerrado'
      Size = 1
    end
    object mTalaoCancelado: TStringField
      FieldName = 'Cancelado'
      Size = 1
    end
    object mTalaoDtCancelado: TDateField
      FieldName = 'DtCancelado'
    end
    object mTalaoDtGerado: TDateField
      FieldName = 'DtGerado'
    end
  end
  object dsmTalao: TDataSource
    DataSet = mTalao
    Left = 201
    Top = 368
  end
end
