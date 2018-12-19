object fRelCPagarPagtoForn: TfRelCPagarPagtoForn
  Left = 28
  Top = 118
  Width = 885
  Height = 446
  Caption = 'fRelCPagarPagtoForn'
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
    Left = 48
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsContasPagar.dsmAcumFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 251
      DataSource = fConsContasPagar.dsmAcumFornecedor
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 46
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 80
          Top = 8
          Width = 514
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'RELAT'#211'RIO DO CONTAS A PAGAR (Acumulado  Por Fornecedor)'
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
        object RLLabel3: TRLLabel
          Left = 3
          Top = 31
          Width = 50
          Height = 12
          Caption = 'Fornecedor'
        end
        object RLLabel5: TRLLabel
          Left = 596
          Top = 31
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor Pago'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 44
          Width = 718
          Height = 2
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel8: TRLLabel
          Left = 457
          Top = 31
          Width = 65
          Height = 12
          Caption = 'Vlr. Devolu'#231#227'o'
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 14
        object RLDBText1: TRLDBText
          Left = 3
          Top = 1
          Width = 50
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Codigo'
          DataSource = fConsContasPagar.dsmAcumFornecedor
        end
        object RLDBText2: TRLDBText
          Left = 52
          Top = 1
          Width = 274
          Height = 12
          AutoSize = False
          DataField = 'Nome'
          DataSource = fConsContasPagar.dsmAcumFornecedor
        end
        object RLDBText7: TRLDBText
          Left = 424
          Top = 1
          Width = 99
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ValorDevolucao'
          DataSource = fConsContasPagar.dsmAcumFornecedor
        end
        object RLDBText3: TRLDBText
          Left = 560
          Top = 0
          Width = 99
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ValorPagamento'
          DataSource = fConsContasPagar.dsmAcumFornecedor
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 12
          Width = 718
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 60
        Width = 718
        Height = 17
        BandType = btSummary
        object RLLabel16: TRLLabel
          Left = 333
          Top = 2
          Width = 55
          Height = 11
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 408
          Top = 2
          Width = 115
          Height = 11
          Alignment = taRightJustify
          DataField = 'ValorDevolucao'
          DataSource = fConsContasPagar.dsmAcumFornecedor
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 553
          Top = 2
          Width = 106
          Height = 11
          Alignment = taRightJustify
          DataField = 'ValorPagamento'
          DataSource = fConsContasPagar.dsmAcumFornecedor
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
      end
    end
  end
end
