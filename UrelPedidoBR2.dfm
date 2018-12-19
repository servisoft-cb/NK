object fRelPedidoBR2: TfRelPedidoBR2
  Left = 95
  Top = 148
  Width = 1140
  Height = 402
  Caption = 'fRelPedidoBR2'
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
    Top = 8
    Width = 1123
    Height = 794
    DataSource = fConsPedidoBR.dsqConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 23
      Top = 26
      Width = 1077
      Height = 65
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 312
        Top = 8
        Width = 143
        Height = 16
        Caption = 'Relat'#243'rio dos Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 956
        Top = 2
        Width = 38
        Height = 14
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 948
        Top = 17
        Width = 46
        Height = 14
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 995
        Top = 2
        Width = 31
        Height = 14
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 995
        Top = 17
        Width = 33
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 8
        Top = 31
        Width = 38
        Height = 12
        Caption = 'Op'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 48
        Width = 56
        Height = 14
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel4: TRLLabel
        Left = 109
        Top = 48
        Width = 30
        Height = 14
        Caption = 'Nome'
      end
      object RLLabel5: TRLLabel
        Left = 378
        Top = 48
        Width = 20
        Height = 14
        Caption = 'Cor'
      end
      object RLLabel9: TRLLabel
        Left = 647
        Top = 48
        Width = 44
        Height = 14
        Caption = 'N'#186' Tal'#227'o'
      end
      object RLLabel10: TRLLabel
        Left = 727
        Top = 48
        Width = 58
        Height = 14
        Caption = 'Quantidade'
      end
      object RLLabel11: TRLLabel
        Left = 815
        Top = 48
        Width = 46
        Height = 14
        Caption = 'Entregue'
      end
      object RLLabel12: TRLLabel
        Left = 870
        Top = 48
        Width = 59
        Height = 14
        Caption = 'Dt.Entregue'
      end
      object RLLabel13: TRLLabel
        Left = 943
        Top = 48
        Width = 48
        Height = 14
        Caption = 'Pendente'
      end
      object RLDraw1: TRLDraw
        Left = 1
        Top = 46
        Width = 1076
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw4: TRLDraw
        Left = 2
        Top = 64
        Width = 1069
        Height = 2
        DrawKind = dkLine
      end
      object RLLabel20: TRLLabel
        Left = 547
        Top = 48
        Width = 56
        Height = 14
        Caption = 'Pedido OC '
      end
      object RLLabel46: TRLLabel
        Left = 1018
        Top = 48
        Width = 51
        Height = 14
        Caption = 'Produzido'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 23
      Top = 91
      Width = 1077
      Height = 230
      DataSource = fConsPedidoBR.dsqConsulta
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 17
        Width = 1077
        Height = 63
        DataSource = fConsPedidoBR.dsPedidoNota
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 1077
          Height = 18
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLLabel14: TRLLabel
            Left = 48
            Top = 2
            Width = 41
            Height = 14
            Caption = 'N'#186' Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 112
            Top = 2
            Width = 28
            Height = 14
            Caption = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 152
            Top = 2
            Width = 27
            Height = 14
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 200
            Top = 2
            Width = 53
            Height = 14
            Caption = 'Data Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 272
            Top = 2
            Width = 72
            Height = 14
            Caption = 'Qtd.Faturada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLNota2: TRLLabel
            Left = 410
            Top = 2
            Width = 41
            Height = 14
            Caption = 'N'#186' Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLItem2: TRLLabel
            Left = 474
            Top = 2
            Width = 28
            Height = 14
            Caption = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLTipo2: TRLLabel
            Left = 514
            Top = 2
            Width = 27
            Height = 14
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLData2: TRLLabel
            Left = 562
            Top = 2
            Width = 53
            Height = 14
            Caption = 'Data Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLQtd2: TRLLabel
            Left = 634
            Top = 2
            Width = 72
            Height = 14
            Caption = 'Qtd.Faturada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLNota3: TRLLabel
            Left = 760
            Top = 2
            Width = 41
            Height = 14
            Caption = 'N'#186' Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLItem3: TRLLabel
            Left = 824
            Top = 2
            Width = 28
            Height = 14
            Caption = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLTipo3: TRLLabel
            Left = 864
            Top = 2
            Width = 27
            Height = 14
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLData3: TRLLabel
            Left = 912
            Top = 2
            Width = 53
            Height = 14
            Caption = 'Data Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLQtd3: TRLLabel
            Left = 984
            Top = 2
            Width = 72
            Height = 14
            Caption = 'Qtd.Faturada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 18
          Width = 1077
          Height = 17
          ColCount = 3
          BeforePrint = RLDetailGrid1BeforePrint
          object RLDBText10: TRLDBText
            Left = 47
            Top = 2
            Width = 48
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'NumNota'
            DataSource = fConsPedidoBR.dsPedidoNota
          end
          object RLDBText11: TRLDBText
            Left = 112
            Top = 2
            Width = 30
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'ItemNota'
            DataSource = fConsPedidoBR.dsPedidoNota
          end
          object RLDBText12: TRLDBText
            Left = 152
            Top = 2
            Width = 30
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'Tipo'
            DataSource = fConsPedidoBR.dsPedidoNota
          end
          object RLDBText13: TRLDBText
            Left = 195
            Top = 2
            Width = 64
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'DtNota'
            DataSource = fConsPedidoBR.dsPedidoNota
          end
          object RLDBText14: TRLDBText
            Left = 263
            Top = 2
            Width = 90
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'QtdPares'
            DataSource = fConsPedidoBR.dsPedidoNota
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 35
          Width = 1077
          Height = 21
          BandType = btFooter
          BeforePrint = RLBand2BeforePrint
          object RLLabel19: TRLLabel
            Left = 528
            Top = 5
            Width = 177
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total do produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw3: TRLDraw
            Left = 656
            Top = 2
            Width = 419
            Height = 1
            DrawKind = dkLine
          end
          object RLLabel21: TRLLabel
            Left = 708
            Top = 5
            Width = 84
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 793
            Top = 5
            Width = 84
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 929
            Top = 5
            Width = 84
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel47: TRLLabel
            Left = 1014
            Top = 5
            Width = 62
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 1077
        Height = 17
        BeforePrint = RLBand4BeforePrint
        object RLDBText1: TRLDBText
          Left = 1
          Top = 2
          Width = 104
          Height = 14
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText2: TRLDBText
          Left = 107
          Top = 2
          Width = 268
          Height = 14
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText3: TRLDBText
          Left = 377
          Top = 2
          Width = 154
          Height = 14
          AutoSize = False
          DataField = 'lkNomeCor'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText5: TRLDBText
          Left = 613
          Top = 2
          Width = 106
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumTalao'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText6: TRLDBText
          Left = 719
          Top = 2
          Width = 76
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdPares'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText7: TRLDBText
          Left = 794
          Top = 2
          Width = 76
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdParesFat'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText9: TRLDBText
          Left = 869
          Top = 2
          Width = 64
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtReprogramacao'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText8: TRLDBText
          Left = 933
          Top = 2
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdParesRest'
          DataSource = fConsPedidoBR.dsqConsulta
        end
        object RLDBText16: TRLDBText
          Left = 533
          Top = 2
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'PedidoCliente'
          DataSource = fConsPedidoBR.dsqConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 1077
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText19: TRLDBText
          Left = 1015
          Top = 1
          Width = 62
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdProduzida'
          DataSource = fConsPedidoBR.dsqConsulta
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 80
        Width = 1077
        Height = 42
        BandType = btSummary
        BeforePrint = RLBand5BeforePrint
        object RLLabel24: TRLLabel
          Left = 640
          Top = 5
          Width = 65
          Height = 14
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 656
          Top = 2
          Width = 419
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel25: TRLLabel
          Left = 708
          Top = 5
          Width = 84
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 794
          Top = 5
          Width = 86
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 929
          Top = 5
          Width = 84
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel48: TRLLabel
          Left = 1014
          Top = 5
          Width = 62
          Height = 14
          Alignment = taCenter
          AutoSize = False
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
  object RLReport2: TRLReport
    Left = 1157
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsPedidoBR.dsmResumo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    BeforePrint = RLReport2BeforePrint
    object RLSubDetail3: TRLSubDetail
      Left = 23
      Top = 26
      Width = 748
      Height = 151
      DataSource = fConsPedidoBR.dsmResumo
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 748
        Height = 63
        BandType = btHeader
        object RLLabel28: TRLLabel
          Left = 312
          Top = 8
          Width = 143
          Height = 16
          Caption = 'Relat'#243'rio dos Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 8
          Top = 31
          Width = 38
          Height = 12
          Caption = 'Op'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 3
          Top = 48
          Width = 36
          Height = 14
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 40
          Top = 48
          Width = 56
          Height = 14
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 131
          Top = 48
          Width = 40
          Height = 14
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 544
          Top = 48
          Width = 41
          Height = 14
          Caption = 'Qtd.Fat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 9
          Top = 46
          Width = 740
          Height = 2
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
        object RLLabel41: TRLLabel
          Left = 473
          Top = 48
          Width = 46
          Height = 14
          Caption = 'Qtd.Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 710
          Top = 48
          Width = 36
          Height = 14
          Caption = '%Falta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 638
          Top = 2
          Width = 38
          Height = 14
          Caption = 'P'#225'gina:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 630
          Top = 17
          Width = 46
          Height = 14
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo5: TRLSystemInfo
          Left = 677
          Top = 2
          Width = 31
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLSystemInfo6: TRLSystemInfo
          Left = 677
          Top = 17
          Width = 33
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 8
          Top = 62
          Width = 740
          Height = 2
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
        object RLLabel39: TRLLabel
          Left = 594
          Top = 49
          Width = 50
          Height = 14
          Caption = 'Qtd.Pend.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 337
          Top = 49
          Width = 20
          Height = 14
          Caption = 'Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 655
          Top = 49
          Width = 48
          Height = 14
          Caption = 'Qtd.Prod.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 63
        Width = 748
        Height = 14
        BeforePrint = RLBand7BeforePrint
        object RLDBText15: TRLDBText
          Left = 2
          Top = 1
          Width = 36
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CodProduto'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 39
          Top = 1
          Width = 90
          Height = 11
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 130
          Top = 1
          Width = 203
          Height = 11
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 456
          Top = 1
          Width = 64
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdTotal'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 521
          Top = 1
          Width = 64
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdFaturada'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 712
          Top = 1
          Width = 34
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PercRestante'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 8
          Top = 12
          Width = 740
          Height = 2
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Pen.Style = psDot
        end
        object RLDBText23: TRLDBText
          Left = 586
          Top = 1
          Width = 58
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdRestante'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 334
          Top = 1
          Width = 120
          Height = 11
          AutoSize = False
          DataField = 'NomeCor'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 647
          Top = 2
          Width = 58
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdRestante'
          DataSource = fConsPedidoBR.dsmResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 77
        Width = 748
        Height = 19
        BandType = btFooter
        BeforePrint = RLBand8BeforePrint
        object RLLabel29: TRLLabel
          Left = 358
          Top = 2
          Width = 51
          Height = 14
          Caption = 'Total ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 452
          Top = 5
          Width = 69
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 523
          Top = 5
          Width = 61
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 712
          Top = 5
          Width = 33
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 585
          Top = 5
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 646
          Top = 5
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total ==>'
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
end
