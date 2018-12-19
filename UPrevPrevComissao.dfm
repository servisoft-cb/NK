object fPrevPrevComissao: TfPrevPrevComissao
  Left = 175
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Previs'#227'o de Comiss'#227'o'
  ClientHeight = 152
  ClientWidth = 339
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
  object Bevel2: TBevel
    Left = 4
    Top = 4
    Width = 331
    Height = 146
  end
  object Bevel1: TBevel
    Left = 9
    Top = 100
    Width = 321
    Height = 45
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 43
    Top = 53
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 244
    Top = 53
    Width = 51
    Height = 13
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 131
    Top = 12
    Width = 77
    Height = 13
    Caption = 'Nome Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object RxSpeedButton2: TRxSpeedButton
    Left = 74
    Top = 111
    Width = 95
    Height = 25
    Hint = 'Imprime o pedido de venda selecionado'
    Caption = '&Imprimir'
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75E00000000000000000000000000000000000000000000
      F75EF75EF75EF75E0000F75EF75EF75EF75EF75EF75EF75EF75EF75E0000F75E
      0000F75EF75E0000000000000000000000000000000000000000000000000000
      F75E0000F75E0000F75EF75EF75EF75EF75EF75EE07FE07FE07FF75EF75E0000
      00000000F75E0000F75EF75EF75EF75EF75EF75EEF3DEF3DEF3DF75EF75E0000
      F75E0000F75E0000000000000000000000000000000000000000000000000000
      F75EF75E00000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75E0000F75E
      0000F75E0000F75E0000000000000000000000000000000000000000F75E0000
      F75E00000000F75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75E
      0000F75E0000F75EF75EF75E0000FF7F00000000000000000000FF7F00000000
      00000000F75EF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      F75EF75EF75EF75EF75EF75EF75E0000FF7F00000000000000000000FF7F0000
      F75EF75EF75EF75EF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000F75EF75EF75EF75EF75EF75EF75E00000000000000000000000000000000
      0000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75E}
    Layout = blGlyphLeft
    OnClick = RxSpeedButton2Click
  end
  object DateEdit1: TDateEdit
    Left = 9
    Top = 69
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 209
    Top = 69
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 9
    Top = 27
    Width = 321
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsVendedor
    TabOrder = 2
    OnEnter = RxDBLookupCombo1Enter
  end
  object BitBtn2: TBitBtn
    Left = 169
    Top = 111
    Width = 95
    Height = 25
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn2Click
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
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsVendedor
    Filter.Strings = (
      'TipoComissao = '#39'D'#39)
    Left = 184
    Top = 80
  end
  object tCReceberParc: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbCReceberParc.DB'
    Left = 128
    Top = 48
    object tCReceberParclkCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCliente'
      LookupDataSet = DM1.tCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCli'
      Size = 40
      Lookup = True
    end
    object tCReceberParcNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
    end
    object tCReceberParcParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
    end
    object tCReceberParcVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
      DisplayFormat = '0.00'
    end
    object tCReceberParcDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
    end
    object tCReceberParcQuitParcCReceber: TBooleanField
      FieldName = 'QuitParcCReceber'
    end
    object tCReceberParcJurosParcCReceber: TFloatField
      FieldName = 'JurosParcCReceber'
    end
    object tCReceberParcDtPagParcCReceber: TDateField
      FieldName = 'DtPagParcCReceber'
    end
    object tCReceberParcCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object tCReceberParcNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tCReceberParcDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tCReceberParcPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
      DisplayFormat = '0.00'
    end
    object tCReceberParcRestParcela: TFloatField
      FieldName = 'RestParcela'
      DisplayFormat = '0.00'
    end
    object tCReceberParcContaDupl: TSmallintField
      FieldName = 'ContaDupl'
    end
    object tCReceberParcSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tCReceberParcCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tCReceberParcBaixada: TBooleanField
      FieldName = 'Baixada'
    end
    object tCReceberParcPercComissao: TFloatField
      FieldName = 'PercComissao'
      DisplayFormat = '0.00'
    end
    object tCReceberParcVlrComissao: TFloatField
      FieldName = 'VlrComissao'
      DisplayFormat = '0.00'
    end
    object tCReceberParcPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object tCReceberParcAgencia: TStringField
      FieldName = 'Agencia'
      Size = 6
    end
    object tCReceberParcTitPortador: TStringField
      FieldName = 'TitPortador'
    end
    object tCReceberParcCodTipoCobranca: TIntegerField
      FieldName = 'CodTipoCobranca'
    end
    object tCReceberParcDespesas: TFloatField
      FieldName = 'Despesas'
    end
    object tCReceberParcAbatimentos: TFloatField
      FieldName = 'Abatimentos'
    end
    object tCReceberParcCodConta: TIntegerField
      FieldName = 'CodConta'
    end
    object tCReceberParcPgCartorio: TBooleanField
      FieldName = 'PgCartorio'
    end
    object tCReceberParcDiasAtraso: TFloatField
      FieldName = 'DiasAtraso'
    end
    object tCReceberParcLetraCambio: TBooleanField
      FieldName = 'LetraCambio'
    end
    object tCReceberParcNroLancExtComissao: TIntegerField
      FieldName = 'NroLancExtComissao'
    end
    object tCReceberParcJurosPagos: TFloatField
      FieldName = 'JurosPagos'
    end
    object tCReceberParcCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tCReceberParcTitProtestado: TBooleanField
      FieldName = 'TitProtestado'
    end
    object tCReceberParcDtGerado: TDateField
      FieldName = 'DtGerado'
    end
    object tCReceberParcTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object tCReceberParcVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
    end
    object tCReceberParcArqGerado: TBooleanField
      FieldName = 'ArqGerado'
    end
    object tCReceberParcTransferencia: TBooleanField
      FieldName = 'Transferencia'
    end
    object tCReceberParcNumTitBanco: TStringField
      FieldName = 'NumTitBanco'
    end
  end
  object dsCReceberParc: TDataSource
    DataSet = tCReceberParc
    Left = 152
    Top = 56
  end
end
