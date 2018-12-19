object fRelCartaCorrecao: TfRelCartaCorrecao
  Left = 43
  Top = 81
  Width = 910
  Height = 650
  HorzScrollBar.Position = 748
  VertScrollBar.Position = 221
  BorderIcons = [biSystemMenu]
  Caption = 'fRelCartaCorrecao'
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
    Left = -715
    Top = -210
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM1.tCartaCorrecao
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
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 531
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = PageHeaderBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1404.937500000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 21
        Top = 8
        Width = 677
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          55.562500000000000000
          21.166666666666700000
          1791.229166666670000000)
        Shape = qrsRectangle
      end
      object QRLabel1: TQRLabel
        Left = 105
        Top = 11
        Width = 509
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          277.812500000000000000
          29.104166666666670000
          1346.729166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Comunica'#231#227'o de Irregularidades em Documento Fiscal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape2: TQRShape
        Left = 22
        Top = 39
        Width = 395
        Height = 99
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          261.937500000000000000
          58.208333333333300000
          103.187500000000000000
          1045.104166666670000000)
        Shape = qrsRectangle
      end
      object QRShape3: TQRShape
        Left = 420
        Top = 39
        Width = 277
        Height = 99
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          261.937500000000000000
          1111.250000000000000000
          103.187500000000000000
          732.895833333333000000)
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 22
        Top = 141
        Width = 395
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333300000
          58.208333333333300000
          373.062500000000000000
          1045.104166666670000000)
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 421
        Top = 156
        Width = 276
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1113.895833333330000000
          412.750000000000000000
          730.250000000000000000)
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 421
        Top = 140
        Width = 276
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1113.895833333330000000
          370.416666666667000000
          730.250000000000000000)
        Shape = qrsRectangle
      end
      object QRLabel2: TQRLabel
        Left = 520
        Top = 142
        Width = 78
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1375.833333333333000000
          375.708333333333400000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Inscri'#231#227'o Estadual'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 544
        Top = 159
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          420.687500000000000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tEmpresa
        DataField = 'Inscr'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 22
        Top = 185
        Width = 116
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          58.208333333333340000
          489.479166666666600000
          306.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Prezado(s) Senhor(es):'
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
      object QRLabel4: TQRLabel
        Left = 94
        Top = 202
        Width = 584
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          248.708333333333300000
          534.458333333333400000
          1545.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Para atendimento aos dispositivos regulamentares da legisla'#231#227'o f' +
          'iscal comunicamos a V. S.'#170'(s) que, ao conferirmos a(s)'
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
      object QRLabel5: TQRLabel
        Left = 22
        Top = 217
        Width = 612
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          58.208333333333340000
          574.145833333333400000
          1619.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Nota(s) Fiscal(is) em refer'#234'ncia, constatamos a(s) abaixo indica' +
          'da(s) pelo(s) respectivo(s) c'#243'digo(s), pedindo considerar(em)'
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
      object QRLabel6: TQRLabel
        Left = 22
        Top = 232
        Width = 352
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          58.208333333333340000
          613.833333333333400000
          931.333333333333500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'a(s) corre'#231#227'o('#245'es) adiante efetuada(s), al'#233'm das provid'#234'ncias ca' +
          'b'#237'veis:'
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
      object QRShape9: TQRShape
        Left = 25
        Top = 270
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          714.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 39
        Top = 254
        Width = 201
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          103.187500000000000000
          672.041666666667000000
          531.812500000000000000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 25
        Top = 302
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          799.041666666667000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape10: TQRShape
        Left = 25
        Top = 286
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          756.708333333333000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape11: TQRShape
        Left = 25
        Top = 334
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          883.708333333333000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape12: TQRShape
        Left = 25
        Top = 318
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          841.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape13: TQRShape
        Left = 25
        Top = 366
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          968.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 25
        Top = 350
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          926.041666666667000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape15: TQRShape
        Left = 25
        Top = 398
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1053.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape16: TQRShape
        Left = 25
        Top = 382
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1010.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape17: TQRShape
        Left = 25
        Top = 430
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1137.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape18: TQRShape
        Left = 25
        Top = 414
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1095.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 25
        Top = 462
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1222.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape20: TQRShape
        Left = 25
        Top = 446
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1180.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 25
        Top = 494
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1307.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 25
        Top = 478
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1264.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape23: TQRShape
        Left = 25
        Top = 510
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          1349.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel7: TQRLabel
        Left = 110
        Top = 256
        Width = 84
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          291.041666666666700000
          677.333333333333400000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IRREGULARIDADE'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape24: TQRShape
        Left = 35
        Top = 254
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          672.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Left = 37
        Top = 257
        Width = 25
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          97.895833333333340000
          679.979166666666800000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#211'D.'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape25: TQRShape
        Left = 35
        Top = 270
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          92.604166666666680000
          714.375000000000000000
          76.729166666666680000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape26: TQRShape
        Left = 35
        Top = 286
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          756.708333333333000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape27: TQRShape
        Left = 35
        Top = 302
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          799.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape28: TQRShape
        Left = 35
        Top = 350
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          926.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape29: TQRShape
        Left = 35
        Top = 334
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          883.708333333333000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape30: TQRShape
        Left = 35
        Top = 318
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          841.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape31: TQRShape
        Left = 35
        Top = 446
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1180.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape32: TQRShape
        Left = 35
        Top = 430
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1137.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape33: TQRShape
        Left = 35
        Top = 414
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1095.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape34: TQRShape
        Left = 35
        Top = 398
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1053.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape35: TQRShape
        Left = 35
        Top = 382
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1010.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape36: TQRShape
        Left = 35
        Top = 366
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          968.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape37: TQRShape
        Left = 35
        Top = 510
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1349.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape38: TQRShape
        Left = 35
        Top = 494
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1307.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape39: TQRShape
        Left = 35
        Top = 478
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1264.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape40: TQRShape
        Left = 35
        Top = 462
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          92.604166666666700000
          1222.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRCod1: TQRLabel
        Left = 49
        Top = 273
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          722.312500000000000000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod2: TQRLabel
        Left = 49
        Top = 289
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          764.645833333333400000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod4: TQRLabel
        Left = 49
        Top = 321
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          849.312500000000000000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod3: TQRLabel
        Left = 49
        Top = 304
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          804.333333333333200000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod5: TQRLabel
        Left = 49
        Top = 337
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          891.645833333333200000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '5'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod6: TQRLabel
        Left = 49
        Top = 352
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          931.333333333333500000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '6'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod7: TQRLabel
        Left = 49
        Top = 369
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          976.312500000000000000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '7'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod8: TQRLabel
        Left = 49
        Top = 385
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          1018.645833333333000000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '8'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod9: TQRLabel
        Left = 49
        Top = 400
        Width = 6
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          129.645833333333300000
          1058.333333333333000000
          15.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '9'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod10: TQRLabel
        Left = 44
        Top = 417
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          116.416666666666700000
          1103.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '10'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod11: TQRLabel
        Left = 44
        Top = 433
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          116.416666666666700000
          1145.645833333333000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '11'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod16: TQRLabel
        Left = 44
        Top = 513
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          116.416666666666700000
          1357.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '16'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod15: TQRLabel
        Left = 44
        Top = 497
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          116.416666666666700000
          1314.979166666667000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '15'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod14: TQRLabel
        Left = 44
        Top = 480
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          116.416666666666700000
          1270.000000000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '14'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod13: TQRLabel
        Left = 44
        Top = 465
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          116.416666666666700000
          1230.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '13'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod12: TQRLabel
        Left = 44
        Top = 449
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          116.416666666666700000
          1187.979166666667000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape41: TQRShape
        Left = 25
        Top = 254
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          66.145833333333300000
          672.041666666667000000
          29.104166666666700000)
        Shape = qrsRectangle
      end
      object QRNome1: TQRLabel
        Left = 66
        Top = 273
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          722.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome2: TQRLabel
        Left = 66
        Top = 289
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          764.645833333333000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome4: TQRLabel
        Left = 66
        Top = 321
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          849.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome7: TQRLabel
        Left = 66
        Top = 369
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          976.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome7'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome6: TQRLabel
        Left = 66
        Top = 353
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          933.979166666667000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome6'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome5: TQRLabel
        Left = 66
        Top = 337
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          891.645833333333000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome13: TQRLabel
        Left = 66
        Top = 465
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1230.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome13'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome12: TQRLabel
        Left = 66
        Top = 449
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1187.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome12'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome11: TQRLabel
        Left = 66
        Top = 433
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1145.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome10: TQRLabel
        Left = 66
        Top = 417
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1103.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome9: TQRLabel
        Left = 66
        Top = 401
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          174.625000000000000000
          1060.979166666667000000
          455.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome8: TQRLabel
        Left = 66
        Top = 385
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1018.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome16: TQRLabel
        Left = 66
        Top = 513
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1357.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome16'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome3: TQRLabel
        Left = 66
        Top = 305
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          806.979166666667000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome15: TQRLabel
        Left = 66
        Top = 497
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1314.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome15'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome14: TQRLabel
        Left = 66
        Top = 481
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          174.625000000000000000
          1272.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome14'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape42: TQRShape
        Left = 254
        Top = 270
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          714.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape43: TQRShape
        Left = 268
        Top = 254
        Width = 201
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          709.083333333333000000
          672.041666666667000000
          531.812500000000000000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape44: TQRShape
        Left = 254
        Top = 302
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          799.041666666667000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape45: TQRShape
        Left = 254
        Top = 286
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          756.708333333333000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape46: TQRShape
        Left = 254
        Top = 334
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          883.708333333333000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape47: TQRShape
        Left = 254
        Top = 318
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          841.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape48: TQRShape
        Left = 254
        Top = 366
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          968.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape49: TQRShape
        Left = 254
        Top = 350
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          926.041666666667000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape50: TQRShape
        Left = 254
        Top = 398
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1053.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape51: TQRShape
        Left = 254
        Top = 382
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1010.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape52: TQRShape
        Left = 254
        Top = 430
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1137.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape53: TQRShape
        Left = 254
        Top = 414
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1095.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape54: TQRShape
        Left = 254
        Top = 462
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1222.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape55: TQRShape
        Left = 254
        Top = 446
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1180.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape56: TQRShape
        Left = 254
        Top = 494
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1307.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape57: TQRShape
        Left = 254
        Top = 478
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1264.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape58: TQRShape
        Left = 254
        Top = 510
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          1349.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel41: TQRLabel
        Left = 335
        Top = 256
        Width = 84
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          886.354166666666900000
          677.333333333333400000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IRREGULARIDADE'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape59: TQRShape
        Left = 264
        Top = 254
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          672.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRLabel42: TQRLabel
        Left = 266
        Top = 257
        Width = 25
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          703.791666666666800000
          679.979166666666800000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#211'D.'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape60: TQRShape
        Left = 264
        Top = 270
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          714.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape61: TQRShape
        Left = 264
        Top = 286
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          756.708333333333000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape62: TQRShape
        Left = 264
        Top = 302
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          799.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape63: TQRShape
        Left = 264
        Top = 350
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          926.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape64: TQRShape
        Left = 264
        Top = 334
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          883.708333333333000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape65: TQRShape
        Left = 264
        Top = 318
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          841.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape66: TQRShape
        Left = 264
        Top = 446
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1180.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape67: TQRShape
        Left = 264
        Top = 430
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1137.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape68: TQRShape
        Left = 264
        Top = 414
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1095.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape69: TQRShape
        Left = 264
        Top = 398
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1053.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape70: TQRShape
        Left = 264
        Top = 382
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1010.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape71: TQRShape
        Left = 264
        Top = 366
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          968.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape72: TQRShape
        Left = 264
        Top = 510
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1349.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape73: TQRShape
        Left = 264
        Top = 494
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1307.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape74: TQRShape
        Left = 264
        Top = 478
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1264.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape75: TQRShape
        Left = 264
        Top = 462
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1222.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRCod17: TQRLabel
        Left = 273
        Top = 273
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          722.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '17'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod18: TQRLabel
        Left = 273
        Top = 289
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          764.645833333333400000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '18'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod20: TQRLabel
        Left = 273
        Top = 321
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          849.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '20'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod19: TQRLabel
        Left = 273
        Top = 304
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          804.333333333333200000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '19'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod21: TQRLabel
        Left = 273
        Top = 337
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          891.645833333333200000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '21'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod22: TQRLabel
        Left = 273
        Top = 352
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          931.333333333333500000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '22'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod23: TQRLabel
        Left = 273
        Top = 369
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          976.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '23'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod24: TQRLabel
        Left = 273
        Top = 385
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1018.645833333333000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '24'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod25: TQRLabel
        Left = 273
        Top = 400
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1058.333333333333000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '25'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod26: TQRLabel
        Left = 273
        Top = 417
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1103.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '26'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod27: TQRLabel
        Left = 273
        Top = 433
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1145.645833333333000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '27'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod32: TQRLabel
        Left = 273
        Top = 513
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1357.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '32'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod31: TQRLabel
        Left = 273
        Top = 497
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1314.979166666667000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '31'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod30: TQRLabel
        Left = 273
        Top = 480
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1270.000000000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '30'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod29: TQRLabel
        Left = 273
        Top = 465
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1230.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '29'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod28: TQRLabel
        Left = 273
        Top = 449
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          722.312500000000000000
          1187.979166666667000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '28'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape76: TQRShape
        Left = 254
        Top = 254
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          672.041666666667000000
          672.041666666667000000
          29.104166666666700000)
        Shape = qrsRectangle
      end
      object QRNome17: TQRLabel
        Left = 296
        Top = 273
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          722.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome17'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome18: TQRLabel
        Left = 296
        Top = 289
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          764.645833333333000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome18'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome20: TQRLabel
        Left = 296
        Top = 321
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          849.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome20'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome23: TQRLabel
        Left = 296
        Top = 369
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          976.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome23'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome22: TQRLabel
        Left = 296
        Top = 353
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          933.979166666667000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome22'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome21: TQRLabel
        Left = 296
        Top = 337
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          891.645833333333000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome21'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome29: TQRLabel
        Left = 296
        Top = 465
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1230.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome29'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome28: TQRLabel
        Left = 296
        Top = 449
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1187.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome28'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome27: TQRLabel
        Left = 296
        Top = 433
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1145.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome27'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome26: TQRLabel
        Left = 296
        Top = 417
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1103.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome26'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome25: TQRLabel
        Left = 296
        Top = 401
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1060.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome25'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome24: TQRLabel
        Left = 296
        Top = 385
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1018.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome24'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome32: TQRLabel
        Left = 296
        Top = 513
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1357.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome32'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome19: TQRLabel
        Left = 296
        Top = 305
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          806.979166666667000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome19'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome31: TQRLabel
        Left = 296
        Top = 497
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1314.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome31'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome30: TQRLabel
        Left = 296
        Top = 481
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          783.166666666667000000
          1272.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome30'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape77: TQRShape
        Left = 481
        Top = 270
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          714.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape78: TQRShape
        Left = 495
        Top = 254
        Width = 201
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1309.687500000000000000
          672.041666666667000000
          531.812500000000000000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape79: TQRShape
        Left = 481
        Top = 302
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          799.041666666667000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape80: TQRShape
        Left = 481
        Top = 286
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          756.708333333333000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape81: TQRShape
        Left = 481
        Top = 334
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          883.708333333333000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape82: TQRShape
        Left = 481
        Top = 318
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          841.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape83: TQRShape
        Left = 481
        Top = 366
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          968.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape84: TQRShape
        Left = 481
        Top = 350
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          926.041666666667000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape85: TQRShape
        Left = 481
        Top = 398
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1053.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape86: TQRShape
        Left = 481
        Top = 382
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1010.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape87: TQRShape
        Left = 481
        Top = 430
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1137.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape88: TQRShape
        Left = 481
        Top = 414
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1095.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape89: TQRShape
        Left = 481
        Top = 462
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1222.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape90: TQRShape
        Left = 481
        Top = 446
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1180.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape91: TQRShape
        Left = 481
        Top = 494
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1307.041666666670000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape92: TQRShape
        Left = 481
        Top = 478
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1264.708333333330000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRShape93: TQRShape
        Left = 481
        Top = 510
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          1349.375000000000000000
          568.854166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel75: TQRLabel
        Left = 562
        Top = 256
        Width = 84
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1486.958333333333000000
          677.333333333333400000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IRREGULARIDADE'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape94: TQRShape
        Left = 491
        Top = 254
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          672.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRLabel76: TQRLabel
        Left = 493
        Top = 257
        Width = 25
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1304.395833333333000000
          679.979166666666800000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#211'D.'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape95: TQRShape
        Left = 491
        Top = 270
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          714.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape96: TQRShape
        Left = 491
        Top = 286
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          756.708333333333000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape97: TQRShape
        Left = 491
        Top = 302
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          799.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape98: TQRShape
        Left = 491
        Top = 350
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          926.041666666667000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape99: TQRShape
        Left = 491
        Top = 334
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          883.708333333333000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape100: TQRShape
        Left = 491
        Top = 318
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          841.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape101: TQRShape
        Left = 491
        Top = 446
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1180.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape102: TQRShape
        Left = 491
        Top = 430
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1137.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape103: TQRShape
        Left = 491
        Top = 414
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1095.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape104: TQRShape
        Left = 491
        Top = 398
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1053.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape105: TQRShape
        Left = 491
        Top = 382
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1010.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape106: TQRShape
        Left = 491
        Top = 366
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          968.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape107: TQRShape
        Left = 491
        Top = 510
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1349.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape108: TQRShape
        Left = 491
        Top = 494
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1307.041666666670000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape109: TQRShape
        Left = 491
        Top = 478
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1264.708333333330000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRShape110: TQRShape
        Left = 491
        Top = 462
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1299.104166666670000000
          1222.375000000000000000
          76.729166666666700000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRCod33: TQRLabel
        Left = 500
        Top = 273
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          722.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '33'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod34: TQRLabel
        Left = 500
        Top = 289
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          764.645833333333400000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '34'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod36: TQRLabel
        Left = 500
        Top = 321
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          849.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '36'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod35: TQRLabel
        Left = 500
        Top = 304
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          804.333333333333200000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '35'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod37: TQRLabel
        Left = 500
        Top = 337
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          891.645833333333200000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '37'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod38: TQRLabel
        Left = 500
        Top = 352
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          931.333333333333500000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '38'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod39: TQRLabel
        Left = 500
        Top = 369
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          976.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '39'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod40: TQRLabel
        Left = 500
        Top = 385
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1018.645833333333000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '40'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod41: TQRLabel
        Left = 500
        Top = 400
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1058.333333333333000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '41'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod42: TQRLabel
        Left = 500
        Top = 417
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1103.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '42'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod43: TQRLabel
        Left = 500
        Top = 433
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1145.645833333333000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '43'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod48: TQRLabel
        Left = 500
        Top = 513
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1357.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '48'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod47: TQRLabel
        Left = 500
        Top = 497
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1314.979166666667000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '47'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod46: TQRLabel
        Left = 500
        Top = 480
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1270.000000000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '46'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod45: TQRLabel
        Left = 500
        Top = 465
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1230.312500000000000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '45'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRCod44: TQRLabel
        Left = 500
        Top = 449
        Width = 11
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1322.916666666667000000
          1187.979166666667000000
          29.104166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '44'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape111: TQRShape
        Left = 481
        Top = 254
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1272.645833333330000000
          672.041666666667000000
          29.104166666666700000)
        Shape = qrsRectangle
      end
      object QRNome33: TQRLabel
        Left = 522
        Top = 273
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          722.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome33'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome34: TQRLabel
        Left = 522
        Top = 289
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          764.645833333333000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome34'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome36: TQRLabel
        Left = 522
        Top = 321
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          849.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome36'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome39: TQRLabel
        Left = 522
        Top = 369
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          976.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome39'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome38: TQRLabel
        Left = 522
        Top = 353
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          933.979166666667000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome38'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome35: TQRLabel
        Left = 522
        Top = 305
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          806.979166666667000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome35'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel108: TQRLabel
        Left = 27
        Top = 57
        Width = 24
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          71.437500000000000000
          150.812500000000000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sr.(s)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 44
        Top = 75
        Width = 367
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          116.416666666667000000
          198.437500000000000000
          971.020833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecao
        DataField = 'lkNome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 29
        Top = 90
        Width = 140
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          76.729166666666700000
          238.125000000000000000
          370.416666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecao
        DataField = 'lkCGC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 172
        Top = 90
        Width = 241
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          455.083333333333000000
          238.125000000000000000
          637.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecao
        DataField = 'lkEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 29
        Top = 106
        Width = 170
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          76.729166666666680000
          280.458333333333400000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecao
        DataField = 'lkBairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 203
        Top = 106
        Width = 209
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          537.104166666667000000
          280.458333333333000000
          552.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecao
        DataField = 'lkCidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 29
        Top = 122
        Width = 44
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          76.729166666666700000
          322.791666666667000000
          116.416666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecao
        DataField = 'lkUF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 24
        Top = 143
        Width = 388
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          378.354166666667000000
          1026.583333333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecao
        DataField = 'Descricao'
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
      object QRNome40: TQRLabel
        Left = 522
        Top = 385
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1018.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome40'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome37: TQRLabel
        Left = 522
        Top = 337
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          891.645833333333000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome37'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome41: TQRLabel
        Left = 522
        Top = 401
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1060.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome41'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome42: TQRLabel
        Left = 522
        Top = 417
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1103.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome42'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome43: TQRLabel
        Left = 522
        Top = 433
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1145.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome43'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome44: TQRLabel
        Left = 522
        Top = 449
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1187.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome44'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome45: TQRLabel
        Left = 522
        Top = 465
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1230.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome45'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome46: TQRLabel
        Left = 522
        Top = 481
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1272.645833333330000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome46'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome47: TQRLabel
        Left = 522
        Top = 497
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1314.979166666670000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome47'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRNome48: TQRLabel
        Left = 522
        Top = 513
        Width = 172
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          1357.312500000000000000
          455.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRNome48'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 569
      Width = 718
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRShape115: TQRShape
        Left = 24
        Top = 2
        Width = 30
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          5.291666666666670000
          79.375000000000000000)
        Brush.Color = clInactiveBorder
        Shape = qrsRectangle
      end
      object QRLabel112: TQRLabel
        Left = 27
        Top = 5
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          71.437500000000000000
          13.229166666666670000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#211'D.'
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape112: TQRShape
        Left = 68
        Top = 2
        Width = 644
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          179.916666666666700000
          5.291666666666667000
          1703.916666666667000000)
        Shape = qrsRectangle
      end
      object QRLabel113: TQRLabel
        Left = 305
        Top = 4
        Width = 54
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          806.979166666666800000
          10.583333333333330000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CORRE'#199#195'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 650
      Width = 718
      Height = 254
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        672.041666666666700000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel101: TQRLabel
        Left = 94
        Top = 15
        Width = 556
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          248.708333333333300000
          39.687500000000000000
          1471.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'De acordo com os dispositivos regulamentares, far-se-'#225' a comunic' +
          'a'#231#227'o por carta, da qual o expedidor conservar'#225
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
      object QRLabel102: TQRLabel
        Left = 22
        Top = 31
        Width = 542
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          58.208333333333340000
          82.020833333333340000
          1434.041666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'c'#243'pia, provada a expedi'#231#227'o com "A.R," do correio ou o recibo do ' +
          'pr'#243'prio destinat'#225'rio, firmado na c'#243'pia da carta.'
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
      object QRLabel103: TQRLabel
        Left = 94
        Top = 46
        Width = 559
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          248.708333333333300000
          121.708333333333300000
          1479.020833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Para evitar-se qualquer san'#231#227'o fiscal, solicitamos acusar(em) o ' +
          'recebimento desta, na c'#243'pia que a acompanha, de-'
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
      object QRLabel104: TQRLabel
        Left = 22
        Top = 63
        Width = 395
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          58.208333333333340000
          166.687500000000000000
          1045.104166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'vendo a via de V. S'#170'(s) ficar arquivada juntamente com a Nota Fi' +
          'scal em quest'#227'o.'
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
      object QRShape116: TQRShape
        Left = 16
        Top = 113
        Width = 273
        Height = 137
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          362.479166666667000000
          42.333333333333300000
          298.979166666667000000
          722.312500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel105: TQRLabel
        Left = 492
        Top = 107
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1301.750000000000000000
          283.104166666666700000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Atenciosamente,'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape117: TQRShape
        Left = 407
        Top = 203
        Width = 265
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          1076.854166666670000000
          537.104166666667000000
          701.145833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel107: TQRLabel
        Left = 504
        Top = 207
        Width = 94
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1333.500000000000000000
          547.687500000000000000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(carimbo e assinatura)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel109: TQRLabel
        Left = 60
        Top = 96
        Width = 164
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          158.750000000000000000
          254.000000000000000000
          433.916666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Acusamos recebimento da 1'#186' via.'
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
      object QRShape118: TQRShape
        Left = 24
        Top = 150
        Width = 259
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          63.500000000000000000
          396.875000000000000000
          685.270833333333000000)
        Shape = qrsRectangle
      end
      object QRShape119: TQRShape
        Left = 24
        Top = 222
        Width = 259
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          63.500000000000000000
          587.375000000000000000
          685.270833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel110: TQRLabel
        Left = 113
        Top = 153
        Width = 60
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          298.979166666666700000
          404.812500000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(Local e Data)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel111: TQRLabel
        Left = 101
        Top = 225
        Width = 97
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          267.229166666666700000
          595.312500000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(Carimbo e Assinatura)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape113: TQRShape
        Left = 5
        Top = 5
        Width = 710
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          13.229166666666700000
          13.229166666666700000
          1878.541666666670000000)
        Shape = qrsHorLine
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 590
      Width = 718
      Height = 60
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        158.750000000000000000
        1899.708333333333000000)
      Master = QuickRep1
      DataSet = DM1.tCartaCorrecaoIt
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText3: TQRDBText
        Left = 26
        Top = 2
        Width = 23
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          68.791666666666700000
          5.291666666666670000
          60.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clInactiveBorder
        DataSet = DM1.tCartaCorrecaoIt
        DataField = 'CodCorrecao'
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
      object QRDBText4: TQRDBText
        Left = 54
        Top = 2
        Width = 659
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          142.875000000000000000
          5.291666666666670000
          1743.604166666670000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM1.tCartaCorrecaoIt
        DataField = 'Correcao'
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
    end
  end
  object RLReport1: TRLReport
    Left = 92
    Top = -221
    Width = 794
    Height = 1123
    DataSource = DM1.dsCartaCorrecao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    ShowProgress = False
    object RLBand2: TRLBand
      Left = 38
      Top = 631
      Width = 718
      Height = 251
      BandType = btSummary
      object RLLabel115: TRLLabel
        Left = 78
        Top = 20
        Width = 558
        Height = 14
        Caption = 
          'De acordo com os dispositivos regulamentares, far-se-'#225' a comunic' +
          'a'#231#227'o por carta, da qual o expedidor conservar'#225
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel116: TRLLabel
        Left = 40
        Top = 36
        Width = 544
        Height = 14
        Caption = 
          'c'#243'pia, provada a expedi'#231#227'o com "A.R," do correio ou o recibo do ' +
          'pr'#243'prio destinat'#225'rio, firmado na c'#243'pia da carta.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel117: TRLLabel
        Left = 79
        Top = 52
        Width = 561
        Height = 14
        Caption = 
          'Para evitar-se qualquer san'#231#227'o fiscal, solicitamos acusar(em) o ' +
          'recebimento desta, na c'#243'pia que a acompanha, de-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel118: TRLLabel
        Left = 41
        Top = 68
        Width = 397
        Height = 14
        Caption = 
          'vendo a via de V. S'#170'(s) ficar arquivada juntamente com a Nota Fi' +
          'scal em quest'#227'o.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw113: TRLDraw
        Left = 29
        Top = 113
        Width = 273
        Height = 137
      end
      object RLLabel119: TRLLabel
        Left = 77
        Top = 97
        Width = 166
        Height = 14
        Caption = 'Acusamos recebimento da 1'#186' via.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw114: TRLDraw
        Left = 32
        Top = 148
        Width = 265
        Height = 1
      end
      object RLLabel120: TRLLabel
        Left = 135
        Top = 153
        Width = 62
        Height = 12
        Caption = '(Local e Data)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw115: TRLDraw
        Left = 32
        Top = 228
        Width = 265
        Height = 1
      end
      object RLLabel121: TRLLabel
        Left = 109
        Top = 230
        Width = 99
        Height = 12
        Caption = '(Carimbo e Assinatura)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel122: TRLLabel
        Left = 496
        Top = 108
        Width = 102
        Height = 16
        Caption = 'Atenciosamente,'
      end
      object RLDraw116: TRLDraw
        Left = 424
        Top = 228
        Width = 249
        Height = 1
      end
      object RLLabel123: TRLLabel
        Left = 501
        Top = 230
        Width = 99
        Height = 12
        Caption = '(Carimbo e Assinatura)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 19
      Width = 718
      Height = 612
      DataSource = DM1.dsCartaCorrecaoIt
      PageBreaking = pbBeforePrint
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 590
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLDraw2: TRLDraw
          Left = 22
          Top = 36
          Width = 395
          Height = 99
        end
        object RLDraw1: TRLDraw
          Left = 22
          Top = 1
          Width = 677
          Height = 33
        end
        object RLLabel1: TRLLabel
          Left = 141
          Top = 9
          Width = 422
          Height = 19
          Alignment = taCenter
          Caption = 'Comunica'#231#227'o de Irregularidades em Documento Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 32
          Top = 49
          Width = 26
          Height = 12
          Caption = 'Sr.(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 48
          Top = 65
          Width = 35
          Height = 12
          DataField = 'lkNome'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 32
          Top = 81
          Width = 31
          Height = 12
          DataField = 'lkCGC'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 176
          Top = 81
          Width = 49
          Height = 12
          DataField = 'lkEndereco'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 208
          Top = 97
          Width = 39
          Height = 12
          DataField = 'lkCidade'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 32
          Top = 97
          Width = 34
          Height = 12
          DataField = 'lkBairro'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 32
          Top = 113
          Width = 23
          Height = 12
          DataField = 'lkUF'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 32
          Top = 141
          Width = 45
          Height = 12
          DataField = 'Descricao'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 22
          Top = 137
          Width = 395
          Height = 37
        end
        object RLDraw3: TRLDraw
          Left = 421
          Top = 36
          Width = 277
          Height = 99
        end
        object RLDraw5: TRLDraw
          Left = 422
          Top = 137
          Width = 276
          Height = 17
        end
        object RLDraw6: TRLDraw
          Left = 422
          Top = 154
          Width = 276
          Height = 20
        end
        object RLDBText8: TRLDBText
          Left = 557
          Top = 157
          Width = 24
          Height = 12
          Alignment = taCenter
          DataField = 'Inscr'
          DataSource = DM1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 32
          Top = 141
          Width = 45
          Height = 12
          DataField = 'Descricao'
          DataSource = DM1.dsCartaCorrecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 529
          Top = 139
          Width = 80
          Height = 12
          Alignment = taCenter
          Caption = 'Inscri'#231#227'o Estadual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 48
          Top = 193
          Width = 118
          Height = 14
          Caption = 'Prezado(s) Senhor(es):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 115
          Top = 209
          Width = 586
          Height = 14
          Caption = 
            'Para atendimento aos dispositivos regulamentares da legisla'#231#227'o f' +
            'iscal comunicamos a V. S.'#170'(s) que, ao conferirmos a(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 48
          Top = 226
          Width = 614
          Height = 14
          Caption = 
            'Nota(s) Fiscal(is) em refer'#234'ncia, constatamos a(s) abaixo indica' +
            'da(s) pelo(s) respectivo(s) c'#243'digo(s), pedindo considerar(em)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 48
          Top = 242
          Width = 354
          Height = 14
          Caption = 
            'a(s) corre'#231#227'o('#245'es) adiante efetuada(s), al'#233'm das provid'#234'ncias ca' +
            'b'#237'veis:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 81
          Top = 276
          Width = 173
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw8: TRLDraw
          Left = 39
          Top = 292
          Width = 215
          Height = 17
        end
        object RLDraw9: TRLDraw
          Left = 39
          Top = 308
          Width = 215
          Height = 17
        end
        object RLDraw10: TRLDraw
          Left = 39
          Top = 324
          Width = 215
          Height = 17
        end
        object RLDraw11: TRLDraw
          Left = 39
          Top = 340
          Width = 215
          Height = 17
        end
        object RLDraw12: TRLDraw
          Left = 39
          Top = 356
          Width = 215
          Height = 17
        end
        object RLDraw13: TRLDraw
          Left = 39
          Top = 372
          Width = 215
          Height = 17
        end
        object RLDraw14: TRLDraw
          Left = 39
          Top = 388
          Width = 215
          Height = 17
        end
        object RLDraw15: TRLDraw
          Left = 39
          Top = 404
          Width = 215
          Height = 17
        end
        object RLDraw16: TRLDraw
          Left = 39
          Top = 420
          Width = 215
          Height = 17
        end
        object RLDraw17: TRLDraw
          Left = 39
          Top = 436
          Width = 215
          Height = 17
        end
        object RLDraw18: TRLDraw
          Left = 39
          Top = 452
          Width = 215
          Height = 17
        end
        object RLDraw19: TRLDraw
          Left = 39
          Top = 468
          Width = 215
          Height = 17
        end
        object RLDraw20: TRLDraw
          Left = 39
          Top = 484
          Width = 215
          Height = 17
        end
        object RLDraw21: TRLDraw
          Left = 39
          Top = 500
          Width = 215
          Height = 17
        end
        object RLDraw22: TRLDraw
          Left = 39
          Top = 516
          Width = 215
          Height = 17
        end
        object RLDraw23: TRLDraw
          Left = 39
          Top = 532
          Width = 215
          Height = 17
        end
        object RLDraw24: TRLDraw
          Left = 305
          Top = 276
          Width = 173
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw25: TRLDraw
          Left = 263
          Top = 292
          Width = 215
          Height = 17
        end
        object RLDraw26: TRLDraw
          Left = 263
          Top = 308
          Width = 215
          Height = 17
        end
        object RLDraw27: TRLDraw
          Left = 263
          Top = 324
          Width = 215
          Height = 17
        end
        object RLDraw28: TRLDraw
          Left = 263
          Top = 340
          Width = 215
          Height = 17
        end
        object RLDraw29: TRLDraw
          Left = 263
          Top = 356
          Width = 215
          Height = 17
        end
        object RLDraw30: TRLDraw
          Left = 263
          Top = 372
          Width = 215
          Height = 17
        end
        object RLDraw31: TRLDraw
          Left = 263
          Top = 388
          Width = 215
          Height = 17
        end
        object RLDraw32: TRLDraw
          Left = 263
          Top = 404
          Width = 215
          Height = 17
        end
        object RLDraw33: TRLDraw
          Left = 263
          Top = 420
          Width = 215
          Height = 17
        end
        object RLDraw34: TRLDraw
          Left = 263
          Top = 436
          Width = 215
          Height = 17
        end
        object RLDraw35: TRLDraw
          Left = 263
          Top = 452
          Width = 215
          Height = 17
        end
        object RLDraw36: TRLDraw
          Left = 263
          Top = 468
          Width = 215
          Height = 17
        end
        object RLDraw37: TRLDraw
          Left = 263
          Top = 484
          Width = 215
          Height = 17
        end
        object RLDraw38: TRLDraw
          Left = 263
          Top = 500
          Width = 215
          Height = 17
        end
        object RLDraw39: TRLDraw
          Left = 263
          Top = 516
          Width = 215
          Height = 17
        end
        object RLDraw40: TRLDraw
          Left = 263
          Top = 532
          Width = 215
          Height = 17
        end
        object RLDraw58: TRLDraw
          Left = 52
          Top = 276
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw59: TRLDraw
          Left = 39
          Top = 276
          Width = 14
          Height = 17
        end
        object RLDraw60: TRLDraw
          Left = 52
          Top = 292
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw61: TRLDraw
          Left = 52
          Top = 308
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw62: TRLDraw
          Left = 52
          Top = 324
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw63: TRLDraw
          Left = 52
          Top = 340
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw64: TRLDraw
          Left = 52
          Top = 356
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw65: TRLDraw
          Left = 52
          Top = 372
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw66: TRLDraw
          Left = 52
          Top = 388
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw67: TRLDraw
          Left = 52
          Top = 404
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw68: TRLDraw
          Left = 52
          Top = 420
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw69: TRLDraw
          Left = 52
          Top = 436
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw70: TRLDraw
          Left = 52
          Top = 452
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw71: TRLDraw
          Left = 52
          Top = 468
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw72: TRLDraw
          Left = 52
          Top = 484
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw73: TRLDraw
          Left = 52
          Top = 500
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw74: TRLDraw
          Left = 52
          Top = 516
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw75: TRLDraw
          Left = 52
          Top = 532
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLLabel9: TRLLabel
          Left = 54
          Top = 278
          Width = 27
          Height = 12
          Caption = 'C'#211'D.'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod1: TRLLabel
          Left = 66
          Top = 295
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '1'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod2: TRLLabel
          Left = 66
          Top = 311
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '2'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod3: TRLLabel
          Left = 66
          Top = 327
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '3'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod4: TRLLabel
          Left = 66
          Top = 343
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '4'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod5: TRLLabel
          Left = 66
          Top = 359
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '5'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod6: TRLLabel
          Left = 66
          Top = 375
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '6'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod7: TRLLabel
          Left = 66
          Top = 391
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '7'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod8: TRLLabel
          Left = 66
          Top = 407
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '8'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod9: TRLLabel
          Left = 66
          Top = 423
          Width = 8
          Height = 12
          Alignment = taCenter
          Caption = '9'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod10: TRLLabel
          Left = 63
          Top = 439
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '10'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod11: TRLLabel
          Left = 63
          Top = 455
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '11'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod12: TRLLabel
          Left = 63
          Top = 471
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '12'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod13: TRLLabel
          Left = 63
          Top = 487
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '13'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod14: TRLLabel
          Left = 63
          Top = 503
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '14'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod15: TRLLabel
          Left = 63
          Top = 519
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '15'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod16: TRLLabel
          Left = 63
          Top = 535
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '16'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLNome1: TRLLabel
          Left = 84
          Top = 296
          Width = 47
          Height = 12
          Caption = 'QRNome1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome2: TRLLabel
          Left = 85
          Top = 312
          Width = 47
          Height = 12
          Caption = 'QRNome2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome3: TRLLabel
          Left = 84
          Top = 328
          Width = 47
          Height = 12
          Caption = 'QRNome3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome4: TRLLabel
          Left = 84
          Top = 344
          Width = 47
          Height = 12
          Caption = 'QRNome4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome5: TRLLabel
          Left = 84
          Top = 360
          Width = 47
          Height = 12
          Caption = 'QRNome5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome6: TRLLabel
          Left = 84
          Top = 376
          Width = 47
          Height = 12
          Caption = 'QRNome6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome7: TRLLabel
          Left = 84
          Top = 392
          Width = 47
          Height = 12
          Caption = 'QRNome7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome8: TRLLabel
          Left = 84
          Top = 408
          Width = 47
          Height = 12
          Caption = 'QRNome8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome9: TRLLabel
          Left = 84
          Top = 424
          Width = 47
          Height = 12
          Caption = 'QRNome9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome10: TRLLabel
          Left = 84
          Top = 440
          Width = 52
          Height = 12
          Caption = 'QRNome10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome11: TRLLabel
          Left = 84
          Top = 456
          Width = 52
          Height = 12
          Caption = 'QRNome11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome12: TRLLabel
          Left = 84
          Top = 472
          Width = 52
          Height = 12
          Caption = 'QRNome12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome13: TRLLabel
          Left = 84
          Top = 488
          Width = 52
          Height = 12
          Caption = 'QRNome13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome14: TRLLabel
          Left = 84
          Top = 504
          Width = 52
          Height = 12
          Caption = 'QRNome14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome15: TRLLabel
          Left = 84
          Top = 520
          Width = 52
          Height = 12
          Caption = 'QRNome15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome16: TRLLabel
          Left = 84
          Top = 536
          Width = 52
          Height = 12
          Caption = 'QRNome16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 104
          Top = 279
          Width = 87
          Height = 12
          Caption = 'IRREGULARIDADE'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel44: TRLLabel
          Left = 328
          Top = 279
          Width = 87
          Height = 12
          Caption = 'IRREGULARIDADE'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw76: TRLDraw
          Left = 263
          Top = 276
          Width = 14
          Height = 17
        end
        object RLDraw77: TRLDraw
          Left = 276
          Top = 276
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw78: TRLDraw
          Left = 276
          Top = 292
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw79: TRLDraw
          Left = 276
          Top = 308
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw80: TRLDraw
          Left = 276
          Top = 324
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw81: TRLDraw
          Left = 276
          Top = 340
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw82: TRLDraw
          Left = 276
          Top = 356
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw83: TRLDraw
          Left = 276
          Top = 372
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw84: TRLDraw
          Left = 276
          Top = 388
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw85: TRLDraw
          Left = 276
          Top = 404
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw86: TRLDraw
          Left = 276
          Top = 420
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw87: TRLDraw
          Left = 276
          Top = 436
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw88: TRLDraw
          Left = 276
          Top = 452
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw89: TRLDraw
          Left = 276
          Top = 468
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw90: TRLDraw
          Left = 276
          Top = 484
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw91: TRLDraw
          Left = 276
          Top = 500
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw92: TRLDraw
          Left = 276
          Top = 516
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw93: TRLDraw
          Left = 276
          Top = 532
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLLabel45: TRLLabel
          Left = 278
          Top = 278
          Width = 27
          Height = 12
          Caption = 'C'#211'D.'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod17: TRLLabel
          Left = 287
          Top = 295
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '17'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod18: TRLLabel
          Left = 287
          Top = 311
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '18'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod19: TRLLabel
          Left = 287
          Top = 327
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '19'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod20: TRLLabel
          Left = 287
          Top = 343
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '20'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod21: TRLLabel
          Left = 287
          Top = 359
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '21'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod22: TRLLabel
          Left = 287
          Top = 375
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '22'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod23: TRLLabel
          Left = 287
          Top = 391
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '23'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod24: TRLLabel
          Left = 287
          Top = 407
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '24'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod25: TRLLabel
          Left = 287
          Top = 423
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '25'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod26: TRLLabel
          Left = 287
          Top = 439
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '26'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod27: TRLLabel
          Left = 287
          Top = 455
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '27'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod28: TRLLabel
          Left = 287
          Top = 471
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '28'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod29: TRLLabel
          Left = 287
          Top = 487
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '29'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod30: TRLLabel
          Left = 287
          Top = 503
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '30'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod31: TRLLabel
          Left = 287
          Top = 519
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '31'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod32: TRLLabel
          Left = 287
          Top = 535
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '32'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLNome17: TRLLabel
          Left = 308
          Top = 296
          Width = 52
          Height = 12
          Caption = 'QRNome17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome18: TRLLabel
          Left = 308
          Top = 312
          Width = 52
          Height = 12
          Caption = 'QRNome18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome21: TRLLabel
          Left = 308
          Top = 360
          Width = 52
          Height = 12
          Caption = 'QRNome21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome19: TRLLabel
          Left = 308
          Top = 328
          Width = 52
          Height = 12
          Caption = 'QRNome19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome20: TRLLabel
          Left = 308
          Top = 344
          Width = 52
          Height = 12
          Caption = 'QRNome20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome22: TRLLabel
          Left = 308
          Top = 376
          Width = 52
          Height = 12
          Caption = 'QRNome22'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome23: TRLLabel
          Left = 308
          Top = 392
          Width = 52
          Height = 12
          Caption = 'QRNome23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome24: TRLLabel
          Left = 308
          Top = 408
          Width = 52
          Height = 12
          Caption = 'QRNome24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome25: TRLLabel
          Left = 308
          Top = 424
          Width = 52
          Height = 12
          Caption = 'QRNome25'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome26: TRLLabel
          Left = 308
          Top = 440
          Width = 52
          Height = 12
          Caption = 'QRNome26'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome27: TRLLabel
          Left = 308
          Top = 456
          Width = 52
          Height = 12
          Caption = 'QRNome27'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome28: TRLLabel
          Left = 308
          Top = 472
          Width = 52
          Height = 12
          Caption = 'QRNome28'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome29: TRLLabel
          Left = 308
          Top = 488
          Width = 52
          Height = 12
          Caption = 'QRNome29'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome30: TRLLabel
          Left = 308
          Top = 504
          Width = 52
          Height = 12
          Caption = 'QRNome30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome31: TRLLabel
          Left = 308
          Top = 520
          Width = 52
          Height = 12
          Caption = 'QRNome31'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome32: TRLLabel
          Left = 308
          Top = 536
          Width = 52
          Height = 12
          Caption = 'QRNome32'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw94: TRLDraw
          Left = 484
          Top = 276
          Width = 14
          Height = 17
        end
        object RLDraw95: TRLDraw
          Left = 496
          Top = 276
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw41: TRLDraw
          Left = 525
          Top = 276
          Width = 175
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw42: TRLDraw
          Left = 484
          Top = 292
          Width = 215
          Height = 17
        end
        object RLDraw43: TRLDraw
          Left = 484
          Top = 308
          Width = 215
          Height = 17
        end
        object RLDraw44: TRLDraw
          Left = 484
          Top = 324
          Width = 215
          Height = 17
        end
        object RLDraw45: TRLDraw
          Left = 484
          Top = 340
          Width = 215
          Height = 17
        end
        object RLDraw46: TRLDraw
          Left = 484
          Top = 356
          Width = 215
          Height = 17
        end
        object RLDraw47: TRLDraw
          Left = 484
          Top = 372
          Width = 215
          Height = 17
        end
        object RLDraw48: TRLDraw
          Left = 484
          Top = 388
          Width = 215
          Height = 17
        end
        object RLDraw49: TRLDraw
          Left = 484
          Top = 404
          Width = 215
          Height = 17
        end
        object RLDraw50: TRLDraw
          Left = 484
          Top = 420
          Width = 215
          Height = 17
        end
        object RLDraw51: TRLDraw
          Left = 484
          Top = 436
          Width = 215
          Height = 17
        end
        object RLDraw52: TRLDraw
          Left = 484
          Top = 452
          Width = 215
          Height = 17
        end
        object RLDraw53: TRLDraw
          Left = 484
          Top = 468
          Width = 215
          Height = 17
        end
        object RLDraw54: TRLDraw
          Left = 484
          Top = 484
          Width = 215
          Height = 17
        end
        object RLDraw55: TRLDraw
          Left = 484
          Top = 500
          Width = 215
          Height = 17
        end
        object RLDraw56: TRLDraw
          Left = 484
          Top = 516
          Width = 215
          Height = 17
        end
        object RLDraw117: TRLDraw
          Left = 484
          Top = 532
          Width = 215
          Height = 17
        end
        object RLLabel124: TRLLabel
          Left = 559
          Top = 279
          Width = 87
          Height = 12
          Caption = 'IRREGULARIDADE'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel125: TRLLabel
          Left = 497
          Top = 278
          Width = 27
          Height = 12
          Caption = 'C'#211'D.'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw118: TRLDraw
          Left = 496
          Top = 292
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw119: TRLDraw
          Left = 496
          Top = 308
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw120: TRLDraw
          Left = 496
          Top = 324
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw121: TRLDraw
          Left = 496
          Top = 340
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw122: TRLDraw
          Left = 496
          Top = 356
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw123: TRLDraw
          Left = 496
          Top = 372
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw124: TRLDraw
          Left = 496
          Top = 388
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw125: TRLDraw
          Left = 496
          Top = 404
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw126: TRLDraw
          Left = 496
          Top = 420
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw127: TRLDraw
          Left = 496
          Top = 436
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw128: TRLDraw
          Left = 496
          Top = 452
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw129: TRLDraw
          Left = 496
          Top = 468
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw130: TRLDraw
          Left = 496
          Top = 484
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw131: TRLDraw
          Left = 496
          Top = 516
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw132: TRLDraw
          Left = 496
          Top = 500
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLDraw133: TRLDraw
          Left = 496
          Top = 532
          Width = 29
          Height = 17
          Brush.Color = clInactiveBorder
        end
        object RLCod33: TRLLabel
          Left = 507
          Top = 295
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '33'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod34: TRLLabel
          Left = 507
          Top = 311
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '34'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod35: TRLLabel
          Left = 507
          Top = 327
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '35'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod36: TRLLabel
          Left = 507
          Top = 343
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '36'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod37: TRLLabel
          Left = 507
          Top = 359
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '37'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod38: TRLLabel
          Left = 507
          Top = 375
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '38'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod39: TRLLabel
          Left = 507
          Top = 391
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '39'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod40: TRLLabel
          Left = 507
          Top = 407
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '40'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod41: TRLLabel
          Left = 507
          Top = 423
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '41'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod42: TRLLabel
          Left = 507
          Top = 439
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '42'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod43: TRLLabel
          Left = 507
          Top = 455
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '43'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod44: TRLLabel
          Left = 507
          Top = 471
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '44'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod45: TRLLabel
          Left = 507
          Top = 487
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '45'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod46: TRLLabel
          Left = 507
          Top = 503
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '46'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod47: TRLLabel
          Left = 507
          Top = 519
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '47'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLCod48: TRLLabel
          Left = 507
          Top = 535
          Width = 14
          Height = 12
          Alignment = taCenter
          Caption = '48'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLNome33: TRLLabel
          Left = 530
          Top = 296
          Width = 52
          Height = 12
          Caption = 'QRNome33'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome34: TRLLabel
          Left = 530
          Top = 312
          Width = 52
          Height = 12
          Caption = 'QRNome34'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome35: TRLLabel
          Left = 530
          Top = 328
          Width = 52
          Height = 12
          Caption = 'QRNome35'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome36: TRLLabel
          Left = 530
          Top = 344
          Width = 52
          Height = 12
          Caption = 'QRNome36'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome37: TRLLabel
          Left = 530
          Top = 360
          Width = 52
          Height = 12
          Caption = 'QRNome37'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome39: TRLLabel
          Left = 530
          Top = 392
          Width = 52
          Height = 12
          Caption = 'QRNome39'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome42: TRLLabel
          Left = 530
          Top = 440
          Width = 52
          Height = 12
          Caption = 'QRNome42'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome43: TRLLabel
          Left = 530
          Top = 456
          Width = 52
          Height = 12
          Caption = 'QRNome43'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome44: TRLLabel
          Left = 530
          Top = 472
          Width = 52
          Height = 12
          Caption = 'QRNome44'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome45: TRLLabel
          Left = 530
          Top = 488
          Width = 52
          Height = 12
          Caption = 'QRNome45'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome46: TRLLabel
          Left = 530
          Top = 504
          Width = 52
          Height = 12
          Caption = 'QRNome46'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome47: TRLLabel
          Left = 530
          Top = 519
          Width = 52
          Height = 12
          Caption = 'QRNome47'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome48: TRLLabel
          Left = 530
          Top = 535
          Width = 52
          Height = 12
          Caption = 'QRNome48'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome38: TRLLabel
          Left = 531
          Top = 375
          Width = 52
          Height = 12
          Caption = 'QRNome38'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLNome41: TRLLabel
          Left = 530
          Top = 424
          Width = 52
          Height = 12
          Caption = 'QRNome41'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLNome40: TRLLabel
          Left = 530
          Top = 408
          Width = 52
          Height = 12
          Caption = 'QRNome40'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLLabel112: TRLLabel
          Left = 30
          Top = 574
          Width = 27
          Height = 12
          Caption = 'C'#211'D.'
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw112: TRLDraw
          Left = 69
          Top = 572
          Width = 644
          Height = 18
        end
        object RLLabel3: TRLLabel
          Left = 72
          Top = 575
          Width = 56
          Height = 12
          Caption = 'CORRE'#199#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 590
        Width = 718
        Height = 19
        object RLDBText11: TRLDBText
          Left = 25
          Top = 2
          Width = 33
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'CodCorrecao'
          DataSource = DM1.dsCartaCorrecaoIt
          ParentColor = False
          Transparent = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 70
          Top = 2
          Width = 643
          Height = 16
          DataField = 'Correcao'
          DataSource = DM1.dsCartaCorrecaoIt
        end
      end
    end
  end
end
