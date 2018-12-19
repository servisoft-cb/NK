object fPrevHorasFuncionarios: TfPrevHorasFuncionarios
  Left = 144
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio do total de horas por funcion'#225'rio'
  ClientHeight = 520
  ClientWidth = 696
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
    Left = 24
    Top = 10
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 210
    Top = 10
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label3: TLabel
    Left = 52
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Setor:'
  end
  object Bevel1: TBevel
    Left = -2
    Top = 71
    Width = 700
    Height = 2
    Shape = bsTopLine
  end
  object Label4: TLabel
    Left = 416
    Top = 33
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
  object Label5: TLabel
    Left = 17
    Top = 54
    Width = 63
    Height = 13
    Caption = 'Funcion'#225'rios:'
  end
  object DateEdit1: TDateEdit
    Left = 81
    Top = 2
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 262
    Top = 2
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 81
    Top = 24
    Width = 302
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsSetor
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 80
    Width = 91
    Height = 25
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 291
    Top = 80
    Width = 91
    Height = 25
    Caption = 'Imprimir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 109
    Width = 692
    Height = 391
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RxDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Funcion'#225'rio'
        Width = 256
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeSetor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Setor'
        Width = 169
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 10930928
        Expanded = False
        FieldName = 'TotalHoras'
        Title.Alignment = taCenter
        Title.Caption = 'Total Horas'
        Width = 111
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodSetor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Setor'
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Func.'
        Width = 56
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 382
    Top = 80
    Width = 91
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 503
    Width = 696
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 
      'Duplo clique para mostrar as horas detalhada (Funcion'#225'rios/Setor' +
      'es)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object ProgressBar1: TProgressBar
    Left = 415
    Top = 46
    Width = 273
    Height = 16
    TabOrder = 9
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 81
    Top = 46
    Width = 302
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsFuncionario
    TabOrder = 3
    OnEnter = RxDBLookupCombo2Enter
  end
  object qTalaoHor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbfuncionario.Nome NomeFuncionario, Dbsetor.Nome NomeSeto' +
        'r, Dbtalaohor.CodSetor, Dbtalaohor.CodFuncionario, Dbtalaohor.Hr' +
        'Entrada1, Dbtalaohor.HrSaida1, Dbtalaohor.HrEntrada2, Dbtalaohor' +
        '.HrSaida2, Dbtalaohor.HrEntrada3, Dbtalaohor.HrSaida3, Dbtalaoho' +
        'r.Data'
      'FROM "dbTalaoHor.DB" Dbtalaohor'
      '   INNER JOIN "dbFuncionario.DB" Dbfuncionario'
      '   ON  (Dbtalaohor.CodFuncionario = Dbfuncionario.Codigo)  '
      '   INNER JOIN "dbSetor.DB" Dbsetor'
      '   ON  (Dbtalaohor.CodSetor = Dbsetor.Codigo)  '
      'WHERE  Dbtalaohor.Data BETWEEN '#39'01/01/2005'#39' AND '#39'01/01/2007'#39' '
      'ORDER BY NomeSetor, NomeFuncionario, Dbtalaohor.Data')
    Left = 360
    Top = 256
    object qTalaoHorNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 50
    end
    object qTalaoHorNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 15
    end
    object qTalaoHorCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object qTalaoHorCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object qTalaoHorHrEntrada1: TTimeField
      FieldName = 'HrEntrada1'
      EditMask = 'HH:MM'
    end
    object qTalaoHorHrSaida1: TTimeField
      FieldName = 'HrSaida1'
      EditMask = 'HH:MM'
    end
    object qTalaoHorHrEntrada2: TTimeField
      FieldName = 'HrEntrada2'
      EditMask = 'HH:MM'
    end
    object qTalaoHorHrSaida2: TTimeField
      FieldName = 'HrSaida2'
      EditMask = 'HH:MM'
    end
    object qTalaoHorHrEntrada3: TTimeField
      FieldName = 'HrEntrada3'
      EditMask = 'HH:MM'
    end
    object qTalaoHorHrSaida3: TTimeField
      FieldName = 'HrSaida3'
      EditMask = 'HH:MM'
    end
    object qTalaoHorData: TDateField
      FieldName = 'Data'
    end
  end
  object dsmFuncionario: TDataSource
    DataSet = mFuncionario
    Left = 448
    Top = 256
  end
  object dsqTalaoHor: TDataSource
    DataSet = qTalaoHor
    Left = 376
    Top = 256
  end
  object mFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NomeSetor;NomeFuncionario'
    Params = <>
    Left = 424
    Top = 256
    Data = {
      AB0000009619E0BD010000001800000005000000000003000000AB0008436F64
      5365746F7204000100000000000E436F6446756E63696F6E6172696F04000100
      00000000094E6F6D655365746F72010049000000010005574944544802000200
      14000F4E6F6D6546756E63696F6E6172696F0100490000000100055749445448
      0200020028000A546F74616C486F726173080004000000010007535542545950
      450200490006004D6F6E6579000000}
    object mFuncionarioCodSetor: TIntegerField
      DisplayWidth = 15
      FieldName = 'CodSetor'
    end
    object mFuncionarioCodFuncionario: TIntegerField
      DisplayWidth = 18
      FieldName = 'CodFuncionario'
    end
    object mFuncionarioNomeSetor: TStringField
      DisplayWidth = 29
      FieldName = 'NomeSetor'
    end
    object mFuncionarioNomeFuncionario: TStringField
      DisplayWidth = 43
      FieldName = 'NomeFuncionario'
      Size = 40
    end
    object mFuncionarioTotalHoras: TCurrencyField
      DisplayWidth = 37
      FieldName = 'TotalHoras'
      DisplayFormat = '0.00'
    end
  end
end
