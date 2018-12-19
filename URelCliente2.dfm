object fRelCliente2: TfRelCliente2
  Left = 227
  Top = 200
  Width = 928
  Height = 480
  Caption = 'fRelCliente2'
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
    Left = 32
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fPrevRelClientes.dsCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 30
      Width = 734
      Height = 355
      DataSource = fPrevRelClientes.dsCliente
      object RLBand1: TRLBand
        Left = 0
        Top = 34
        Width = 734
        Height = 77
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand1BeforePrint
        object RLLabel3: TRLLabel
          Left = 8
          Top = 3
          Width = 60
          Height = 12
          Alignment = taRightJustify
          Caption = 'Raz'#227'o Social:'
        end
        object RLDBText1: TRLDBText
          Left = 70
          Top = 3
          Width = 515
          Height = 12
          AutoSize = False
          DataField = 'Nome'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLLabel4: TRLLabel
          Left = 26
          Top = 15
          Width = 42
          Height = 12
          Alignment = taRightJustify
          Caption = 'Fantasia:'
        end
        object RLDBText2: TRLDBText
          Left = 70
          Top = 15
          Width = 283
          Height = 12
          AutoSize = False
          DataField = 'Fantasia'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLLabel5: TRLLabel
          Left = 372
          Top = 15
          Width = 31
          Height = 12
          Alignment = taRightJustify
          Caption = 'CNPJ:'
        end
        object RLDBText3: TRLDBText
          Left = 405
          Top = 15
          Width = 148
          Height = 12
          AutoSize = False
          DataField = 'CgcCpf'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLDBText4: TRLDBText
          Left = 600
          Top = 15
          Width = 129
          Height = 12
          AutoSize = False
          DataField = 'InscrEst'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLLabel6: TRLLabel
          Left = 557
          Top = 15
          Width = 41
          Height = 12
          Alignment = taRightJustify
          Caption = 'Insc.Est:'
        end
        object RLLabel7: TRLLabel
          Left = 46
          Top = 27
          Width = 22
          Height = 12
          Alignment = taRightJustify
          Caption = 'End:'
        end
        object RLLabel8: TRLLabel
          Left = 70
          Top = 27
          Width = 659
          Height = 12
          AutoSize = False
          Caption = 'End:'
        end
        object RLLabel9: TRLLabel
          Left = 38
          Top = 39
          Width = 30
          Height = 12
          Alignment = taRightJustify
          Caption = 'Bairro:'
        end
        object RLLabel10: TRLLabel
          Left = 70
          Top = 39
          Width = 659
          Height = 12
          AutoSize = False
          Caption = 'End:'
        end
        object RLLabel11: TRLLabel
          Left = 41
          Top = 51
          Width = 27
          Height = 12
          Alignment = taRightJustify
          Caption = 'Fone:'
        end
        object RLDBText5: TRLDBText
          Left = 70
          Top = 50
          Width = 31
          Height = 12
          AutoSize = False
          DataField = 'DDDFone1'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLDBText6: TRLDBText
          Left = 102
          Top = 51
          Width = 131
          Height = 12
          AutoSize = False
          DataField = 'Telefone'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLLabel12: TRLLabel
          Left = 23
          Top = 63
          Width = 45
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vendedor:'
        end
        object RLDBText7: TRLDBText
          Left = 70
          Top = 63
          Width = 283
          Height = 12
          AutoSize = False
          DataField = 'lkNomeVendedor'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLLabel13: TRLLabel
          Left = 253
          Top = 51
          Width = 39
          Height = 12
          Alignment = taRightJustify
          Caption = 'Contato:'
        end
        object RLDBText8: TRLDBText
          Left = 294
          Top = 51
          Width = 179
          Height = 12
          AutoSize = False
          DataField = 'Contato'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLDBText9: TRLDBText
          Left = 510
          Top = 51
          Width = 216
          Height = 12
          AutoSize = False
          DataField = 'Email'
          DataSource = fPrevRelClientes.dsCliente
        end
        object RLLabel14: TRLLabel
          Left = 479
          Top = 51
          Width = 29
          Height = 12
          Alignment = taRightJustify
          Caption = 'Email:'
        end
        object RLLabel15: TRLLabel
          Left = 458
          Top = 64
          Width = 50
          Height = 12
          Alignment = taRightJustify
          Caption = 'Email NFe:'
        end
        object RLDBText10: TRLDBText
          Left = 510
          Top = 64
          Width = 216
          Height = 12
          AutoSize = False
          DataField = 'EmailNFe'
          DataSource = fPrevRelClientes.dsCliente
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 34
        BandType = btHeader
        BeforePrint = RLBand2BeforePrint
        object RLLabel1: TRLLabel
          Left = 264
          Top = 15
          Width = 155
          Height = 19
          Caption = 'Rela'#231#227'o de Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 641
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
          Left = 661
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
        object RLSystemInfo2: TRLSystemInfo
          Left = 661
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
        object RLLabel22: TRLLabel
          Left = 626
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
        object RLLabel2: TRLLabel
          Left = 2
          Top = 3
          Width = 455
          Height = 12
          AutoSize = False
          Caption = 'Emiss'#227'o:'
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
