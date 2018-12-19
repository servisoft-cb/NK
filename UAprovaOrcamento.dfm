object fAprovaOrcamento: TfAprovaOrcamento
  Left = 262
  Top = 245
  Width = 415
  Height = 253
  Caption = 'Aprova'#231#227'o de Or'#231'amento'
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
  object Label6: TLabel
    Left = 9
    Top = 35
    Width = 35
    Height = 13
    Caption = 'Motivo:'
  end
  object Label10: TLabel
    Left = 227
    Top = 17
    Width = 81
    Height = 13
    Caption = 'Data Aprova'#231#227'o:'
  end
  object Label4: TLabel
    Left = 9
    Top = 17
    Width = 45
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 50
    Width = 396
    Height = 124
    DataField = 'MotivoNaoAprov'
    DataSource = DM1.dsOrcamento
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 59
    Top = 9
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'Aprovado'
    DataSource = DM1.dsOrcamento
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Aprovado'
      'Pendente'
      'N'#227'o Aprovado')
    TabOrder = 0
    Values.Strings = (
      'A'
      'P'
      'N')
    OnChange = RxDBComboBox1Change
  end
  object BitBtn10: TBitBtn
    Left = 255
    Top = 197
    Width = 64
    Height = 25
    Hint = 'Cancela a altera'#231#227'o ou inclus'#227'o de uma ordem de compra'
    Caption = '&OK'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn10Click
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 319
    Top = 197
    Width = 64
    Height = 25
    Hint = 'Cancela a altera'#231#227'o ou inclus'#227'o de uma ordem de compra'
    Caption = '&Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object DBDateEdit1: TDBDateEdit
    Left = 312
    Top = 9
    Width = 92
    Height = 21
    DataField = 'DtAprovado'
    DataSource = DM1.dsOrcamento
    NumGlyphs = 2
    TabOrder = 1
  end
end
