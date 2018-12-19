object fPrevTalaoMov: TfPrevTalaoMov
  Left = 80
  Top = 93
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio dos Tal'#245'es'
  ClientHeight = 527
  ClientWidth = 790
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
    Left = 246
    Top = 9
    Width = 60
    Height = 13
    Caption = 'Tal'#227'o Inicial:'
  end
  object Label2: TLabel
    Left = 444
    Top = 9
    Width = 55
    Height = 13
    Caption = 'Tal'#227'o Final:'
  end
  object Label3: TLabel
    Left = 224
    Top = 30
    Width = 82
    Height = 13
    Caption = 'Dt.Gerado Inicial:'
  end
  object Label4: TLabel
    Left = 422
    Top = 30
    Width = 77
    Height = 13
    Caption = 'Dt.Gerado Final:'
  end
  object Label5: TLabel
    Left = 212
    Top = 52
    Width = 94
    Height = 13
    Caption = 'Dt.Produzido Inicial:'
  end
  object Label6: TLabel
    Left = 410
    Top = 52
    Width = 89
    Height = 13
    Caption = 'Dt.Produzido Final:'
  end
  object Label7: TLabel
    Left = 251
    Top = 96
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object ALed3: TALed
    Left = 490
    Top = 492
    Width = 16
    Height = 16
    TrueColor = clRed
    FalseColor = clTeal
  end
  object Label12: TLabel
    Left = 509
    Top = 495
    Width = 57
    Height = 13
    Caption = 'Produzido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ALed1: TALed
    Left = 594
    Top = 493
    Width = 16
    Height = 16
    TrueColor = clRed
    FalseColor = clRed
  end
  object Label8: TLabel
    Left = 613
    Top = 496
    Width = 61
    Height = 13
    Caption = 'Cancelado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ALed2: TALed
    Left = 706
    Top = 493
    Width = 16
    Height = 16
    TrueColor = clRed
    FalseColor = 8454143
  end
  object Label9: TLabel
    Left = 725
    Top = 496
    Width = 58
    Height = 13
    Caption = 'Em Atraso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 222
    Top = 74
    Width = 84
    Height = 13
    Caption = 'Dt.Entrega Inicial:'
  end
  object Label11: TLabel
    Left = 420
    Top = 74
    Width = 79
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dt.Entrega Final:'
  end
  object RadioGroup1: TRadioGroup
    Left = 4
    Top = 4
    Width = 94
    Height = 101
    Caption = 'Op'#231#227'o'
    ItemIndex = 3
    Items.Strings = (
      'Pendentes'
      'Produzidos'
      'Cancelados'
      'Ambos'
      'Atrazados')
    TabOrder = 0
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 307
    Top = 1
    Width = 81
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 1
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 501
    Top = 1
    Width = 81
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 2
  end
  object DateEdit1: TDateEdit
    Left = 307
    Top = 22
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object DateEdit2: TDateEdit
    Left = 501
    Top = 22
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object DateEdit3: TDateEdit
    Left = 307
    Top = 44
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object DateEdit4: TDateEdit
    Left = 501
    Top = 44
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 107
    Width = 790
    Height = 385
    Caption = ' Tal'#245'es '
    TabOrder = 11
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 12
      Width = 782
      Height = 369
      TabStop = False
      DataSource = dsqTalao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = RxDBGrid1DblClick
      OnGetCellParams = RxDBGrid1GetCellParams
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Talao'
          Title.Alignment = taCenter
          Title.Caption = 'Tal'#227'o'
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodProduto'
          Title.Alignment = taCenter
          Title.Caption = 'C.Produto'
          Width = 50
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
          FieldName = 'NomeProduto'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Produto'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Pedido'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdProduzida'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Produzida'
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 10930928
          Expanded = False
          FieldName = 'DtReprogramacao'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Entrega'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtGerado'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Gerado'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PedidoCliente'
          Title.Alignment = taCenter
          Title.Caption = 'Ped.Cliente (OC)'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PedCliDif'
          Title.Alignment = taCenter
          Title.Caption = 'Dig'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCliente'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Cliente'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtBaixa'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Produzido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MotivoCancelado'
          Title.Caption = 'Motivo do Cancelamento'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtCancelado'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Cancelamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCor'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Cor'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Pedido'
          Title.Alignment = taCenter
          Title.Caption = 'Ped.Interno'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ItemPedido'
          Title.Alignment = taCenter
          Title.Caption = 'Item do Pedido'
          Visible = True
        end>
    end
  end
  object BitBtn5: TBitBtn
    Left = 602
    Top = 72
    Width = 93
    Height = 37
    Hint = 'Confirma a altera'#231#227'o ou inclus'#227'o de Pedido'
    Caption = '&Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BitBtn5Click
    Glyph.Data = {
      76020000424D7602000000000000760000002800000020000000200000000100
      0400000000000002000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888888888888000000000777888888888888888888008888
      F8F88000777888888888888800888888F8F88888007788888888888088888888
      F8F88888880778888888880888888888F8F88888888077888888808888880000
      0000088888877778888808888800FFFFFFFFF000888807788888088407F80777
      77777FFF774807778888080FFF07888888888000FFF40777788800FFF0888888
      888888880FF7077778880FFF0788888888FFF88880FF077778880FF088788888
      88888F88780F077788880FF08887888888888F77880F077788880FF08888F877
      77777788880F077888880FFF088888888888888880FF0788888880FFF0888888
      888888880FF088888888880FFF00888888888800FFF0888888888880FFFF0000
      000000FFFF0788888888888800FFFFFFFFFFFFFF00707888888888888800FFFF
      FFFFFF008880078888888888888800000000008FF88700788888888888888888
      88888808FF800007888888888888888888888887000000007888888888888888
      8888888880070000078888888888888888888888880700000088888888888888
      8888888888807000008888888888888888888888888707000088888888888888
      8888888888880070008888888888888888888888888880000888888888888888
      8888888888888888888888888888888888888888888888888888}
  end
  object BitBtn1: TBitBtn
    Left = 696
    Top = 72
    Width = 93
    Height = 37
    Hint = 'Confirma a altera'#231#227'o ou inclus'#227'o de Pedido'
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888BBB88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object Edit1: TEdit
    Left = 307
    Top = 88
    Width = 291
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object RadioGroup2: TRadioGroup
    Left = 613
    Top = 2
    Width = 177
    Height = 61
    Caption = ' Ordernar por '
    ItemIndex = 0
    Items.Strings = (
      'Refer'#234'ncia'
      'Tal'#227'o'
      'Dt.Entrega')
    TabOrder = 13
  end
  object DateEdit5: TDateEdit
    Left = 307
    Top = 66
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 7
  end
  object DateEdit6: TDateEdit
    Left = 501
    Top = 66
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 8
  end
  object RadioGroup3: TRadioGroup
    Left = 101
    Top = 5
    Width = 94
    Height = 100
    Caption = 'Hor'#225'rios'
    ItemIndex = 2
    Items.Strings = (
      'Encerrado'
      'Pendente'
      'Ambos')
    TabOrder = 14
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 510
    Width = 790
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para mostrar Hor'#225'rios e Baixas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object qTalao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbtalao.Talao, Dbtalao.CodProduto, Dbtalao.CodCor, Dbtala' +
        'o.CodGrade, Dbtalao.Quantidade, Dbtalao.Pedido, Dbtalao.ItemPedi' +
        'do, Dbtalao.PedidoCliente, Dbtalao.PedCliDif, Dbtalao.CodCliente' +
        ', Dbtalao.Produzido, Dbtalao.NumMovEst, Dbtalao.DtBaixa, Dbtalao' +
        '.QtdProduzida, Dbtalao.Cancelado, Dbtalao.MotivoCancelado, Dbtal' +
        'ao.DtCancelado, Dbtalao.DtGerado, Dbproduto.Referencia, Dbclient' +
        'e.Nome NomeCliente, Dbproduto.Nome NomeProduto, Dbpedidoitem.DtR' +
        'eprogramacao'
      'FROM "dbTalao.DB" Dbtalao'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbtalao.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbtalao.Pedido = Dbpedidoitem.Pedido)  '
      '   AND  (Dbtalao.ItemPedido = Dbpedidoitem.Item)  '
      'WHERE  Dbtalao.Talao BETWEEN 1 AND 1000 ')
    Left = 385
    Top = 334
    object qTalaoTalao: TIntegerField
      FieldName = 'Talao'
      Origin = 'TABELAS."dbTalao.DB".Talao'
    end
    object qTalaoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbTalao.DB".CodProduto'
    end
    object qTalaoCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbTalao.DB".CodCor'
    end
    object qTalaoCodGrade: TIntegerField
      FieldName = 'CodGrade'
      Origin = 'TABELAS."dbTalao.DB".CodGrade'
    end
    object qTalaoQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'TABELAS."dbTalao.DB".Quantidade'
    end
    object qTalaoPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbTalao.DB".Pedido'
    end
    object qTalaoItemPedido: TIntegerField
      FieldName = 'ItemPedido'
      Origin = 'TABELAS."dbTalao.DB".ItemPedido'
    end
    object qTalaoPedCliDif: TStringField
      FieldName = 'PedCliDif'
      Origin = 'TABELAS."dbTalao.DB".PedCliDif'
      Size = 2
    end
    object qTalaoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbTalao.DB".CodCliente'
    end
    object qTalaoProduzido: TBooleanField
      FieldName = 'Produzido'
      Origin = 'TABELAS."dbTalao.DB".Produzido'
    end
    object qTalaoNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
      Origin = 'TABELAS."dbTalao.DB".NumMovEst'
    end
    object qTalaoDtBaixa: TDateField
      FieldName = 'DtBaixa'
      Origin = 'TABELAS."dbTalao.DB".DtBaixa'
    end
    object qTalaoQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
      Origin = 'TABELAS."dbTalao.DB".QtdProduzida'
    end
    object qTalaoCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'TABELAS."dbTalao.DB".Cancelado'
    end
    object qTalaoMotivoCancelado: TStringField
      FieldName = 'MotivoCancelado'
      Origin = 'TABELAS."dbTalao.DB".MotivoCancelado'
      Size = 100
    end
    object qTalaoDtCancelado: TDateField
      FieldName = 'DtCancelado'
      Origin = 'TABELAS."dbTalao.DB".DtCancelado'
    end
    object qTalaoDtGerado: TDateField
      FieldName = 'DtGerado'
      Origin = 'TABELAS."dbTalao.DB".DtGerado'
    end
    object qTalaoReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'TABELAS."dbProduto.DB".Referencia'
    end
    object qTalaoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qTalaoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qTalaoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qTalaoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
  end
  object dsqTalao: TDataSource
    DataSet = qTalao
    Left = 409
    Top = 334
  end
end
