object fConsPedPendFat: TfConsPedPendFat
  Left = 8
  Top = 78
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta dos Pedidos Produzidos e pendentes de faturamento'
  ClientHeight = 447
  ClientWidth = 767
  Color = 10930928
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
    Left = 128
    Top = 14
    Width = 500
    Height = 24
    Caption = '.....Pedidos produzidos e aguardando faturamento.....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxDBGrid1: TRxDBGrid
    Left = 4
    Top = 48
    Width = 760
    Height = 394
    DataSource = dsPedPendente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido (O.C)'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedCliDif'
        Title.Alignment = taCenter
        Title.Caption = 'Dig.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 195
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramacao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Embarque'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumOS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OS'
        Width = 148
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdParesRest'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Pares'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped.Interno'
        Visible = True
      end>
  end
  object qPedPendente: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.DtEmissao, Dbproduto.Referencia' +
        ', Dbcliente.Nome NomeCliente, Dbcor.Nome NomeCor, Dbpedidoitem.D' +
        'tReprogramacao, Dbpedidoitem.QtdParesRest, Dbpedido.PedCliDif, D' +
        'bpedido.PedidoCliente, Dbpedidoitem.NumOS'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)'
      '   FULL OUTER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbpedidoitem.CodCor = Dbcor.Codigo)'
      
        'WHERE  ((Dbpedidoitem.DtBaixa is not null) or (GerarTalao = Fals' +
        'e)) and '
      '       (Dbpedidoitem.QtdParesRest > 0) and'
      
        '       ((Dbpedidoitem.Cancelado = False) or (Dbpedidoitem.Cancel' +
        'ado is NULL)) and'
      
        '       ((Dbpedido.Cancelado = False) or (Dbpedido.Cancelado is N' +
        'ULL))'
      'ORDER BY NomeCliente, Dbpedidoitem.DtReprogramacao'
      ' '
      ' '
      ' ')
    Left = 456
    Top = 80
    object qPedPendentePedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qPedPendenteDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qPedPendenteReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qPedPendenteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedPendenteNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object qPedPendenteDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qPedPendenteQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qPedPendentePedCliDif: TStringField
      FieldName = 'PedCliDif'
      Size = 2
    end
    object qPedPendenteNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qPedPendentePedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
  end
  object dsPedPendente: TDataSource
    DataSet = qPedPendente
    Left = 480
    Top = 80
  end
end
