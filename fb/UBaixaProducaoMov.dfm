object fBaixaProducaoMov: TfBaixaProducaoMov
  Left = 232
  Top = 164
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fBaixaProducaoMov'
  ClientHeight = 453
  ClientWidth = 556
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
    Left = 26
    Top = 70
    Width = 60
    Height = 13
    Caption = 'Qtd.Entrada:'
  end
  object Label2: TLabel
    Left = 196
    Top = 70
    Width = 66
    Height = 13
    Caption = 'Data Entrada:'
  end
  object Label3: TLabel
    Left = 376
    Top = 70
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object Label4: TLabel
    Left = 206
    Top = 98
    Width = 56
    Height = 13
    Caption = 'Data Saida:'
  end
  object Label5: TLabel
    Left = 376
    Top = 98
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object Label6: TLabel
    Left = 16
    Top = 98
    Width = 70
    Height = 13
    Caption = 'Qtd.Produzida:'
  end
  object lblQuebras: TLabel
    Left = 29
    Top = 126
    Width = 58
    Height = 13
    Caption = 'Qtd.Quebra:'
  end
  object Label8: TLabel
    Left = 24
    Top = 41
    Width = 58
    Height = 13
    Caption = 'Funcion'#225'rio:'
  end
  object Label9: TLabel
    Left = 192
    Top = 41
    Width = 58
    Height = 13
    Caption = 'Funcion'#225'rio:'
  end
  object Label10: TLabel
    Left = 50
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Evento:'
  end
  object lblEvento: TLabel
    Left = 90
    Top = 13
    Width = 45
    Height = 13
    Caption = 'Evento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ceQtdEntrada: TCurrencyEdit
    Left = 88
    Top = 62
    Width = 97
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 0
    OnExit = ceQtdEntradaExit
  end
  object dteEntrada: TDateEdit
    Left = 264
    Top = 62
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object rzdtHrEntrada: TRzDateTimeEdit
    Left = 403
    Top = 62
    Width = 100
    Height = 21
    EditType = etTime
    Format = 'hh:nn'
    TabOrder = 2
  end
  object dteSaida: TDateEdit
    Left = 264
    Top = 90
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object rzdtHrSaida: TRzDateTimeEdit
    Left = 403
    Top = 90
    Width = 100
    Height = 21
    EditType = etTime
    Format = 'hh:nn'
    TabOrder = 4
  end
  object ceQtdProduzida: TCurrencyEdit
    Left = 88
    Top = 90
    Width = 97
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 5
    OnExit = ceQtdProduzidaExit
  end
  object ceQtdQuebras: TCurrencyEdit
    Left = 88
    Top = 118
    Width = 97
    Height = 21
    TabStop = False
    AutoSize = False
    Color = 8421631
    DecimalPlaces = 0
    DisplayFormat = '0'
    ReadOnly = True
    TabOrder = 6
  end
  object ceFuncionario: TCurrencyEdit
    Left = 88
    Top = 33
    Width = 97
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 7
  end
  object btnQuebras: TBitBtn
    Left = 192
    Top = 248
    Width = 89
    Height = 25
    Caption = 'Motivo Quebra'
    TabOrder = 8
    OnClick = btnQuebrasClick
  end
  object btnConfirmar: TBitBtn
    Left = 280
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 9
    OnClick = btnConfirmarClick
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 160
    Width = 489
    Height = 81
    Caption = ' Parada '
    TabOrder = 10
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Data Saida:'
    end
    object Label11: TLabel
      Left = 200
      Top = 20
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object dteSaidaParada: TDateEdit
      Left = 72
      Top = 14
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object rzdtHrSaidaParada: TRzDateTimeEdit
      Left = 227
      Top = 12
      Width = 100
      Height = 21
      EditType = etTime
      Format = 'hh:nn'
      TabOrder = 1
    end
    object btnParada: TBitBtn
      Left = 72
      Top = 48
      Width = 89
      Height = 25
      Caption = 'Motivo Parada'
      TabOrder = 2
      OnClick = btnParadaClick
    end
  end
end
