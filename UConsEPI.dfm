object fConsEPI: TfConsEPI
  Left = 9
  Top = 67
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta EPIs'
  ClientHeight = 460
  ClientWidth = 773
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 32
    Width = 772
    Height = 425
    DataSource = dsmEPI
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'Funcion'#225'rio'
        Width = 273
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeEPI'
        Title.Alignment = taCenter
        Title.Caption = 'EPI'
        Width = 194
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DataRecto'
        Title.Alignment = taCenter
        Title.Caption = 'Data Recebimento'
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdRecebido'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Recebido'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DataProxima'
        Title.Alignment = taCenter
        Title.Caption = 'Pr'#243'xima Data'
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo Funcion'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodEPI'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo EPI'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 1
    Width = 97
    Height = 28
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 1
    Width = 97
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object ProgressBar1: TProgressBar
    Left = 456
    Top = 8
    Width = 289
    Height = 16
    TabOrder = 3
  end
  object qEPI: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbfuncionarioepi.CodEpi, Dbequipepi.Nome NomeEpi, Dbfunci' +
        'onario.Codigo CodFuncionario, Dbfuncionario.Nome NomeFuncionario' +
        ', Dbfuncionarioepi.Data, Dbfuncionarioepi.Qtd, Dbequipepi.QtdMes'
      'FROM "dbFuncionario.DB" Dbfuncionario'
      '   INNER JOIN "dbFuncionarioEPI.db" Dbfuncionarioepi'
      
        '   ON  (Dbfuncionario.Codigo = Dbfuncionarioepi.CodFuncionario) ' +
        ' '
      '   INNER JOIN "dbEquipEPI.db" Dbequipepi'
      '   ON  (Dbfuncionarioepi.CodEpi = Dbequipepi.Codigo)  '
      'WHERE  Dbfuncionario.DtDemissao IS NULL ')
    Left = 224
    object qEPICodEpi: TIntegerField
      FieldName = 'CodEpi'
      Origin = 'TABELAS."dbFuncionarioEPI.DB".CodEpi'
    end
    object qEPINomeEpi: TStringField
      FieldName = 'NomeEpi'
      Origin = 'TABELAS."dbEquipEPI.DB".Nome'
      Size = 40
    end
    object qEPICodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
      Origin = 'TABELAS."dbFuncionario.DB".Codigo'
    end
    object qEPINomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Origin = 'TABELAS."dbFuncionario.DB".Nome'
      Size = 50
    end
    object qEPIData: TDateField
      FieldName = 'Data'
      Origin = 'TABELAS."dbFuncionarioEPI.DB".Data'
    end
    object qEPIQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbFuncionarioEPI.DB".Qtd'
    end
    object qEPIQtdMes: TIntegerField
      FieldName = 'QtdMes'
      Origin = 'TABELAS."dbEquipEPI.DB".QtdMes'
    end
  end
  object mEPI: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'DataProxima'
    Params = <>
    Left = 288
    Data = {
      BA0000009619E0BD010000001800000007000000000003000000BA000E436F64
      46756E63696F6E6172696F04000100000000000F4E6F6D6546756E63696F6E61
      72696F010049000000010005574944544802000200320006436F644550490400
      010000000000074E6F6D65455049010049000000010005574944544802000200
      28000944617461526563746F04000600000000000B517464526563656269646F
      04000100000000000B4461746150726F78696D6104000600000000000000}
    object mEPICodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object mEPINomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 50
    end
    object mEPICodEPI: TIntegerField
      FieldName = 'CodEPI'
    end
    object mEPINomeEPI: TStringField
      FieldName = 'NomeEPI'
      Size = 40
    end
    object mEPIDataRecto: TDateField
      FieldName = 'DataRecto'
    end
    object mEPIQtdRecebido: TIntegerField
      FieldName = 'QtdRecebido'
    end
    object mEPIDataProxima: TDateField
      FieldName = 'DataProxima'
    end
  end
  object dsmEPI: TDataSource
    DataSet = mEPI
    Left = 304
  end
end
