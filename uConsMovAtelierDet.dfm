object fConsMovAtelierDet: TfConsMovAtelierDet
  Left = 96
  Top = 139
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta do movimento das ret'#237'ficas'
  ClientHeight = 553
  ClientWidth = 787
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
  object Label1: TLabel
    Left = 14
    Top = 11
    Width = 41
    Height = 13
    Caption = 'Ret'#237'fica:'
  end
  object Label2: TLabel
    Left = 0
    Top = 34
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object Label3: TLabel
    Left = 430
    Top = 11
    Width = 66
    Height = 13
    Caption = 'Nome Parcial:'
  end
  object Label4: TLabel
    Left = 226
    Top = 34
    Width = 55
    Height = 13
    Caption = 'Ref.Parcial:'
  end
  object Label5: TLabel
    Left = 32
    Top = 58
    Width = 86
    Height = 13
    Caption = 'Dt.Emiss'#227'o Inicial:'
  end
  object Label6: TLabel
    Left = 37
    Top = 82
    Width = 81
    Height = 13
    Caption = 'Dt.Emiss'#227'o Final:'
  end
  object Label7: TLabel
    Left = 250
    Top = 58
    Width = 73
    Height = 13
    Caption = 'Dt.Baixa Inicial:'
  end
  object Label8: TLabel
    Left = 255
    Top = 82
    Width = 68
    Height = 13
    Caption = 'Dt.Baixa Final:'
  end
  object Label9: TLabel
    Left = 436
    Top = 34
    Width = 60
    Height = 13
    Caption = 'Tal'#227'o Inicial:'
  end
  object Label10: TLabel
    Left = 441
    Top = 58
    Width = 55
    Height = 13
    Caption = 'Tal'#227'o Final:'
  end
  object Label11: TLabel
    Left = 461
    Top = 82
    Width = 35
    Height = 13
    Caption = 'Op'#231#227'o:'
  end
  object Label12: TLabel
    Left = 597
    Top = 34
    Width = 59
    Height = 13
    Caption = 'Ordenar por:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 56
    Top = 3
    Width = 366
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 0
    OnChange = RxDBLookupCombo1Change
    OnEnter = RxDBLookupCombo1Enter
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 56
    Top = 26
    Width = 164
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Referencia'
    LookupSource = DM1.dsProduto
    TabOrder = 2
    OnChange = RxDBLookupCombo2Change
    OnEnter = RxDBLookupCombo2Enter
  end
  object Edit1: TEdit
    Left = 282
    Top = 26
    Width = 140
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 497
    Top = 2
    Width = 287
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object DateEdit1: TDateEdit
    Left = 120
    Top = 50
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object DateEdit2: TDateEdit
    Left = 120
    Top = 74
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object DateEdit3: TDateEdit
    Left = 324
    Top = 50
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object DateEdit4: TDateEdit
    Left = 324
    Top = 74
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 7
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 497
    Top = 26
    Width = 88
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 8
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 497
    Top = 50
    Width = 88
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 9
  end
  object ComboBox1: TComboBox
    Left = 497
    Top = 74
    Width = 88
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 10
    Text = 'Ambos'
    Items.Strings = (
      'Pendente'
      'Baixado'
      'Ambos')
  end
  object BitBtn1: TBitBtn
    Left = 616
    Top = 67
    Width = 78
    Height = 28
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 696
    Top = 67
    Width = 78
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtn2Click
  end
  object ComboBox2: TComboBox
    Left = 659
    Top = 26
    Width = 123
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 11
    Text = 'Cliente'
    Items.Strings = (
      'Dt.Emiss'#227'o'
      'Cliente'
      'Referencia'
      'Dt.Baixa'
      'Tal'#227'o')
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 102
    Width = 787
    Height = 451
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    DataSource = dsqMovimento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 14
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
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
        FieldName = 'Talao'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Width = 241
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 127
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrUnitario'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotalItem'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtBaixa'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Baixa'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumMov'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov. (OS)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Visible = True
      end>
  end
  object qMovimento: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbmovatelier.CodCliente, Dbmovatelier.DtEmissao, Dbmovate' +
        'lier.VlrTotal, Dbmovatelier.NumMov, Dbmovatelieritens.Talao, Dbm' +
        'ovatelieritens.CodProduto, Dbmovatelieritens.CodCor, Dbmovatelie' +
        'ritens.Qtd, Dbmovatelieritens.QtdRestante, Dbmovatelieritens.Vlr' +
        'Unitario, Dbmovatelieritens.VlrTotal VlrTotalItem, Dbmovatelieri' +
        'tens.DtBaixa, Dbmovatelieritens.Item, Dbproduto.Referencia, Dbpr' +
        'oduto.Nome NomeProduto, Dbcliente.Nome NomeCliente'
      'FROM "dbMovAtelier.DB" Dbmovatelier'
      '   INNER JOIN "dbMovAtelierItens.DB" Dbmovatelieritens'
      '   ON  (Dbmovatelier.NumMov = Dbmovatelieritens.NumMov)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbmovatelier.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbmovatelieritens.CodProduto = Dbproduto.Codigo)  ')
    Left = 352
    Top = 16
    object qMovimentoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qMovimentoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qMovimentoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qMovimentoNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object qMovimentoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object qMovimentoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qMovimentoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qMovimentoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qMovimentoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object qMovimentoVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object qMovimentoVlrTotalItem: TFloatField
      FieldName = 'VlrTotalItem'
    end
    object qMovimentoDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object qMovimentoItem: TIntegerField
      FieldName = 'Item'
    end
    object qMovimentoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qMovimentoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qMovimentoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
  end
  object dsqMovimento: TDataSource
    DataSet = qMovimento
    Left = 368
    Top = 16
  end
end
