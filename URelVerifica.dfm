object fRelVerifica: TfRelVerifica
  Left = 9
  Top = 109
  Width = 784
  Height = 425
  HorzScrollBar.Position = 551
  Caption = 'fRelVerifica'
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
    Left = -551
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fVerificaEstoque.dsmVerifica
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 38
      Width = 742
      Height = 195
      DataSource = fVerificaEstoque.dsmVerifica
      object RLBand1: TRLBand
        Left = 0
        Top = 44
        Width = 742
        Height = 15
        object RLDBText1: TRLDBText
          Left = 2
          Top = 0
          Width = 32
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodProduto'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText2: TRLDBText
          Left = 35
          Top = 0
          Width = 92
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText3: TRLDBText
          Left = 130
          Top = 0
          Width = 365
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText4: TRLDBText
          Left = 496
          Top = 0
          Width = 27
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Tipo'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText5: TRLDBText
          Left = 525
          Top = 0
          Width = 48
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Qtd'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText6: TRLDBText
          Left = 574
          Top = 0
          Width = 47
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumNota'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText7: TRLDBText
          Left = 622
          Top = 0
          Width = 55
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Data'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText8: TRLDBText
          Left = 678
          Top = 0
          Width = 21
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Item'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDBText9: TRLDBText
          Left = 700
          Top = 0
          Width = 40
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumMovEst'
          DataSource = fVerificaEstoque.dsmVerifica
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 12
          Width = 740
          Height = 2
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 44
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 184
          Top = 8
          Width = 308
          Height = 16
          Caption = 'NOTAS COM VALE E DESCONTAM NO ESTOQUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 662
          Top = 2
          Width = 72
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 637
          Top = 2
          Width = 24
          Height = 14
          Caption = 'P'#225'g:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 633
          Top = 16
          Width = 28
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 662
          Top = 16
          Width = 33
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 2
          Top = 31
          Width = 32
          Height = 11
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 36
          Top = 31
          Width = 69
          Height = 11
          AutoSize = False
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 128
          Top = 31
          Width = 366
          Height = 11
          AutoSize = False
          Caption = 'Nome Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 499
          Top = 31
          Width = 20
          Height = 11
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 537
          Top = 31
          Width = 18
          Height = 11
          Caption = 'Qtd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 577
          Top = 31
          Width = 43
          Height = 11
          Caption = 'NumNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 641
          Top = 31
          Width = 23
          Height = 11
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 677
          Top = 31
          Width = 22
          Height = 11
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 43
          Width = 740
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel12: TRLLabel
          Left = 702
          Top = 30
          Width = 37
          Height = 12
          Caption = 'N'#186' Mov.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object RLReport2: TRLReport
    Left = 265
    Top = 11
    Width = 794
    Height = 1123
    DataSource = fVerificaEstoque.dsmRepetidas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    object RLSubDetail2: TRLSubDetail
      Left = 26
      Top = 38
      Width = 742
      Height = 195
      DataSource = fVerificaEstoque.dsmRepetidas
      object RLBand3: TRLBand
        Left = 0
        Top = 44
        Width = 742
        Height = 15
        object RLDBText10: TRLDBText
          Left = 2
          Top = 0
          Width = 32
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodMaterial'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDBText11: TRLDBText
          Left = 35
          Top = 0
          Width = 92
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDBText12: TRLDBText
          Left = 130
          Top = 0
          Width = 365
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NomeMaterial'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDBText13: TRLDBText
          Left = 496
          Top = 0
          Width = 28
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'TipoMov'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDBText14: TRLDBText
          Left = 525
          Top = 0
          Width = 48
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Qtd'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDBText15: TRLDBText
          Left = 574
          Top = 0
          Width = 48
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumNota'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDBText16: TRLDBText
          Left = 623
          Top = 0
          Width = 61
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtMov'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDBText18: TRLDBText
          Left = 692
          Top = 0
          Width = 46
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumMovEst'
          DataSource = fVerificaEstoque.dsmRepetidas
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 12
          Width = 740
          Height = 2
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 44
        BandType = btHeader
        object RLLabel13: TRLLabel
          Left = 184
          Top = 8
          Width = 226
          Height = 16
          Caption = 'ESTOQUE COM NOTAS REPETIDAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 662
          Top = 2
          Width = 72
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 637
          Top = 2
          Width = 24
          Height = 14
          Caption = 'P'#225'g:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 633
          Top = 16
          Width = 28
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo4: TRLSystemInfo
          Left = 662
          Top = 16
          Width = 33
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 2
          Top = 31
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 36
          Top = 31
          Width = 69
          Height = 11
          AutoSize = False
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 128
          Top = 31
          Width = 366
          Height = 11
          AutoSize = False
          Caption = 'Nome Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 499
          Top = 31
          Width = 20
          Height = 12
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 537
          Top = 31
          Width = 18
          Height = 12
          Caption = 'Qtd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 577
          Top = 31
          Width = 43
          Height = 12
          Caption = 'NumNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 641
          Top = 31
          Width = 23
          Height = 12
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 43
          Width = 740
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel24: TRLLabel
          Left = 694
          Top = 30
          Width = 37
          Height = 12
          Caption = 'N'#186' Mov.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
