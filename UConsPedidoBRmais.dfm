object fConsPedidoBrMais: TfConsPedidoBrMais
  Left = 100
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa'
  ClientHeight = 182
  ClientWidth = 536
  Color = clBtnFace
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
  object RxLabel1: TRxLabel
    Left = 8
    Top = 16
    Width = 106
    Height = 13
    Caption = 'Dt.Entrega Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 249
    Top = 16
    Width = 99
    Height = 13
    Caption = 'Dt.Entrega Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel6: TRxLabel
    Left = 53
    Top = 62
    Width = 61
    Height = 13
    Caption = 'Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel7: TRxLabel
    Left = 6
    Top = 39
    Width = 108
    Height = 13
    Caption = 'Dt.Emiss'#227'o Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel8: TRxLabel
    Left = 249
    Top = 39
    Width = 101
    Height = 13
    Caption = 'Dt.Emiss'#227'o Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel9: TRxLabel
    Left = 33
    Top = 86
    Width = 80
    Height = 13
    Caption = 'Op'#231#227'o Tal'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateEdit1: TDateEdit
    Left = 115
    Top = 8
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 349
    Top = 8
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 108
    Width = 536
    Height = 31
    TabOrder = 6
    object RxLabel3: TRxLabel
      Left = 44
      Top = 12
      Width = 26
      Height = 13
      Caption = 'Cor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 72
      Top = 4
      Width = 233
      Height = 21
      DropDownCount = 8
      LookupField = 'CodCor'
      LookupDisplay = 'lkNomeCor'
      LookupSource = DM1.dsProdutoCor
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 357
    Top = 151
    Width = 87
    Height = 27
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 444
    Top = 151
    Width = 89
    Height = 27
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 115
    Top = 54
    Width = 334
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsVendedor
    TabOrder = 4
  end
  object DateEdit3: TDateEdit
    Left = 115
    Top = 31
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DateEdit4: TDateEdit
    Left = 349
    Top = 31
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 115
    Top = 78
    Width = 97
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 5
    Text = 'Ambos'
    Items.Strings = (
      'N'#227'o Gerado'
      'Gerado'
      'Ambos')
  end
end
