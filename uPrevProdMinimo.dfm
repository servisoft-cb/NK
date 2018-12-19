object fPrevProdMinimo: TfPrevProdMinimo
  Left = 107
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprime os Produtos abaixo do m'#237'nimo'
  ClientHeight = 457
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 96
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 78
      Width = 44
      Height = 13
      Caption = 'Gerando:'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 70
      Width = 780
      Height = 3
      Shape = bsTopLine
    end
    object ALed2: TALed
      Left = 649
      Top = 75
      Width = 16
      Height = 16
      FalseColor = clAqua
    end
    object Label3: TLabel
      Left = 669
      Top = 78
      Width = 103
      Height = 13
      Caption = 'Produto em Produ'#231#227'o'
    end
    object ALed1: TALed
      Left = 385
      Top = 75
      Width = 16
      Height = 16
      FalseColor = clLime
    end
    object Label2: TLabel
      Left = 405
      Top = 78
      Width = 226
      Height = 13
      Caption = 'Produtos Selecionados para gera'#231#227'o do Pedido'
    end
    object Label5: TLabel
      Left = 5
      Top = 51
      Width = 114
      Height = 13
      Caption = 'Filtrar a Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn3: TBitBtn
      Left = 649
      Top = 37
      Width = 131
      Height = 30
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
        038383838383830E603800000000380E660033333330830E660333333330000E
        660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
        660300000E60330E660333330600330E660333330030330E6603333333303330
        E6033333333033330E0333333330000000033333333333333333}
    end
    object BitBtn6: TBitBtn
      Left = 518
      Top = 37
      Width = 131
      Height = 30
      Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
      Caption = '&Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
    object BitBtn1: TBitBtn
      Left = 242
      Top = 37
      Width = 138
      Height = 30
      Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
      Caption = 'Consulta o M'#237'nimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE020000424DDE02000000000000B60000002800000016000000170000000100
        08000000000028020000C30E0000C30E0000200000000000000000FF0000FFFF
        FF0080808000C0C0C00000000000FF000000FFFF00000000FF0000FFFF0045CA
        BF004B737F00D0B4B400CC625700FF31310000CEFF000079FF000029FF005E5E
        FF00BDBDFF00502B2D0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101010101
        0101010101010101010101010101010100000103030303030303030303030303
        0303030404040301000001030303030303030303030303030303040701070401
        0000010303030303030303030303030303040701010704010000010303030303
        0303030303030303040701010707040100000103030303030303030303030304
        0701010707040301000001030303030303030303030304070101070704030301
        0000010303030303030303030304070101070704030303010000010303030303
        0303030304070101070704030303030100000103030303030303030404040307
        0704030303030301000001030303030304040404040404070403030303030301
        0000010303030404060106010104040403030303030303010000010303040106
        0106010101010403030303030303030100000103030406010601060106010403
        0303030303030301000001030406010601010106010601040303030303030301
        0000010304010601060106010601010403030303030303010000010304060106
        0106010601060104030303030303030100000103040106010601060106010104
        0303030303030301000001030304010601010106010604030303030303030301
        0000010303040601060106010601040303030303030303010000010303030404
        0101010604040303030303030303030100000103030303030404040403030303
        0303030303030301000001010101010101010101010101010101010101010101
        0000}
    end
    object ProgressBar1: TProgressBar
      Left = 50
      Top = 75
      Width = 319
      Height = 16
      ParentShowHint = False
      Smooth = True
      ShowHint = False
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 380
      Top = 37
      Width = 138
      Height = 30
      Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
      Caption = 'Gera o Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
        7FF330EFEFEF03307333703337F3FFFF7F37733377F330F4444E033333333033
        37F777737F333333F7F33099999903333330703337F333337F33333777FF309F
        FFF903333330000337F333337F33333777733099999903333330003337F3FF3F
        7F333337773330F44E0003333330033337F7737773333337733330EFEF003333
        3330333337FFFF7733333337333330000003333333333333377777733333FFFF
        FFFF3333333333300000000333333F3333377777777F333303333330EFEFEF03
        33337F333337F3FFFF7F333003333330F4444E0333377F333337F777737F3300
        03333330EFEFEF0333777F333337F3FFFF7F300003333330F4444E0337777F33
        3337F777737F330703333330EFEFEF03337773333337F3FF3F7F330333333330
        F44E0003337FF333FF37F7737773330733370330EFEF00333377FFF77337FFFF
        7733333000003330000003333337777733377777733333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
    end
    object Edit1: TEdit
      Left = 120
      Top = 43
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object RadioGroup1: TRadioGroup
      Left = 6
      Top = 2
      Width = 185
      Height = 32
      Caption = 'Gerar Pedido Pela Quantidade'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'M'#237'nima'
        'M'#225'xima')
      TabOrder = 6
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 95
    Width = 782
    Height = 345
    Align = alBottom
    DataSource = dsmEstMinimo
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RxDBGrid1DblClick
    OnKeyDown = RxDBGrid1KeyDown
    OnGetCellParams = RxDBGrid1GetCellParams
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 233
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdEstoque'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Saldo Atual'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdPedido'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Pedido'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdMinimo'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.M'#237'nimo'
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdMaximo'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.M'#225'ximo'
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'QtdDiferenca'
        Title.Alignment = taCenter
        Title.Caption = 'Dif.do M'#237'nimo'
        Width = 73
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'QtdDiferencaMax'
        Title.Alignment = taCenter
        Title.Caption = 'Dif.do M'#225'ximo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Obs'
        ReadOnly = True
        Title.Caption = 'Pedidos em Produ'#231#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido Gerado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCor'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodProduto'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodCor'
        ReadOnly = True
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 440
    Width = 782
    Height = 17
    Align = alBottom
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para selecionar os produtos para gerar o Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object qEstoque: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.Es' +
        'tMaximo, Dbproduto.Nome NomeMaterial, Dbproduto.Referencia, Dbco' +
        'r.Nome NomeCor, SUM( Dbestoquematmov.Qtd2 ) Saldo, Dbproduto.Cod' +
        'igo CodProduto'
      'FROM "dbEstoqueMatMov.DB" Dbestoquematmov'
      '   FULL OUTER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)'
      '   FULL OUTER JOIN "Dbproduto.DB" Dbproduto'
      '   ON  (Dbproduto.Codigo = Dbestoquematmov.CodMaterial)'
      'WHERE  Dbproduto.ProdMat = '#39'P'#39
      
        'GROUP BY Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.' +
        'EstMaximo, Dbproduto.Nome, Dbproduto.Referencia, Dbcor.Nome, Dbp' +
        'roduto.Codigo, Dbproduto.Codigo'
      'ORDER BY NomeMaterial, NomeCor'
      ' ')
    Left = 160
    Top = 96
    object qEstoqueCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qEstoqueCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qEstoqueEstMinimo: TFloatField
      FieldName = 'EstMinimo'
      DisplayFormat = '0.00000'
    end
    object qEstoqueNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 60
    end
    object qEstoqueNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object qEstoqueSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '0.00000'
    end
    object qEstoqueReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qEstoqueEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedidoitem.CodProduto, Dbpedidoitem.QtdPares, Dbpedidoi' +
        'tem.CodCor, Dbpedido.PedidoCliente'
      'FROM "dbPedidoItem.DB" Dbpedidoitem'
      '   INNER JOIN "dbPedido.DB" Dbpedido'
      '   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)  '
      '   INNER JOIN "dbParametros.DB" Dbparametros'
      '   ON  (Dbpedido.CodCliente = Dbparametros.CliEstoque)  '
      'WHERE   (Dbpedidoitem.DtBaixa IS NULL)  '
      
        '   AND  ( (Dbpedidoitem.Cancelado = FALSE)  OR  (Dbpedidoitem.Ca' +
        'ncelado IS NULL) )  '
      
        '   AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado ' +
        'IS NULL) )  '
      ' ')
    Left = 232
    Top = 96
    object qPedidoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPedidoQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qPedidoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qPedidoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
  end
  object mEstMinimo: TMemoryTable
    Active = True
    Left = 464
    Top = 232
    object mEstMinimoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEstMinimoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mEstMinimoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mEstMinimoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object mEstMinimoQtdPedido: TIntegerField
      FieldName = 'QtdPedido'
    end
    object mEstMinimoQtdMinimo: TIntegerField
      FieldName = 'QtdMinimo'
    end
    object mEstMinimoQtdDiferenca: TIntegerField
      FieldName = 'QtdDiferenca'
    end
    object mEstMinimoQtdDiferencaMax: TFloatField
      FieldName = 'QtdDiferencaMax'
    end
    object mEstMinimoQtdEstoque: TIntegerField
      FieldName = 'QtdEstoque'
    end
    object mEstMinimoObs: TStringField
      FieldName = 'Obs'
      Size = 100
    end
    object mEstMinimoGerar: TBooleanField
      FieldName = 'Gerar'
    end
    object mEstMinimoReferencia: TStringField
      FieldName = 'Referencia'
      Size = 22
    end
    object mEstMinimoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mEstMinimoQtdMaximo: TFloatField
      FieldName = 'QtdMaximo'
    end
  end
  object dsmEstMinimo: TDataSource
    DataSet = mEstMinimo
    Left = 480
    Top = 232
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    BeforePost = mAuxiliarBeforePost
    Left = 240
    Top = 312
    Data = {
      4B0000009619E0BD0100000018000000020000000000030000004B000A526566
      6572656E6369610100490000000100055749445448020002001400094474456E
      747265676104000600000000000000}
    object mAuxiliarReferencia: TStringField
      DisplayWidth = 24
      FieldName = 'Referencia'
    end
    object mAuxiliarDtEntrega: TDateField
      DisplayWidth = 16
      FieldName = 'DtEntrega'
      EditMask = '99/99/9999'
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 256
    Top = 312
  end
end
