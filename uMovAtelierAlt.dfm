object fMovAtelierAlt: TfMovAtelierAlt
  Left = 162
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Altera Pre'#231'o'
  ClientHeight = 157
  ClientWidth = 286
  Color = 10930928
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 84
    Width = 54
    Height = 13
    Caption = 'Vlr.Unit'#225'rio:'
  end
  object Label2: TLabel
    Left = 48
    Top = 108
    Width = 42
    Height = 13
    Caption = 'Vlr.Total:'
  end
  object Label3: TLabel
    Left = 26
    Top = 10
    Width = 30
    Height = 13
    Caption = 'Tal'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 1
    Top = 26
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 64
    Top = 10
    Width = 149
    Height = 13
    DataField = 'Talao'
    DataSource = DM1.dsMovAtelierItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 64
    Top = 26
    Width = 149
    Height = 13
    DataField = 'lkReferencia'
    DataSource = DM1.dsMovAtelierItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = -1
    Top = 65
    Width = 288
    Height = 3
    Shape = bsTopLine
  end
  object Label5: TLabel
    Left = 33
    Top = 43
    Width = 23
    Height = 13
    Caption = 'Qtd.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 64
    Top = 43
    Width = 149
    Height = 13
    DataField = 'Qtd'
    DataSource = DM1.dsMovAtelierItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 96
    Top = 76
    Width = 95
    Height = 21
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '0.000'
    TabOrder = 0
    OnExit = CurrencyEdit1Exit
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 96
    Top = 100
    Width = 95
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 148
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
