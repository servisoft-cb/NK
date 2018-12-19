object fConsNotaEntradaProd: TfConsNotaEntradaProd
  Left = 6
  Top = 6
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta das notas de entrada por produto e fornecedor'
  ClientHeight = 545
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 545
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 773
      Height = 94
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 2
        Top = 52
        Width = 102
        Height = 13
        Caption = 'Nome do produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 48
        Top = 7
        Width = 56
        Height = 13
        Caption = 'Dt.Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 196
        Top = 29
        Width = 67
        Height = 13
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 213
        Top = 7
        Width = 49
        Height = 13
        Caption = 'Dt.Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 29
        Top = 30
        Width = 75
        Height = 13
        Caption = 'C'#243'd.Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 35
        Top = 75
        Width = 69
        Height = 13
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 106
        Top = 47
        Width = 344
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        ListStyle = lsDelimited
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsProduto
        TabOrder = 1
        OnEnter = RxDBLookupCombo1Enter
        OnExit = RxDBLookupCombo1Exit
      end
      object Panel3: TPanel
        Left = 488
        Top = 46
        Width = 185
        Height = 44
        TabOrder = 2
        object BitBtn3: TBitBtn
          Left = 92
          Top = 6
          Width = 87
          Height = 30
          Hint = 'Fecha a janela atual'
          Caption = '&Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
        object BitBtn1: TBitBtn
          Left = 4
          Top = 6
          Width = 87
          Height = 30
          Caption = 'Consulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000CA0E0000C30E00000001000000000000000000003300
            00006600000099000000CC000000FF0000000033000033330000663300009933
            0000CC330000FF33000000660000336600006666000099660000CC660000FF66
            000000990000339900006699000099990000CC990000FF99000000CC000033CC
            000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
            0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
            330000333300333333006633330099333300CC333300FF333300006633003366
            33006666330099663300CC663300FF6633000099330033993300669933009999
            3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
            330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
            66006600660099006600CC006600FF0066000033660033336600663366009933
            6600CC336600FF33660000666600336666006666660099666600CC666600FF66
            660000996600339966006699660099996600CC996600FF99660000CC660033CC
            660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
            6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
            990000339900333399006633990099339900CC339900FF339900006699003366
            99006666990099669900CC669900FF6699000099990033999900669999009999
            9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
            990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
            CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
            CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
            CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
            CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
            CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
            FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
            FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
            FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
            FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000ACACACACACAC
            ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
            00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
            02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
            5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
            00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
            ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
            D7D7D7D700000000FFFFACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
            D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
        end
      end
      object DateEdit1: TDateEdit
        Left = 106
        Top = 3
        Width = 96
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 265
        Top = 25
        Width = 185
        Height = 21
        DropDownCount = 8
        DropDownWidth = 350
        DisplayAllFields = True
        ListStyle = lsDelimited
        LookupField = 'Codigo'
        LookupDisplay = 'Referencia;DescMaterial'
        LookupSource = DM1.dsProduto
        TabOrder = 3
        OnEnter = RxDBLookupCombo2Enter
        OnExit = RxDBLookupCombo2Exit
      end
      object DateEdit2: TDateEdit
        Left = 266
        Top = 3
        Width = 96
        Height = 21
        NumGlyphs = 2
        TabOrder = 4
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 106
        Top = 25
        Width = 81
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 5
        OnExit = CurrencyEdit1Exit
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 106
        Top = 70
        Width = 344
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        ListStyle = lsDelimited
        LookupField = 'CodForn'
        LookupDisplay = 'NomeForn'
        LookupSource = DM1.dsFornecedores
        TabOrder = 6
        OnEnter = RxDBLookupCombo3Enter
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 3
      Top = 99
      Width = 770
      Height = 442
      Color = clInfoBk
      DataSource = dsqNotas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Serie'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'lkCodNatOper'
          Title.Alignment = taCenter
          Title.Caption = 'Nat.Oper'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEntrada'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Entrada'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEmissaoNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Emiss'#227'o'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 121
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnit'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeForn'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Fornecedor'
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotalItens'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Material'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unidade'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
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
          FieldName = 'SomaEstoque'
          Title.Alignment = taCenter
          Title.Caption = 'Soma Estoque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Produto'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodForn'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Fornecedor'
          Visible = True
        end>
    end
  end
  object qNotas: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.CodForn, Dbnentrada.NumNEntr, Dbnentrada.Serie' +
        ', Dbnentradaitens.CodMaterial, Dbproduto.Referencia, Dbproduto.N' +
        'ome, Dbnentradaitens.Qtd, Dbnentradaitens.VlrUnit, Dbnentradaite' +
        'ns.VlrTotalItens, Dbnentradaitens.Icms, Dbnentradaitens.Ipi, Dbn' +
        'entradaitens.Unidade, Dbnentradaitens.CodCor, Dbnentradaitens.Si' +
        'tTrib, Dbnentradaitens.SomaEstoque, Dbnentradaitens.CodNatOper, ' +
        'Dbnentrada.DtEmissaoNEntr, Dbnentrada.DtEntrada, dbfornecedores.' +
        'NomeForn'
      'FROM "dbNEntrada.DB" Dbnentrada'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      '   AND  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnentradaitens.CodMaterial = Dbproduto.Codigo)'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentradaitens.CodForn = dbFornecedores.CodForn)'
      
        'WHERE  Dbnentrada.DtEntrada BETWEEN '#39'01/01/2006'#39' AND '#39'01/01/2008' +
        #39' '
      ' '
      ' ')
    Left = 344
    Top = 184
    object qNotasCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object qNotasNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
    end
    object qNotasSerie: TStringField
      FieldName = 'Serie'
      Size = 2
    end
    object qNotasCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qNotasReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qNotasNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qNotasQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qNotasVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qNotasVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object qNotasIcms: TFloatField
      FieldName = 'Icms'
    end
    object qNotasIpi: TFloatField
      FieldName = 'Ipi'
    end
    object qNotasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotasCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotasSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object qNotasSomaEstoque: TBooleanField
      FieldName = 'SomaEstoque'
    end
    object qNotasCodNatOper: TIntegerField
      FieldName = 'CodNatOper'
    end
    object qNotasDtEmissaoNEntr: TDateField
      FieldName = 'DtEmissaoNEntr'
    end
    object qNotasDtEntrada: TDateField
      FieldName = 'DtEntrada'
    end
    object qNotaslkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qNotasNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object qNotaslkCodNatOper: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodNatOper'
      LookupDataSet = DM1.tNatOperacao2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodNatOper'
      KeyFields = 'CodNatOper'
      Size = 5
      Lookup = True
    end
  end
  object dsqNotas: TDataSource
    DataSet = qNotas
    Left = 360
    Top = 184
  end
end
