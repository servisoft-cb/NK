object fConsPedidoPendLotes: TfConsPedidoPendLotes
  Left = 60
  Top = 48
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedidos Pendentes (Lotes)'
  ClientHeight = 479
  ClientWidth = 785
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
    Left = 0
    Top = 38
    Width = 785
    Height = 421
    Align = alBottom
    DataSource = dsqPendencias
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
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
    ColCount = 16
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 26
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido Interno'
        Width = 42
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido Cliente (OC)'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Fantasia'
        Width = 136
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 42
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Desdobramento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdParesRest'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade Restante'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramacao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 29
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdPares'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Width = 200
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 459
    Width = 785
    Height = 20
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para copiar n'#250'mero do pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object dsqPendencias: TDataSource
    DataSet = qPendencias
    Left = 448
    Top = 8
  end
  object qPendencias: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.DtEmissao, Dbpedido.CodCliente,' +
        ' Dbcliente.Nome NomeCliente, Dbpedido.PedidoCliente, Dbpedidoite' +
        'm.Item, Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbproduto' +
        '.Nome NomeProduto, Dbpedidoitem.QtdParesRest, Dbpedidoitem.QtdPa' +
        'res, Dbpedidoitem.NumOS, Dbpedidoitem.DtReprogramacao, Dbpedidoi' +
        'tem.CodCor, Dbcliente.Fantasia, Dbproduto.DescMaterial'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      'WHERE   (Dbpedidoitem.NumTalao < 1)  '
      '   AND  (Dbpedidoitem.QtdParesRest > 0)  '
      '   AND  (Dbpedido.Cancelado = FALSE)  '
      '   AND  (Dbpedidoitem.Cancelado = FALSE)  '
      '   AND  (dbPedidoItem.GerarTalao = True)'
      
        'ORDER BY Dbpedido.Pedido, Dbproduto.Referencia, Dbpedidoitem.DtR' +
        'eprogramacao'
      ' ')
    Left = 408
    Top = 8
    object qPendenciasPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qPendenciasDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qPendenciasCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPendenciasNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPendenciasPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qPendenciasItem: TIntegerField
      FieldName = 'Item'
    end
    object qPendenciasCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPendenciasReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qPendenciasNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qPendenciasQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qPendenciasQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qPendenciasNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qPendenciasDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qPendenciasCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qPendenciasFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPendenciasDescMaterial: TStringField
      FieldName = 'DescMaterial'
    end
  end
end
