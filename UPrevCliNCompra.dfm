object fPrevCliNCompra: TfPrevCliNCompra
  Left = 197
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Clientes Inativos'
  ClientHeight = 132
  ClientWidth = 447
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
  object Label1: TLabel
    Left = 6
    Top = 16
    Width = 125
    Height = 13
    Caption = 'Qtd. dias que n'#227'o compra:'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 135
    Top = 8
    Width = 92
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 447
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 254
      Top = 8
      Width = 95
      Height = 25
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
    object BitBtn3: TBitBtn
      Left = 159
      Top = 8
      Width = 95
      Height = 25
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn3Click
      Glyph.Data = {
        1E010000424D1E010000000000007600000028000000110000000E0000000100
        040000000000A800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888000000000
        0088800000008808888888880808800000008000000000000080800000008088
        8888BBB880008000000080888888777880808000000080000000000000880000
        00008088888888880808000000008800000000008080000000008880FFFFFFFF
        08080000000088880F00000F00008000000088880FFFFFFFF088800000008888
        80F00000F08880000000888880FFFFFFFF088000000088888800000000088000
        0000}
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 64
    Top = 40
    Width = 345
    Height = 21
    DropDownCount = 8
    DropDownWidth = 400
    ListStyle = lsDelimited
    LookupField = 'Codigo'
    LookupDisplay = 'Nome;Estado'
    LookupSource = DM1.dsCidade
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 74
    Width = 447
    Height = 17
    Align = alBottom
    TabOrder = 3
  end
  object mPedido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NumPedido'
        DataType = ftInteger
      end
      item
        Name = 'ValorTotal'
        DataType = ftFloat
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'NomeCliente'
    Params = <>
    StoreDefs = True
    Left = 72
    Top = 8
    Data = {
      9D0000009619E0BD0100000018000000060000000000030000009D000B4E6F6D
      65436C69656E74650100490000000100055749445448020002001E00094E756D
      50656469646F04000100000000000A56616C6F72546F74616C08000400000000
      00094474456D697373616F04000600000000000A436F64436C69656E74650400
      01000000000004466F6E65010049000000010005574944544802000200140000
      00}
    object mPedidoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 30
    end
    object mPedidoNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object mPedidoValorTotal: TFloatField
      FieldName = 'ValorTotal'
      DisplayFormat = '0.00'
    end
    object mPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mPedidoFone: TStringField
      FieldName = 'Fone'
    end
  end
  object msPedido: TDataSource
    DataSet = mPedido
    Left = 88
    Top = 8
  end
  object qPedido: TQuery
    DatabaseName = 'NK'
    SQL.Strings = (
      'select max(dtemissao) dtemissao, codcliente, vlrtotal, pedido'
      'from dbpedido.db'
      'group by codcliente, vlrtotal, pedido'
      'order by dtemissao,pedido')
    Left = 320
    Top = 8
    object qPedidodtemissao: TDateField
      FieldName = 'dtemissao'
    end
    object qPedidocodcliente: TIntegerField
      FieldName = 'codcliente'
    end
    object qPedidovlrtotal: TFloatField
      FieldName = 'vlrtotal'
    end
    object qPedidopedido: TIntegerField
      FieldName = 'pedido'
    end
  end
end
