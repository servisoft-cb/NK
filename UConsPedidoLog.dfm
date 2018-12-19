object fConsPedidoLog: TfConsPedidoLog
  Left = 6
  Top = 58
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta altera'#231#245'es dos itens do pedido'
  ClientHeight = 475
  ClientWidth = 782
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
  object SMDBGrid1: TSMDBGrid
    Left = 2
    Top = 8
    Width = 775
    Height = 460
    DataSource = dsqConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemPedido'
        Title.Alignment = taCenter
        Title.Caption = 'Item Pedido'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumTalao'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Tal'#227'o'
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdTalao'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtAlteracao'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrAlteracao'
        Title.Alignment = taCenter
        Title.Caption = 'Hora'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Usuario'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Width = 103
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Produto'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 52
        Visible = True
      end>
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Pedido, ItemPedido, NumTalao, QtdTalao, DtAlteracao, HrAl' +
        'teracao, Usuario, CodProduto, CodCor, Tipo'
      'FROM "dbPedidoLog.db" Dbpedidolog'
      ' ')
    Left = 600
    Top = 56
    object qConsultaPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbPedidoLog.DB".Pedido'
    end
    object qConsultaNumTalao: TIntegerField
      FieldName = 'NumTalao'
      Origin = 'TABELAS."dbPedidoLog.DB".NumTalao'
    end
    object qConsultaQtdTalao: TFloatField
      FieldName = 'QtdTalao'
      Origin = 'TABELAS."dbPedidoLog.DB".QtdTalao'
    end
    object qConsultaDtAlteracao: TDateField
      FieldName = 'DtAlteracao'
      Origin = 'TABELAS."dbPedidoLog.DB".DtAlteracao'
    end
    object qConsultaHrAlteracao: TTimeField
      FieldName = 'HrAlteracao'
      Origin = 'TABELAS."dbPedidoLog.DB".HrAlteracao'
    end
    object qConsultaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'TABELAS."dbPedidoLog.DB".Usuario'
      Size = 15
    end
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoLog.DB".CodProduto'
    end
    object qConsultaCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbPedidoLog.DB".CodCor'
    end
    object qConsultaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'TABELAS."dbPedidoLog.DB".Tipo'
      Size = 3
    end
    object qConsultaItemPedido: TIntegerField
      FieldName = 'ItemPedido'
      Origin = 'TABELAS."dbPedidoLog.DB".ItemPedido'
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 624
    Top = 56
  end
end
