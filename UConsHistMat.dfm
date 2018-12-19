object fConsHistMat: TfConsHistMat
  Left = 39
  Top = 82
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Hist'#243'rico do Material'
  ClientHeight = 506
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label16: TLabel
    Left = 64
    Top = 76
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 506
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 775
      Height = 123
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 65
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 30
        Top = 87
        Width = 19
        Height = 13
        Caption = 'Cor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 186
        Top = 42
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 494
        Top = 47
        Width = 91
        Height = 16
        Caption = 'Qtd. Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 585
        Top = 47
        Width = 142
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 507
        Top = 67
        Width = 78
        Height = 16
        Caption = 'Qtd. Sa'#237'da:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 585
        Top = 67
        Width = 142
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 539
        Top = 88
        Width = 46
        Height = 16
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 495
        Top = 84
        Width = 232
        Height = 1
        Brush.Color = clBlack
      end
      object Label8: TLabel
        Left = 585
        Top = 88
        Width = 142
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 13
        Top = 42
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 5
        Top = 108
        Width = 44
        Height = 13
        Caption = 'Dt.Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 270
        Top = 110
        Width = 39
        Height = 13
        Caption = 'Dt.Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 442
        Top = 3
        Width = 113
        Height = 28
        Hint = 'Executa a consulta p/ material selecionado ao lado'
        Caption = '&Consulta'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
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
        Left = 555
        Top = 3
        Width = 113
        Height = 28
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
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
      object RadioGroup1: TRadioGroup
        Left = 51
        Top = 4
        Width = 360
        Height = 30
        Caption = ' Op'#231#245'es... '
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Produto'
          'Material')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 51
        Top = 56
        Width = 360
        Height = 21
        DropDownCount = 15
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsProduto
        TabOrder = 3
        OnEnter = RxDBLookupCombo1Enter
        OnExit = RxDBLookupCombo1Exit
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 244
        Top = 34
        Width = 167
        Height = 21
        DropDownCount = 15
        LookupField = 'Codigo'
        LookupDisplay = 'Referencia;DescMaterial'
        LookupSource = DM1.dsProduto
        TabOrder = 2
        OnEnter = RxDBLookupCombo2Enter
        OnExit = RxDBLookupCombo2Exit
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 51
        Top = 78
        Width = 360
        Height = 21
        DropDownCount = 10
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = qsCor
        TabOrder = 4
        OnEnter = RxDBLookupCombo3Enter
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 51
        Top = 34
        Width = 77
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 1
        OnExit = CurrencyEdit1Exit
      end
      object DateEdit1: TDateEdit
        Left = 51
        Top = 99
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 5
      end
      object DateEdit2: TDateEdit
        Left = 312
        Top = 102
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 6
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 1
      Top = 124
      Width = 775
      Height = 381
      Align = alClient
      DataSource = msMaterial
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'Data'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumNota'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ES'
          Title.Alignment = taCenter
          Width = 20
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TipoMov'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Mov.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unidade'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Width = 37
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Largura'
          Title.Alignment = taCenter
          Title.Caption = 'Larg.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnitario'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Caption = 'Nome Cliente/Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercIcms'
          Title.Alignment = taCenter
          Title.Caption = '% ICMS'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumMov'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Estoque'
          Width = 103
          Visible = True
        end>
    end
  end
  object qMaterial: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbestoquematmov.CodMaterial, Dbproduto.Nome NomeMaterial,' +
        ' Dbestoquematmov.NumMov, Dbcor.Nome NomeCor, Dbestoquematmov.Lar' +
        'gura, Dbestoquematmov.DtMov, Dbestoquematmov.ES, Dbestoquematmov' +
        '.TipoMov, Dbestoquematmov.NumNota, Dbestoquematmov.VlrUnitario, ' +
        'Dbestoquematmov.Qtd, Dbestoquematmov.Unidade, Dbestoquematmov.Co' +
        'dCor, Dbestoquematmov.PercIcms, Dbestoquematmov.CodCliForn'
      'FROM "dbProduto.DB" Dbproduto'
      '   INNER JOIN "dbEstoqueMatMov.DB" Dbestoquematmov'
      '   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)'
      '   FULL JOIN "Dbcor.db" Dbcor'
      '   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)'
      'WHERE   (Dbestoquematmov.CodMaterial = :CodMaterial)'
      '   AND  (Dbestoquematmov.CodCor = :CodCor)'
      
        'ORDER BY Dbestoquematmov.DtMov, Dbestoquematmov.ES, Dbproduto.No' +
        'me'
      ' ')
    Left = 224
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptUnknown
        Value = 0
      end>
    object qMaterialCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qMaterialNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 60
    end
    object qMaterialNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object qMaterialNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object qMaterialLargura: TStringField
      FieldName = 'Largura'
      Size = 1
    end
    object qMaterialDtMov: TDateField
      FieldName = 'DtMov'
    end
    object qMaterialES: TStringField
      FieldName = 'ES'
      Size = 1
    end
    object qMaterialTipoMov: TStringField
      FieldName = 'TipoMov'
      Size = 3
    end
    object qMaterialNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qMaterialVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object qMaterialQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.00000'
    end
    object qMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qMaterialCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qMaterialPercIcms: TFloatField
      FieldName = 'PercIcms'
    end
    object qMaterialCodCliForn: TIntegerField
      FieldName = 'CodCliForn'
    end
  end
  object qsMaterial: TDataSource
    DataSet = qMaterial
    Left = 256
    Top = 208
  end
  object qCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Dbcor.Nome, Dbcor.Codigo'
      'FROM "dbProdutoCor.DB" Dbprodutocor'
      '   INNER JOIN "Dbcor.db" Dbcor'
      '   ON  (Dbprodutocor.CodCor = Dbcor.Codigo)  '
      'WHERE  Dbprodutocor.Codproduto = :Cod'
      'ORDER BY DbCor.Nome')
    Left = 352
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Cod'
        ParamType = ptUnknown
        Value = 0
      end>
    object qCorNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCor.DB".Nome'
      Size = 15
    end
    object qCorCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCor.DB".Codigo'
    end
  end
  object qsCor: TDataSource
    DataSet = qCor
    Left = 368
    Top = 216
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsProduto
    Filter.Strings = (
      'ProdMat = '#39'P'#39)
    Left = 488
    Top = 184
  end
  object msMaterial: TDataSource
    DataSet = mMaterial
    Left = 368
    Top = 272
  end
  object mMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Data'
    Params = <>
    Left = 352
    Top = 272
    Data = {
      090100009619E0BD01000000180000000C000000000003000000090104446174
      610400060000000000064E756D4D6F76040001000000000007556E6964616465
      0100490000000100055749445448020002000300074C61726775726101004900
      0000010005574944544802000200010002455301004900000001000557494454
      48020002000100075469706F4D6F760100490000000100055749445448020002
      000300074E756D4E6F7461040001000000000003517464080004000000000005
      53616C646F08000400000000000B566C72556E69746172696F08000400000000
      00085065726349636D730800040000000000044E6F6D65010049000000010005
      57494454480200020028000000}
    object mMaterialData: TDateField
      FieldName = 'Data'
    end
    object mMaterialNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object mMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mMaterialLargura: TStringField
      FieldName = 'Largura'
      Size = 1
    end
    object mMaterialES: TStringField
      FieldName = 'ES'
      Size = 1
    end
    object mMaterialTipoMov: TStringField
      FieldName = 'TipoMov'
      Size = 3
    end
    object mMaterialNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mMaterialQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.00000'
    end
    object mMaterialSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '0.00000'
    end
    object mMaterialVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
      DisplayFormat = '0.00'
    end
    object mMaterialPercIcms: TFloatField
      FieldName = 'PercIcms'
    end
    object mMaterialNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
end
