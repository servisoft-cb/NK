object fConsComissao: TfConsComissao
  Left = 37
  Top = 17
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta da comiss'#227'o dos vendedores'
  ClientHeight = 489
  ClientWidth = 720
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
  object Label4: TLabel
    Left = 32
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label2: TLabel
    Left = 26
    Top = 43
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label1: TLabel
    Left = 277
    Top = 43
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label3: TLabel
    Left = 599
    Top = 5
    Width = 62
    Height = 26
    Caption = 'Aguarde '#13#10'Verificando...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 83
    Top = 8
    Width = 356
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsVendedor
    TabOrder = 0
    OnEnter = RxDBLookupCombo1Enter
  end
  object DateEdit1: TDateEdit
    Left = 84
    Top = 35
    Width = 108
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 331
    Top = 35
    Width = 108
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
    OnExit = DateEdit2Exit
  end
  object BitBtn2: TBitBtn
    Left = 592
    Top = 35
    Width = 119
    Height = 29
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
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
  object BitBtn3: TBitBtn
    Left = 472
    Top = 35
    Width = 119
    Height = 29
    Hint = 'Abre a consulta'
    Caption = '&Consultar  [F5]'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn3Click
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
  object GroupBox1: TGroupBox
    Left = 2
    Top = 64
    Width = 713
    Height = 308
    Caption = 'Extrato'
    TabOrder = 5
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 16
      Width = 704
      Height = 286
      DataSource = dsqComissao
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
          FieldName = 'DtReferencia'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Refer'#234'ncia'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NroDoc'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Documento'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ParcDoc'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Funcao'
          Title.Alignment = taCenter
          Title.Caption = 'Fun'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeCliente'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrBase'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Base'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercComissao'
          Title.Alignment = taCenter
          Title.Caption = '% Comissao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrComissao'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Comiss'#227'o'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercDescDupl'
          Title.Alignment = taCenter
          Title.Caption = '% Desc.Duplicata'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 3
    Top = 376
    Width = 712
    Height = 75
    Enabled = False
    TabOrder = 6
    object RxLabel1: TRxLabel
      Left = 8
      Top = 11
      Width = 87
      Height = 13
      Caption = 'Saldo Anterior:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 5
      Top = 35
      Width = 90
      Height = 13
      Caption = 'Total Entradas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 17
      Top = 59
      Width = 78
      Height = 13
      Caption = 'Total Saidas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 451
      Top = 11
      Width = 107
      Height = 13
      Caption = 'Total Devolu'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 455
      Top = 35
      Width = 103
      Height = 13
      Caption = 'Total do Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 378
      Top = 59
      Width = 180
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Saldo at'#233' a data final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 94
      Top = 3
      Width = 151
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 94
      Top = 27
      Width = 151
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 1
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 94
      Top = 51
      Width = 151
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 2
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 558
      Top = 3
      Width = 151
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 3
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 558
      Top = 27
      Width = 151
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 4
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 558
      Top = 51
      Width = 151
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 5
    end
  end
  object BitBtn1: TBitBtn
    Left = 472
    Top = 3
    Width = 119
    Height = 29
    Hint = 'Verifica a comiss'#227'o'
    Caption = '&Verifica'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      F2060000424DF206000000000000360400002800000019000000190000000100
      080000000000BC020000CE0E0000C40E00000001000000000000000000004000
      00006000000080000000A0000000C0000000E0000000FF000000008000004080
      00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
      000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
      000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
      40006000400080004000A0004000C0004000E0004000FF004000008040004080
      40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
      400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
      400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
      60006000600080006000A0006000C0006000E0006000FF006000008060004080
      60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
      600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
      600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
      80006000800080008000A0008000C0008000E0008000FF008000008080004080
      80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
      800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
      800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
      A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
      A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
      A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
      A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
      C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
      C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
      C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
      C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
      E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
      E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
      E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
      E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
      FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
      FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
      FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
      FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00DEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
      DEDEDEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
      DEDEDE000000DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE00
      0000DEDE0000000000000000000000000000DEDEDEDEDEDEDEDEDE000000DEDE
      00F8F8F8F8F8F8F8F8F8F8F8F800DEDEDEDEDEDEDEDEDE000000DEDE00F8F8F8
      F8F8F8F8F8F8F8F8F800DEDEDEDEDEDEDEDEDE000000DEDE00F8070707070707
      07070707F800DEDEDEDEDEDE040404000000DEDE00F8F8F8F8F8F8F8F8F8F8F8
      F800000000000000000707000000DEDE00F80707070707949494949490949090
      94949490940007000000DEDE00F8F8F8F81F0000000000009490949094909494
      940007000000DEDE00F8070707F8001F0400DE00949490949094949094000700
      0000DEDEDE00F8F8F80000901F0400009490949094909494000004000000DEDE
      DEDE000000DE00DEDE1F04049494949490940000DEDEDE000000DEDEDEDEDEDE
      DEDE000090901F04009490909400DEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDE
      00DE901F0400949400DEDEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDEDE00DE90
      1F040400DEDEDEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDEDEDE0000001F0404
      DEDEDEDEDEDEDE000000DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE1F04DEDEDEDE
      DEDEDE000000DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE00
      0000DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE000000DEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE000000DEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE000000}
  end
  object BitBtn4: TBitBtn
    Left = 569
    Top = 453
    Width = 147
    Height = 35
    Hint = 'Abre a consulta'
    Caption = 'Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BitBtn4Click
    Glyph.Data = {
      5E0B0000424D5E0B000000000000360000002800000022000000150000000100
      200000000000280B000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF00BFBFBF0000000000007F000000000000007F00000000
      0000007F0000007F0000007F0000007F0000007F0000007F0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007F0000007F0000007F00000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF000000000000FF0000007F
      000000000000007F000000FF000000FF0000007F0000007F000000FF000000FF
      000000FF000000FF0000007F0000BFBFBF007F7F7F0000000000007F0000007F
      00000000000000FF000000FF00000000000000000000007F000000FF000000FF
      0000007F000000000000007F000000FF000000000000BFBFBF00BFBFBF000000
      0000007F000000000000FFFFFF000000000000FF0000000000000000000000FF
      0000000000000000000000FF000000FF000000000000BFBFBF00BFBFBF000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF0000007F000000000000FFFFFF0000000000007F000000000000BFBF
      BF00BFBFBF000000000000FF000000000000FFFFFF000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000000000BFBF
      BF000000000000000000FFFFFF000000000000000000007F000000000000007F
      00000000000000000000007F0000007F000000000000FFFFFF000000000000FF
      000000000000BFBFBF00BFBFBF0000000000007F0000007F00000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000FFFFFF0000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000007F00000000
      0000007F0000007F000000000000BFBFBF00BFBFBF000000000000FF0000007F
      0000007F00000000000000FF000000FF000000FF00000000000000FF000000FF
      0000000000000000000000FF0000000000007F7F7F00FFFFFF007F7F7F000000
      000000FF000000FF000000FF000000000000007F0000007F000000FF000000FF
      000000FF0000007F0000007F000000FF000000000000BFBFBF00BFBFBF000000
      0000007F000000FF0000007F000000FF000000FF000000FF000000000000FFFF
      FF000000000000000000FFFFFF00FFFFFF0000000000000000007F7F7F007F7F
      7F007F7F7F000000000000FF000000FF000000FF000000FF00000000000000FF
      0000007F0000007F000000FF0000007F000000FF0000007F000000000000BFBF
      BF00BFBFBF0000000000007F0000007F000000000000007F000000FF000000FF
      00000000000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00000000000000
      0000BFBFBF00FFFFFF00BFBFBF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF0000007F000000000000007F0000007F
      000000000000BFBFBF00BFBFBF000000000000FF000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FF000000000000000000007F7F7F00000000000000000000FF00000000
      0000007F000000000000007F000000000000007F0000007F000000000000FFFF
      FF0000000000007F000000000000BFBFBF00BFBFBF0000000000007F00000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000
      00000000000000FF000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF0000007F
      000000000000FFFFFF0000000000007F000000000000BFBFBF00BFBFBF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000007F00000000000000FF00000000000000FF00000000
      000000FF0000000000000000000000FF0000000000000000000000FF00000000
      000000FF000000FF0000007F000000000000007F000000FF000000000000BFBF
      BF00BFBFBF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF0000000000007F0000007F0000007F0000007F0000007F0000007F
      0000007F0000007F0000007F0000007F0000007F0000007F0000007F0000007F
      0000007F0000007F0000007F0000007F000000FF0000007F000000FF0000007F
      000000000000BFBFBF00BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF0000FFFF00FFFFFF0000000000BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF0000000000000000000000000000000000BFBF
      BF00FFFFFF00FFFFFF00FFFFFF00BFBFBF00FFFFFF000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00}
  end
  object qComissao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbvendedor.Nome, Dbextcomissao.DtReferencia, Dbextcomissa' +
        'o.CodCliente, Dbextcomissao.ParcDoc, Dbextcomissao.NroDoc, Dbext' +
        'comissao.Funcao, Dbextcomissao.VlrBase, Dbextcomissao.PercDescDu' +
        'pl, Dbextcomissao.PercComissao, Dbextcomissao.VlrComissao, Dbext' +
        'comissao.Tipo'
      'FROM "dbExtComissao.db" Dbextcomissao'
      '   INNER JOIN "dbVendedor.DB" Dbvendedor'
      '   ON  (Dbextcomissao.CodVendedor = Dbvendedor.Codigo)  '
      'WHERE   (Dbextcomissao.CodVendedor = :Codigo)  '
      '   AND  Dbextcomissao.DtReferencia BETWEEN :DtIni AND :DtFin '
      
        'ORDER BY Dbextcomissao.DtReferencia, Dbextcomissao.NroDoc, Dbext' +
        'comissao.ParcDoc, Dbextcomissao.Funcao')
    Left = 408
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftDateTime
        Name = 'DtIni'
        ParamType = ptUnknown
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'DtFin'
        ParamType = ptUnknown
        Value = 0d
      end>
    object qComissaoNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbVendedor.DB".Nome'
      Size = 40
    end
    object qComissaoDtReferencia: TDateField
      FieldName = 'DtReferencia'
      Origin = 'TABELAS."dbExtComissao.DB".DtReferencia'
    end
    object qComissaoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbExtComissao.DB".CodCliente'
    end
    object qComissaoParcDoc: TIntegerField
      FieldName = 'ParcDoc'
      Origin = 'TABELAS."dbExtComissao.DB".ParcDoc'
    end
    object qComissaoNroDoc: TIntegerField
      FieldName = 'NroDoc'
      Origin = 'TABELAS."dbExtComissao.DB".NroDoc'
    end
    object qComissaoFuncao: TStringField
      FieldName = 'Funcao'
      Origin = 'TABELAS."dbExtComissao.DB".Funcao'
      Size = 1
    end
    object qComissaoVlrBase: TFloatField
      FieldName = 'VlrBase'
      Origin = 'TABELAS."dbExtComissao.DB".VlrBase'
      DisplayFormat = '###,###,##0.00'
    end
    object qComissaoPercDescDupl: TFloatField
      FieldName = 'PercDescDupl'
      Origin = 'TABELAS."dbExtComissao.DB".PercDescDupl'
      DisplayFormat = '0.00'
    end
    object qComissaoPercComissao: TFloatField
      FieldName = 'PercComissao'
      Origin = 'TABELAS."dbExtComissao.DB".PercComissao'
      DisplayFormat = '0.00'
    end
    object qComissaoVlrComissao: TFloatField
      FieldName = 'VlrComissao'
      Origin = 'TABELAS."dbExtComissao.DB".VlrComissao'
      DisplayFormat = '###,###,##0.00'
    end
    object qComissaoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'TABELAS."dbExtComissao.DB".Tipo'
      Size = 1
    end
    object qComissaolkNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCliente'
      LookupDataSet = tCliente2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCliente'
      Size = 40
      Lookup = True
    end
  end
  object dsqComissao: TDataSource
    DataSet = qComissao
    Left = 464
    Top = 184
  end
  object qSaldoAnt: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbextcomissao.Funcao, SUM( Dbextcomissao.VlrComissao ) Vl' +
        'rComissao, Dbextcomissao.CodVendedor, Dbvendedor.Nome'
      'FROM "dbExtComissao.db" Dbextcomissao'
      '   INNER JOIN "dbVendedor.DB" Dbvendedor'
      '   ON  (Dbextcomissao.CodVendedor = Dbvendedor.Codigo)  '
      'WHERE  Dbextcomissao.DtReferencia < :DtIni'
      '       AND Dbextcomissao.CodVendedor = :Codigo'
      
        'GROUP BY Dbextcomissao.Funcao, Dbextcomissao.CodVendedor, Dbvend' +
        'edor.Nome'
      'ORDER BY Dbextcomissao.CodVendedor')
    Left = 536
    Top = 102
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DtIni'
        ParamType = ptUnknown
        Value = 0d
      end
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
        Value = 0
      end>
    object qSaldoAntFuncao: TStringField
      FieldName = 'Funcao'
      Origin = 'TABELAS."dbExtComissao.DB".Funcao'
      Size = 1
    end
    object qSaldoAntVlrComissao: TFloatField
      FieldName = 'VlrComissao'
      Origin = 'TABELAS."dbExtComissao.DB".VlrComissao'
    end
    object qSaldoAntCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbExtComissao.DB".CodVendedor'
    end
    object qSaldoAntNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbVendedor.DB".Nome'
      Size = 40
    end
  end
  object mVerifica: TMemoryTable
    Active = True
    Left = 672
    object mVerificaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mVerificaParcela: TIntegerField
      FieldName = 'Parcela'
    end
  end
  object tCliente2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbCliente.DB'
    Left = 538
    Top = 232
    object tCliente2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCliente2Nome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
end
