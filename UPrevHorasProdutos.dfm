object fPrevHorasProdutos: TfPrevHorasProdutos
  Left = 214
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Total dos produtos '
  ClientHeight = 506
  ClientWidth = 784
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
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 202
    Top = 10
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Bevel1: TBevel
    Left = -1
    Top = 30
    Width = 785
    Height = 3
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 393
    Top = 9
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object Label4: TLabel
    Left = 419
    Top = 38
    Width = 95
    Height = 13
    Caption = 'Gerando, aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DateEdit1: TDateEdit
    Left = 65
    Top = 2
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 254
    Top = 2
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn3: TBitBtn
    Left = 282
    Top = 38
    Width = 94
    Height = 26
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn2: TBitBtn
    Left = 188
    Top = 38
    Width = 94
    Height = 26
    Caption = 'Imprimir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn1: TBitBtn
    Left = 94
    Top = 38
    Width = 94
    Height = 26
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 449
    Top = 1
    Width = 184
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object ProgressBar1: TProgressBar
    Left = 511
    Top = 36
    Width = 273
    Height = 16
    TabOrder = 6
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 489
    Width = 784
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para mostrar as horas detalhada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 68
    Width = 785
    Height = 420
    DataSource = dsmProduto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 8
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 299
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Produto'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdHoras'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Horas'
        Width = 99
        Visible = True
      end>
  end
  object qTalaoHor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbtalao.CodProduto, Dbproduto.Referencia, Dbtalaohor.HrEn' +
        'trada1, Dbproduto.Nome NomeProduto, Dbtalaohor.HrSaida1, Dbtalao' +
        'hor.HrEntrada2, Dbtalaohor.HrSaida2, Dbtalaohor.HrEntrada3, Dbta' +
        'laohor.HrSaida3, Dbtalaohor.Data, Dbtalao.QtdProduzida, Dbtalao.' +
        'Talao'
      'FROM "dbTalao.DB" Dbtalao'
      '   INNER JOIN "dbTalaoHor.DB" Dbtalaohor'
      '   ON  (Dbtalao.Talao = Dbtalaohor.NumTalao)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)  '
      'WHERE  Dbtalaohor.Data BETWEEN '#39'01/01/2005'#39' AND '#39'01/01/2007'#39' '
      'ORDER BY Dbtalao.CodProduto, Dbtalaohor.Data')
    Left = 336
    Top = 168
    object qTalaoHorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qTalaoHorReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qTalaoHorHrEntrada1: TTimeField
      FieldName = 'HrEntrada1'
    end
    object qTalaoHorNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qTalaoHorHrSaida1: TTimeField
      FieldName = 'HrSaida1'
    end
    object qTalaoHorHrEntrada2: TTimeField
      FieldName = 'HrEntrada2'
    end
    object qTalaoHorHrSaida2: TTimeField
      FieldName = 'HrSaida2'
    end
    object qTalaoHorHrEntrada3: TTimeField
      FieldName = 'HrEntrada3'
    end
    object qTalaoHorHrSaida3: TTimeField
      FieldName = 'HrSaida3'
    end
    object qTalaoHorData: TDateField
      FieldName = 'Data'
    end
    object qTalaoHorQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
    end
    object qTalaoHorTalao: TIntegerField
      FieldName = 'Talao'
    end
  end
  object dsTalaoHor: TDataSource
    DataSet = qTalaoHor
    Left = 360
    Top = 168
  end
  object mProduto: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Referencia'
    Params = <>
    OnNewRecord = mProdutoNewRecord
    Left = 448
    Top = 168
    Data = {
      A40000009619E0BD010000001800000005000000000003000000A4000A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      010005574944544802000200280008517464486F726173080004000000010007
      535542545950450200490006004D6F6E6579000A51746450726F6475746F0800
      0400000000000000}
    object mProdutoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mProdutoQtdHoras: TCurrencyField
      FieldName = 'QtdHoras'
      DisplayFormat = '0.00'
    end
    object mProdutoQtdProduto: TFloatField
      FieldName = 'QtdProduto'
    end
  end
  object dsmProduto: TDataSource
    DataSet = mProduto
    Left = 472
    Top = 168
  end
end
