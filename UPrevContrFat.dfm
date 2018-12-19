object fPrevContrFat: TfPrevContrFat
  Left = 277
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Faturamento'
  ClientHeight = 165
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
    Height = 165
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 41
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 180
      Top = 41
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object Label3: TLabel
      Left = 37
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      OnClick = BitBtn1Click
    end
    object DateEdit1: TDateEdit
      Left = 75
      Top = 33
      Width = 95
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 236
      Top = 33
      Width = 95
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 16
      Top = 119
      Width = 309
      Height = 41
      TabOrder = 4
      object RxSpeedButton1: TRxSpeedButton
        Left = 11
        Top = 8
        Width = 95
        Height = 25
        Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
        DropDownMenu = PopupMenu1
        Caption = 'Imprimir'
        Glyph.Data = {
          0E030000424D0E030000000000003600000028000000110000000E0000000100
          180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBF0000000000000000000000000000000000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
          BF00BFBFBF000000000000000000000000000000000000000000000000000000
          000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
          000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
          BF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
          BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
          00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
          000000000000000000000000000000FFFFFF000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
          BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
          0000000000000000000000BFBFBFBFBFBF00}
        Layout = blGlyphLeft
      end
      object BitBtn1: TBitBtn
        Left = 106
        Top = 8
        Width = 95
        Height = 25
        Hint = 'Cancela a sele'#231#227'o acima'
        Caption = 'Ca&ncelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
    end
    object RadioGroup1: TRadioGroup
      Left = 67
      Top = 64
      Width = 256
      Height = 45
      Caption = ' Tipo do relat'#243'rio '
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Detalhado'
        'Acumulado')
      TabOrder = 3
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 75
      Top = 8
      Width = 257
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 0
      OnEnter = RxDBLookupCombo2Enter
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 19
    Top = 122
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      OnClick = Imprimir1Click
    end
    object Visualizar1: TMenuItem
      Caption = '&Visualizar'
      OnClick = Visualizar1Click
    end
  end
  object qAcumulado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra,  SUM( Dbno' +
        'tafiscalitens.VlrTotal ) + SUM( Dbnotafiscalitens.VlrIPI )  VlrF' +
        'aturado, dbnotafiscal.percdesc'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)'
      
        'WHERE   ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Ca' +
        'ncelada IS NULL) )'
      
        '   AND  Dbnotafiscal.DtEmissao BETWEEN '#39'01/01/2006'#39' AND '#39'01/01/2' +
        '007'#39
      '   AND  (Dbnotafiscalitens.GeraDupl = TRUE)'
      
        'GROUP BY Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra, dbnotafi' +
        'scal.percdesc'
      'ORDER BY Dbnotafiscal.DtEmissao'
      ' '
      ' '
      ' ')
    Left = 64
    Top = 120
    object qAcumuladoDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qAcumuladoMaoObra: TBooleanField
      FieldName = 'MaoObra'
    end
    object qAcumuladoVlrFaturado: TFloatField
      FieldName = 'VlrFaturado'
    end
    object qAcumuladopercdesc: TFloatField
      FieldName = 'percdesc'
    end
  end
  object mAcumulado: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Data'
    Params = <>
    OnNewRecord = mAcumuladoNewRecord
    Left = 160
    Top = 136
    Data = {
      E30000009619E0BD01000000180000000A000000000003000000E30004446174
      61040006000000000008566C7256656E6461080004000000000008566C724D4F
      62726108000400000000000C566C724163756D56656E64610800040000000000
      0C566C724163756D4D4F627261080004000000000010566C7246617475726164
      6F546F74616C08000400000000000C566C724163756D546F74616C0800040000
      0000000D566C724D6564696156656E646108000400000000000D566C724D6564
      69614D4F62726108000400000000000D566C724D65646961546F74616C080004
      00000000000000}
    object mAcumuladoData: TDateField
      FieldName = 'Data'
    end
    object mAcumuladoVlrVenda: TFloatField
      FieldName = 'VlrVenda'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrMObra: TFloatField
      FieldName = 'VlrMObra'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrAcumVenda: TFloatField
      FieldName = 'VlrAcumVenda'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrAcumMObra: TFloatField
      FieldName = 'VlrAcumMObra'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrFaturadoTotal: TFloatField
      FieldName = 'VlrFaturadoTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrAcumTotal: TFloatField
      FieldName = 'VlrAcumTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrMediaVenda: TFloatField
      FieldName = 'VlrMediaVenda'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrMediaTotal: TFloatField
      FieldName = 'VlrMediaTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mAcumuladoVlrMediaMObra: TFloatField
      FieldName = 'VlrMediaMObra'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dsmAcumulado: TDataSource
    DataSet = mAcumulado
    Left = 184
    Top = 136
  end
  object qDetalhado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcliente.Nome NomeCliente, Dbnotafiscal.DtEmissao, Dbnot' +
        'afiscal.NumNota, Dbnotafiscal.VlrTotalNota, Dbnotafiscal.VlrTran' +
        'sf, Dbnotafiscal.VlrTotalDupl, Dbnotafiscal.Filial, Dbnotafiscal' +
        '.NumSeq '
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)'
      
        'WHERE   Dbnotafiscal.DtEmissao BETWEEN '#39'01/01/2006'#39' AND '#39'01/01/2' +
        '007'#39'  '
      
        '   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Ca' +
        'ncelada IS NULL) )'
      'ORDER BY Dbnotafiscal.NumNota'
      ' '
      ' ')
    Left = 120
    Top = 112
    object qDetalhadoNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumNota'
    end
    object qDetalhadoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 40
    end
    object qDetalhadoDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qDetalhadoVlrTotalNota: TFloatField
      FieldName = 'VlrTotalNota'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalNota'
      DisplayFormat = '###,###,###,###0.00'
    end
    object qDetalhadoVlrTransf: TFloatField
      FieldName = 'VlrTransf'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTransf'
      DisplayFormat = '###,###,###,###0.00'
    end
    object qDetalhadoVlrTotalDupl: TFloatField
      FieldName = 'VlrTotalDupl'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalDupl'
      DisplayFormat = '###,###,###,###0.00'
    end
    object qDetalhadoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbNotaFiscal.DB".Filial'
    end
    object qDetalhadoNumSeq: TIntegerField
      FieldName = 'NumSeq'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumSeq'
    end
  end
  object tNotaFiscalParc: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq;Parcela'
    MasterFields = 'Filial;NumSeq'
    MasterSource = dsqDetalhado
    TableName = 'dbNotaFiscalParc.DB'
    Left = 176
    Top = 104
    object tNotaFiscalParcParcela: TSmallintField
      FieldName = 'Parcela'
    end
    object tNotaFiscalParcDtVenc: TDateField
      FieldName = 'DtVenc'
    end
    object tNotaFiscalParcVlrVenc: TFloatField
      FieldName = 'VlrVenc'
    end
    object tNotaFiscalParcCodTipoCobr: TIntegerField
      FieldName = 'CodTipoCobr'
    end
    object tNotaFiscalParcFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalParcNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalParcCodConta: TIntegerField
      FieldName = 'CodConta'
    end
  end
  object dsqDetalhado: TDataSource
    DataSet = qDetalhado
    Left = 136
    Top = 112
  end
end
