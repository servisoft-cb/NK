object fConsHorasFuncionariosDet: TfConsHorasFuncionariosDet
  Left = 5
  Top = 59
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta as horas do funcion'#225'rio'
  ClientHeight = 470
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 697
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
  object RzPageControl1: TRzPageControl
    Left = 2
    Top = 32
    Width = 785
    Height = 433
    ActivePage = TabSheet1
    SaveResources = True
    FlatColor = clBlue
    ParentShowHint = False
    ShowHint = False
    ShowShadow = False
    TabIndex = 0
    TabOrder = 1
    TextColors.DisabledShadow = clActiveBorder
    UseGradients = False
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Funcion'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object RxLabel1: TRxLabel
        Left = 6
        Top = 4
        Width = 73
        Height = 13
        Caption = 'Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 86
        Top = 4
        Width = 603
        Height = 13
        DataField = 'NomeFuncionario'
        DataSource = fPrevHorasFuncionarios.dsmFuncionario
      end
      object RxDBGrid1: TRxDBGrid
        Left = 4
        Top = 24
        Width = 775
        Height = 384
        DataSource = dsqConsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumTalao'
            Title.Alignment = taCenter
            Title.Caption = 'Tal'#227'o'
            Width = 39
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrEntrada1'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Entr.1'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrSaida1'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Saida 1'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrEntrada2'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Entr.2'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrSaida2'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Saida 2'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrEntrada3'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Entr.3'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrSaida3'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Saida 3'
            Width = 58
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdProduzida'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Produzida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'clTotalHoras'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Horas'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeSetor'
            Title.Alignment = taCenter
            Title.Caption = 'Setor'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodSetor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Setor'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Setores'
      object RxLabel2: TRxLabel
        Left = 6
        Top = 4
        Width = 37
        Height = 13
        Caption = 'Setor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 46
        Top = 4
        Width = 603
        Height = 13
        DataField = 'NomeSetor'
        DataSource = fPrevHorasFuncionarios.dsmFuncionario
      end
      object RxDBGrid2: TRxDBGrid
        Left = 4
        Top = 24
        Width = 775
        Height = 384
        DataSource = dsqSetor
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumTalao'
            Title.Alignment = taCenter
            Title.Caption = 'Tal'#227'o'
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrEntrada1'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Entr.1'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrSaida1'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Saida 1'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrEntrada2'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Entr.2'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrSaida2'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Saida 2'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrEntrada3'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Entr.3'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrSaida3'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Saida 3'
            Width = 58
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdProduzida'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Produzida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'clTotalHoras'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Horas'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Visible = True
          end>
      end
    end
  end
  object qConsulta: TQuery
    OnCalcFields = qConsultaCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbsetor.Nome NomeSetor, Dbtalaohor.CodSetor, Dbtalaohor.H' +
        'rEntrada1, Dbtalaohor.HrSaida1, Dbtalaohor.HrEntrada2, Dbtalaoho' +
        'r.HrSaida2, Dbtalaohor.HrEntrada3, Dbtalaohor.HrSaida3, Dbtalaoh' +
        'or.Data, Dbtalaohor.NumTalao, dbproduto.nome NomeProduto, Dbtala' +
        'o.QtdProduzida, dbproduto.Referencia'
      'FROM "dbTalaoHor.DB" Dbtalaohor'
      '   INNER JOIN "dbTalao.DB" Dbtalao'
      '   ON  (Dbtalaohor.NumTalao = Dbtalao.Talao)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)  '
      '   INNER JOIN "dbSetor.DB" Dbsetor'
      '   ON  (Dbtalaohor.CodSetor = Dbsetor.Codigo)  '
      'WHERE   Dbtalaohor.Data BETWEEN :Data1 AND :Data2'
      '   AND  (Dbtalaohor.CodFuncionario = :CodFuncionario)  '
      'ORDER BY Dbtalaohor.Data, NomeSetor')
    Left = 456
    Top = 171
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
        Name = 'CodFuncionario'
        ParamType = ptUnknown
      end>
    object qConsultaNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 15
    end
    object qConsultaCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object qConsultaHrEntrada1: TTimeField
      FieldName = 'HrEntrada1'
      EditMask = 'HH:MM'
    end
    object qConsultaHrSaida1: TTimeField
      FieldName = 'HrSaida1'
      EditMask = 'HH:MM'
    end
    object qConsultaHrEntrada2: TTimeField
      FieldName = 'HrEntrada2'
      EditMask = 'HH:MM'
    end
    object qConsultaHrSaida2: TTimeField
      FieldName = 'HrSaida2'
      EditMask = 'HH:MM'
    end
    object qConsultaHrEntrada3: TTimeField
      FieldName = 'HrEntrada3'
      EditMask = 'HH:MM'
    end
    object qConsultaHrSaida3: TTimeField
      FieldName = 'HrSaida3'
      EditMask = 'HH:MM'
    end
    object qConsultaData: TDateField
      FieldName = 'Data'
    end
    object qConsultaNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object qConsultaclTotalHoras: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clTotalHoras'
      Calculated = True
    end
    object qConsultaNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qConsultaQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
    end
    object qConsultaReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 475
    Top = 172
  end
  object qSetor: TQuery
    OnCalcFields = qSetorCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbfuncionario.Nome NomeFuncionario, Dbtalaohor.CodFuncion' +
        'ario, Dbtalaohor.HrEntrada1, Dbtalaohor.HrSaida1, Dbtalaohor.HrE' +
        'ntrada2, Dbtalaohor.HrSaida2, Dbtalaohor.HrEntrada3, Dbtalaohor.' +
        'HrSaida3, Dbtalaohor.Data, Dbtalaohor.NumTalao, dbproduto.nome N' +
        'omeProduto, Dbtalao.QtdProduzida, dbproduto.Referencia'
      'FROM "dbTalaoHor.DB" Dbtalaohor'
      '   INNER JOIN "dbTalao.DB" Dbtalao'
      '   ON  (Dbtalaohor.NumTalao = Dbtalao.Talao)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)  '
      '   INNER JOIN "dbFuncionario.DB" Dbfuncionario'
      '   ON  (Dbtalaohor.CodFuncionario = Dbfuncionario.Codigo)  '
      'WHERE   Dbtalaohor.Data BETWEEN :Data1 AND :Data2'
      
        '   AND  (Dbtalaohor.CodSetor = :CodSetor)  and (dbTalaoHor.CodFu' +
        'ncionario = :CodFuncionario)'
      'ORDER BY Dbtalaohor.Data, NomeFuncionario')
    Left = 456
    Top = 219
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
        Name = 'CodSetor'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodFuncionario'
        ParamType = ptUnknown
      end>
    object qSetorNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 50
    end
    object qSetorCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object qSetorHrEntrada1: TTimeField
      FieldName = 'HrEntrada1'
    end
    object qSetorHrSaida1: TTimeField
      FieldName = 'HrSaida1'
    end
    object qSetorHrEntrada2: TTimeField
      FieldName = 'HrEntrada2'
    end
    object qSetorHrSaida2: TTimeField
      FieldName = 'HrSaida2'
    end
    object qSetorHrEntrada3: TTimeField
      FieldName = 'HrEntrada3'
    end
    object qSetorHrSaida3: TTimeField
      FieldName = 'HrSaida3'
    end
    object qSetorData: TDateField
      FieldName = 'Data'
    end
    object qSetorNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object qSetorNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qSetorQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
    end
    object qSetorclTotalHoras: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clTotalHoras'
      Calculated = True
    end
    object qSetorReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object dsqSetor: TDataSource
    DataSet = qSetor
    Left = 475
    Top = 220
  end
end
