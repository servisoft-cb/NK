object fRelListagemDefeito: TfRelListagemDefeito
  Left = 293
  Top = 205
  Width = 696
  Height = 480
  Caption = 'Listagem de Defeito'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fConsDefeito.dsDefeitos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 38
      Width = 718
      Height = 74
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedLeft = True
      Borders.FixedTop = True
      Borders.FixedRight = True
      Borders.FixedBottom = True
      ColCount = 2
      ColSpacing = 2.000000000000000000
      BeforePrint = RLDetailGrid1BeforePrint
      object RLLabel1: TRLLabel
        Left = 8
        Top = 4
        Width = 46
        Height = 14
        Caption = 'Defeitos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 58
        Top = 4
        Width = 271
        Height = 16
        AutoSize = False
        DataField = 'Nome'
        DataSource = fConsDefeito.dsDefeitos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLBarcode1: TRLBarcode
        Left = 8
        Top = 22
        Width = 340
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BarcodeType = bcCode128C
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
      end
      object RLLabel2: TRLLabel
        Left = 9
        Top = 56
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
    end
  end
end
