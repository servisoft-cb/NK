object fRelTalao: TfRelTalao
  Left = -3
  Top = 50
  Width = 793
  Height = 496
  BorderIcons = [biSystemMenu]
  Caption = 'fRelTalao'
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
    Left = 8
    Top = 16
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM1.tTalao
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
      Height = 501
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
        1325.562500000000000000
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
    end
  end
  object QuickRep2: TQuickRep
    Left = 809
    Top = 16
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM1.tTalao
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
      100.000000000000000000
      100.000000000000000000
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
    object DetailBand2: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 501
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1325.562500000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRShape168: TQRShape
        Left = 176
        Top = 136
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          359.833333333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor1: TQRLabel
        Left = 181
        Top = 139
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          367.770833333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape169: TQRShape
        Left = 352
        Top = 136
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          359.833333333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo1: TQRLabel
        Left = 358
        Top = 139
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          367.770833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape170: TQRShape
        Left = 512
        Top = 136
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          359.833333333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg1: TQRLabel
        Left = 521
        Top = 139
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          367.770833333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 405
        Top = 100
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1071.562500000000000000
          264.583333333333400000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tempo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 521
        Top = 116
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          306.916666666666700000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tempo Reg.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape171: TQRShape
        Left = 176
        Top = 157
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          415.395833333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor2: TQRLabel
        Left = 181
        Top = 160
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          423.333333333333300000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape172: TQRShape
        Left = 352
        Top = 157
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          415.395833333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo2: TQRLabel
        Left = 358
        Top = 160
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          423.333333333333300000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape173: TQRShape
        Left = 512
        Top = 157
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          415.395833333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg2: TQRLabel
        Left = 521
        Top = 160
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          423.333333333333300000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape174: TQRShape
        Left = 176
        Top = 178
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          470.958333333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor3: TQRLabel
        Left = 181
        Top = 181
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          478.895833333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape175: TQRShape
        Left = 352
        Top = 178
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          470.958333333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo3: TQRLabel
        Left = 358
        Top = 181
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          478.895833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape176: TQRShape
        Left = 512
        Top = 178
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          470.958333333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg3: TQRLabel
        Left = 521
        Top = 181
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          478.895833333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape177: TQRShape
        Left = 176
        Top = 199
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          526.520833333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor4: TQRLabel
        Left = 181
        Top = 202
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          534.458333333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape178: TQRShape
        Left = 352
        Top = 199
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          526.520833333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo4: TQRLabel
        Left = 358
        Top = 202
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          534.458333333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape179: TQRShape
        Left = 512
        Top = 199
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          526.520833333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg4: TQRLabel
        Left = 521
        Top = 202
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          534.458333333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape180: TQRShape
        Left = 176
        Top = 220
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          582.083333333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor5: TQRLabel
        Left = 181
        Top = 223
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          590.020833333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor5'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape181: TQRShape
        Left = 352
        Top = 220
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          582.083333333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo5: TQRLabel
        Left = 358
        Top = 223
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          590.020833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo5'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape182: TQRShape
        Left = 512
        Top = 220
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          582.083333333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg5: TQRLabel
        Left = 521
        Top = 223
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          590.020833333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg5'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape183: TQRShape
        Left = 176
        Top = 241
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          637.645833333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor6: TQRLabel
        Left = 181
        Top = 244
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          645.583333333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor6'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape184: TQRShape
        Left = 352
        Top = 241
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          637.645833333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo6: TQRLabel
        Left = 358
        Top = 244
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          645.583333333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo6'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape185: TQRShape
        Left = 512
        Top = 241
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          637.645833333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg6: TQRLabel
        Left = 521
        Top = 244
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          645.583333333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg6'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape186: TQRShape
        Left = 176
        Top = 262
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          693.208333333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor7: TQRLabel
        Left = 181
        Top = 265
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          701.145833333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor7'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape187: TQRShape
        Left = 352
        Top = 262
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          693.208333333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo7: TQRLabel
        Left = 358
        Top = 265
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          701.145833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo7'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape188: TQRShape
        Left = 512
        Top = 262
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          693.208333333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg7: TQRLabel
        Left = 521
        Top = 265
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          701.145833333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg7'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape189: TQRShape
        Left = 176
        Top = 283
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          748.770833333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor8: TQRLabel
        Left = 181
        Top = 286
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          756.708333333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor8'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape190: TQRShape
        Left = 352
        Top = 283
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          748.770833333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo8: TQRLabel
        Left = 358
        Top = 286
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          756.708333333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo8'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape191: TQRShape
        Left = 512
        Top = 283
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          748.770833333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg8: TQRLabel
        Left = 521
        Top = 286
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          756.708333333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg8'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape192: TQRShape
        Left = 176
        Top = 304
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          804.333333333333200000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor9: TQRLabel
        Left = 181
        Top = 307
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          812.270833333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor9'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape193: TQRShape
        Left = 352
        Top = 304
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          804.333333333333200000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo9: TQRLabel
        Left = 358
        Top = 307
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          812.270833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo9'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape194: TQRShape
        Left = 512
        Top = 304
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          804.333333333333200000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg9: TQRLabel
        Left = 521
        Top = 307
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          812.270833333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg9'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape195: TQRShape
        Left = 176
        Top = 325
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          859.895833333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor10: TQRLabel
        Left = 181
        Top = 328
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          867.833333333333500000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor10'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape196: TQRShape
        Left = 352
        Top = 325
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          859.895833333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo10: TQRLabel
        Left = 358
        Top = 328
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          867.833333333333500000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo10'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape197: TQRShape
        Left = 512
        Top = 325
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          859.895833333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg10: TQRLabel
        Left = 521
        Top = 328
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          867.833333333333500000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg10'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape198: TQRShape
        Left = 176
        Top = 346
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          915.458333333333200000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor11: TQRLabel
        Left = 181
        Top = 349
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          923.395833333333400000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape199: TQRShape
        Left = 352
        Top = 346
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          915.458333333333200000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo11: TQRLabel
        Left = 358
        Top = 349
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          923.395833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape200: TQRShape
        Left = 512
        Top = 346
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          915.458333333333200000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg11: TQRLabel
        Left = 521
        Top = 349
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          923.395833333333400000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape201: TQRShape
        Left = 176
        Top = 367
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          971.020833333333400000
          468.312500000000100000)
        Shape = qrsRectangle
      end
      object Setor12: TQRLabel
        Left = 181
        Top = 370
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333400000
          978.958333333333200000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Setor12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape202: TQRShape
        Left = 352
        Top = 367
        Width = 153
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          931.333333333333500000
          971.020833333333400000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object Tempo12: TQRLabel
        Left = 358
        Top = 370
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          978.958333333333200000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tempo12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape203: TQRShape
        Left = 512
        Top = 367
        Width = 89
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1354.666666666667000000
          971.020833333333400000
          235.479166666666700000)
        Shape = qrsRectangle
      end
      object TempoReg12: TQRLabel
        Left = 521
        Top = 370
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          978.958333333333200000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TempoReg12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 277
        Top = 68
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          732.895833333333400000
          179.916666666666700000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Talao 1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 368
        Top = 118
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666900000
          312.208333333333400000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Minuto'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 448
        Top = 118
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1185.333333333333000000
          312.208333333333400000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora1: TQRLabel
        Left = 433
        Top = 139
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          367.770833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora2: TQRLabel
        Left = 433
        Top = 160
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          423.333333333333300000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora3: TQRLabel
        Left = 433
        Top = 181
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          478.895833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora4: TQRLabel
        Left = 433
        Top = 202
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          534.458333333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora5: TQRLabel
        Left = 433
        Top = 223
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          590.020833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora5'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora6: TQRLabel
        Left = 433
        Top = 244
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          645.583333333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora6'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora7: TQRLabel
        Left = 433
        Top = 265
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          701.145833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora7'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora8: TQRLabel
        Left = 433
        Top = 286
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          756.708333333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora8'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora9: TQRLabel
        Left = 433
        Top = 307
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          812.270833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora9'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora10: TQRLabel
        Left = 433
        Top = 328
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          867.833333333333500000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora10'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora11: TQRLabel
        Left = 433
        Top = 349
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          923.395833333333400000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Hora12: TQRLabel
        Left = 433
        Top = 370
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          978.958333333333200000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hora12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object tProdutoSetor: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;Item'
    MasterFields = 'CodProduto'
    MasterSource = DM1.dsTalao
    TableName = 'dbProdutoSetor.db'
    Left = 473
    Top = 23
    object tProdutoSetorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoSetorItem: TIntegerField
      FieldName = 'Item'
    end
    object tProdutoSetorCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object tProdutoSetorTempo: TIntegerField
      FieldName = 'Tempo'
    end
    object tProdutoSetorTempoRegMaquina: TIntegerField
      FieldName = 'TempoRegMaquina'
    end
    object tProdutoSetorlkNomeSetor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeSetor'
      LookupDataSet = DM1.tSetor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodSetor'
      Size = 15
      Lookup = True
    end
  end
end
