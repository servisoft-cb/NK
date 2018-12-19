object fNotaFiscalItens: TfNotaFiscalItens
  Left = 183
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o dos itens da Nota'
  ClientHeight = 474
  ClientWidth = 846
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label67: TLabel
    Left = 32
    Top = 17
    Width = 70
    Height = 13
    Caption = 'Nat.Opera'#231#227'o:'
  end
  object Label18: TLabel
    Left = 223
    Top = 298
    Width = 76
    Height = 13
    Caption = 'Valor Desconto:'
  end
  object Label17: TLabel
    Left = 45
    Top = 298
    Width = 57
    Height = 13
    Caption = '%Desconto:'
  end
  object Label16: TLabel
    Left = 245
    Top = 276
    Width = 54
    Height = 13
    Caption = 'Valor Total:'
  end
  object Label15: TLabel
    Left = 50
    Top = 276
    Width = 52
    Height = 13
    Caption = 'Valor Unit.:'
  end
  object SpeedButton5: TSpeedButton
    Left = 186
    Top = 141
    Width = 23
    Height = 24
    Hint = 'Abre o cadastro de Situa'#231#227'o Tribut'#225'ria'
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      0400000000007800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
      000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
      00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
      8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
      8888880BB088888888888800008888888888}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton5Click
  end
  object Label13: TLabel
    Left = 275
    Top = 175
    Width = 24
    Height = 13
    Caption = '%IPI:'
  end
  object Label12: TLabel
    Left = 65
    Top = 175
    Width = 37
    Height = 13
    Caption = '%ICMS:'
  end
  object Label11: TLabel
    Left = 241
    Top = 129
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label10: TLabel
    Left = 6
    Top = 129
    Width = 96
    Height = 13
    Caption = 'Unidade de Medida:'
  end
  object Label9: TLabel
    Left = 38
    Top = 107
    Width = 64
    Height = 13
    Caption = 'Nome da cor:'
  end
  object Label2: TLabel
    Left = 49
    Top = 197
    Width = 53
    Height = 13
    Caption = 'Clas.Fiscal:'
  end
  object SpeedButton17: TSpeedButton
    Left = 631
    Top = 196
    Width = 130
    Height = 38
    Hint = 'Busca dados de Pedidos para a nota'
    Caption = 'Copia Pedido'
    Glyph.Data = {
      42080000424D4208000000000000420000002800000020000000200000000100
      1000030000000008000000000000000000000000000000000000007C0000E003
      00001F000000F75EF75EF75EF75EF75EF75E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F75EF75EF75EF75EF75E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000F75EF75EF75EF75EF75E000000000000DF30DF30DF30DF30DF30DF30
      DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30
      DF30DF30DF30F75EF75EF75E000000000000DF305F025F025F025F025F025F02
      5F025F025F025F025F025F025F025F025F025F025F025F025F025F025F025F02
      5F025F025F02F75EF75E000000000000DF305F02DF30DF30DF30DF30DF30DF30
      DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30
      DF30DF30DF30F75E000000000000DF305F02DF305F025F025F025F025F025F02
      5F025F025F025F025F025F025F025F025F025F025F025F025F025F025F025F02
      5F025F025F02000000000000DF305F02DF305F02DF30DF30DF30DF30DF30DF30
      DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30DF30
      DF30DF30DF30F75EF75E9F315F02DF305F02DF303F333F333F333F333F333F33
      3F333F333F333F333F333F333F333F333F333F333F333F339F31DF30DF30DF30
      9F319F31F75EF75E9F315F029F315F02DF305F02DF305F025F025F025F025F02
      5F025F025F025F025F025F025F025F025F025F025F025F023F339F31DF30DF30
      DF30F75EF75E9F315F029F315F029F315F02DF305F025F025F025F025F025F02
      5F025F025F025F025F025F025F025F025F025F025F025F025F029F319F31DF30
      F75EF75EF75E9F319F315F029F315F029F315F025F025F02000000004C7E4C7E
      4C7E5F025F025F025F025F025F025F025F025F025F025F025F029F319F31F75E
      F75EF75EF75E9F315F029F315F029F315F025F025F025F0200004C7E4C7E4C7E
      C048257F9F315F025F025F025F025F025F025F025F025F025F029F319F319F31
      F75EF75EF75E9F319F315F029F315F025F025F025F025F02327F327F327FC048
      407E407E257F9F319F315F025F025F025F025F025F025F025F029F319F319F31
      F75EF75EF75E9F315F029F315F025F025F025F025F025F02327F327FC048E07F
      E07F407E407E257F9F319F319F315F025F025F025F025F029F319F319F31F75E
      F75EF75EF75E9F319F315F025F025F025F025F025F025F02327FC048E07FE07F
      E07FE07F407E407E257F9F319F319F319F315F025F029F319F319F31F75EF75E
      F75EF75EF75E9F319F319F319F319F319F319F319F319F319F31257FE07FE07F
      E07FE07FE07F407E407E257F9F319F319F319F319F31F75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E257FE07F
      E07FE07FE07FE07F407E407E257FF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E257F
      E07FE07FE07FE07FE07F407E407E257FF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      257FE07FE07FE07FE07FE07F407E407E257FF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75E257FE07FE07FE07FE07FE07F407E407E257FF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75E257FE07FE07FE07FE07FE07F407E407E257FF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75E257FE07FE07FE07FE07FE07F407E407E257FF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75E257FE07FE07FE07FE07FE07F407E407E0821F75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75E257FE07FE07FE07FE07FE07F0821CE390821F75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75E257FE07FE07FE07F0821CE39CE39CE390821F75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E257FE07F0821F75E524ACE3908218C7D8C7D
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E0821F75EF75EF75E08218C7D8C7D8C7D
      8C7DF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75E0821F75E0821527E527E8C7D8C7D
      8C7DF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75E0821527E527E527E527E8C7D
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E527E527E527E527EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E527E527EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75E}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton17Click
  end
  object Label3: TLabel
    Left = 77
    Top = 321
    Width = 25
    Height = 13
    Caption = 'Obs.:'
  end
  object Label20: TLabel
    Left = 6
    Top = 378
    Width = 95
    Height = 13
    Caption = 'Obs. Complementar:'
  end
  object Label5: TLabel
    Left = 312
    Top = 346
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = '% Comiss'#227'o:'
    Visible = False
  end
  object Label4: TLabel
    Left = 31
    Top = 151
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sit.Trib.(ICMS):'
  end
  object Label6: TLabel
    Left = 235
    Top = 150
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sit.Trib. (IPI) :'
  end
  object SpeedButton4: TSpeedButton
    Left = 384
    Top = 142
    Width = 23
    Height = 24
    Hint = 'Abre o cadastro de Situa'#231#227'o Tribut'#225'ria'
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      0400000000007800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
      000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
      00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
      8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
      8888880BB088888888888800008888888888}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object Label26: TLabel
    Left = 658
    Top = 363
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'Item do Cliente:'
  end
  object Label27: TLabel
    Left = 60
    Top = 219
    Width = 42
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Enq.IPI:'
    Color = clBtnFace
    ParentColor = False
  end
  object CheckBox2: TCheckBox
    Left = 37
    Top = 339
    Width = 80
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Estoque'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 18
  end
  object RxDBLookupCombo15: TRxDBLookupCombo
    Left = 103
    Top = 9
    Width = 88
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'Codigo'
    LookupDisplay = 'CodNatOper;DescInterna;Descricao'
    LookupSource = DM1.dsNatOperacao
    TabOrder = 0
    OnEnter = RxDBLookupCombo15Enter
    OnExit = RxDBLookupCombo15Exit
  end
  object BitBtn15: TBitBtn
    Left = 195
    Top = 6
    Width = 145
    Height = 24
    Hint = 'Informar o n'#250'mero da nota de remessa que veio do cliente'
    Caption = 'Nota de Devolu'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn15Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object RxDBLookupCombo13: TRxDBLookupCombo
    Left = 103
    Top = 144
    Width = 83
    Height = 21
    DropDownCount = 8
    DropDownWidth = 150
    LookupField = 'Codigo'
    LookupDisplay = 'CodSit;SitTributaria'
    LookupSource = DM1.dsSitTributaria
    TabOrder = 6
    OnExit = RxDBLookupCombo13Exit
  end
  object Edit5: TEdit
    Left = 300
    Top = 167
    Width = 83
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 103
    Top = 167
    Width = 83
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 103
    Top = 121
    Width = 83
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 4
    OnExit = Edit2Exit
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 103
    Top = 99
    Width = 254
    Height = 21
    DropDownCount = 8
    DropDownWidth = 220
    LookupField = 'CodCor'
    LookupDisplay = 'lkNomeCor'
    LookupSource = DM1.dsProdutoCor
    TabOrder = 3
    OnEnter = RxDBLookupCombo4Enter
    OnExit = RxDBLookupCombo4Exit
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 103
    Top = 189
    Width = 130
    Height = 21
    DropDownCount = 8
    DropDownWidth = 150
    LookupField = 'ClasFiscal'
    LookupDisplay = 'ClasFiscal'
    LookupSource = DM1.dsClasFiscal
    TabOrder = 10
    OnEnter = RxDBLookupCombo5Enter
    OnExit = RxDBLookupCombo5Exit
  end
  object Panel1: TPanel
    Left = 0
    Top = 437
    Width = 846
    Height = 37
    Align = alBottom
    TabOrder = 21
    object SpeedButton7: TSpeedButton
      Left = 329
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Cancela a inser'#231#227'o do produto'
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        B2050000424DB205000000000000360400002800000012000000130000000100
        0800000000007C010000C30E0000C30E00000001000000000000000000007B00
        0000BD000000FF0000007B7B000000FF0000FFFF000000315A0008427300084A
        730000007B007B007B00084A7B0008527B0021527B00007B7B007B7B7B00004A
        840008528400105284002963840008528C00085A8C00185A8C0018638C002963
        8C0008529400185A9400296B9400316B94002973940031739400085A9C001863
        9C0018739C0029739C0031739C0031849C00005AA5002173A5003973A500297B
        A500186BAD00106BB500317BB5002984B5004A8CB500086BBD000073BD001073
        BD001873BD00217BBD004284BD00318CBD004A8CBD005294BD005A9CBD00BDBD
        BD001073C600007BC600217BC600428CC6004A8CC6005A9CC6000084CE000884
        CE00398CCE005A9CCE00639CCE001884D6002184D600088CD600108CD6004294
        D600399CD6004A9CD600529CD6005A9CD6005AA5D60063ADD6001884DE002184
        DE00188CDE001094DE001894DE003194DE00299CDE004AA5DE005AA5DE004AB5
        DE00189CE700219CE700429CE7005AA5E7005AADE70063ADE7006BB5E70021A5
        EF0029A5EF0031A5EF0063B5EF006BBDEF0029ADF70031ADF7006BBDF7000000
        FF00FF00FF0031B5FF0039B5FF0042B5FF0039BDFF0042BDFF0042C6FF004AC6
        FF006BC6FF004ACEFF0052CEFF0052D6FF005ADEFF0063E7FF0000FFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00393939393939
        3939393939393939393939690000396939393939393939393939393939396939
        0000396969393910101010101010101010693939000039696969000000000000
        0000000069693939000039396969007879797978797979696939393900003939
        3969697903030303030379691039393900003939396969697978797979786969
        1039393900003939393969696903030369696900103939390000393939390069
        6969797869697900103939390000393939390079036969696903790010393939
        0000393939390079796969696978790010393939000039393939007903696969
        6900000010393939000039393939007869697900696979001039393900003939
        3939006969697900696969693939393900003939396969697978790079003969
        6939393900003969696969000000000000393939696939390000396969693939
        3939393939393939393969390000393939393939393939393939393939393969
        00003939393939393939393939393939393939390000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton7Click
    end
    object BitBtn6: TBitBtn
      Left = 210
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Confirma a inser'#231#227'o do produto'
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn6Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
    object BitBtn5: TBitBtn
      Left = 448
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Fecha a janela atual'
      Caption = '(F10) &Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn5Click
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
  object CurrencyEdit3: TCurrencyEdit
    Left = 300
    Top = 121
    Width = 131
    Height = 21
    AutoSize = False
    DecimalPlaces = 5
    DisplayFormat = '0.00000'
    TabOrder = 5
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 103
    Top = 290
    Width = 58
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 15
    OnExit = CurrencyEdit1Exit
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 300
    Top = 290
    Width = 132
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 16
    OnExit = CurrencyEdit2Exit
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 103
    Top = 268
    Width = 106
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 13
    OnExit = CurrencyEdit4Exit
  end
  object CurrencyEdit5: TCurrencyEdit
    Left = 300
    Top = 268
    Width = 132
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 14
  end
  object BitBtn17: TBitBtn
    Left = 631
    Top = 158
    Width = 130
    Height = 38
    Caption = 'Copia Vales'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = BitBtn17Click
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888888800008888777777778888888800008800
      00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
      0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
      FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
      44F000004477F0780000880BFFF0FFF0FF0007780000880F44F0FB00F70A0778
      0000880FFBF0F0FF000A00080000880000000F470AAAAA080000888888880FFB
      000A00080000888888880000770A088800008888888888888800088800008888
      88888888888888880000}
  end
  object Edit1: TEdit
    Left = 103
    Top = 313
    Width = 514
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 17
  end
  object Memo1: TMemo
    Left = 104
    Top = 362
    Width = 433
    Height = 53
    MaxLength = 250
    ScrollBars = ssVertical
    TabOrder = 20
  end
  object Panel3: TPanel
    Left = 8
    Top = 32
    Width = 521
    Height = 67
    BevelOuter = bvNone
    TabOrder = 2
    OnExit = Panel3Exit
    object Label8: TLabel
      Left = 39
      Top = 31
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label25: TLabel
      Left = 8
      Top = 53
      Width = 86
      Height = 13
      Caption = 'Nome do Produto:'
    end
    object SpeedButton1: TSpeedButton
      Left = 330
      Top = 19
      Width = 23
      Height = 24
      Hint = 'Abre o cadastro de Produtos'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 354
      Top = 19
      Width = 23
      Height = 24
      Hint = 'Abre o cadastro de Materiais'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object Label1: TLabel
      Left = 58
      Top = 9
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 95
      Top = 45
      Width = 346
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsProduto
      TabOrder = 2
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo1Exit
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 95
      Top = 23
      Width = 234
      Height = 21
      DropDownCount = 8
      ListStyle = lsDelimited
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia;DescMaterial'
      LookupSource = DM1.dsProduto
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
      OnExit = RxDBLookupCombo2Exit
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 95
      Top = 0
      Width = 91
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnExit = CurrencyEdit6Exit
      OnKeyDown = CurrencyEdit6KeyDown
    end
  end
  object CurrencyEdit7: TCurrencyEdit
    Left = 375
    Top = 338
    Width = 58
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 19
    Visible = False
  end
  object RxDBLookupCombo6: TRxDBLookupCombo
    Left = 300
    Top = 144
    Width = 83
    Height = 21
    DropDownCount = 8
    DropDownWidth = 350
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Nome'
    LookupSource = DM1.dsCSTIPI
    TabOrder = 7
    OnExit = RxDBLookupCombo1Exit
  end
  object RzButton1: TRzButton
    Left = 103
    Top = 237
    Width = 130
    Caption = 'Outros Tributos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    TabStop = False
    OnClick = RzButton1Click
  end
  object GroupBox2: TGroupBox
    Left = 651
    Top = 251
    Width = 150
    Height = 100
    Caption = ' % Tributos Lei 12.741/12 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    object Label14: TLabel
      Left = 30
      Top = 29
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = '% Federal:'
    end
    object Label23: TLabel
      Left = 24
      Top = 50
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = '% Estadual:'
    end
    object Label24: TLabel
      Left = 20
      Top = 71
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = '% Municipal:'
    end
    object ceFederal: TCurrencyEdit
      Left = 80
      Top = 21
      Width = 56
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 0
    end
    object ceEstadual: TCurrencyEdit
      Left = 80
      Top = 42
      Width = 56
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 1
    end
    object ceMunicipal: TCurrencyEdit
      Left = 80
      Top = 63
      Width = 56
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 2
    end
  end
  object ceItemCliente: TCurrencyEdit
    Left = 732
    Top = 355
    Width = 69
    Height = 21
    TabStop = False
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 24
  end
  object RxDBLookupCombo8: TRxDBLookupCombo
    Left = 103
    Top = 211
    Width = 330
    Height = 21
    DropDownCount = 8
    DropDownWidth = 400
    LookupField = 'CODIGO'
    LookupDisplay = 'CODIGO;DESCRICAO'
    LookupSource = DMTabEnqIPI.dsEnqIPI
    TabOrder = 11
    OnKeyDown = RxDBLookupCombo8KeyDown
  end
  object mMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 88
    Data = {
      F00000009619E0BD01000000180000000A000000000003000000F0000B436F64
      4D6174657269616C040001000000000006436F64436F7204000100000000000C
      4E6F6D654D6174657269616C0100490000000100055749445448020002002800
      074E6F6D65436F72010049000000010005574944544802000200190007517464
      4E6F746108000400000000000A517464436F6E73756D6F080004000000000008
      436F6447726164650400010000000000084974656D4E6F746104000100000000
      000D517464436F6E73756D6F496E66080004000000000012517464436F6E7375
      6D6F4F726967696E616C08000400000000000000}
    object mMaterialCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mMaterialCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mMaterialNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mMaterialNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
    object mMaterialQtdNota: TFloatField
      FieldName = 'QtdNota'
      DisplayFormat = '0.#####'
    end
    object mMaterialQtdConsumo: TFloatField
      FieldName = 'QtdConsumo'
      DisplayFormat = '0.#####'
    end
    object mMaterialCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object mMaterialItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object mMaterialQtdConsumoInf: TFloatField
      FieldName = 'QtdConsumoInf'
      DisplayFormat = '0.#####'
    end
    object mMaterialQtdConsumoOriginal: TFloatField
      FieldName = 'QtdConsumoOriginal'
      DisplayFormat = '0.#####'
    end
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 648
    Top = 88
  end
  object mSelecionado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'CodFornecedor'
        DataType = ftInteger
      end
      item
        Name = 'CodMaterial'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'NomeMaterial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SitTrib'
        DataType = ftInteger
      end
      item
        Name = 'VlrUnitario'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotalItens'
        DataType = ftFloat
      end
      item
        Name = 'Serie'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 624
    Top = 136
    Data = {
      4C0100009619E0BD01000000180000000F0000000000030000004C010646696C
      69616C0400010000000000074E756D4E6F74610400010000000000044974656D
      04000100000000000D436F64466F726E656365646F7204000100000000000B43
      6F644D6174657269616C040001000000000006436F64436F7204000100000000
      000B51746452657374616E746508000400000000000351746408000400000000
      000C4E6F6D654D6174657269616C010049000000010005574944544802000200
      2800074E6F6D65436F7201004900000001000557494454480200020019000755
      6E69646164650100490000000100055749445448020002000300075369745472
      696204000100000000000B566C72556E69746172696F08000400000000000D56
      6C72546F74616C4974656E730800040000000000055365726965010049000000
      01000557494454480200020003000000}
    object mSelecionadoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mSelecionadoNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mSelecionadoItem: TIntegerField
      FieldName = 'Item'
    end
    object mSelecionadoCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object mSelecionadoCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mSelecionadoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mSelecionadoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.#####'
    end
    object mSelecionadoQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object mSelecionadoNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mSelecionadoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
    object mSelecionadoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mSelecionadoSitTrib: TIntegerField
      FieldName = 'SitTrib'
    end
    object mSelecionadoVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object mSelecionadoVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object mSelecionadoSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
  end
  object dsmSelecionado: TDataSource
    DataSet = mSelecionado
    Left = 648
    Top = 136
  end
  object mAgrupado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodAgrupamento'
        DataType = ftInteger
      end
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
        Name = 'VlrUnitario'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodSitTrib'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CodClasFiscal'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NumPedido'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodAgrupamento'
    Params = <>
    StoreDefs = True
    OnNewRecord = mAgrupadoNewRecord
    Left = 528
    Top = 80
    Data = {
      470100009619E0BD01000000180000000C00000000000300000047010E436F64
      4167727570616D656E746F04000100000000000A436F6450726F6475746F0400
      0100000000000A5265666572656E636961010049000000010005574944544802
      00020014000B4E6F6D6550726F6475746F010049000000010005574944544802
      00020028000351746408000400000000000B566C72556E69746172696F080004
      000000000007556E696461646501004900000001000557494454480200020003
      000A436F6453697454726962040001000000000006436F64436F720400010000
      000000074E6F6D65436F720100490000000100055749445448020002001E000D
      436F64436C617346697363616C0100490000000100055749445448020002000C
      00094E756D50656469646F040001000000000001000D44454641554C545F4F52
      4445520200820000000000}
    object mAgrupadoCodAgrupamento: TIntegerField
      FieldName = 'CodAgrupamento'
    end
    object mAgrupadoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mAgrupadoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mAgrupadoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mAgrupadoQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object mAgrupadoVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object mAgrupadoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mAgrupadoCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object mAgrupadoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mAgrupadoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mAgrupadoCodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object mAgrupadoNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
  end
  object dsmAgrupado: TDataSource
    DataSet = mAgrupado
    Left = 544
    Top = 80
  end
  object mAgrupadoVale: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodAgrupamento'
        DataType = ftInteger
      end
      item
        Name = 'Vale'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'NumPedido'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'CodAgrupamento'
    MasterFields = 'CodAgrupamento'
    MasterSource = dsmAgrupado
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 528
    Top = 40
    Data = {
      690000009619E0BD01000000180000000500000000000300000069000E436F64
      4167727570616D656E746F04000100000000000456616C650400010000000000
      044974656D0400010000000000035174640800040000000000094E756D506564
      69646F04000100000000000000}
    object mAgrupadoValeCodAgrupamento: TIntegerField
      FieldName = 'CodAgrupamento'
    end
    object mAgrupadoValeVale: TIntegerField
      FieldName = 'Vale'
    end
    object mAgrupadoValeItem: TIntegerField
      FieldName = 'Item'
    end
    object mAgrupadoValeQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object mAgrupadoValeNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
  end
  object dsmAgrupadoVale: TDataSource
    DataSet = mAgrupadoVale
    Left = 544
    Top = 40
  end
  object qVale: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT NumVale, Item'
      'FROM "dbValeItens.DB" Dbvaleitens'
      'WHERE   (NumVale = :NumVale)  '
      '   AND  ((Faturado = FALSE)   OR (Faturado is Null))')
    Left = 520
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NumVale'
        ParamType = ptUnknown
      end>
    object qValeNumVale: TIntegerField
      FieldName = 'NumVale'
      Origin = 'TABELAS."dbValeItens.DB".NumVale'
    end
  end
end
