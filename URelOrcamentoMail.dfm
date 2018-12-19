object fRelOrcamentoMail: TfRelOrcamentoMail
  Left = 86
  Top = 98
  Width = 839
  Height = 523
  BorderIcons = [biSystemMenu]
  Caption = 'fRelOrcamentoMail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 25
    Top = 10
    Width = 794
    Height = 1123
    DataSource = DM1.dsOrcamento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 38
      Width = 742
      Height = 643
      DataSource = DM1.dsOrcamento
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 264
        BandType = btHeader
        object RLDraw4: TRLDraw
          Left = 5
          Top = 38
          Width = 153
          Height = 128
        end
        object RLDraw3: TRLDraw
          Left = 5
          Top = 3
          Width = 153
          Height = 36
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 242
          Width = 741
          Height = 21
        end
        object RLDBText1: TRLDBText
          Left = 200
          Top = 4
          Width = 511
          Height = 26
          AutoSize = False
          DataField = 'Empresa'
          DataSource = DM1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 286
          Top = 56
          Width = 355
          Height = 16
          AutoSize = False
          DataField = 'Endereco'
          DataSource = DM1.dsEmpresa
        end
        object RLDBText3: TRLDBText
          Left = 286
          Top = 94
          Width = 252
          Height = 16
          AutoSize = False
          DataField = 'Cidade'
          DataSource = DM1.dsEmpresa
        end
        object RLDBText4: TRLDBText
          Left = 286
          Top = 112
          Width = 157
          Height = 16
          AutoSize = False
          DataField = 'Cgc'
          DataSource = DM1.dsEmpresa
        end
        object RLDBText5: TRLDBText
          Left = 540
          Top = 95
          Width = 45
          Height = 16
          DataField = 'Estado'
          DataSource = DM1.dsEmpresa
        end
        object RLDBText6: TRLDBText
          Left = 300
          Top = 34
          Width = 197
          Height = 16
          AutoSize = False
          DataField = 'Tel'
          DataSource = DM1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 540
          Top = 76
          Width = 27
          Height = 16
          DataField = 'Cep'
          DataSource = DM1.dsEmpresa
        end
        object RLDBText9: TRLDBText
          Left = 539
          Top = 113
          Width = 32
          Height = 16
          DataField = 'Inscr'
          DataSource = DM1.dsEmpresa
        end
        object RLLabel1: TRLLabel
          Left = 240
          Top = 112
          Width = 41
          Height = 16
          Caption = 'CNPJ:'
        end
        object RLLabel2: TRLLabel
          Left = 254
          Top = 34
          Width = 44
          Height = 16
          Caption = 'Fone.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 502
          Top = 76
          Width = 35
          Height = 16
          Caption = 'CEP:'
        end
        object RLLabel8: TRLLabel
          Left = 445
          Top = 113
          Width = 91
          Height = 16
          Caption = 'Insc. Estadual:'
        end
        object RLLabel3: TRLLabel
          Left = 248
          Top = 56
          Width = 35
          Height = 16
          Caption = 'End.:'
        end
        object RLLabel4: TRLLabel
          Left = 241
          Top = 75
          Width = 42
          Height = 16
          Caption = 'Bairro:'
        end
        object RLDBText10: TRLDBText
          Left = 286
          Top = 76
          Width = 38
          Height = 16
          DataField = 'Bairro'
          DataSource = DM1.dsEmpresa
        end
        object RLLabel5: TRLLabel
          Left = 180
          Top = 145
          Width = 134
          Height = 19
          Alignment = taRightJustify
          Caption = 'Novo Hamburgo,'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 325
          Top = 146
          Width = 192
          Height = 18
          AutoSize = False
          DataField = 'Data'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 40
          Top = 178
          Width = 21
          Height = 19
          Caption = 'A:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 24
          Top = 221
          Width = 37
          Height = 19
          Caption = 'A/C:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 64
          Top = 179
          Width = 625
          Height = 18
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 64
          Top = 222
          Width = 625
          Height = 18
          AutoSize = False
          DataField = 'NomeContato'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 5
          Top = 245
          Width = 73
          Height = 16
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 101
          Top = 245
          Width = 115
          Height = 16
          Caption = 'Nome do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 522
          Top = 245
          Width = 55
          Height = 16
          Caption = 'Vlr.Unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 580
          Top = 245
          Width = 43
          Height = 16
          Caption = 'Matriz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 630
          Top = 245
          Width = 30
          Height = 16
          Caption = 'Qtd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 673
          Top = 245
          Width = 62
          Height = 16
          Caption = 'Vlr. Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 12
          Top = 47
          Width = 138
          Height = 93
          Caption = 'NK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -80
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 63
          Top = 200
          Width = 168
          Height = 18
          AutoSize = False
          DataField = 'Fone'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 239
          Top = 200
          Width = 464
          Height = 18
          AutoSize = False
          DataField = 'Email'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 20
          Top = 4
          Width = 96
          Height = 16
          Caption = 'N'#186' Or'#231'amento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 21
          Top = 20
          Width = 96
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumOrcamento'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 45
          Top = 129
          Width = 79
          Height = 16
          Alignment = taRightJustify
          Caption = 'Metal'#250'rgica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 5
          Top = 165
          Width = 736
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel25: TRLLabel
          Left = 423
          Top = 245
          Width = 94
          Height = 16
          Caption = 'Prazo Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 264
        Width = 742
        Height = 22
        DataSource = DM1.dsOrcamentoItens
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 19
          BeforePrint = RLBand2BeforePrint
          object RLDBText11: TRLDBText
            Left = 1
            Top = 2
            Width = 97
            Height = 14
            AutoSize = False
            DataField = 'Referencia'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 99
            Top = 2
            Width = 334
            Height = 14
            AutoSize = False
            DataField = 'NomeProduto'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 518
            Top = 2
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrUnitario'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 579
            Top = 2
            Width = 38
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'ComMatriz'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 618
            Top = 2
            Width = 50
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'Qtd'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 668
            Top = 2
            Width = 72
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrTotal'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 435
            Top = 2
            Width = 81
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'PrazoEntrega'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 286
        Width = 742
        Height = 250
        DataSource = DM1.dsOrcamento
        Positioning = btSummary
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 105
          BeforePrint = RLBand3BeforePrint
          object RLLabel15: TRLLabel
            Left = 8
            Top = 13
            Width = 154
            Height = 18
            Caption = 'Prazo de Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 164
            Top = 13
            Width = 319
            Height = 18
            AutoSize = False
            DataField = 'PrazoPagto'
            DataSource = DM1.dsOrcamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 54
            Width = 717
            Height = 1
          end
          object RLLabel16: TRLLabel
            Left = 8
            Top = 59
            Width = 89
            Height = 16
            Caption = 'Observa'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 11
            Top = 79
            Width = 694
            Height = 16
            DataField = 'Obs'
            DataSource = DM1.dsOrcamento
          end
          object RLLabel20: TRLLabel
            Left = 496
            Top = 12
            Width = 84
            Height = 18
            Caption = 'Valor Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 600
            Top = 12
            Width = 115
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 8
            Top = 36
            Width = 74
            Height = 16
            Caption = 'V'#225'lido por:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 85
            Top = 37
            Width = 28
            Height = 16
            AutoSize = False
            DataField = 'QtdDiasValidade'
            DataSource = DM1.dsOrcamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 116
            Top = 36
            Width = 34
            Height = 16
            Caption = 'dias.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 105
          Width = 742
          Height = 48
          BandType = btSummary
          object RLMemo1: TRLMemo
            Left = 16
            Top = 16
            Width = 617
            Height = 16
            Color = 14211288
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              'PRODU'#199#195'O SOMENTE AP'#211'S A APROVA'#199#195'O DO MESMO')
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
      end
    end
  end
end
