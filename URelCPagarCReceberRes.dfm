object fRelCPagarCReceberRes: TfRelCPagarCReceberRes
  Left = 8
  Top = 113
  Width = 787
  Height = 400
  HorzScrollBar.Position = 26
  Caption = 'fRelCPagarCReceberRes'
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
    Left = -18
    Top = 0
    Width = 794
    Height = 1123
    DataSource = fConsCPagarCReceber.dsmResumo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 167
      Width = 742
      Height = 107
      DataSource = fConsCPagarCReceber.dsmResumo
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 0
        Width = 742
        Height = 16
        ColCount = 2
        object RLDraw9: TRLDraw
          Left = 0
          Top = -1
          Width = 64
          Height = 17
        end
        object RLDraw11: TRLDraw
          Left = 63
          Top = -1
          Width = 100
          Height = 17
        end
        object RLDraw12: TRLDraw
          Left = 162
          Top = -1
          Width = 98
          Height = 17
        end
        object RLDraw13: TRLDraw
          Left = 259
          Top = -1
          Width = 107
          Height = 17
        end
        object RLDBText1: TRLDBText
          Left = 1
          Top = 1
          Width = 60
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtVencimento'
          DataSource = fConsCPagarCReceber.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 67
          Top = 1
          Width = 93
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrReceber'
          DataSource = fConsCPagarCReceber.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 164
          Top = 1
          Width = 93
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrPagar'
          DataSource = fConsCPagarCReceber.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 262
          Top = 1
          Width = 102
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Saldo'
          DataSource = fConsCPagarCReceber.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 26
      Top = 38
      Width = 742
      Height = 129
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw5: TRLDraw
        Left = 259
        Top = 110
        Width = 107
        Height = 19
      end
      object RLDraw4: TRLDraw
        Left = 162
        Top = 110
        Width = 98
        Height = 19
      end
      object RLDraw3: TRLDraw
        Left = 63
        Top = 110
        Width = 100
        Height = 19
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 110
        Width = 64
        Height = 19
      end
      object RLLabel1: TRLLabel
        Left = 72
        Top = 8
        Width = 554
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio Receber/Pagar por per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 664
        Top = 2
        Width = 18
        Height = 10
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 684
        Top = 2
        Width = 54
        Height = 10
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 649
        Top = 12
        Width = 33
        Height = 10
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 684
        Top = 12
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 16
        Top = 112
        Width = 26
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 83
        Top = 112
        Width = 68
        Height = 14
        Caption = 'Vlr.Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 193
        Top = 112
        Width = 53
        Height = 14
        Caption = 'Vlr.Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 301
        Top = 112
        Width = 33
        Height = 14
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw6: TRLDraw
        Left = 8
        Top = 32
        Width = 241
        Height = 73
      end
      object RLLabel7: TRLLabel
        Left = 94
        Top = 34
        Width = 44
        Height = 16
        Caption = 'Atraso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 10
        Top = 56
        Width = 64
        Height = 14
        Caption = 'Vlr.Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 23
        Top = 72
        Width = 51
        Height = 14
        Caption = 'Vlr.Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 41
        Top = 88
        Width = 33
        Height = 14
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 75
        Top = 56
        Width = 64
        Height = 14
        Caption = 'Vlr.Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 75
        Top = 72
        Width = 51
        Height = 14
        Caption = 'Vlr.Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 75
        Top = 88
        Width = 33
        Height = 14
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 248
        Top = 32
        Width = 241
        Height = 73
      end
      object RLLabel14: TRLLabel
        Left = 334
        Top = 34
        Width = 115
        Height = 16
        Caption = 'Saldo no Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 250
        Top = 56
        Width = 64
        Height = 14
        Caption = 'Vlr.Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 263
        Top = 72
        Width = 51
        Height = 14
        Caption = 'Vlr.Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 281
        Top = 88
        Width = 33
        Height = 14
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 315
        Top = 56
        Width = 64
        Height = 14
        Caption = 'Vlr.Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 315
        Top = 72
        Width = 51
        Height = 14
        Caption = 'Vlr.Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 315
        Top = 88
        Width = 33
        Height = 14
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw8: TRLDraw
        Left = 488
        Top = 32
        Width = 241
        Height = 73
      end
      object RLLabel23: TRLLabel
        Left = 542
        Top = 34
        Width = 141
        Height = 16
        Caption = 'Saldo at'#233' a data final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 490
        Top = 56
        Width = 64
        Height = 14
        Caption = 'Vlr.Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 503
        Top = 72
        Width = 51
        Height = 14
        Caption = 'Vlr.Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 521
        Top = 88
        Width = 33
        Height = 14
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 555
        Top = 56
        Width = 64
        Height = 14
        Caption = 'Vlr.Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 555
        Top = 72
        Width = 51
        Height = 14
        Caption = 'Vlr.Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 555
        Top = 88
        Width = 33
        Height = 14
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 630
        Top = 110
        Width = 107
        Height = 19
      end
      object RLDraw10: TRLDraw
        Left = 533
        Top = 110
        Width = 98
        Height = 19
      end
      object RLDraw14: TRLDraw
        Left = 434
        Top = 110
        Width = 100
        Height = 19
      end
      object RLDraw15: TRLDraw
        Left = 371
        Top = 110
        Width = 64
        Height = 19
      end
      object RLLabel3: TRLLabel
        Left = 387
        Top = 112
        Width = 26
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 454
        Top = 112
        Width = 68
        Height = 14
        Caption = 'Vlr.Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 564
        Top = 112
        Width = 53
        Height = 14
        Caption = 'Vlr.Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 672
        Top = 112
        Width = 33
        Height = 14
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
