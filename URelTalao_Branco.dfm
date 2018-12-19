object fRelTalao_Branco: TfRelTalao_Branco
  Left = 75
  Top = 8
  Width = 1146
  Height = 685
  BorderIcons = [biSystemMenu]
  Caption = 'fRelTalao_Branco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Tag = 1
    Left = 88
    Top = 16
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = fTalao.dsmTalaoBranco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      60.000000000000000000
      60.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 23
      Top = 38
      Width = 749
      Height = 1003
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2653.770833333333000000
        1981.729166666667000000)
      BandType = rbDetail
      object QRShape3: TQRShape
        Left = 0
        Top = 0
        Width = 749
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          219.604166666667000000
          0.000000000000000000
          0.000000000000000000
          1981.729166666670000000)
        Shape = qrsRectangle
      end
      object QRDBText1: TQRDBText
        Left = 3
        Top = 3
        Width = 247
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          7.937500000000000000
          7.937500000000000000
          653.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tEmpresa
        DataField = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 428
        Top = 4
        Width = 49
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1132.416666666667000000
          10.583333333333330000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tal'#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 479
        Top = 4
        Width = 43
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1267.354166666667000000
          10.583333333333330000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'Talao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 262
        Top = 4
        Width = 161
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          693.208333333333300000
          10.583333333333330000
          425.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FICHA DE PRODU'#199#195'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 6
        Top = 26
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          68.791666666666670000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 61
        Top = 26
        Width = 302
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          161.395833333333000000
          68.791666666666700000
          799.041666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'lkNomeCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 6
        Top = 44
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          116.416666666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Refer'#234'ncia:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 74
        Top = 44
        Width = 670
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          195.791666666667000000
          116.416666666667000000
          1772.708333333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 74
        Top = 62
        Width = 47
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          195.791666666666700000
          164.041666666666700000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'lkObsItem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 572
        Top = 24
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1513.416666666667000000
          63.500000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Left = 663
        Top = 24
        Width = 76
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1754.187500000000000000
          63.500000000000000000
          201.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 82
        Width = 749
        Height = 321
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          849.312500000000000000
          0.000000000000000000
          216.958333333333000000
          1981.729166666670000000)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 1
        Top = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          2.645833333333330000
          216.958333333333000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel5: TQRLabel
        Left = 20
        Top = 84
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          222.250000000000000000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 65
        Top = 82
        Width = 97
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          171.979166666667000000
          216.958333333333000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel7: TQRLabel
        Left = 92
        Top = 84
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          243.416666666666700000
          222.250000000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 161
        Top = 82
        Width = 64
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          425.979166666667000000
          216.958333333333000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Left = 172
        Top = 84
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          455.083333333333300000
          222.250000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quant.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 224
        Top = 82
        Width = 113
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          592.666666666667000000
          216.958333333333000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel10: TQRLabel
        Left = 267
        Top = 84
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          222.250000000000000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 336
        Top = 82
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          889.000000000000000000
          216.958333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel11: TQRLabel
        Left = 347
        Top = 84
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          222.250000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entrada'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 402
        Top = 82
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1063.625000000000000000
          216.958333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel12: TQRLabel
        Left = 421
        Top = 84
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1113.895833333333000000
          222.250000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sa'#237'da'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 468
        Top = 82
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1238.250000000000000000
          216.958333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel13: TQRLabel
        Left = 479
        Top = 84
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1267.354166666667000000
          222.250000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entrada'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 534
        Top = 82
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1412.875000000000000000
          216.958333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel14: TQRLabel
        Left = 551
        Top = 84
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1457.854166666667000000
          222.250000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sa'#237'da'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 600
        Top = 82
        Width = 70
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1587.500000000000000000
          216.958333333333000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRLabel15: TQRLabel
        Left = 617
        Top = 84
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1632.479166666667000000
          222.250000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Servi'#231'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape12: TQRShape
        Left = 669
        Top = 82
        Width = 80
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1770.062500000000000000
          216.958333333333000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRLabel16: TQRLabel
        Left = 671
        Top = 84
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1775.354166666667000000
          222.250000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Observa'#231#245'es'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 669
        Top = 102
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          269.875000000000000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 600
        Top = 102
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          269.875000000000000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape15: TQRShape
        Left = 534
        Top = 102
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          269.875000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape16: TQRShape
        Left = 468
        Top = 102
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          269.875000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape17: TQRShape
        Left = 402
        Top = 102
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          269.875000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape18: TQRShape
        Left = 336
        Top = 102
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          269.875000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 224
        Top = 102
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          269.875000000000000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape20: TQRShape
        Left = 161
        Top = 102
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          269.875000000000000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 65
        Top = 102
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          269.875000000000000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 1
        Top = 102
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          269.875000000000000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape23: TQRShape
        Left = 669
        Top = 125
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          330.729166666667000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape24: TQRShape
        Left = 600
        Top = 125
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          330.729166666667000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape25: TQRShape
        Left = 534
        Top = 125
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          330.729166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape26: TQRShape
        Left = 468
        Top = 125
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          330.729166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape27: TQRShape
        Left = 402
        Top = 125
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          330.729166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape28: TQRShape
        Left = 336
        Top = 125
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          330.729166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape29: TQRShape
        Left = 224
        Top = 125
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          330.729166666667000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape30: TQRShape
        Left = 161
        Top = 125
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          330.729166666667000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape31: TQRShape
        Left = 65
        Top = 125
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          330.729166666667000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape32: TQRShape
        Left = 1
        Top = 125
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          330.729166666667000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape33: TQRShape
        Left = 669
        Top = 148
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          391.583333333333000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape34: TQRShape
        Left = 600
        Top = 148
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          391.583333333333000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape35: TQRShape
        Left = 534
        Top = 148
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          391.583333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape36: TQRShape
        Left = 468
        Top = 148
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          391.583333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape37: TQRShape
        Left = 402
        Top = 148
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          391.583333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape38: TQRShape
        Left = 336
        Top = 148
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          391.583333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape39: TQRShape
        Left = 224
        Top = 148
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          391.583333333333000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape40: TQRShape
        Left = 161
        Top = 148
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          391.583333333333000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape41: TQRShape
        Left = 65
        Top = 148
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          391.583333333333000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape42: TQRShape
        Left = 1
        Top = 148
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          391.583333333333000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape43: TQRShape
        Left = 669
        Top = 171
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          452.437500000000000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape44: TQRShape
        Left = 600
        Top = 171
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          452.437500000000000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape45: TQRShape
        Left = 534
        Top = 171
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          452.437500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape46: TQRShape
        Left = 468
        Top = 171
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          452.437500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape47: TQRShape
        Left = 402
        Top = 171
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          452.437500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape48: TQRShape
        Left = 336
        Top = 171
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          452.437500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape49: TQRShape
        Left = 224
        Top = 171
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          452.437500000000000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape50: TQRShape
        Left = 161
        Top = 171
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          452.437500000000000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape51: TQRShape
        Left = 65
        Top = 171
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          452.437500000000000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape52: TQRShape
        Left = 1
        Top = 171
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          452.437500000000000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape53: TQRShape
        Left = 669
        Top = 194
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          513.291666666667000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape54: TQRShape
        Left = 600
        Top = 194
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          513.291666666667000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape55: TQRShape
        Left = 534
        Top = 194
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          513.291666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape56: TQRShape
        Left = 468
        Top = 194
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          513.291666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape57: TQRShape
        Left = 402
        Top = 194
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          513.291666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape58: TQRShape
        Left = 336
        Top = 194
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          513.291666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape59: TQRShape
        Left = 224
        Top = 194
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          513.291666666667000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape60: TQRShape
        Left = 161
        Top = 194
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          513.291666666667000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape61: TQRShape
        Left = 65
        Top = 194
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          513.291666666667000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape62: TQRShape
        Left = 1
        Top = 194
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          513.291666666667000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape63: TQRShape
        Left = 669
        Top = 217
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          574.145833333333000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape64: TQRShape
        Left = 600
        Top = 217
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          574.145833333333000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape65: TQRShape
        Left = 534
        Top = 217
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          574.145833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape66: TQRShape
        Left = 468
        Top = 217
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          574.145833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape67: TQRShape
        Left = 402
        Top = 217
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          574.145833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape68: TQRShape
        Left = 336
        Top = 217
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          574.145833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape69: TQRShape
        Left = 224
        Top = 217
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          574.145833333333000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape70: TQRShape
        Left = 161
        Top = 217
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          574.145833333333000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape71: TQRShape
        Left = 65
        Top = 217
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          574.145833333333000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape72: TQRShape
        Left = 1
        Top = 217
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          574.145833333333000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape73: TQRShape
        Left = 669
        Top = 240
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          635.000000000000000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape74: TQRShape
        Left = 600
        Top = 240
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          635.000000000000000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape75: TQRShape
        Left = 534
        Top = 240
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          635.000000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape76: TQRShape
        Left = 468
        Top = 240
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          635.000000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape77: TQRShape
        Left = 402
        Top = 240
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          635.000000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape78: TQRShape
        Left = 336
        Top = 240
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          635.000000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape79: TQRShape
        Left = 224
        Top = 240
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          635.000000000000000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape80: TQRShape
        Left = 161
        Top = 240
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          635.000000000000000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape81: TQRShape
        Left = 65
        Top = 240
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          635.000000000000000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape82: TQRShape
        Left = 1
        Top = 240
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          635.000000000000000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape83: TQRShape
        Left = 669
        Top = 263
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          695.854166666667000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape84: TQRShape
        Left = 600
        Top = 263
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          695.854166666667000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape85: TQRShape
        Left = 534
        Top = 263
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          695.854166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape86: TQRShape
        Left = 468
        Top = 263
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          695.854166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape87: TQRShape
        Left = 402
        Top = 263
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          695.854166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape88: TQRShape
        Left = 336
        Top = 263
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          695.854166666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape89: TQRShape
        Left = 224
        Top = 263
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          695.854166666667000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape90: TQRShape
        Left = 161
        Top = 263
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          695.854166666667000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape91: TQRShape
        Left = 65
        Top = 263
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          695.854166666667000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape92: TQRShape
        Left = 1
        Top = 263
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          695.854166666667000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape93: TQRShape
        Left = 669
        Top = 286
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          756.708333333333000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape94: TQRShape
        Left = 600
        Top = 286
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          756.708333333333000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape95: TQRShape
        Left = 534
        Top = 286
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          756.708333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape96: TQRShape
        Left = 468
        Top = 286
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          756.708333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape97: TQRShape
        Left = 402
        Top = 286
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          756.708333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape98: TQRShape
        Left = 336
        Top = 286
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          756.708333333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape99: TQRShape
        Left = 224
        Top = 286
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          756.708333333333000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape100: TQRShape
        Left = 161
        Top = 286
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          756.708333333333000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape101: TQRShape
        Left = 65
        Top = 286
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          756.708333333333000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape102: TQRShape
        Left = 1
        Top = 286
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          756.708333333333000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape103: TQRShape
        Left = 669
        Top = 309
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          817.562500000000000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape104: TQRShape
        Left = 600
        Top = 309
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          817.562500000000000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape105: TQRShape
        Left = 534
        Top = 309
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          817.562500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape106: TQRShape
        Left = 468
        Top = 309
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          817.562500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape107: TQRShape
        Left = 402
        Top = 309
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          817.562500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape108: TQRShape
        Left = 336
        Top = 309
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          817.562500000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape109: TQRShape
        Left = 224
        Top = 309
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          817.562500000000000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape110: TQRShape
        Left = 161
        Top = 309
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          817.562500000000000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape111: TQRShape
        Left = 65
        Top = 309
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          817.562500000000000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape112: TQRShape
        Left = 1
        Top = 309
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          817.562500000000000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape113: TQRShape
        Left = 669
        Top = 332
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          878.416666666667000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape114: TQRShape
        Left = 600
        Top = 332
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          878.416666666667000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape115: TQRShape
        Left = 534
        Top = 332
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          878.416666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape116: TQRShape
        Left = 468
        Top = 332
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          878.416666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape117: TQRShape
        Left = 402
        Top = 332
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          878.416666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape118: TQRShape
        Left = 336
        Top = 332
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          878.416666666667000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape119: TQRShape
        Left = 224
        Top = 332
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          878.416666666667000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape120: TQRShape
        Left = 161
        Top = 332
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          878.416666666667000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape121: TQRShape
        Left = 65
        Top = 332
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          878.416666666667000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape122: TQRShape
        Left = 1
        Top = 332
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          878.416666666667000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape123: TQRShape
        Left = 669
        Top = 355
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          939.270833333333000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape124: TQRShape
        Left = 600
        Top = 355
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          939.270833333333000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape125: TQRShape
        Left = 534
        Top = 355
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          939.270833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape126: TQRShape
        Left = 468
        Top = 355
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          939.270833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape127: TQRShape
        Left = 402
        Top = 355
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          939.270833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape128: TQRShape
        Left = 336
        Top = 355
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          939.270833333333000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape129: TQRShape
        Left = 224
        Top = 355
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666667000000
          939.270833333333000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape130: TQRShape
        Left = 161
        Top = 355
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666667000000
          939.270833333333000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape131: TQRShape
        Left = 65
        Top = 355
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666667000000
          939.270833333333000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape132: TQRShape
        Left = 1
        Top = 355
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333330000
          939.270833333333000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape133: TQRShape
        Left = 1
        Top = 402
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          2.645833333333330000
          1063.625000000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRSetor1: TQRLabel
        Left = 6
        Top = 405
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          1071.562500000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape134: TQRShape
        Left = 140
        Top = 402
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          370.416666666667000000
          1063.625000000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape135: TQRShape
        Left = 1
        Top = 423
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          2.645833333333330000
          1119.187500000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape136: TQRShape
        Left = 140
        Top = 423
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          370.416666666667000000
          1119.187500000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor2: TQRLabel
        Left = 6
        Top = 426
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          1127.125000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape137: TQRShape
        Left = 1
        Top = 444
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          2.645833333333330000
          1174.750000000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape138: TQRShape
        Left = 140
        Top = 444
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          370.416666666667000000
          1174.750000000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor3: TQRLabel
        Left = 6
        Top = 447
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          1182.687500000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape139: TQRShape
        Left = 251
        Top = 402
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          664.104166666667000000
          1063.625000000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRSetor5: TQRLabel
        Left = 256
        Top = 405
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          677.333333333333000000
          1071.562500000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape140: TQRShape
        Left = 390
        Top = 402
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1031.875000000000000000
          1063.625000000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape141: TQRShape
        Left = 251
        Top = 423
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          664.104166666667000000
          1119.187500000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape142: TQRShape
        Left = 390
        Top = 423
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1031.875000000000000000
          1119.187500000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor6: TQRLabel
        Left = 256
        Top = 426
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          677.333333333333000000
          1127.125000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor6'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape143: TQRShape
        Left = 251
        Top = 444
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          664.104166666667000000
          1174.750000000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape144: TQRShape
        Left = 390
        Top = 444
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1031.875000000000000000
          1174.750000000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor7: TQRLabel
        Left = 256
        Top = 447
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          677.333333333333000000
          1182.687500000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor7'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape145: TQRShape
        Left = 501
        Top = 402
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1325.562500000000000000
          1063.625000000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRSetor9: TQRLabel
        Left = 506
        Top = 405
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1338.791666666670000000
          1071.562500000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape146: TQRShape
        Left = 640
        Top = 402
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1693.333333333330000000
          1063.625000000000000000
          280.458333333333000000)
        Shape = qrsRectangle
      end
      object QRShape147: TQRShape
        Left = 501
        Top = 423
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1325.562500000000000000
          1119.187500000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape148: TQRShape
        Left = 640
        Top = 423
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1693.333333333330000000
          1119.187500000000000000
          280.458333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor10: TQRLabel
        Left = 506
        Top = 426
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1338.791666666670000000
          1127.125000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape149: TQRShape
        Left = 501
        Top = 444
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1325.562500000000000000
          1174.750000000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape150: TQRShape
        Left = 640
        Top = 444
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1693.333333333330000000
          1174.750000000000000000
          280.458333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor11: TQRLabel
        Left = 506
        Top = 447
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1338.791666666670000000
          1182.687500000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape151: TQRShape
        Left = 669
        Top = 378
        Width = 80
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1770.062500000000000000
          1000.125000000000000000
          211.666666666667000000)
        Shape = qrsRectangle
      end
      object QRShape152: TQRShape
        Left = 600
        Top = 378
        Width = 70
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1587.500000000000000000
          1000.125000000000000000
          185.208333333333000000)
        Shape = qrsRectangle
      end
      object QRShape153: TQRShape
        Left = 534
        Top = 378
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1412.875000000000000000
          1000.125000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape154: TQRShape
        Left = 468
        Top = 378
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1238.250000000000000000
          1000.125000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape155: TQRShape
        Left = 402
        Top = 378
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1063.625000000000000000
          1000.125000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape156: TQRShape
        Left = 336
        Top = 378
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          889.000000000000000000
          1000.125000000000000000
          177.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape157: TQRShape
        Left = 224
        Top = 378
        Width = 113
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          592.666666666667000000
          1000.125000000000000000
          298.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape158: TQRShape
        Left = 161
        Top = 378
        Width = 64
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          425.979166666667000000
          1000.125000000000000000
          169.333333333333000000)
        Shape = qrsRectangle
      end
      object QRShape159: TQRShape
        Left = 65
        Top = 378
        Width = 97
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          171.979166666667000000
          1000.125000000000000000
          256.645833333333000000)
        Shape = qrsRectangle
      end
      object QRShape160: TQRShape
        Left = 1
        Top = 378
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          2.645833333333330000
          1000.125000000000000000
          171.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape161: TQRShape
        Left = 6
        Top = 495
        Width = 735
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          15.875000000000000000
          1309.687500000000000000
          1944.687500000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape162: TQRShape
        Left = 1
        Top = 465
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          2.645833333333330000
          1230.312500000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape163: TQRShape
        Left = 140
        Top = 465
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          370.416666666667000000
          1230.312500000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor4: TQRLabel
        Left = 6
        Top = 468
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          1238.250000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape164: TQRShape
        Left = 251
        Top = 465
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          664.104166666667000000
          1230.312500000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape165: TQRShape
        Left = 390
        Top = 465
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1031.875000000000000000
          1230.312500000000000000
          296.333333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor8: TQRLabel
        Left = 256
        Top = 468
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          677.333333333333000000
          1238.250000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape166: TQRShape
        Left = 501
        Top = 465
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1325.562500000000000000
          1230.312500000000000000
          370.416666666667000000)
        Shape = qrsRectangle
      end
      object QRShape167: TQRShape
        Left = 640
        Top = 465
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1693.333333333330000000
          1230.312500000000000000
          280.458333333333000000)
        Shape = qrsRectangle
      end
      object QRSetor12: TQRLabel
        Left = 506
        Top = 468
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1338.791666666670000000
          1238.250000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor12'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 376
        Top = 26
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          68.791666666666670000
          224.895833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pedido Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 465
        Top = 26
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1230.312500000000000000
          68.791666666666670000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'PedidoCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 45
        Top = 61
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          119.062500000000000000
          161.395833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Obs:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 572
        Top = 5
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1513.416666666667000000
          13.229166666666670000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt.Entrega:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 631
        Top = 5
        Width = 76
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1669.520833333333000000
          13.229166666666670000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'lkDtEmbarque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape168: TQRShape
        Left = 0
        Top = 504
        Width = 749
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          219.604166666666700000
          0.000000000000000000
          1333.500000000000000000
          1981.729166666667000000)
        Shape = qrsRectangle
      end
      object QRDBText8: TQRDBText
        Left = 3
        Top = 507
        Width = 247
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          1341.437500000000000000
          653.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tEmpresa
        DataField = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 428
        Top = 508
        Width = 49
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1132.416666666667000000
          1344.083333333333000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tal'#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText9: TQRDBText
        Left = 479
        Top = 508
        Width = 43
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1267.354166666667000000
          1344.083333333333000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'Talao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel21: TQRLabel
        Left = 262
        Top = 508
        Width = 161
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          693.208333333333300000
          1344.083333333333000000
          425.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FICHA DE PRODU'#199#195'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 6
        Top = 530
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          1402.291666666667000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 61
        Top = 530
        Width = 302
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          161.395833333333300000
          1402.291666666667000000
          799.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'lkNomeCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 6
        Top = 548
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          1449.916666666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Refer'#234'ncia:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 74
        Top = 548
        Width = 670
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          1449.916666666667000000
          1772.708333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 74
        Top = 566
        Width = 47
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          195.791666666666700000
          1497.541666666667000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'lkObsItem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 572
        Top = 528
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1513.416666666667000000
          1397.000000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText12: TQRDBText
        Left = 663
        Top = 528
        Width = 76
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1754.187500000000000000
          1397.000000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape169: TQRShape
        Left = 8
        Top = 586
        Width = 749
        Height = 321
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          849.312500000000000000
          21.166666666666670000
          1550.458333333333000000
          1981.729166666667000000)
        Shape = qrsRectangle
      end
      object QRShape170: TQRShape
        Left = 1
        Top = 586
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          2.645833333333333000
          1550.458333333333000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRLabel26: TQRLabel
        Left = 20
        Top = 588
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1555.750000000000000000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape171: TQRShape
        Left = 65
        Top = 586
        Width = 97
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          171.979166666666700000
          1550.458333333333000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel27: TQRLabel
        Left = 92
        Top = 588
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          243.416666666666700000
          1555.750000000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Material'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape172: TQRShape
        Left = 161
        Top = 586
        Width = 64
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          425.979166666666700000
          1550.458333333333000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel28: TQRLabel
        Left = 172
        Top = 588
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          455.083333333333300000
          1555.750000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quant.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape173: TQRShape
        Left = 224
        Top = 586
        Width = 113
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          592.666666666666700000
          1550.458333333333000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRLabel29: TQRLabel
        Left = 267
        Top = 588
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          1555.750000000000000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape174: TQRShape
        Left = 336
        Top = 586
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          889.000000000000000000
          1550.458333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel30: TQRLabel
        Left = 347
        Top = 588
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          1555.750000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entrada'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape175: TQRShape
        Left = 402
        Top = 586
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1063.625000000000000000
          1550.458333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel31: TQRLabel
        Left = 421
        Top = 588
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1113.895833333333000000
          1555.750000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sa'#237'da'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape176: TQRShape
        Left = 468
        Top = 586
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1238.250000000000000000
          1550.458333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel32: TQRLabel
        Left = 479
        Top = 588
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1267.354166666667000000
          1555.750000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entrada'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape177: TQRShape
        Left = 534
        Top = 586
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1412.875000000000000000
          1550.458333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel33: TQRLabel
        Left = 551
        Top = 588
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1457.854166666667000000
          1555.750000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sa'#237'da'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape178: TQRShape
        Left = 600
        Top = 586
        Width = 70
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1587.500000000000000000
          1550.458333333333000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel34: TQRLabel
        Left = 617
        Top = 588
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1632.479166666667000000
          1555.750000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Servi'#231'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape179: TQRShape
        Left = 669
        Top = 586
        Width = 80
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1770.062500000000000000
          1550.458333333333000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRLabel35: TQRLabel
        Left = 671
        Top = 588
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1775.354166666667000000
          1555.750000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Observa'#231#245'es'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape180: TQRShape
        Left = 669
        Top = 606
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          1603.375000000000000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape181: TQRShape
        Left = 600
        Top = 606
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          1603.375000000000000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape182: TQRShape
        Left = 534
        Top = 606
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          1603.375000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape183: TQRShape
        Left = 468
        Top = 606
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          1603.375000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape184: TQRShape
        Left = 402
        Top = 606
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          1603.375000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape185: TQRShape
        Left = 336
        Top = 606
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          1603.375000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape186: TQRShape
        Left = 224
        Top = 606
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          1603.375000000000000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape187: TQRShape
        Left = 161
        Top = 606
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          1603.375000000000000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape188: TQRShape
        Left = 65
        Top = 606
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          1603.375000000000000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape189: TQRShape
        Left = 1
        Top = 606
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          1603.375000000000000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape190: TQRShape
        Left = 669
        Top = 629
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          1664.229166666667000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape191: TQRShape
        Left = 600
        Top = 629
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          1664.229166666667000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape192: TQRShape
        Left = 534
        Top = 629
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          1664.229166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape193: TQRShape
        Left = 468
        Top = 629
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          1664.229166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape194: TQRShape
        Left = 402
        Top = 629
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          1664.229166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape195: TQRShape
        Left = 336
        Top = 629
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          1664.229166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape196: TQRShape
        Left = 224
        Top = 629
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          1664.229166666667000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape197: TQRShape
        Left = 161
        Top = 629
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          1664.229166666667000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape198: TQRShape
        Left = 65
        Top = 629
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          1664.229166666667000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape199: TQRShape
        Left = 1
        Top = 629
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          1664.229166666667000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape200: TQRShape
        Left = 669
        Top = 652
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          1725.083333333333000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape201: TQRShape
        Left = 600
        Top = 652
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          1725.083333333333000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape202: TQRShape
        Left = 534
        Top = 652
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          1725.083333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape203: TQRShape
        Left = 468
        Top = 652
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          1725.083333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape204: TQRShape
        Left = 402
        Top = 652
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          1725.083333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape205: TQRShape
        Left = 336
        Top = 652
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          1725.083333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape206: TQRShape
        Left = 224
        Top = 652
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          1725.083333333333000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape207: TQRShape
        Left = 161
        Top = 652
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          1725.083333333333000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape208: TQRShape
        Left = 65
        Top = 652
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          1725.083333333333000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape209: TQRShape
        Left = 1
        Top = 652
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          1725.083333333333000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape210: TQRShape
        Left = 669
        Top = 675
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          1785.937500000000000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape211: TQRShape
        Left = 600
        Top = 675
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          1785.937500000000000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape212: TQRShape
        Left = 534
        Top = 675
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          1785.937500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape213: TQRShape
        Left = 468
        Top = 675
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          1785.937500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape214: TQRShape
        Left = 402
        Top = 675
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          1785.937500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape215: TQRShape
        Left = 336
        Top = 675
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          1785.937500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape216: TQRShape
        Left = 224
        Top = 675
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          1785.937500000000000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape217: TQRShape
        Left = 161
        Top = 675
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          1785.937500000000000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape218: TQRShape
        Left = 65
        Top = 675
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          1785.937500000000000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape219: TQRShape
        Left = 1
        Top = 675
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          1785.937500000000000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape220: TQRShape
        Left = 669
        Top = 698
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          1846.791666666667000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape221: TQRShape
        Left = 600
        Top = 698
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          1846.791666666667000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape222: TQRShape
        Left = 534
        Top = 698
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          1846.791666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape223: TQRShape
        Left = 468
        Top = 698
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          1846.791666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape224: TQRShape
        Left = 402
        Top = 698
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          1846.791666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape225: TQRShape
        Left = 336
        Top = 698
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          1846.791666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape226: TQRShape
        Left = 224
        Top = 698
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          1846.791666666667000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape227: TQRShape
        Left = 161
        Top = 698
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          1846.791666666667000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape228: TQRShape
        Left = 65
        Top = 698
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          1846.791666666667000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape229: TQRShape
        Left = 1
        Top = 698
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          1846.791666666667000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape230: TQRShape
        Left = 669
        Top = 721
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          1907.645833333333000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape231: TQRShape
        Left = 600
        Top = 721
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          1907.645833333333000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape232: TQRShape
        Left = 534
        Top = 721
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          1907.645833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape233: TQRShape
        Left = 468
        Top = 721
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          1907.645833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape234: TQRShape
        Left = 402
        Top = 721
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          1907.645833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape235: TQRShape
        Left = 336
        Top = 721
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          1907.645833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape236: TQRShape
        Left = 224
        Top = 721
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          1907.645833333333000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape237: TQRShape
        Left = 161
        Top = 721
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          1907.645833333333000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape238: TQRShape
        Left = 65
        Top = 721
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          1907.645833333333000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape239: TQRShape
        Left = 1
        Top = 721
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          1907.645833333333000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape240: TQRShape
        Left = 669
        Top = 744
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          1968.500000000000000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape241: TQRShape
        Left = 600
        Top = 744
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          1968.500000000000000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape242: TQRShape
        Left = 534
        Top = 744
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          1968.500000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape243: TQRShape
        Left = 468
        Top = 744
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          1968.500000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape244: TQRShape
        Left = 402
        Top = 744
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          1968.500000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape245: TQRShape
        Left = 336
        Top = 744
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          1968.500000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape246: TQRShape
        Left = 224
        Top = 744
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          1968.500000000000000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape247: TQRShape
        Left = 161
        Top = 744
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          1968.500000000000000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape248: TQRShape
        Left = 65
        Top = 744
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          1968.500000000000000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape249: TQRShape
        Left = 1
        Top = 744
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          1968.500000000000000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape250: TQRShape
        Left = 669
        Top = 767
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          2029.354166666667000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape251: TQRShape
        Left = 600
        Top = 767
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          2029.354166666667000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape252: TQRShape
        Left = 534
        Top = 767
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          2029.354166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape253: TQRShape
        Left = 468
        Top = 767
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          2029.354166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape254: TQRShape
        Left = 402
        Top = 767
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          2029.354166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape255: TQRShape
        Left = 336
        Top = 767
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          2029.354166666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape256: TQRShape
        Left = 224
        Top = 767
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          2029.354166666667000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape257: TQRShape
        Left = 161
        Top = 767
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          2029.354166666667000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape258: TQRShape
        Left = 65
        Top = 767
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          2029.354166666667000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape259: TQRShape
        Left = 1
        Top = 767
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          2029.354166666667000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape260: TQRShape
        Left = 669
        Top = 790
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          2090.208333333333000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape261: TQRShape
        Left = 600
        Top = 790
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          2090.208333333333000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape262: TQRShape
        Left = 534
        Top = 790
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          2090.208333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape263: TQRShape
        Left = 468
        Top = 790
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          2090.208333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape264: TQRShape
        Left = 402
        Top = 790
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          2090.208333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape265: TQRShape
        Left = 336
        Top = 790
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          2090.208333333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape266: TQRShape
        Left = 224
        Top = 790
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          2090.208333333333000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape267: TQRShape
        Left = 161
        Top = 790
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          2090.208333333333000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape268: TQRShape
        Left = 65
        Top = 790
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          2090.208333333333000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape269: TQRShape
        Left = 1
        Top = 790
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          2090.208333333333000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape270: TQRShape
        Left = 669
        Top = 813
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          2151.062500000000000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape271: TQRShape
        Left = 600
        Top = 813
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          2151.062500000000000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape272: TQRShape
        Left = 534
        Top = 813
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          2151.062500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape273: TQRShape
        Left = 468
        Top = 813
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          2151.062500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape274: TQRShape
        Left = 402
        Top = 813
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          2151.062500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape275: TQRShape
        Left = 336
        Top = 813
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          2151.062500000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape276: TQRShape
        Left = 224
        Top = 813
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          2151.062500000000000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape277: TQRShape
        Left = 161
        Top = 813
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          2151.062500000000000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape278: TQRShape
        Left = 65
        Top = 813
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          2151.062500000000000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape279: TQRShape
        Left = 1
        Top = 813
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          2151.062500000000000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape280: TQRShape
        Left = 669
        Top = 836
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          2211.916666666667000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape281: TQRShape
        Left = 600
        Top = 836
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          2211.916666666667000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape282: TQRShape
        Left = 534
        Top = 836
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          2211.916666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape283: TQRShape
        Left = 468
        Top = 836
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          2211.916666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape284: TQRShape
        Left = 402
        Top = 836
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          2211.916666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape285: TQRShape
        Left = 336
        Top = 836
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          2211.916666666667000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape286: TQRShape
        Left = 224
        Top = 836
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          2211.916666666667000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape287: TQRShape
        Left = 161
        Top = 836
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          2211.916666666667000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape288: TQRShape
        Left = 65
        Top = 836
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          2211.916666666667000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape289: TQRShape
        Left = 1
        Top = 836
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          2211.916666666667000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape290: TQRShape
        Left = 669
        Top = 859
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1770.062500000000000000
          2272.770833333333000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape291: TQRShape
        Left = 600
        Top = 859
        Width = 70
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1587.500000000000000000
          2272.770833333333000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape292: TQRShape
        Left = 534
        Top = 859
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1412.875000000000000000
          2272.770833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape293: TQRShape
        Left = 468
        Top = 859
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1238.250000000000000000
          2272.770833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape294: TQRShape
        Left = 402
        Top = 859
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1063.625000000000000000
          2272.770833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape295: TQRShape
        Left = 336
        Top = 859
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          889.000000000000000000
          2272.770833333333000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape296: TQRShape
        Left = 224
        Top = 859
        Width = 113
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          592.666666666666700000
          2272.770833333333000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape297: TQRShape
        Left = 161
        Top = 859
        Width = 64
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          425.979166666666700000
          2272.770833333333000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape298: TQRShape
        Left = 65
        Top = 859
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          171.979166666666700000
          2272.770833333333000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape299: TQRShape
        Left = 1
        Top = 859
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          2272.770833333333000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape300: TQRShape
        Left = 1
        Top = 906
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          2.645833333333333000
          2397.125000000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRLabel36: TQRLabel
        Left = 6
        Top = 909
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          2405.062500000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape301: TQRShape
        Left = 140
        Top = 906
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          370.416666666666700000
          2397.125000000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape302: TQRShape
        Left = 1
        Top = 927
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          2.645833333333333000
          2452.687500000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape303: TQRShape
        Left = 140
        Top = 927
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          370.416666666666700000
          2452.687500000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel37: TQRLabel
        Left = 6
        Top = 930
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          2460.625000000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape304: TQRShape
        Left = 1
        Top = 948
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          2.645833333333333000
          2508.250000000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape305: TQRShape
        Left = 140
        Top = 948
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          370.416666666666700000
          2508.250000000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel38: TQRLabel
        Left = 6
        Top = 951
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          2516.187500000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape306: TQRShape
        Left = 251
        Top = 906
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          664.104166666666700000
          2397.125000000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRLabel39: TQRLabel
        Left = 256
        Top = 909
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          2405.062500000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape307: TQRShape
        Left = 390
        Top = 906
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1031.875000000000000000
          2397.125000000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape308: TQRShape
        Left = 251
        Top = 927
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          664.104166666666700000
          2452.687500000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape309: TQRShape
        Left = 390
        Top = 927
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1031.875000000000000000
          2452.687500000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel40: TQRLabel
        Left = 256
        Top = 930
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          2460.625000000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor6'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape310: TQRShape
        Left = 251
        Top = 948
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          664.104166666666700000
          2508.250000000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape311: TQRShape
        Left = 390
        Top = 948
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1031.875000000000000000
          2508.250000000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel41: TQRLabel
        Left = 256
        Top = 951
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          2516.187500000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor7'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape312: TQRShape
        Left = 501
        Top = 906
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1325.562500000000000000
          2397.125000000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRLabel42: TQRLabel
        Left = 506
        Top = 909
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          2405.062500000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape313: TQRShape
        Left = 640
        Top = 906
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1693.333333333333000000
          2397.125000000000000000
          280.458333333333300000)
        Shape = qrsRectangle
      end
      object QRShape314: TQRShape
        Left = 501
        Top = 927
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1325.562500000000000000
          2452.687500000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape315: TQRShape
        Left = 640
        Top = 927
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1693.333333333333000000
          2452.687500000000000000
          280.458333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel43: TQRLabel
        Left = 506
        Top = 930
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          2460.625000000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape316: TQRShape
        Left = 501
        Top = 948
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1325.562500000000000000
          2508.250000000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape317: TQRShape
        Left = 640
        Top = 948
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1693.333333333333000000
          2508.250000000000000000
          280.458333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel44: TQRLabel
        Left = 506
        Top = 951
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          2516.187500000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape318: TQRShape
        Left = 669
        Top = 882
        Width = 80
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1770.062500000000000000
          2333.625000000000000000
          211.666666666666700000)
        Shape = qrsRectangle
      end
      object QRShape319: TQRShape
        Left = 600
        Top = 882
        Width = 70
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1587.500000000000000000
          2333.625000000000000000
          185.208333333333300000)
        Shape = qrsRectangle
      end
      object QRShape320: TQRShape
        Left = 534
        Top = 882
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1412.875000000000000000
          2333.625000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape321: TQRShape
        Left = 468
        Top = 882
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1238.250000000000000000
          2333.625000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape322: TQRShape
        Left = 402
        Top = 882
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1063.625000000000000000
          2333.625000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape323: TQRShape
        Left = 336
        Top = 882
        Width = 67
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          889.000000000000000000
          2333.625000000000000000
          177.270833333333300000)
        Shape = qrsRectangle
      end
      object QRShape324: TQRShape
        Left = 224
        Top = 882
        Width = 113
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          592.666666666666700000
          2333.625000000000000000
          298.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape325: TQRShape
        Left = 161
        Top = 882
        Width = 64
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          425.979166666666700000
          2333.625000000000000000
          169.333333333333300000)
        Shape = qrsRectangle
      end
      object QRShape326: TQRShape
        Left = 65
        Top = 882
        Width = 97
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          171.979166666666700000
          2333.625000000000000000
          256.645833333333300000)
        Shape = qrsRectangle
      end
      object QRShape327: TQRShape
        Left = 1
        Top = 882
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          2.645833333333333000
          2333.625000000000000000
          171.979166666666700000)
        Shape = qrsRectangle
      end
      object QRShape328: TQRShape
        Left = 1
        Top = 969
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          2.645833333333333000
          2563.812500000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape329: TQRShape
        Left = 140
        Top = 969
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          370.416666666666700000
          2563.812500000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel45: TQRLabel
        Left = 6
        Top = 972
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          2571.750000000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape330: TQRShape
        Left = 251
        Top = 969
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          664.104166666666700000
          2563.812500000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape331: TQRShape
        Left = 390
        Top = 969
        Width = 112
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1031.875000000000000000
          2563.812500000000000000
          296.333333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel46: TQRLabel
        Left = 256
        Top = 972
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          2571.750000000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape332: TQRShape
        Left = 501
        Top = 969
        Width = 140
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1325.562500000000000000
          2563.812500000000000000
          370.416666666666700000)
        Shape = qrsRectangle
      end
      object QRShape333: TQRShape
        Left = 640
        Top = 969
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1693.333333333333000000
          2563.812500000000000000
          280.458333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel47: TQRLabel
        Left = 506
        Top = 972
        Width = 130
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          2571.750000000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRSetor12'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 376
        Top = 530
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          1402.291666666667000000
          224.895833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pedido Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 465
        Top = 530
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1230.312500000000000000
          1402.291666666667000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'PedidoCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel49: TQRLabel
        Left = 45
        Top = 565
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          119.062500000000000000
          1494.895833333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Obs:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel50: TQRLabel
        Left = 572
        Top = 509
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1513.416666666667000000
          1346.729166666667000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt.Entrega:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 631
        Top = 509
        Width = 76
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1669.520833333333000000
          1346.729166666667000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM1.tTalao
        DataField = 'lkDtEmbarque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
end
