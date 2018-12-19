object fConsHorasProdutosDet: TfConsHorasProdutosDet
  Left = 70
  Top = 97
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta as horas do produto'
  ClientHeight = 590
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 8
    Top = 4
    Width = 69
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 78
    Top = 4
    Width = 131
    Height = 13
    DataField = 'Referencia'
    DataSource = fPrevHorasProdutos.dsmProduto
  end
  object DBText2: TDBText
    Left = 230
    Top = 4
    Width = 419
    Height = 13
    DataField = 'NomeProduto'
    DataSource = fPrevHorasProdutos.dsmProduto
  end
  object Label1: TLabel
    Left = 373
    Top = 48
    Width = 73
    Height = 13
    Caption = 'Total de Horas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 761
    Top = 2
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 67
    Width = 840
    Height = 523
    Align = alBottom
    DataSource = dsqConsulta
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    OnFilterChanged = SMDBGrid1FilterChanged
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 15
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Talao'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada1'
        Title.Alignment = taCenter
        Title.Caption = 'Hr. Entrada 1'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida1'
        Title.Alignment = taCenter
        Title.Caption = 'Hr. Saida 1'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada2'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Entrada 2'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida2'
        Title.Alignment = taCenter
        Title.Caption = 'Hr. Saida 2'
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada3'
        Title.Alignment = taCenter
        Title.Caption = 'Hr. Entrada 3'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida3'
        Title.Alignment = taCenter
        Title.Caption = 'Hr. Saida 3'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdProduzida'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Produzida'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'clTotalHoras'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Horas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeSetor'
        Title.Alignment = taCenter
        Title.Caption = 'Setor'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'Funcion'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Funcion'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodSetor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Setor'
        Visible = True
      end>
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 448
    Top = 40
    Width = 89
    Height = 21
    TabStop = False
    AutoSize = False
    DisplayFormat = '0.00'
    ReadOnly = True
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 538
    Top = 37
    Width = 75
    Height = 25
    Caption = 'Recalcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object qConsulta: TQuery
    OnCalcFields = qConsultaCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbtalao.CodProduto, Dbtalaohor.HrEntrada1, Dbtalaohor.HrS' +
        'aida1, Dbtalaohor.HrEntrada2, Dbtalaohor.HrSaida2, Dbtalaohor.Hr' +
        'Entrada3, Dbtalaohor.HrSaida3, Dbtalaohor.Data, Dbtalao.QtdProdu' +
        'zida, Dbtalao.Talao, Dbtalaohor.CodFuncionario, Dbfuncionario.No' +
        'me NomeFuncionario, Dbtalaohor.CodSetor, Dbsetor.Nome NomeSetor'
      'FROM "dbTalao.DB" Dbtalao'
      '   INNER JOIN "dbTalaoHor.DB" Dbtalaohor'
      '   ON  (Dbtalao.Talao = Dbtalaohor.NumTalao)  '
      '   INNER JOIN "dbFuncionario.DB" Dbfuncionario'
      '   ON  (Dbtalaohor.CodFuncionario = Dbfuncionario.Codigo)  '
      '   INNER JOIN "dbSetor.DB" Dbsetor'
      '   ON  (Dbtalaohor.CodSetor = Dbsetor.Codigo)  '
      'WHERE   Dbtalaohor.Data BETWEEN :Data1 AND :Data2'
      '   AND  (Dbtalao.CodProduto = :CodProduto)  '
      'ORDER BY Dbtalaohor.Data, Dbtalao.Talao, NomeSetor')
    Left = 624
    Top = 120
    ParamData = <
      item
        DataType = ftDate
        Name = 'Data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end>
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbTalao.DB".CodProduto'
    end
    object qConsultaHrEntrada1: TTimeField
      FieldName = 'HrEntrada1'
      Origin = 'TABELAS."dbTalaoHor.DB".HrEntrada1'
    end
    object qConsultaHrSaida1: TTimeField
      FieldName = 'HrSaida1'
      Origin = 'TABELAS."dbTalaoHor.DB".HrSaida1'
    end
    object qConsultaHrEntrada2: TTimeField
      FieldName = 'HrEntrada2'
      Origin = 'TABELAS."dbTalaoHor.DB".HrEntrada2'
    end
    object qConsultaHrSaida2: TTimeField
      FieldName = 'HrSaida2'
      Origin = 'TABELAS."dbTalaoHor.DB".HrSaida2'
    end
    object qConsultaHrEntrada3: TTimeField
      FieldName = 'HrEntrada3'
      Origin = 'TABELAS."dbTalaoHor.DB".HrEntrada3'
    end
    object qConsultaHrSaida3: TTimeField
      FieldName = 'HrSaida3'
      Origin = 'TABELAS."dbTalaoHor.DB".HrSaida3'
    end
    object qConsultaQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
      Origin = 'TABELAS."dbTalao.DB".QtdProduzida'
    end
    object qConsultaData: TDateField
      FieldName = 'Data'
      Origin = 'TABELAS."dbTalaoHor.DB".Data'
    end
    object qConsultaTalao: TIntegerField
      FieldName = 'Talao'
      Origin = 'TABELAS."dbTalao.DB".Talao'
    end
    object qConsultaclTotalHoras: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clTotalHoras'
      Calculated = True
    end
    object qConsultaCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object qConsultaNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 50
    end
    object qConsultaCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object qConsultaNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 15
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 664
    Top = 144
  end
end
