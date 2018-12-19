object fTalaoHor: TfTalaoHor
  Left = 224
  Top = 220
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hor'#225'rio dos Tal'#245'es'
  ClientHeight = 520
  ClientWidth = 785
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
  object Bevel2: TBevel
    Left = 62
    Top = 165
    Width = 720
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 8
    Top = 157
    Width = 48
    Height = 13
    Caption = 'Hor'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 2
    Top = 71
    Width = 60
    Height = 13
    Caption = 'Pedido (OC):'
  end
  object Label3: TLabel
    Left = 172
    Top = 71
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label4: TLabel
    Left = 444
    Top = 71
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object Label5: TLabel
    Left = 668
    Top = 71
    Width = 20
    Height = 13
    Caption = 'Qtd:'
  end
  object Bevel3: TBevel
    Left = 1
    Top = 88
    Width = 786
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel4: TBevel
    Left = 1
    Top = 29
    Width = 786
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label6: TLabel
    Left = 174
    Top = 2
    Width = 123
    Height = 26
    Caption = 'Informe o n'#250'mero do tal'#227'o'#13#10'e pressione ENTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = -1
    Top = 56
    Width = 786
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object StaticText1: TStaticText
    Left = 17
    Top = 9
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Tal'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 73
    Top = 6
    Width = 96
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 0
    OnChange = CurrencyEdit1Change
    OnKeyDown = CurrencyEdit1KeyDown
  end
  object RxDBGrid1: TRxDBGrid
    Left = 1
    Top = 172
    Width = 783
    Height = 345
    DataSource = DM1.dsTalaoHor
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumTalao'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Funcion'#225'rio'
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeSetor'
        Title.Alignment = taCenter
        Title.Caption = 'Setor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada1'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada 1'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida1'
        Title.Alignment = taCenter
        Title.Caption = 'Saida 1'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada2'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada 2'
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida2'
        Title.Alignment = taCenter
        Title.Caption = 'Saida 2'
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada3'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada 3'
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida3'
        Title.Alignment = taCenter
        Title.Caption = 'Saida 3'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Func.'
        Width = 51
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 63
    Top = 63
    Width = 107
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 207
    Top = 63
    Width = 234
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 501
    Top = 63
    Width = 156
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 693
    Top = 63
    Width = 68
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 8
  end
  object BitBtn3: TBitBtn
    Left = 628
    Top = 2
    Width = 153
    Height = 25
    Hint = 'Abre a consulta'
    Caption = '&Consultar Hor'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000070000000007777777000000070FFFFFFF07777700000000070F7
      7777F07777000000000070F77777F07770007000000070F77780008700077000
      000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
      08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
      EFEFFF0770777000000077780000000708777000000077770077777807777000
      0000777770077700777770000000777777800087777770000000777777777777
      777770000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 92
    Width = 785
    Height = 65
    Enabled = False
    TabOrder = 2
    OnEnter = Panel1Enter
    object StaticText2: TStaticText
      Left = 2
      Top = 21
      Width = 242
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Funcion'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 2
      Top = 39
      Width = 242
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsFuncionario
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
    end
    object DateEdit1: TDateEdit
      Left = 389
      Top = 39
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
      OnExit = DateEdit1Exit
    end
    object StaticText3: TStaticText
      Left = 389
      Top = 21
      Width = 96
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object StaticText5: TStaticText
      Left = 486
      Top = 21
      Width = 42
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object MaskEdit1: TMaskEdit
      Left = 486
      Top = 39
      Width = 42
      Height = 21
      EditMask = '99:99'
      MaxLength = 5
      TabOrder = 3
      Text = '  :  '
    end
    object MaskEdit2: TMaskEdit
      Left = 528
      Top = 39
      Width = 42
      Height = 21
      EditMask = '99:99'
      MaxLength = 5
      TabOrder = 4
      Text = '  :  '
    end
    object StaticText7: TStaticText
      Left = 528
      Top = 21
      Width = 42
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object StaticText4: TStaticText
      Left = 486
      Top = 5
      Width = 84
      Height = 16
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Hor'#225'rio 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object StaticText10: TStaticText
      Left = 570
      Top = 5
      Width = 84
      Height = 16
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Hor'#225'rio 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object StaticText11: TStaticText
      Left = 570
      Top = 21
      Width = 42
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object MaskEdit3: TMaskEdit
      Left = 570
      Top = 39
      Width = 42
      Height = 21
      EditMask = '99:99'
      MaxLength = 5
      TabOrder = 5
      Text = '  :  '
    end
    object MaskEdit4: TMaskEdit
      Left = 612
      Top = 39
      Width = 42
      Height = 21
      EditMask = '99:99'
      MaxLength = 5
      TabOrder = 6
      Text = '  :  '
    end
    object StaticText12: TStaticText
      Left = 612
      Top = 21
      Width = 42
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object StaticText14: TStaticText
      Left = 654
      Top = 21
      Width = 42
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object StaticText13: TStaticText
      Left = 654
      Top = 5
      Width = 84
      Height = 16
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Hor'#225'rio 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object StaticText15: TStaticText
      Left = 696
      Top = 21
      Width = 42
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object MaskEdit6: TMaskEdit
      Left = 696
      Top = 39
      Width = 42
      Height = 21
      EditMask = '99:99'
      MaxLength = 5
      TabOrder = 8
      Text = '  :  '
    end
    object MaskEdit5: TMaskEdit
      Left = 654
      Top = 39
      Width = 42
      Height = 21
      EditMask = '99:99'
      MaxLength = 5
      TabOrder = 7
      Text = '  :  '
    end
    object BitBtn9: TBitBtn
      Left = 739
      Top = 33
      Width = 22
      Height = 28
      Hint = 'Exclui o item selecionado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = BitBtn9Click
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
    object BitBtn7: TBitBtn
      Left = 739
      Top = 5
      Width = 22
      Height = 28
      Hint = 'Confirma o item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BitBtn7Click
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
    object BitBtn16: TBitBtn
      Left = 761
      Top = 5
      Width = 22
      Height = 28
      Hint = 'Edita a refer'#234'ncia selecionada'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = BitBtn16Click
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
    object BitBtn8: TBitBtn
      Left = 761
      Top = 33
      Width = 22
      Height = 28
      Hint = 'Cancela o item selecionado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BitBtn8Click
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
    object StaticText6: TStaticText
      Left = 245
      Top = 21
      Width = 143
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Setor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 245
      Top = 39
      Width = 143
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsSetor
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
  end
  object CheckBox1: TCheckBox
    Left = 73
    Top = 35
    Width = 97
    Height = 15
    Caption = 'Encerrar o tal'#227'o'
    TabOrder = 9
  end
  object StaticText8: TStaticText
    Left = 368
    Top = 2
    Width = 220
    Height = 24
    BorderStyle = sbsSingle
    Caption = 'TAL'#195'O N'#195'O ENCERRADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 180
    Top = 32
    Width = 173
    Height = 23
    Hint = 'Abre a consulta'
    Caption = 'Confirma Encerramento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = BitBtn1Click
  end
end
