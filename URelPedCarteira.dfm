object fRelPedCarteira: TfRelPedCarteira
  Left = -9
  Top = 78
  Width = 812
  Height = 575
  Caption = 'fRelPedCarteira'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fPrevPedCarteira.dsmProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    object RLBand1: TRLBand
      Left = 23
      Top = 26
      Width = 748
      Height = 45
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw3: TRLDraw
        Left = 169
        Top = 32
        Width = 81
        Height = 13
      end
      object RLDraw2: TRLDraw
        Left = 77
        Top = 32
        Width = 93
        Height = 13
      end
      object RLDraw1: TRLDraw
        Left = 1
        Top = 32
        Width = 77
        Height = 13
      end
      object RLLabel1: TRLLabel
        Left = 32
        Top = 34
        Width = 26
        Height = 10
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 81
        Top = 34
        Width = 85
        Height = 10
        Caption = 'Refer.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 195
        Top = 34
        Width = 41
        Height = 10
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = 249
        Top = 32
        Width = 48
        Height = 13
      end
      object RLLabel4: TRLLabel
        Left = 259
        Top = 34
        Width = 20
        Height = 10
        Caption = 'Cor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 296
        Top = 32
        Width = 35
        Height = 13
      end
      object RLLabel5: TRLLabel
        Left = 299
        Top = 34
        Width = 24
        Height = 10
        Caption = 'Atrazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw6: TRLDraw
        Left = 330
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData1: TRLLabel
        Left = 333
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '25/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 356
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData2: TRLLabel
        Left = 359
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw8: TRLDraw
        Left = 382
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData3: TRLLabel
        Left = 385
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw9: TRLDraw
        Left = 408
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData4: TRLLabel
        Left = 411
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw10: TRLDraw
        Left = 434
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData5: TRLLabel
        Left = 437
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '25/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw11: TRLDraw
        Left = 460
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData6: TRLLabel
        Left = 463
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw12: TRLDraw
        Left = 486
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData7: TRLLabel
        Left = 489
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw13: TRLDraw
        Left = 512
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData8: TRLLabel
        Left = 515
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw14: TRLDraw
        Left = 538
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData9: TRLLabel
        Left = 541
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw15: TRLDraw
        Left = 564
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData10: TRLLabel
        Left = 567
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw18: TRLDraw
        Left = 668
        Top = 32
        Width = 33
        Height = 13
      end
      object RLDraw19: TRLDraw
        Left = 700
        Top = 32
        Width = 43
        Height = 13
      end
      object RLLabel19: TRLLabel
        Left = 708
        Top = 34
        Width = 30
        Height = 10
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 280
        Top = 2
        Width = 132
        Height = 16
        Caption = 'Pedidos em carteira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 648
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 673
        Top = 3
        Width = 32
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 626
        Top = 15
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 673
        Top = 16
        Width = 66
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 3
        Top = 20
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 39
        Top = 20
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 671
        Top = 34
        Width = 28
        Height = 10
        AutoSize = False
        Caption = 'Acum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw16: TRLDraw
        Left = 590
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData11: TRLLabel
        Left = 593
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw17: TRLDraw
        Left = 616
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData12: TRLLabel
        Left = 619
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw35: TRLDraw
        Left = 642
        Top = 32
        Width = 27
        Height = 13
      end
      object RLData13: TRLLabel
        Left = 645
        Top = 34
        Width = 22
        Height = 10
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 23
      Top = 71
      Width = 748
      Height = 11
      DataSource = fPrevPedCarteira.dsmProduto
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 748
        Height = 11
        AfterPrint = RLBand2AfterPrint
        object RLDraw22: TRLDraw
          Left = 169
          Top = -1
          Width = 81
          Height = 12
        end
        object RLDBText3: TRLDBText
          Left = 172
          Top = 1
          Width = 76
          Height = 9
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw23: TRLDraw
          Left = 249
          Top = -1
          Width = 48
          Height = 12
        end
        object RLDBText4: TRLDBText
          Left = 251
          Top = 1
          Width = 44
          Height = 9
          AutoSize = False
          DataField = 'NomeCor'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw24: TRLDraw
          Left = 296
          Top = -1
          Width = 35
          Height = 12
        end
        object RLDBText5: TRLDBText
          Left = 297
          Top = 1
          Width = 32
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdAtrazo'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw25: TRLDraw
          Left = 330
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText6: TRLDBText
          Left = 332
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData1'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw26: TRLDraw
          Left = 356
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText7: TRLDBText
          Left = 358
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData2'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 382
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText8: TRLDBText
          Left = 384
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData3'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw28: TRLDraw
          Left = 408
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText9: TRLDBText
          Left = 410
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData4'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw29: TRLDraw
          Left = 434
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText10: TRLDBText
          Left = 436
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData5'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw30: TRLDraw
          Left = 460
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText11: TRLDBText
          Left = 462
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData6'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 486
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText12: TRLDBText
          Left = 488
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData7'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw32: TRLDraw
          Left = 512
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText13: TRLDBText
          Left = 514
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData8'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw33: TRLDraw
          Left = 538
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText14: TRLDBText
          Left = 540
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData9'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw34: TRLDraw
          Left = 564
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText15: TRLDBText
          Left = 566
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData10'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw37: TRLDraw
          Left = 668
          Top = -1
          Width = 34
          Height = 12
        end
        object RLDBText18: TRLDBText
          Left = 669
          Top = 1
          Width = 30
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdAcumulada'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw38: TRLDraw
          Left = 700
          Top = -1
          Width = 43
          Height = 12
        end
        object RLDBText19: TRLDBText
          Left = 701
          Top = 1
          Width = 40
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdTotal'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw21: TRLDraw
          Left = 77
          Top = -1
          Width = 93
          Height = 12
        end
        object RLDraw20: TRLDraw
          Left = 1
          Top = -1
          Width = 77
          Height = 12
        end
        object RLDBText1: TRLDBText
          Left = 2
          Top = 1
          Width = 74
          Height = 9
          AutoSize = False
          DataField = 'Fantasia'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 78
          Top = 1
          Width = 91
          Height = 9
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw36: TRLDraw
          Left = 590
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText16: TRLDBText
          Left = 592
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData11'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw50: TRLDraw
          Left = 616
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText17: TRLDBText
          Left = 618
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData12'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw51: TRLDraw
          Left = 642
          Top = -1
          Width = 27
          Height = 12
        end
        object RLDBText20: TRLDBText
          Left = 644
          Top = 1
          Width = 24
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'QData13'
          DataSource = fPrevPedCarteira.dsmProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand3: TRLBand
      Left = 23
      Top = 82
      Width = 748
      Height = 17
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLLabel7: TRLLabel
        Left = 217
        Top = 2
        Width = 55
        Height = 11
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw39: TRLDraw
        Left = 296
        Top = -1
        Width = 35
        Height = 15
      end
      object RLLabel8: TRLLabel
        Left = 302
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        Caption = 'Atrazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw40: TRLDraw
        Left = 330
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal1: TRLLabel
        Left = 332
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '25/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw41: TRLDraw
        Left = 356
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal2: TRLLabel
        Left = 358
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw42: TRLDraw
        Left = 382
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal3: TRLLabel
        Left = 384
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw43: TRLDraw
        Left = 408
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal4: TRLLabel
        Left = 410
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw44: TRLDraw
        Left = 434
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal5: TRLLabel
        Left = 436
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '25/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw45: TRLDraw
        Left = 460
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal6: TRLLabel
        Left = 462
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw46: TRLDraw
        Left = 486
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal7: TRLLabel
        Left = 488
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw47: TRLDraw
        Left = 512
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal8: TRLLabel
        Left = 514
        Top = 2
        Width = 24
        Height = 9
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw48: TRLDraw
        Left = 538
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal9: TRLLabel
        Left = 540
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw49: TRLDraw
        Left = 564
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal10: TRLLabel
        Left = 566
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw52: TRLDraw
        Left = 668
        Top = -1
        Width = 33
        Height = 15
      end
      object RLDraw53: TRLDraw
        Left = 700
        Top = -1
        Width = 44
        Height = 15
      end
      object RLLabel27: TRLLabel
        Left = 702
        Top = 2
        Width = 40
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 669
        Top = 2
        Width = 30
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = 'Acum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw54: TRLDraw
        Left = 591
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal11: TRLLabel
        Left = 593
        Top = 3
        Width = 24
        Height = 9
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw55: TRLDraw
        Left = 617
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal12: TRLLabel
        Left = 619
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw56: TRLDraw
        Left = 643
        Top = -1
        Width = 27
        Height = 15
      end
      object RLTotal13: TRLLabel
        Left = 645
        Top = 2
        Width = 24
        Height = 10
        Alignment = taCenter
        AutoSize = False
        Caption = '26/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end