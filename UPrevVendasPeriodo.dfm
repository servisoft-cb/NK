object fPrevVendasPeriodo: TfPrevVendasPeriodo
  Left = 267
  Top = 185
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vendas por Per'#237'odo'
  ClientHeight = 184
  ClientWidth = 342
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 184
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 42
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 180
      Top = 42
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object Label5: TLabel
      Left = 12
      Top = 96
      Width = 92
      Height = 13
      Caption = 'Filtrar a Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 29
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Label4: TLabel
      Left = 29
      Top = 70
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 67
      Top = 34
      Width = 95
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 236
      Top = 34
      Width = 95
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 110
      Top = 90
      Width = 219
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 67
      Top = 8
      Width = 264
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Valor'
      Items.Strings = (
        'Valor'
        'Quantidade')
    end
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 162
      Width = 309
      Height = 16
      TabOrder = 5
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 67
      Top = 62
      Width = 265
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 3
      OnEnter = RxDBLookupCombo1Enter
    end
    object Panel2: TPanel
      Left = 16
      Top = 118
      Width = 309
      Height = 41
      TabOrder = 6
      object BitBtn1: TBitBtn
        Left = 106
        Top = 8
        Width = 95
        Height = 25
        Hint = 'Cancela a sele'#231#227'o acima'
        Caption = 'Ca&ncelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          CE070000424DCE07000000000000360000002800000024000000120000000100
          18000000000098070000CE0E0000C40E00000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080808080808080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080FFFFFF008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800000FF0000
          800000808080800080800080800080800080800080800000FF80808000808000
          8080008080008080008080008080008080008080808080808080FFFFFF008080
          008080008080008080008080008080FFFFFF0080800080800080800080800080
          800080800080800000FF00008000008000008080808000808000808000808000
          00FF000080000080808080008080008080008080008080008080008080808080
          FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
          FF0080800080800080800080800080800080800000FF00008000008000008000
          00808080800080800000FF000080000080000080000080808080008080008080
          008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
          FF808080008080008080808080FFFFFF00808000808000808000808000808000
          80800000FF000080000080000080000080808080000080000080000080000080
          000080808080008080008080008080008080008080808080FFFFFF0080800080
          80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
          80800080800080800080800080800080800000FF000080000080000080000080
          0000800000800000800000808080800080800080800080800080800080800080
          80008080808080FFFFFF00808000808000808080808000808000808000808000
          8080FFFFFF808080008080008080008080008080008080008080008080008080
          0000FF0000800000800000800000800000800000808080800080800080800080
          80008080008080008080008080008080008080808080FFFFFF00808000808000
          8080008080008080008080FFFFFF808080008080008080008080008080008080
          0080800080800080800080800080800000800000800000800000800000808080
          8000808000808000808000808000808000808000808000808000808000808000
          8080808080FFFFFF008080008080008080008080008080808080008080008080
          0080800080800080800080800080800080800080800080800080800000FF0000
          8000008000008000008080808000808000808000808000808000808000808000
          8080008080008080008080008080008080808080FFFFFF008080008080008080
          8080800080800080800080800080800080800080800080800080800080800080
          800080800000FF00008000008000008000008000008080808000808000808000
          8080008080008080008080008080008080008080008080008080008080808080
          008080008080008080008080808080FFFFFF0080800080800080800080800080
          800080800080800080800080800000FF00008000008000008080808000008000
          0080000080808080008080008080008080008080008080008080008080008080
          008080008080808080008080008080008080008080008080808080FFFFFF0080
          800080800080800080800080800080800080800080800000FF00008000008000
          00808080800080800000FF000080000080000080808080008080008080008080
          008080008080008080008080008080808080008080008080008080808080FFFF
          FF008080008080808080FFFFFF00808000808000808000808000808000808000
          80800000FF0000800000808080800080800080800080800000FF000080000080
          000080808080008080008080008080008080008080008080808080FFFFFF0080
          80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
          80800080800080800080800080800080800000FF000080008080008080008080
          0080800080800000FF0000800000800000800080800080800080800080800080
          80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
          8080008080808080FFFFFF008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800000FF0000800000FF0080
          8000808000808000808000808000808000808080808080808000808000808000
          8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080808080808080808080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 202
        Top = 8
        Width = 95
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
        Left = 11
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
  end
  object qVendas: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscalitens.NumNota, Dbnotafiscalitens.CodProduto, ' +
        'Dbproduto.Referencia,'
      'Dbproduto.Nome, SUM(Dbnotafiscalitens.VlrTotal) VlrTotal,'
      'SUM(Dbnotafiscalitens.Qtd) Qtd, dbNotaFiscal.PercDesc'
      'FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal'
      '   ON  (Dbnotafiscalitens.NumNota = Dbnotafiscal.NumNota)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)'
      
        'WHERE ((dbNotaFiscal.Cancelada = False) or (dbNotaFiscal.Cancela' +
        'da is Null)) and '
      '               (dbNotaFiscal.SaidaEntrada = '#39'S'#39') and'
      '               (dbNotaFiscal.DtEmissao BETWEEN :D1 and :D2)'
      
        'GROUP BY Dbnotafiscalitens.NumNota, Dbnotafiscalitens.CodProduto' +
        ', Dbproduto.Referencia, '
      'Dbproduto.Nome, dbNotaFiscal.PercDesc'
      ' '
      ' '
      ' ')
    Left = 48
    Top = 128
    ParamData = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptUnknown
      end>
    object qVendasNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qVendasCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qVendasReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qVendasNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qVendasVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
    object qVendasQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qVendasPercDesc: TFloatField
      FieldName = 'PercDesc'
    end
  end
  object qVale: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Dbvaleitens.CodProduto, Dbproduto.Referencia,'
      
        'Dbproduto.Nome, SUM(Dbvaleitens.Qtd) Qtd, SUM(Dbvaleitens.VlrTot' +
        'al) VlrTotal'
      'FROM "dbValeItens.DB" Dbvaleitens'
      '   INNER JOIN "dbVale.DB" Dbvale'
      '   ON  (Dbvaleitens.NumVale = Dbvale.NumVale)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbvaleitens.CodProduto = Dbproduto.Codigo)  '
      
        'WHERE ((Dbvale.Faturado = False ) or (Dbvale.Faturado is Null)) ' +
        'And'
      
        '              ((DbvaleItens.Faturado = False ) or (DbvaleItens.F' +
        'aturado is Null)) And'
      '               (Dbvale.DtEmissao BETWEEN :D1 and :D2)'
      'GROUP BY Dbvaleitens.CodProduto, Dbproduto.Referencia, '
      'Dbproduto.Nome'
      ' ')
    Left = 232
    Top = 128
    ParamData = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptUnknown
      end>
    object qValeCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qValeReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qValeNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qValeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qValeVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
  end
  object msVendas: TDataSource
    DataSet = mVendas
    Left = 176
    Top = 128
  end
  object mVendas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'QtdVale'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotalVale'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'VlrTotal'
        DescFields = 'VlrTotal'
        Fields = 'VlrTotal'
        Options = [ixDescending]
      end
      item
        Name = 'Qtd'
        DescFields = 'Qtd'
        Fields = 'Qtd'
        Options = [ixDescending]
      end>
    Params = <>
    StoreDefs = True
    OnNewRecord = mVendasNewRecord
    Left = 144
    Top = 128
    Data = {
      AE0000009619E0BD010000001800000007000000000003000000AE000A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      010005574944544802000200280003517464080004000000000008566C72546F
      74616C08000400000000000751746456616C6508000400000000000C566C7254
      6F74616C56616C6508000400000000000000}
    object mVendasCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mVendasReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mVendasNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mVendasQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,##0.####'
    end
    object mVendasVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object mVendasQtdVale: TFloatField
      FieldName = 'QtdVale'
      DisplayFormat = '###,###,##0.####'
    end
    object mVendasVlrTotalVale: TFloatField
      FieldName = 'VlrTotalVale'
      DisplayFormat = '###,###,##0.00'
    end
  end
end
