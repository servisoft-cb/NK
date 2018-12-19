object fConsEstUltMov: TfConsEstUltMov
  Left = 67
  Top = 44
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta '#218'ltimos Movimentos'
  ClientHeight = 513
  ClientWidth = 759
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 513
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 468
      Width = 118
      Height = 13
      Caption = 'Vlr.Custo M'#233'dio Per'#237'odo:'
    end
    object Label4: TLabel
      Left = 480
      Top = 497
      Width = 118
      Height = 13
      Caption = 'Saldo F'#237'sico do Per'#237'odo:'
    end
    object Label5: TLabel
      Left = 264
      Top = 468
      Width = 137
      Height = 13
      Caption = 'Vlr.Venda M'#233'dio do Per'#237'odo:'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 484
      Width = 759
      Height = 2
      Shape = bsTopLine
      Style = bsRaised
    end
    object Label6: TLabel
      Left = 39
      Top = 497
      Width = 87
      Height = 13
      Caption = 'Qtd.Total Entrada:'
    end
    object Label7: TLabel
      Left = 263
      Top = 497
      Width = 79
      Height = 13
      Caption = 'Qtd.Total Sa'#237'da:'
    end
    object Panel2: TPanel
      Left = 2
      Top = 3
      Width = 754
      Height = 38
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 128
        Top = 21
        Width = 37
        Height = 13
        Caption = #218'ltimos '
      end
      object Label2: TLabel
        Left = 226
        Top = 21
        Width = 31
        Height = 13
        Caption = 'Meses'
      end
      object BitBtn1: TBitBtn
        Left = 424
        Top = 6
        Width = 113
        Height = 28
        Hint = 'Executa a consulta p/ material selecionado ao lado'
        Caption = 'Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          46050000424D460500000000000036040000280000000D000000110000000100
          08000000000010010000C30E0000C30E00000001000000000000000000008080
          8000000080000080800000800000808000008000000080008000408080004040
          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
          1D007666280000450000013E450013286A006A39850085324A00040404000808
          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
          0000000039009B00000000250000000049003B111100002F000000005D004517
          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
          0F0F0F0F0F0F0F000000}
      end
      object BitBtn2: TBitBtn
        Left = 655
        Top = 6
        Width = 94
        Height = 28
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
      object CurrencyEdit1: TCurrencyEdit
        Left = 166
        Top = 13
        Width = 57
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 0
        Value = 6.000000000000000000
      end
      object BitBtn3: TBitBtn
        Left = 538
        Top = 6
        Width = 113
        Height = 28
        Hint = 'Executa a consulta detalhada do Produto'
        Caption = 'Detalhado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
          0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
          0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
          0005555555575FF7777555555555000555555555555577755555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 43
      Width = 752
      Height = 246
      DataSource = dsmEstoque
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
          FieldName = 'Mes'
          Title.Alignment = taCenter
          Title.Caption = 'M'#234's'
          Width = 36
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ano'
          Title.Alignment = taCenter
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdEntrada'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Entrada'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdSaida'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Sa'#237'da'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo F'#237'sico'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrCustoMedio'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Custo M'#233'dio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrEntrada'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total Entrada'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrSaida'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total Venda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrVendaMedio'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Venda M'#233'dio'
          Width = 86
          Visible = True
        end>
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 128
      Top = 460
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      ReadOnly = True
      TabOrder = 2
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 600
      Top = 489
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DecimalPlaces = 5
      DisplayFormat = '0.00000'
      ReadOnly = True
      TabOrder = 3
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 402
      Top = 460
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      ReadOnly = True
      TabOrder = 4
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 128
      Top = 489
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DecimalPlaces = 5
      DisplayFormat = '0.00000'
      ReadOnly = True
      TabOrder = 5
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 344
      Top = 489
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DecimalPlaces = 5
      DisplayFormat = '0.00000'
      ReadOnly = True
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 292
      Width = 751
      Height = 163
      Caption = '  Ordens de Compras Pendentes '
      TabOrder = 7
      object RxDBGrid2: TRxDBGrid
        Left = 6
        Top = 15
        Width = 739
        Height = 142
        DataSource = qsOC
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeForn'
            Title.Alignment = taCenter
            Title.Caption = 'Forncedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumOC'
            Title.Alignment = taCenter
            Title.Caption = 'N'#176' O.C.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdEntregue'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Entregue'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoMat'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Material'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtEntrega'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Entrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Restante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Cor'
            Visible = True
          end>
      end
    end
  end
  object qMaterial: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT CodMaterial, NumMov, Largura, DtMov, ES, TipoMov, NumNota' +
        ', VlrUnitario, Qtd, Unidade, CodCor, PercIcms, VlrDesconto, Tama' +
        'nho'
      'FROM "dbEstoqueMatMov.db" dbEstoqueMatMov'
      'WHERE   (CodMaterial = :CodMaterial)  '
      '   AND  (CodCor = :CodCor)  '
      '   AND  (DtMov >= :DtMov) '
      '   AND  (Tamanho = :Tamanho)'
      'ORDER BY DtMov, ES')
    Left = 224
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DtMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tamanho'
        ParamType = ptUnknown
      end>
    object qMaterialCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodMaterial'
    end
    object qMaterialNumMov: TIntegerField
      FieldName = 'NumMov'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".NumMov'
    end
    object qMaterialLargura: TStringField
      FieldName = 'Largura'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Largura'
      Size = 1
    end
    object qMaterialDtMov: TDateField
      FieldName = 'DtMov'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".DtMov'
    end
    object qMaterialES: TStringField
      FieldName = 'ES'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".ES'
      Size = 1
    end
    object qMaterialTipoMov: TStringField
      FieldName = 'TipoMov'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".TipoMov'
      Size = 3
    end
    object qMaterialNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".NumNota'
    end
    object qMaterialVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".VlrUnitario'
    end
    object qMaterialQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Qtd'
    end
    object qMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Unidade'
      Size = 3
    end
    object qMaterialCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodCor'
    end
    object qMaterialPercIcms: TFloatField
      FieldName = 'PercIcms'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".PercIcms'
    end
    object qMaterialVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".VlrDesconto'
    end
    object qMaterialTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Tamanho'
      Size = 3
    end
  end
  object qsMaterial: TDataSource
    DataSet = qMaterial
    Left = 256
    Top = 120
  end
  object mEstoque: TMemoryTable
    Active = True
    OnNewRecord = mEstoqueNewRecord
    Left = 424
    Top = 160
    object mEstoqueMes: TIntegerField
      FieldName = 'Mes'
    end
    object mEstoqueAno: TIntegerField
      FieldName = 'Ano'
    end
    object mEstoqueQtdEntrada: TFloatField
      FieldName = 'QtdEntrada'
    end
    object mEstoqueQtdSaida: TFloatField
      FieldName = 'QtdSaida'
    end
    object mEstoqueVlrCustoMedio: TFloatField
      FieldName = 'VlrCustoMedio'
    end
    object mEstoqueSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object mEstoqueVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
    object mEstoqueVlrSaida: TFloatField
      FieldName = 'VlrSaida'
    end
    object mEstoqueVlrVendaMedio: TFloatField
      FieldName = 'VlrVendaMedio'
    end
  end
  object dsmEstoque: TDataSource
    DataSet = mEstoque
    Left = 440
    Top = 160
  end
  object qOC: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbfornecedores.NomeForn, Dbordemcompra.Codigo NumOC, Dbor' +
        'demcompraitem.Qtd, Dbordemcompraitem.QtdEntregue, Dbproduto.Codi' +
        'go CodigoMat, Dbordemcompraitem.DtEntrega, Dbordemcompraitem.Qtd' +
        'Restante, Dbcor.Nome, Dbcor.Codigo CodCor'
      'FROM "dbOrdemCompraItem.DB" Dbordemcompraitem'
      '   INNER JOIN "dbOrdemCompra.DB" Dbordemcompra'
      '   ON  (Dbordemcompraitem.Codigo = Dbordemcompra.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbordemcompraitem.CodMaterial = Dbproduto.Codigo)  '
      '   FULL OUTER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbordemcompraitem.CodCor = Dbcor.Codigo)  '
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbordemcompra.CodFornecedor = Dbfornecedores.CodForn)'
      'Where (dbordemcompraitem.QtdRestante > 0) '
      '     AND (dbordemcompraitem.CodMaterial = :CodMaterial) '
      '     AND (dbordemcompraitem.CodCor = :CodCor)'
      ''
      ' '
      ''
      ''
      ' '
      ' ')
    Left = 290
    Top = 372
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptUnknown
      end>
    object qOCNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object qOCNumOC: TIntegerField
      FieldName = 'NumOC'
    end
    object qOCQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qOCQtdEntregue: TFloatField
      FieldName = 'QtdEntregue'
    end
    object qOCCodigoMat: TIntegerField
      FieldName = 'CodigoMat'
    end
    object qOCDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object qOCQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object qOCNome: TStringField
      FieldName = 'Nome'
      Size = 15
    end
    object qOCCodCor: TIntegerField
      FieldName = 'CodCor'
    end
  end
  object qsOC: TDataSource
    DataSet = qOC
    Left = 320
    Top = 371
  end
end
