object fProdutoConsumo: TfProdutoConsumo
  Left = 10
  Top = 68
  Width = 783
  Height = 475
  Caption = 'Consumo do Produto'
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
    Left = 8
    Top = 80
    Width = 48
    Height = 16
    Caption = 'Grade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton7: TSpeedButton
    Left = 672
    Top = 70
    Width = 82
    Height = 24
    Hint = 'Abre o formul'#225'rio de cadastro das grades'
    Caption = 'Grade'
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
      000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
      00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
      8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
      8888880BB088888888888800008888888888}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton7Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 56
    Top = 73
    Width = 285
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome;Largura'
    LookupSource = DM1.dsGrade
    TabOrder = 0
    OnExit = RxDBLookupCombo1Exit
  end
  object BitBtn10: TBitBtn
    Left = 342
    Top = 70
    Width = 82
    Height = 24
    Hint = 'Confirma a grade'
    Caption = 'Confirmar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn10Click
    Glyph.Data = {
      A6020000424DA602000000000000420000002800000011000000110000000100
      1000030000006402000000000000000000000000000000000000007C0000E003
      00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EC202F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EC202F75EF75EF75EF75EF75EF75EF75EF75EF75E
      1700FF7FF75EF75EF75EF75EF75EF75EDD01F75EF75EF75EF75EF75EF75EF75E
      F75E170017001700FF7FF75EF75EF75EF75EF75EC202F75EF75EF75EF75EF75E
      F75EF75E1700170017001700FF7FF75EF75EF75EF75EF75E4301F75E00000000
      000000000000170017001700FF7F17001700FF7FF75EF75EF75EF75E9901F75E
      0000FF7FFF7FFF7F170017001700FF7F0000F75E17001700FF7FF75EF75EF75E
      C202F75E0000FF7FEF3DEF3DEF3D1700FF7FFF7F0000F75EF75E1700FF7FF75E
      F75EF75E1D03F75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75EF75EF75E
      1700FF7FF75EF75E0200F75E0000FF7FEF3DEF3DEF3DEF3DEF3DFF7F0000F75E
      F75EF75EF75E1700FF7FF75E1903F75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000F75EF75EF75EF75EF75E1700FF7FDA00F75E0000FF7FEF3DEF3DF75EF75E
      F75EFF7F0000F75EF75EF75EF75EF75EF75E1700D300F75E0000FF7FFF7FFF7F
      FF7F0000000000000000F75EF75EF75EF75EF75EF75EF75E1901F75E0000FF7F
      EF3DEF3DF75E0000F75E0000F75EF75EF75EF75EF75EF75EF75EF75E9000F75E
      0000FF7FFF7FFF7FFF7F00000000F75EF75EF75EF75EF75EF75EF75EF75EF75E
      5802F75E000000000000000000000000F75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75E3501F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EB781}
  end
  object BitBtn11: TBitBtn
    Left = 424
    Top = 70
    Width = 82
    Height = 24
    Hint = 'Cancela a grade selecionada'
    Caption = 'Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn11Click
    Glyph.Data = {
      EE020000424DEE02000000000000420000002800000012000000130000000100
      100003000000AC02000000000000000000000000000000000000007C0000E003
      00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75E007CF75E007CF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75E007CF75EF75E007C007CF75EF75EEE39EE39EE39EE39
      EE39EE39EE39EE39EE39EE39007CF75EF75EF75E007C007C007C000000000000
      0000000000000000000000000000007C007CF75EF75EF75EF75E007C007C0000
      E07FFF7FFF7FFF7FE07FFF7FFF7FFF7F007C007CF75EF75EF75EF75EF75EF75E
      007C007CFF7F1F001F001F001F001F001F00FF7F007CEE39F75EF75EF75EF75E
      F75EF75E007C007C007CFF7FE07FFF7FFF7FFF7FE07F007C007CEE39F75EF75E
      F75EF75EF75EF75EF75E007C007C007C1F001F001F00007C007C007C0000EE39
      F75EF75EF75EF75EF75EF75EF75E0000007C007C007CFF7FE07F007C007CFF7F
      0000EE39F75EF75EF75EF75EF75EF75EF75E0000FF7F1F00007C007C007C007C
      1F00FF7F0000EE39F75EF75EF75EF75EF75EF75EF75E0000FF7FFF7F007C007C
      007C007CE07FFF7F0000EE39F75EF75EF75EF75EF75EF75EF75E0000FF7F1F00
      007C007C007C007C000000000000EE39F75EF75EF75EF75EF75EF75EF75E0000
      E07F007C007CFF7F0000007C007CFF7F0000EE39F75EF75EF75EF75EF75EF75E
      F75E0000007C007C007CFF7F0000007C007C007C007CF75EF75EF75EF75EF75E
      F75EF75E007C007C007CFF7FE07FFF7F0000FF7F0000F75E007C007CF75EF75E
      F75EF75E007C007C007C007C000000000000000000000000F75EF75EF75E007C
      007CF75EF75EF75E007C007C007CF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75E007CF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75E007CF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75E}
  end
  object BitBtn12: TBitBtn
    Left = 590
    Top = 70
    Width = 82
    Height = 24
    Hint = 'Exclui a grade selecionada'
    Caption = 'Excluir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn12Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
      0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
      703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
      700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
      0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
      03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
      033333777777777773333333307770333333333337FFF7F33333333330000033
      3333333337777733333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 101
    Width = 757
    Height = 77
    Caption = ' Digita'#231#227'o do consumo '
    TabOrder = 1
    OnEnter = GroupBox1Enter
    object VDBGrid1: TVDBGrid
      Left = 8
      Top = 13
      Width = 743
      Height = 59
      DataSource = dsmProdutoGrade
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Vertical = True
      TitlesWidth = 70
      OnCellClick = VDBGrid1CellClick
      OnColEnter = VDBGrid1ColEnter
      OnEnter = VDBGrid1Enter
      Columns = <
        item
          Alignment = taCenter
          Color = clGray
          FieldName = 'lkTamanho'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Tamanho:'
          Title.Color = clGray
        end
        item
          Alignment = taCenter
          FieldName = 'Qtd'
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtde.:'
        end>
    end
  end
  object Panel1: TPanel
    Left = 2
    Top = 2
    Width = 636
    Height = 63
    BevelInner = bvRaised
    Enabled = False
    TabOrder = 5
    object Label2: TLabel
      Left = 87
      Top = 10
      Width = 437
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 85
      Top = 39
      Width = 340
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 8
      Width = 76
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 36
      Width = 75
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Cor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object BitBtn6: TBitBtn
    Left = 640
    Top = 2
    Width = 115
    Height = 63
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn6Click
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
  object BitBtn15: TBitBtn
    Left = 507
    Top = 70
    Width = 82
    Height = 24
    Hint = 'Edita a grade selecionada'
    Caption = 'Alterar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BitBtn15Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 184
    Width = 525
    Height = 241
    Caption = 'Grade'
    TabOrder = 8
    object RxDBGrid2: TRxDBGrid
      Left = 5
      Top = 14
      Width = 515
      Height = 222
      DataSource = DM1.dsProdutoConsumo
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ItemMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'Item Mat.'
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodGrade'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Grade'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeGrade'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Grade'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'lkLargura'
          Title.Alignment = taCenter
          Title.Caption = 'Largura'
          Width = 41
          Visible = True
        end
        item
          Color = 16777088
          Expanded = False
          FieldName = 'Consumo'
          Title.Alignment = taCenter
          Width = 89
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 536
    Top = 184
    Width = 220
    Height = 241
    Caption = 'Tamanhos'
    TabOrder = 9
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 14
      Width = 209
      Height = 223
      TabStop = False
      DataSource = DM1.dsProdutoConsumoItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'lkTamanho'
          Title.Alignment = taCenter
          Title.Caption = 'Tamanho'
          Width = 52
          Visible = True
        end
        item
          Color = 16777088
          Expanded = False
          FieldName = 'Consumo'
          Title.Alignment = taCenter
          Width = 122
          Visible = True
        end>
    end
  end
  object mProdutoGrade: TMemoryTable
    Active = True
    BeforeInsert = mProdutoGradeBeforeInsert
    Left = 472
    Top = 16
    object mProdutoGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object mProdutoGradePosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object mProdutoGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mProdutoGradelkTamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTamanho'
      LookupDataSet = DM1.tGradeItemlk
      LookupKeyFields = 'CodGrade;Posicao'
      LookupResultField = 'Tamanho'
      KeyFields = 'CodGrade;Posicao'
      Size = 3
      Lookup = True
    end
  end
  object dsmProdutoGrade: TDataSource
    DataSet = mProdutoGrade
    Left = 496
    Top = 16
  end
end
