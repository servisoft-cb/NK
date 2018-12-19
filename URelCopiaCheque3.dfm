object fRelCopiaCheque3: TfRelCopiaCheque3
  Left = 114
  Top = 78
  Width = 860
  Height = 665
  Caption = 'fRelCopiaCheque3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 24
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DM1.dsCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    RecordRange = rrCurrentOnly
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 249
      DataSource = DM1.dsCheque
      RecordRange = rrCurrentOnly
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 42
        object RLLabel1: TRLLabel
          Left = 2
          Top = 4
          Width = 63
          Height = 14
          Caption = 'N'#186' Cheque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 601
          Top = 4
          Width = 55
          Height = 14
          Caption = 'Vlr. Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 66
          Top = 4
          Width = 61
          Height = 14
          DataField = 'NumCheque'
          DataSource = DM1.dsCheque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 657
          Top = 4
          Width = 40
          Height = 14
          DataField = 'VlrTotal'
          DataSource = DM1.dsCheque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 40
          Width = 718
          Height = 2
          Align = faBottom
        end
        object RLLabel8: TRLLabel
          Left = 239
          Top = 4
          Width = 51
          Height = 14
          Caption = 'Dt. Pgto.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 291
          Top = 4
          Width = 53
          Height = 14
          DataField = 'DtEmissao'
          DataSource = DM1.dsCheque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 401
          Top = 4
          Width = 97
          Height = 14
          Caption = 'Dt. Prev. Cheque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 499
          Top = 4
          Width = 52
          Height = 14
          DataField = 'DtPrevista'
          DataSource = DM1.dsCheque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 15
          Top = 20
          Width = 50
          Height = 14
          Caption = 'Nominal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 66
          Top = 20
          Width = 40
          Height = 14
          DataField = 'Nominal'
          DataSource = DM1.dsCheque
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
        Top = 42
        Width = 718
        Height = 91
        DataSource = DM1.dsChequeCPagar
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 36
          object RLDBText3: TRLDBText
            Left = 73
            Top = 3
            Width = 93
            Height = 14
            DataField = 'lkNomeFornecedor'
            DataSource = DM1.dsChequeCPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 2
            Top = 3
            Width = 70
            Height = 14
            Caption = 'Fornecedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 606
            Top = 3
            Width = 44
            Height = 14
            Caption = 'N'#186' Nota:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 652
            Top = 3
            Width = 46
            Height = 14
            DataField = 'NumNota'
            DataSource = DM1.dsChequeCPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 18
            Top = 18
            Width = 54
            Height = 14
            Caption = 'Dt. Venc.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 73
            Top = 18
            Width = 77
            Height = 14
            DataField = 'lkDtVencimento'
            DataSource = DM1.dsChequeCPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 214
            Top = 18
            Width = 69
            Height = 14
            Caption = 'N'#186' Duplicata:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 284
            Top = 18
            Width = 71
            Height = 14
            DataField = 'lkNroDuplicata'
            DataSource = DM1.dsChequeCPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 443
            Top = 18
            Width = 46
            Height = 14
            Caption = 'Parcela:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 491
            Top = 18
            Width = 39
            Height = 14
            DataField = 'Parcela'
            DataSource = DM1.dsChequeCPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 615
            Top = 18
            Width = 35
            Height = 14
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 652
            Top = 18
            Width = 29
            Height = 14
            DataField = 'Valor'
            DataSource = DM1.dsChequeCPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 35
            Width = 718
            Height = 1
            Align = faClientBottom
            Pen.Style = psDot
          end
        end
      end
    end
  end
end
