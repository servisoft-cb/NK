object fRelPedidoTalao: TfRelPedidoTalao
  Left = 119
  Top = 195
  Width = 1107
  Height = 480
  Caption = 'fRelPedidoTalao'
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
    Left = 136
    Top = 40
    Width = 794
    Height = 1123
    DataSource = fConsPedidoTalao.dsmConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 43
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 224
        Top = 8
        Width = 196
        Height = 16
        Caption = 'Relat'#243'rio de Tal'#227'o por Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 654
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
        Left = 672
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
        Left = 639
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
        Left = 672
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
        Left = 4
        Top = 28
        Width = 31
        Height = 12
        Caption = 'Pedido'
      end
      object RLLabel3: TRLLabel
        Left = 44
        Top = 28
        Width = 52
        Height = 12
        Caption = 'Dt.Emiss'#227'o'
      end
      object RLLabel4: TRLLabel
        Left = 116
        Top = 28
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel5: TRLLabel
        Left = 348
        Top = 28
        Width = 25
        Height = 12
        Caption = 'Tal'#227'o'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 41
        Width = 734
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 73
      Width = 734
      Height = 88
      DataSource = fConsPedidoTalao.dsmConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 15
        object RLDBText1: TRLDBText
          Left = 1
          Top = 0
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Pedido'
          DataSource = fConsPedidoTalao.dsmConsulta
        end
        object RLDBText2: TRLDBText
          Left = 62
          Top = 0
          Width = 57
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtEmissao'
          DataSource = fConsPedidoTalao.dsmConsulta
        end
        object RLDBText3: TRLDBText
          Left = 120
          Top = 0
          Width = 225
          Height = 12
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = fConsPedidoTalao.dsmConsulta
        end
        object RLDBMemo1: TRLDBMemo
          Left = 348
          Top = 0
          Width = 373
          Height = 12
          DataField = 'ObsTalao'
          DataSource = fConsPedidoTalao.dsmConsulta
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 13
          Width = 734
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
  end
end
