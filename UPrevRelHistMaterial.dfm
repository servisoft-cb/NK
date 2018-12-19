object fPrevRelHistMaterial: TfPrevRelHistMaterial
  Left = 214
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio do Hist'#243'rico do Material'
  ClientHeight = 357
  ClientWidth = 382
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 357
    Align = alClient
    TabOrder = 0
    object DateEdit1: TDateEdit
      Left = 66
      Top = 202
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 224
      Top = 206
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Data Final:'
      TabOrder = 8
    end
    object DateEdit2: TDateEdit
      Left = 285
      Top = 202
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 262
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Material:'
      TabOrder = 9
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 66
      Top = 258
      Width = 309
      Height = 21
      DropDownCount = 8
      Color = clSilver
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsProduto
      ReadOnly = True
      TabOrder = 5
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo1Exit
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 206
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Data Inicial:'
      TabOrder = 10
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 288
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Cor:'
      TabOrder = 11
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 66
      Top = 284
      Width = 309
      Height = 21
      DropDownCount = 8
      Color = clSilver
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = dsCor
      ReadOnly = True
      TabOrder = 6
      OnEnter = RxDBLookupCombo2Enter
    end
    object RadioGroup1: TRadioGroup
      Left = 5
      Top = 41
      Width = 372
      Height = 41
      Caption = 'Op'#231#227'o do Relat'#243'rio'
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'Material/Produto'
        'Geral'
        'Grupo')
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
    object Panel2: TPanel
      Left = 83
      Top = 312
      Width = 223
      Height = 41
      BevelInner = bvRaised
      TabOrder = 7
      object BitBtn6: TBitBtn
        Left = 5
        Top = 8
        Width = 106
        Height = 25
        Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn6Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777700000000000777707777777770707700000000000007070777777BBB77
          0007077777788877070700000000000007700777777777707070700000000007
          0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
          077777770FFFFFFFF07777777000000000777777777777777777}
      end
      object BitBtn4: TBitBtn
        Left = 113
        Top = 8
        Width = 106
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn4Click
        Glyph.Data = {
          B6010000424DB601000000000000760000002800000022000000100000000100
          04000000000040010000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          03833333333333387F333300000083838383830E603833FFFFFFFF387F33FF00
          000000000000380E6600388888888F387F388300000033333330830E66033333
          33338F387F38F300000033333330000E6603333333FF88887F38F30000003333
          0030330E66033333388F8F387F38F300000033330E00330E660333FFF8F88F38
          7F38F300000000000EE0330E0603388888338F387F38F30000000EEEEEE6030E
          660338FFFFF378387F38F300000000000E60330E6603388888F78F387F38F300
          000033330600330E6603333338788F387F38F300000033330030330E66033333
          38838F387F38F3000000333333303330E603333333338F3387F8F30000003333
          333033330E03333333338FFFF878F30000003333333000000003333333338888
          8888330000003333333333333333333333333333333333000000}
        NumGlyphs = 2
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 5
      Top = 86
      Width = 372
      Height = 41
      Caption = 'Tipo'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Entradas'
        'Sa'#237'das'
        'Ambos')
      TabOrder = 12
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 130
      Width = 370
      Height = 62
      TabOrder = 13
      object CheckBox1: TCheckBox
        Left = 8
        Top = 16
        Width = 105
        Height = 17
        Caption = 'Nota de Entrada'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 128
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Nota Fiscal'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 238
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Documentos'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CheckBox4: TCheckBox
        Left = 8
        Top = 40
        Width = 81
        Height = 17
        Caption = 'Requisi'#231#227'o'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBox5: TCheckBox
        Left = 126
        Top = 40
        Width = 81
        Height = 17
        Caption = 'Acertos'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
    end
    object StaticText5: TStaticText
      Left = 6
      Top = 237
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Grupo:'
      TabOrder = 14
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 65
      Top = 233
      Width = 309
      Height = 21
      DropDownCount = 8
      Color = clSilver
      LookupField = 'Codigo'
      LookupDisplay = 'Nome;Referencia'
      LookupSource = DM1.dsGrupo
      ReadOnly = True
      TabOrder = 4
      OnEnter = RxDBLookupCombo3Enter
    end
    object RadioGroup3: TRadioGroup
      Left = 4
      Top = -1
      Width = 373
      Height = 39
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'Material'
        'Produto')
      TabOrder = 0
      OnClick = RadioGroup3Click
    end
  end
  object qCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome'
      'FROM dbCor, dbProdutoCor'
      'WHERE CodProduto = :x0 AND Codigo = CodCor'
      'ORDER BY Nome'
      '')
    Left = 256
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'x0'
        ParamType = ptUnknown
      end>
    object qCorCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qCorNome: TStringField
      FieldName = 'Nome'
      Size = 15
    end
  end
  object dsCor: TDataSource
    DataSet = qCor
    Left = 272
    Top = 232
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsProduto
    Filter.Strings = (
      'ProdMat = '#39'P'#39)
    Left = 264
    Top = 16
  end
  object tAuxHistMaterial: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbAuxHistMaterial.DB'
    Left = 93
    Top = 79
    object tAuxHistMaterialControle: TIntegerField
      FieldName = 'Controle'
    end
    object tAuxHistMaterialCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tAuxHistMaterialData: TDateField
      FieldName = 'Data'
    end
    object tAuxHistMaterialNroDoc: TIntegerField
      FieldName = 'NroDoc'
    end
    object tAuxHistMaterialTipo: TStringField
      FieldName = 'Tipo'
      Size = 4
    end
    object tAuxHistMaterialES: TStringField
      FieldName = 'ES'
      Size = 1
    end
    object tAuxHistMaterialQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tAuxHistMaterialNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 50
    end
    object tAuxHistMaterialNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object tAuxHistMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tAuxHistMaterialNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object tAuxHistMaterialVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object tAuxHistMaterialVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tAuxHistMaterialPercICMS: TFloatField
      FieldName = 'PercICMS'
    end
  end
  object dsAuxHistMaterial: TDataSource
    DataSet = tAuxHistMaterial
    Left = 109
    Top = 79
  end
  object tAuxHistMaterialGrade: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Controle;Tamanho'
    MasterFields = 'Controle'
    MasterSource = dsAuxHistMaterial
    TableName = 'dbAuxHistMaterialGrade.db'
    Left = 181
    Top = 79
    object tAuxHistMaterialGradeControle: TIntegerField
      FieldName = 'Controle'
    end
    object tAuxHistMaterialGradeTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object tAuxHistMaterialGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsAuxHistMaterialGrade: TDataSource
    DataSet = tAuxHistMaterialGrade
    Left = 196
    Top = 79
  end
end
