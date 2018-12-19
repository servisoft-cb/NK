object fConsPedCarteiraDet: TfConsPedCarteiraDet
  Left = 6
  Top = 90
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta do produto detalhado'
  ClientHeight = 425
  ClientWidth = 774
  Color = 10930928
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
  object StaticText1: TStaticText
    Left = 0
    Top = 408
    Width = 774
    Height = 17
    Align = alBottom
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Duplo Clique ou <ENTER> para dar baixa no produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object RxDBGrid1: TRxDBGrid
    Left = 2
    Top = 5
    Width = 770
    Height = 388
    DataSource = dsqDetalhado
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
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped.Interno'
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'OC (Ped.Cliente)'
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramacao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Embarque'
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdPares'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdParesFat'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Faturada'
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdParesRest'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Restante'
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Emiss'#227'o'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preco'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Unit'#225'rio'
        Width = 62
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 645
    Top = 395
    Width = 127
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object qDetalhado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.DtEmissao, Dbpedidoitem.Item, D' +
        'bpedidoitem.QtdPares, Dbpedidoitem.QtdParesFat, Dbpedidoitem.Qtd' +
        'ParesRest, Dbpedidoitem.Preco, Dbpedidoitem.DtReprogramacao, Dbp' +
        'edidoitem.DtEmbarque, Dbpedidoitem.CodCor, Dbpedido.PedidoClient' +
        'e'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)'
      
        'WHERE   ((Dbpedidoitem.Cancelado = FALSE) or (Dbpedidoitem.Cance' +
        'lado is Null))'
      '   AND  (Dbpedidoitem.QtdParesRest > 0)'
      '   AND  (Dbpedido.CodCliente = :CodCliente)'
      '   AND  (Dbpedidoitem.CodProduto = :CodProduto)'
      '   AND  (Dbpedidoitem.CodCor = :CodCor)'
      'ORDER BY dbPedidoitem.DtReprogramacao, dbPedido.PedidoCliente'
      ''
      ' ')
    Left = 456
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptUnknown
      end>
    object qDetalhadoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qDetalhadoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qDetalhadoItem: TIntegerField
      FieldName = 'Item'
    end
    object qDetalhadoQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qDetalhadoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qDetalhadoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qDetalhadoPreco: TFloatField
      FieldName = 'Preco'
    end
    object qDetalhadoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qDetalhadoDtEmbarque: TDateField
      FieldName = 'DtEmbarque'
    end
    object qDetalhadoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qDetalhadoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
  end
  object dsqDetalhado: TDataSource
    DataSet = qDetalhado
    Left = 472
    Top = 80
  end
end
