object fPrevPgtoJuros: TfPrevPgtoJuros
  Left = 198
  Top = 138
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Pagamentos c/ Juros'
  ClientHeight = 143
  ClientWidth = 366
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 366
    Height = 143
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 40
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 198
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object DateEdit1: TDateEdit
      Left = 86
      Top = 32
      Width = 92
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 252
      Top = 32
      Width = 92
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 17
      Top = 87
      Width = 332
      Height = 44
      TabOrder = 2
      object RxSpeedButton1: TRxSpeedButton
        Left = 15
        Top = 10
        Width = 100
        Height = 25
        Hint = 'Imprime a sele��o acima'
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
      object BitBtn2: TBitBtn
        Left = 116
        Top = 10
        Width = 100
        Height = 25
        Hint = 'Cancela a sele��o acima'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn2Click
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
      object BitBtn3: TBitBtn
        Left = 217
        Top = 10
        Width = 100
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
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
  end
  object PopupMenu1: TPopupMenu
    Left = 4
    Top = 3
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      OnClick = Imprimir1Click
    end
    object Visualizar1: TMenuItem
      Caption = '&Visualizar'
      OnClick = Visualizar1Click
    end
  end
  object dsCPagarParc: TDataSource
    DataSet = qCPagarParc
    Left = 216
    Top = 8
  end
  object RxDBFilter1: TRxDBFilter
    Active = True
    DataSource = dsCPagarParc
    Filter.Strings = (
      'JurosParcCPagar > 0')
    Left = 256
    Top = 8
  end
  object qCPagarParc: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcpagarparc.DtVencCPagar, Dbcpagarparc.VlrParcCPagar, Db' +
        'cpagarparc.DtPagParcCPagar, Dbcpagarparc.JurosParcCPagar, Dbcpag' +
        'arparc.CodForn, Dbcpagarparc.PgtoParcial, Dbcpagarparc.NroDuplic' +
        'ata, Dbcpagarparc.DiasAtraso, Dbfornecedores.Fantasia, Dbcpagarp' +
        'arc.CodConta, Dbcontas.NomeConta'
      'FROM "dbCPagarParc.DB" Dbcpagarparc'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbcpagarparc.CodForn = Dbfornecedores.CodForn)  '
      '   INNER JOIN "dbContas.DB" Dbcontas'
      '   ON  (Dbcpagarparc.CodConta = Dbcontas.CodConta)  '
      'ORDER BY Dbcpagarparc.DtPagParcCPagar, Dbfornecedores.Fantasia')
    Left = 183
    Top = 8
    object qCPagarParcDtVencCPagar: TDateField
      FieldName = 'DtVencCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".DtVencCPagar'
    end
    object qCPagarParcVlrParcCPagar: TFloatField
      FieldName = 'VlrParcCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".VlrParcCPagar'
      DisplayFormat = '0.00'
    end
    object qCPagarParcDtPagParcCPagar: TDateField
      FieldName = 'DtPagParcCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".DtPagParcCPagar'
    end
    object qCPagarParcJurosParcCPagar: TFloatField
      FieldName = 'JurosParcCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".JurosParcCPagar'
      DisplayFormat = '0.00'
    end
    object qCPagarParcCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbCPagarParc.DB".CodForn'
    end
    object qCPagarParcPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
      Origin = 'TABELAS."dbCPagarParc.DB".PgtoParcial'
      DisplayFormat = '0.00'
    end
    object qCPagarParcNroDuplicata: TIntegerField
      FieldName = 'NroDuplicata'
      Origin = 'TABELAS."dbCPagarParc.DB".NroDuplicata'
    end
    object qCPagarParcDiasAtraso: TFloatField
      FieldName = 'DiasAtraso'
      Origin = 'TABELAS."dbCPagarParc.DB".DiasAtraso'
    end
    object qCPagarParcFantasia: TStringField
      FieldName = 'Fantasia'
      Origin = 'TABELAS."dbFornecedores.DB".Fantasia'
      Size = 60
    end
    object qCPagarParcCodConta: TIntegerField
      FieldName = 'CodConta'
    end
    object qCPagarParcNomeConta: TStringField
      FieldName = 'NomeConta'
      Size = 40
    end
  end
end