object fConsNotaVale: TfConsNotaVale
  Left = 20
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vales da nota'
  ClientHeight = 372
  ClientWidth = 755
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
    Top = 16
    Width = 156
    Height = 13
    Caption = 'Vales do Item ..................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 394
    Top = 16
    Width = 151
    Height = 13
    Caption = 'Vales da Nota ................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxDBGrid1: TRxDBGrid
    Left = 3
    Top = 32
    Width = 350
    Height = 329
    DataSource = DM1.dsNotaFiscalVale
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
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
        FieldName = 'NumVale'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Vale'
        Width = 103
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemVale'
        Title.Alignment = taCenter
        Title.Caption = 'Item do Vale'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade do Vale'
        Width = 122
        Visible = True
      end>
  end
  object RxDBGrid2: TRxDBGrid
    Left = 387
    Top = 32
    Width = 366
    Height = 329
    DataSource = dsqVale
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemNota'
        Title.Alignment = taCenter
        Title.Caption = 'Item da Nota'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumVale'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Vale'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemVale'
        Title.Alignment = taCenter
        Title.Caption = 'Item do Vale'
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade do Vale'
        Width = 106
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 664
    Top = 3
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object qVale: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT NumSeq, ItemNota, NumVale, ItemVale, Qtd'
      'FROM "dbNotaFiscalVale.DB" Dbnotafiscalvale'
      'WHERE  NumSeq = :NumSeq'
      '     and Filial = :Filial'
      'ORDER BY ItemNota')
    Left = 480
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NumSeq'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end>
    object qValeNumSeq: TIntegerField
      FieldName = 'NumSeq'
      Origin = 'TABELAS."dbNotaFiscalVale.DB".NumSeq'
    end
    object qValeItemNota: TIntegerField
      FieldName = 'ItemNota'
      Origin = 'TABELAS."dbNotaFiscalVale.DB".ItemNota'
    end
    object qValeNumVale: TIntegerField
      FieldName = 'NumVale'
      Origin = 'TABELAS."dbNotaFiscalVale.DB".NumVale'
    end
    object qValeItemVale: TIntegerField
      FieldName = 'ItemVale'
      Origin = 'TABELAS."dbNotaFiscalVale.DB".ItemVale'
    end
    object qValeQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalVale.DB".Qtd'
    end
  end
  object dsqVale: TDataSource
    DataSet = qVale
    Left = 496
    Top = 72
  end
end
