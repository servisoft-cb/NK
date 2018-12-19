object fRelMenuBaixaProdTed: TfRelMenuBaixaProdTed
  Left = 69
  Top = 98
  Width = 889
  Height = 609
  Caption = 'fRelMenuBaixaProdTed'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 24
    Width = 794
    Height = 1123
    DataSource = DM1.dsParametros
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 675
      BeforePrint = RLBand1BeforePrint
      object RLDraw4: TRLDraw
        Left = 0
        Top = 366
        Width = 369
        Height = 105
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 246
        Width = 369
        Height = 105
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 120
        Width = 369
        Height = 105
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 0
        Width = 369
        Height = 105
      end
      object RLBarcode1: TRLBarcode
        Left = 8
        Top = 38
        Width = 340
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BarcodeType = bcCode128C
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
      end
      object rlMarcar: TRLLabel
        Left = 9
        Top = 72
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLLabel1: TRLLabel
        Left = 9
        Top = 16
        Width = 338
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'MARCAR TAL'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLBarcode2: TRLBarcode
        Left = 8
        Top = 158
        Width = 340
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BarcodeType = bcCode128C
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
      end
      object rlOcorrencia: TRLLabel
        Left = 9
        Top = 192
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLLabel4: TRLLabel
        Left = 9
        Top = 136
        Width = 338
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'OCORR'#202'NCIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLBarcode3: TRLBarcode
        Left = 8
        Top = 284
        Width = 340
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BarcodeType = bcCode128C
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
      end
      object rlTerceirizado: TRLLabel
        Left = 9
        Top = 318
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLLabel6: TRLLabel
        Left = 9
        Top = 262
        Width = 338
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'TERCEIRIZADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLBarcode4: TRLBarcode
        Left = 8
        Top = 404
        Width = 340
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BarcodeType = bcCode128C
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
      end
      object rlFim: TRLLabel
        Left = 9
        Top = 438
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLLabel8: TRLLabel
        Left = 9
        Top = 382
        Width = 338
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'FIM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
