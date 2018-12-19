object fRelCPagar2: TfRelCPagar2
  Left = 8
  Top = 95
  Width = 795
  Height = 446
  HorzScrollBar.Position = 17
  Caption = 'fRelCPagar2'
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
    Left = -9
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fContasPagar2.dsqParcelas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 38
      Width = 734
      Height = 251
      DataSource = fContasPagar2.dsqParcelas
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 46
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 176
          Top = 8
          Width = 274
          Height = 19
          Caption = 'RELAT'#211'RIO DO CONTAS A PAGAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 633
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
          Left = 652
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
          Left = 618
          Top = 13
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
          Left = 652
          Top = 13
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
          Left = 0
          Top = 32
          Width = 40
          Height = 12
          Caption = 'Dt.Vecto'
        end
        object RLLabel3: TRLLabel
          Left = 64
          Top = 32
          Width = 50
          Height = 12
          Caption = 'Fornecedor'
        end
        object RLLabel4: TRLLabel
          Left = 447
          Top = 32
          Width = 48
          Height = 12
          Caption = 'Vlr.Parcela'
        end
        object RLLabel5: TRLLabel
          Left = 524
          Top = 32
          Width = 38
          Height = 12
          Caption = 'Vlr.Pago'
        end
        object RLLabel6: TRLLabel
          Left = 706
          Top = 32
          Width = 26
          Height = 12
          Caption = 'Saldo'
        end
        object RLLabel7: TRLLabel
          Left = 279
          Top = 32
          Width = 64
          Height = 12
          Caption = 'N'#186' Documento'
        end
        object RLLabel8: TRLLabel
          Left = 359
          Top = 32
          Width = 39
          Height = 12
          Caption = 'Emiss'#227'o'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 44
          Width = 734
          Height = 2
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel10: TRLLabel
          Left = 402
          Top = 32
          Width = 30
          Height = 12
          Caption = 'Atraso'
        end
        object RLLabel13: TRLLabel
          Left = 620
          Top = 32
          Width = 40
          Height = 12
          Caption = 'Dt.Pagto'
        end
        object RLLabel9: TRLLabel
          Left = 585
          Top = 32
          Width = 26
          Height = 12
          Caption = 'Juros'
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 46
        Width = 734
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 1
          Width = 58
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtVencCPagar'
          DataSource = fContasPagar2.dsqParcelas
        end
        object RLDBText2: TRLDBText
          Left = 58
          Top = 1
          Width = 202
          Height = 12
          AutoSize = False
          DataField = 'NomeForn'
          DataSource = fContasPagar2.dsqParcelas
        end
        object RLDBText4: TRLDBText
          Left = 351
          Top = 1
          Width = 50
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtGerado'
          DataSource = fContasPagar2.dsqParcelas
        end
        object RLDBText5: TRLDBText
          Left = 433
          Top = 1
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrParcCPagar'
          DataSource = fContasPagar2.dsqParcelas
        end
        object RLDBText6: TRLDBText
          Left = 497
          Top = 1
          Width = 67
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PgtoParcial'
          DataSource = fContasPagar2.dsqParcelas
        end
        object RLDBText7: TRLDBText
          Left = 666
          Top = 1
          Width = 67
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'RestParcela'
          DataSource = fContasPagar2.dsqParcelas
        end
        object RLLabel11: TRLLabel
          Left = 261
          Top = 1
          Width = 90
          Height = 12
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#186' Documento'
        end
        object RLLabel12: TRLLabel
          Left = 402
          Top = 1
          Width = 30
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#186' Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 614
          Top = 1
          Width = 51
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtPagParcCPagar'
          DataSource = fContasPagar2.dsqParcelas
        end
        object RLDBText3: TRLDBText
          Left = 565
          Top = 1
          Width = 48
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JurosParcCPagar'
          DataSource = fContasPagar2.dsqParcelas
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 62
        Width = 734
        Height = 16
        BandType = btSummary
        object RLLabel14: TRLLabel
          Left = 4
          Top = 1
          Width = 69
          Height = 11
          Caption = 'Total Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 75
          Top = 1
          Width = 98
          Height = 11
          DataField = 'VlrParcCPagar'
          DataSource = fContasPagar2.dsqParcelas
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 232
          Top = 1
          Width = 54
          Height = 11
          Caption = 'Total Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 287
          Top = 1
          Width = 84
          Height = 11
          DataField = 'PgtoParcial'
          DataSource = fContasPagar2.dsqParcelas
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 599
          Top = 1
          Width = 85
          Height = 11
          DataField = 'RestParcela'
          DataSource = fContasPagar2.dsqParcelas
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 540
          Top = 1
          Width = 57
          Height = 11
          Caption = 'Saldo Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel17: TRLLabel
          Left = 405
          Top = 1
          Width = 32
          Height = 11
          Caption = 'Juros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 439
          Top = 1
          Width = 75
          Height = 11
          AutoSize = False
          DataField = 'JurosParcCPagar'
          DataSource = fContasPagar2.dsqParcelas
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
      end
    end
  end
end
