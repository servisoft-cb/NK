object fRelOrcamento2: TfRelOrcamento2
  Left = 147
  Top = 193
  Width = 827
  Height = 519
  Caption = 'fRelOrcamento2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = -8
    Width = 794
    Height = 1123
    DataSource = fPrevOrcamento.dsqOrcamento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      object RLDBText1: TRLDBText
        Left = 3
        Top = 4
        Width = 59
        Height = 16
        DataField = 'Empresa'
        DataSource = DM1.dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 285
        Top = 9
        Width = 108
        Height = 22
        Caption = 'Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel47: TRLLabel
        Left = 618
        Top = 20
        Width = 29
        Height = 14
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 649
        Top = 21
        Width = 64
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 649
        Top = 3
        Width = 64
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = 605
        Top = 2
        Width = 42
        Height = 14
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 14
        Top = 40
        Width = 70
        Height = 15
        Caption = 'Dt. Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 94
        Top = 40
        Width = 42
        Height = 15
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 364
        Top = 40
        Width = 53
        Height = 15
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 424
        Top = 40
        Width = 82
        Height = 15
        Caption = 'Dt. Aprova'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 527
        Top = 40
        Width = 53
        Height = 15
        Caption = 'Vlr. Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 58
        Width = 718
        Height = 1
        Align = faClientBottom
        DrawKind = dkLine
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 38
      Top = 97
      Width = 718
      Height = 156
      DataSource = fPrevOrcamento.dsqOrcamento
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        object RLDBText26: TRLDBText
          Left = 8
          Top = 7
          Width = 74
          Height = 14
          AutoSize = False
          DataField = 'Data'
          DataSource = fPrevOrcamento.dsqOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 96
          Top = 7
          Width = 263
          Height = 14
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = fPrevOrcamento.dsqOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 365
          Top = 7
          Width = 51
          Height = 14
          AutoSize = False
          DataField = 'Situacao'
          DataSource = fPrevOrcamento.dsqOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 426
          Top = 7
          Width = 82
          Height = 14
          AutoSize = False
          DataField = 'DtAprovado'
          DataSource = fPrevOrcamento.dsqOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 513
          Top = 7
          Width = 68
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotal'
          DataSource = fPrevOrcamento.dsqOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 25
        Width = 718
        Height = 109
        DataSource = fPrevOrcamento.dsOrcamentoItens
        object RLSubDetail2: TRLSubDetail
          Left = 0
          Top = 25
          Width = 718
          Height = 45
          DataSource = fPrevOrcamento.dsOrcamentoItens
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 20
            object RLDBText6: TRLDBText
              Left = 66
              Top = 3
              Width = 137
              Height = 14
              AutoSize = False
              DataField = 'Referencia'
              DataSource = fPrevOrcamento.dsOrcamentoItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText7: TRLDBText
              Left = 208
              Top = 3
              Width = 251
              Height = 14
              AutoSize = False
              DataField = 'NomeProduto'
              DataSource = fPrevOrcamento.dsOrcamentoItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText8: TRLDBText
              Left = 464
              Top = 3
              Width = 68
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VlrUnitario'
              DataSource = fPrevOrcamento.dsOrcamentoItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText9: TRLDBText
              Left = 536
              Top = 3
              Width = 68
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Qtd'
              DataSource = fPrevOrcamento.dsOrcamentoItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText10: TRLDBText
              Left = 608
              Top = 3
              Width = 104
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VlrTotal'
              DataSource = fPrevOrcamento.dsOrcamentoItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 25
          BandType = btHeader
          object RLLabel6: TRLLabel
            Left = 66
            Top = 9
            Width = 62
            Height = 14
            Caption = 'Refer'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 208
            Top = 9
            Width = 47
            Height = 14
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 465
            Top = 9
            Width = 67
            Height = 14
            Alignment = taRightJustify
            Caption = 'Vlr. Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 582
            Top = 9
            Width = 22
            Height = 14
            Alignment = taRightJustify
            Caption = 'Qtd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 660
            Top = 9
            Width = 52
            Height = 14
            Alignment = taRightJustify
            Caption = 'Vlr. Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 70
          Width = 718
          Height = 11
          BandType = btFooter
          object RLDraw1: TRLDraw
            Left = 4
            Top = 3
            Width = 707
            Height = 5
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
      end
    end
  end
end