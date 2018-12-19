object fConsFornecedores: TfConsFornecedores
  Left = 5
  Top = 69
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Fornecedores'
  ClientHeight = 489
  ClientWidth = 780
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
    Left = 16
    Top = 11
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 400
    Top = 0
    Width = 110
    Height = 26
    Caption = 'Digitar parte do nome e'#13#10'Pressionar Enter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = -1
    Top = 66
    Width = 781
    Height = 2
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 12
    Top = 47
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label4: TLabel
    Left = 324
    Top = 47
    Width = 36
    Height = 13
    Caption = 'Estado:'
  end
  object Bevel2: TBevel
    Left = -1
    Top = 28
    Width = 781
    Height = 2
    Shape = bsTopLine
  end
  object Label5: TLabel
    Left = 498
    Top = 35
    Width = 94
    Height = 26
    Caption = 'Este bot'#227'o filtra s'#243#13#10'a cidade e o estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 49
    Top = 3
    Width = 349
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 71
    Width = 779
    Height = 399
    Color = clInfoBk
    DataSource = dsqFornecedores
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RxDBGrid1DblClick
    OnKeyDown = RxDBGrid1KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodForn'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeForn'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tel1Forn'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContatoForn'
        Title.Alignment = taCenter
        Title.Caption = 'Contato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EndForn'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BairroForn'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEPForn'
        Title.Alignment = taCenter
        Title.Caption = 'Cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EstadoForn'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGC'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FaxForn'
        Title.Alignment = taCenter
        Title.Caption = 'Fax'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Insc'
        Title.Alignment = taCenter
        Title.Caption = 'Insc.Estadual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FornecedorOutros'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Inativo'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 49
    Top = 39
    Width = 272
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCidade
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 361
    Top = 39
    Width = 56
    Height = 21
    DropDownCount = 8
    LookupField = 'Sigla'
    LookupDisplay = 'Sigla'
    LookupSource = DM1.dsUF
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 420
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 472
    Width = 780
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 
      'Duplo clique ou Enter no registro para fazer a consulta do cadas' +
      'tro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 688
    Top = 2
    Width = 87
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object qFornecedores: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbfornecedores.CodForn, Dbfornecedores.NomeForn, Dbfornec' +
        'edores.EndForn, Dbfornecedores.BairroForn, Dbfornecedores.CEPFor' +
        'n, Dbfornecedores.EstadoForn, Dbfornecedores.ContatoForn, Dbforn' +
        'ecedores.CGC, Dbfornecedores.Tel1Forn, Dbfornecedores.FaxForn, D' +
        'bfornecedores.Tel2Forn, Dbfornecedores.Insc, Dbfornecedores.Emai' +
        'l, Dbcidade.Nome, Dbfornecedores.FornecedorOutros, Dbfornecedore' +
        's.Fantasia'
      'FROM "dbFornecedores.DB" Dbfornecedores'
      '   INNER JOIN "DBCIDADE.DB" Dbcidade'
      '   ON  (Dbfornecedores.CodCidade = Dbcidade.Codigo)  '
      ' ')
    Left = 600
    Top = 192
    object qFornecedoresCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbFornecedores.DB".CodForn'
    end
    object qFornecedoresNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qFornecedoresEndForn: TStringField
      FieldName = 'EndForn'
      Origin = 'TABELAS."dbFornecedores.DB".EndForn'
      Size = 40
    end
    object qFornecedoresBairroForn: TStringField
      FieldName = 'BairroForn'
      Origin = 'TABELAS."dbFornecedores.DB".BairroForn'
      Size = 30
    end
    object qFornecedoresCEPForn: TStringField
      FieldName = 'CEPForn'
      Origin = 'TABELAS."dbFornecedores.DB".CEPForn'
      Size = 9
    end
    object qFornecedoresEstadoForn: TStringField
      FieldName = 'EstadoForn'
      Origin = 'TABELAS."dbFornecedores.DB".EstadoForn'
      Size = 3
    end
    object qFornecedoresContatoForn: TStringField
      FieldName = 'ContatoForn'
      Origin = 'TABELAS."dbFornecedores.DB".ContatoForn'
      Size = 40
    end
    object qFornecedoresCGC: TStringField
      FieldName = 'CGC'
      Origin = 'TABELAS."dbFornecedores.DB".CGC'
      Size = 18
    end
    object qFornecedoresTel1Forn: TStringField
      FieldName = 'Tel1Forn'
      Origin = 'TABELAS."dbFornecedores.DB".Tel1Forn'
      Size = 15
    end
    object qFornecedoresFaxForn: TStringField
      FieldName = 'FaxForn'
      Origin = 'TABELAS."dbFornecedores.DB".FaxForn'
      Size = 15
    end
    object qFornecedoresTel2Forn: TStringField
      FieldName = 'Tel2Forn'
      Origin = 'TABELAS."dbFornecedores.DB".Tel2Forn'
      Size = 15
    end
    object qFornecedoresInsc: TStringField
      FieldName = 'Insc'
      Origin = 'TABELAS."dbFornecedores.DB".Insc'
    end
    object qFornecedoresEmail: TStringField
      FieldName = 'Email'
      Origin = 'TABELAS."dbFornecedores.DB".Email'
      Size = 40
    end
    object qFornecedoresNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCidade.DB".Nome'
      Size = 26
    end
    object qFornecedoresFornecedorOutros: TStringField
      FieldName = 'FornecedorOutros'
      Origin = 'TABELAS."dbFornecedores.DB".FornecedorOutros'
      Size = 1
    end
    object qFornecedoresFantasia: TStringField
      FieldName = 'Fantasia'
      Origin = 'TABELAS."dbFornecedores.DB".Fantasia'
      Size = 60
    end
  end
  object dsqFornecedores: TDataSource
    DataSet = qFornecedores
    Left = 616
    Top = 192
  end
end
