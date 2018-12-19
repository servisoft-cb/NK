object fBaixaPedido2Det: TfBaixaPedido2Det
  Left = 46
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa'
  ClientHeight = 143
  ClientWidth = 665
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
    Left = 22
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Pedido:'
  end
  object DBText1: TDBText
    Left = 60
    Top = 8
    Width = 65
    Height = 14
    Color = clInfoBk
    DataField = 'Pedido'
    DataSource = DM1.dsPedido
    ParentColor = False
  end
  object Label2: TLabel
    Left = 168
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Ped.Cliente (OC):'
  end
  object DBText2: TDBText
    Left = 248
    Top = 8
    Width = 177
    Height = 14
    Color = clInfoBk
    DataField = 'PedidoCliente'
    DataSource = DM1.dsPedido
    ParentColor = False
  end
  object Label3: TLabel
    Left = 23
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object DBText3: TDBText
    Left = 60
    Top = 24
    Width = 365
    Height = 15
    Color = clInfoBk
    DataField = 'lkNomeCliente'
    DataSource = DM1.dsPedido
    ParentColor = False
  end
  object Label4: TLabel
    Left = 472
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Dt.Emiss'#227'o'
  end
  object DBText4: TDBText
    Left = 536
    Top = 8
    Width = 65
    Height = 14
    Color = clInfoBk
    DataField = 'DtEmissao'
    DataSource = DM1.dsPedido
    ParentColor = False
  end
  object Bevel1: TBevel
    Left = -3
    Top = 64
    Width = 673
    Height = 5
    Shape = bsTopLine
  end
  object Label5: TLabel
    Left = 3
    Top = 46
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object DBText5: TDBText
    Left = 60
    Top = 46
    Width = 73
    Height = 13
    Alignment = taCenter
    Color = clInfoBk
    DataField = 'QtdPares'
    DataSource = DM1.dsPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 180
    Top = 46
    Width = 69
    Height = 13
    Caption = 'Qtd.Pendente:'
  end
  object DBText6: TDBText
    Left = 248
    Top = 46
    Width = 73
    Height = 13
    Alignment = taCenter
    Color = clInfoBk
    DataField = 'QtdParesRest'
    DataSource = DM1.dsPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 345
    Top = 46
    Width = 61
    Height = 13
    Caption = 'Qtd.Baixada:'
  end
  object DBText7: TDBText
    Left = 408
    Top = 46
    Width = 73
    Height = 13
    Alignment = taCenter
    Color = clInfoBk
    DataField = 'QtdParesFat'
    DataSource = DM1.dsPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 22
    Top = 72
    Width = 62
    Height = 13
    Caption = 'Cod.Produto:'
  end
  object DBText8: TDBText
    Left = 86
    Top = 72
    Width = 73
    Height = 13
    Color = clInfoBk
    DataField = 'CodProduto'
    DataSource = DM1.dsPedidoItem
    ParentColor = False
  end
  object DBText9: TDBText
    Left = 240
    Top = 72
    Width = 129
    Height = 13
    Color = clInfoBk
    DataField = 'lkReferencia'
    DataSource = DM1.dsPedidoItem
    ParentColor = False
  end
  object Label9: TLabel
    Left = 182
    Top = 72
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object DBText10: TDBText
    Left = 378
    Top = 72
    Width = 233
    Height = 13
    Color = clInfoBk
    DataField = 'lkNomeProduto'
    DataSource = DM1.dsPedidoItem
    ParentColor = False
  end
  object Label10: TLabel
    Left = 41
    Top = 88
    Width = 43
    Height = 13
    Caption = 'Qtd.Item:'
  end
  object DBText11: TDBText
    Left = 86
    Top = 88
    Width = 73
    Height = 13
    Alignment = taCenter
    Color = clInfoBk
    DataField = 'QtdPares'
    DataSource = DM1.dsPedidoItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label11: TLabel
    Left = 466
    Top = 88
    Width = 69
    Height = 13
    Caption = 'Qtd.Pendente:'
  end
  object DBText12: TDBText
    Left = 538
    Top = 88
    Width = 73
    Height = 13
    Alignment = taCenter
    Color = clInfoBk
    DataField = 'QtdParesRest'
    DataSource = DM1.dsPedidoItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label12: TLabel
    Left = 231
    Top = 88
    Width = 61
    Height = 13
    Caption = 'Qtd.Baixada:'
  end
  object DBText13: TDBText
    Left = 296
    Top = 88
    Width = 73
    Height = 13
    Alignment = taCenter
    Color = clInfoBk
    DataField = 'QtdParesFat'
    DataSource = DM1.dsPedidoItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = -3
    Top = 104
    Width = 673
    Height = 5
    Shape = bsTopLine
  end
  object Label13: TLabel
    Left = 2
    Top = 123
    Width = 160
    Height = 13
    Caption = 'Qtd. Para Baixa no Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 416
    Top = 112
    Width = 161
    Height = 27
    Caption = 'Confirma Baixa Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 163
    Top = 115
    Width = 100
    Height = 21
    AutoSize = False
    Color = clAqua
    DisplayFormat = '0'
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 587
    Top = 112
    Width = 75
    Height = 27
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object CheckBox1: TCheckBox
    Left = 272
    Top = 120
    Width = 128
    Height = 17
    Caption = 'Baixar no estoque'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 3
  end
  object qUltimoItem: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Max(ItemNota) ItemNota'
      'FROM "dbPedidoNota.DB" Dbpedidonota'
      'WHERE (Pedido = :Pedido) '
      '     AND (Item = :Item)'
      '     AND (Tipo = '#39'M'#39')'
      '     AND (NumNota = '#39'0'#39')'
      '     ')
    Left = 536
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Item'
        ParamType = ptUnknown
      end>
    object qUltimoItemItemNota: TIntegerField
      FieldName = 'ItemNota'
      Origin = 'TABELAS."dbPedidoNota.DB".ItemNota'
    end
  end
end
