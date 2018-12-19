object fRecPedidoAzaleia: TfRecPedidoAzaleia
  Left = 9
  Top = 123
  BorderStyle = bsSingle
  Caption = 'Recebimento de Pedidos da Azal'#233'ia'
  ClientHeight = 317
  ClientWidth = 781
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
  object Label5: TLabel
    Left = 4
    Top = 13
    Width = 103
    Height = 13
    Caption = 'Endere'#231'o do Arquivo:'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 281
    Height = 256
    Caption = 'Pedidos n'#227'o gerados'
    TabOrder = 0
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 14
      Width = 269
      Height = 236
      DataSource = dsPedidoNao
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
          Title.Caption = 'N'#186' Pedido (O.C.)'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Motivo'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 286
    Top = 57
    Width = 493
    Height = 256
    Caption = 'Pedidos (OC) geradas'
    TabOrder = 1
    object RxDBGrid2: TRxDBGrid
      Left = 5
      Top = 13
      Width = 482
      Height = 236
      DataSource = dsPedidoGer
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
          Title.Caption = 'N'#186' Pedido (O.C)'
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumOS'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' da OS'
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdPares'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Pares'
          Width = 72
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 531
    Top = 5
    Width = 248
    Height = 41
    BevelInner = bvRaised
    TabOrder = 2
    object BitBtn8: TBitBtn
      Left = 5
      Top = 5
      Width = 118
      Height = 31
      Hint = 'Executa o c'#225'lculo das parcelas'
      Caption = 'Gera Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn8Click
      Glyph.Data = {
        1E020000424D1E0200000000000042000000280000000D000000110000000100
        100003000000DC01000000000000000000000000000000000000007C0000E003
        00001F000000F75EF75EF75EF75E0000EF3DF75EF75EF75EF75EF75EF75EF75E
        2003F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75EF75E2003F75E
        F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75E6400F75EF75EF75E
        F75EF75E0000E07F0000EF3DF75EF75EF75EF75E2003F75EF75EF75E00000000
        00000000E07F0000EF3DF75EF75EF75E0D02F75EF75EF75E0000E07FE07FFF7F
        E07FE07F0000EF3DF75EF75E6C00F75EF75EF75EF75E0000FF7FE07F00000000
        00000000F75EF75E0A00F75EF75EF75EF75E0000E07FFF7FE07F0000EF3DF75E
        F75EF75E0600F75E00000000000000000000E07FFF7FE07F0000EF3DF75EF75E
        2003F75E0000FF7FE07FFF7FE07FFF7FE07FFF7FE07F0000EF3DF75E0D00F75E
        F75E0000FF7FE07FFF7FE07F0000000000000000F75EF75E2003F75EF75E0000
        E07FFF7FE07FFF7FE07F0000EF3DF75EF75EF75E8D00F75EF75EF75E0000E07F
        FF7FE07FFF7FE07F0000EF3DF75EF75E4E02F75EF75EF75E0000FF7FFF7FFF7F
        E07FFF7FFF7F0000EF3DF75E2003F75EF75EF75EF75E0000FF7FE07FFF7FFF7F
        E07FFF7F0000EF3D2003F75EF75EF75EF75E0000000000000000000000000000
        000000002003F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        7F01}
    end
    object BitBtn3: TBitBtn
      Left = 125
      Top = 5
      Width = 118
      Height = 31
      Hint = 'Fecha a janela acima'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  end
  object FilenameEdit1: TFilenameEdit
    Left = 109
    Top = 5
    Width = 300
    Height = 21
    Filter = '*.paq'
    NumGlyphs = 1
    TabOrder = 3
  end
  object mPedidoNao: TMemoryTable
    Active = True
    DatabaseName = 'Tabelas'
    Left = 208
    Top = 128
    object mPedidoNaoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object mPedidoNaoMotivo: TStringField
      FieldName = 'Motivo'
      Size = 60
    end
  end
  object dsPedidoNao: TDataSource
    DataSet = mPedidoNao
    Left = 224
    Top = 128
  end
  object mPedidoGer: TMemoryTable
    Active = True
    DatabaseName = 'Tabelas'
    Left = 576
    Top = 216
    object mPedidoGerPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object mPedidoGerNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mPedidoGerReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mPedidoGerNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object mPedidoGerQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
  end
  object dsPedidoGer: TDataSource
    DataSet = mPedidoGer
    Left = 592
    Top = 216
  end
  object tPedido2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'PedidoCliente'
    TableName = 'dbPedido.DB'
    Left = 304
    Top = 88
    object tPedido2Pedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedido2DtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object tPedido2CodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tPedido2CodTransp: TIntegerField
      FieldName = 'CodTransp'
    end
    object tPedido2CodRedespacho: TIntegerField
      FieldName = 'CodRedespacho'
    end
    object tPedido2CodCondPgto: TIntegerField
      FieldName = 'CodCondPgto'
    end
    object tPedido2TipoFrete: TStringField
      FieldName = 'TipoFrete'
      Size = 1
    end
    object tPedido2CodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tPedido2PercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tPedido2DtIniEmbarque: TDateField
      FieldName = 'DtIniEmbarque'
    end
    object tPedido2DtFinEmbarque: TDateField
      FieldName = 'DtFinEmbarque'
    end
    object tPedido2CodNatOper: TIntegerField
      FieldName = 'CodNatOper'
    end
    object tPedido2Situacao: TIntegerField
      FieldName = 'Situacao'
    end
    object tPedido2NumLote: TIntegerField
      FieldName = 'NumLote'
    end
    object tPedido2QtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object tPedido2VlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tPedido2VlrMercadoria: TFloatField
      FieldName = 'VlrMercadoria'
    end
    object tPedido2VlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object tPedido2GerarLote: TStringField
      FieldName = 'GerarLote'
      Size = 1
    end
    object tPedido2Cancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tPedido2Suspenso: TBooleanField
      FieldName = 'Suspenso'
    end
    object tPedido2Impresso: TBooleanField
      FieldName = 'Impresso'
    end
    object tPedido2PesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tPedido2PesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tPedido2Selecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tPedido2Copiado: TBooleanField
      FieldName = 'Copiado'
    end
    object tPedido2Obs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tPedido2QtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object tPedido2QtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object tPedido2QtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object tPedido2QtdFatAut: TFloatField
      FieldName = 'QtdFatAut'
    end
    object tPedido2QtdFatMan: TFloatField
      FieldName = 'QtdFatMan'
    end
    object tPedido2PedCliDif: TStringField
      FieldName = 'PedCliDif'
      Size = 2
    end
    object tPedido2ImpRotulo: TBooleanField
      FieldName = 'ImpRotulo'
    end
    object tPedido2ImpCalcLote: TBooleanField
      FieldName = 'ImpCalcLote'
    end
    object tPedido2ObsRotulo: TMemoField
      FieldName = 'ObsRotulo'
      BlobType = ftMemo
      Size = 1
    end
    object tPedido2Stock: TStringField
      FieldName = 'Stock'
      Size = 15
    end
    object tPedido2LoteExp: TBooleanField
      FieldName = 'LoteExp'
    end
    object tPedido2Dolar: TBooleanField
      FieldName = 'Dolar'
    end
    object tPedido2POCliente: TStringField
      FieldName = 'POCliente'
      Size = 13
    end
    object tPedido2Invoice: TStringField
      FieldName = 'Invoice'
      Size = 8
    end
    object tPedido2Carimbo: TStringField
      FieldName = 'Carimbo'
    end
    object tPedido2QtdParesRep: TFloatField
      FieldName = 'QtdParesRep'
    end
    object tPedido2VlrReposicao: TFloatField
      FieldName = 'VlrReposicao'
    end
    object tPedido2Mercado: TStringField
      FieldName = 'Mercado'
      Size = 1
    end
    object tPedido2NumProgramacao: TIntegerField
      FieldName = 'NumProgramacao'
    end
    object tPedido2PedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object tPedido2Cia: TIntegerField
      FieldName = 'Cia'
    end
    object tPedido2Estoque: TBooleanField
      FieldName = 'Estoque'
    end
  end
  object tProdutoCli2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbProdutoCli.db'
    Left = 416
    Top = 16
    object tProdutoCli2CodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCli2CodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoCli2CodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tProdutoCli2CodProdCli: TStringField
      FieldName = 'CodProdCli'
      Size = 15
    end
    object tProdutoCli2CodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoCli2Posicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoCli2lkTamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTamanho'
      LookupDataSet = DM1.tGradeItemlk
      LookupKeyFields = 'CodGrade;Posicao'
      LookupResultField = 'Tamanho'
      KeyFields = 'CodGrade;Posicao'
      Size = 3
      Lookup = True
    end
  end
  object tAuxRecPed: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbAuxRecPed.db'
    Left = 350
    Top = 160
    object tAuxRecPedNumPedido: TStringField
      FieldName = 'NumPedido'
    end
    object tAuxRecPedCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tAuxRecPedCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tAuxRecPedPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tAuxRecPedCodCondPagto: TIntegerField
      FieldName = 'CodCondPagto'
    end
    object tAuxRecPedTipoOperacao: TStringField
      FieldName = 'TipoOperacao'
      Size = 1
    end
    object tAuxRecPedlkUF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = DM1.tCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Uf'
      KeyFields = 'CodCliente'
      Size = 2
      Lookup = True
    end
    object tAuxRecPedObs: TStringField
      FieldName = 'Obs'
      Size = 60
    end
    object tAuxRecPedCodTransportadora: TIntegerField
      FieldName = 'CodTransportadora'
    end
    object tAuxRecPedCifFob: TStringField
      FieldName = 'CifFob'
      Size = 1
    end
  end
  object dsAuxRecPed: TDataSource
    DataSet = tAuxRecPed
    Left = 367
    Top = 160
  end
  object tAuxRecGrade: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'NumPedido;Item;Tamanho'
    MasterFields = 'NumPedido;Item'
    MasterSource = dsAuxRecItem
    TableName = 'dbAuxRecGrade.db'
    Left = 406
    Top = 149
    object tAuxRecGradeNumPedido: TStringField
      FieldName = 'NumPedido'
    end
    object tAuxRecGradeItem: TIntegerField
      FieldName = 'Item'
    end
    object tAuxRecGradeTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object tAuxRecGradeQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object tAuxRecGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tAuxRecGradePosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tAuxRecGradeCodProdutoCli: TStringField
      FieldName = 'CodProdutoCli'
      Size = 15
    end
  end
  object dsAuxRecGrade: TDataSource
    DataSet = tAuxRecGrade
    Left = 425
    Top = 157
  end
  object tAuxRecItem: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'NumPedido'
    MasterFields = 'NumPedido'
    MasterSource = dsAuxRecPed
    TableName = 'dbAuxRecItem.db'
    Left = 486
    Top = 149
    object tAuxRecItemNumPedido: TStringField
      FieldName = 'NumPedido'
    end
    object tAuxRecItemItem: TIntegerField
      FieldName = 'Item'
    end
    object tAuxRecItemNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object tAuxRecItemDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object tAuxRecItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tAuxRecItemCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tAuxRecItemQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object tAuxRecItemVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tAuxRecItemQtdLote: TFloatField
      FieldName = 'QtdLote'
    end
    object tAuxRecItemCodProdutoCli: TStringField
      FieldName = 'CodProdutoCli'
      Size = 15
    end
    object tAuxRecItemProdCliPorTamanho: TBooleanField
      FieldName = 'ProdCliPorTamanho'
    end
  end
  object dsAuxRecItem: TDataSource
    DataSet = tAuxRecItem
    Left = 512
    Top = 152
  end
end
