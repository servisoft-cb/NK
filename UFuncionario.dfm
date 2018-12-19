object fFuncionario: TfFuncionario
  Left = 91
  Top = 50
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 535
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 535
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 742
      Height = 37
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 64
        Top = 8
        Width = 263
        Height = 20
        Caption = 'Procura p/ Nome do Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 334
        Top = 7
        Width = 330
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsFuncionario
        TabOrder = 0
        OnEnter = RxDBLookupCombo1Enter
        OnExit = RxDBLookupCombo1Exit
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 38
      Width = 742
      Height = 32
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 3
        Width = 140
        Height = 25
        DataSource = DM1.dsFuncionario
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
        BeforeAction = DBNavigator1BeforeAction
      end
      object BitBtn1: TBitBtn
        Left = 152
        Top = 3
        Width = 95
        Height = 25
        Hint = 'Insere um novo registro'
        Caption = '&Inserir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 247
        Top = 3
        Width = 95
        Height = 25
        Hint = 'Altera o registro selecionado'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object BitBtn3: TBitBtn
        Left = 342
        Top = 3
        Width = 95
        Height = 25
        Hint = 'Cancela a inser'#231#227'o ou altera'#231#227'o de um registro'
        Caption = 'Ca&ncelar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn3Click
        Glyph.Data = {
          CE070000424DCE07000000000000360000002800000024000000120000000100
          18000000000098070000CE0E0000C40E00000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080808080808080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080FFFFFF008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800000FF0000
          800000808080800080800080800080800080800080800000FF80808000808000
          8080008080008080008080008080008080008080808080808080FFFFFF008080
          008080008080008080008080008080FFFFFF0080800080800080800080800080
          800080800080800000FF00008000008000008080808000808000808000808000
          00FF000080000080808080008080008080008080008080008080008080808080
          FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
          FF0080800080800080800080800080800080800000FF00008000008000008000
          00808080800080800000FF000080000080000080000080808080008080008080
          008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
          FF808080008080008080808080FFFFFF00808000808000808000808000808000
          80800000FF000080000080000080000080808080000080000080000080000080
          000080808080008080008080008080008080008080808080FFFFFF0080800080
          80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
          80800080800080800080800080800080800000FF000080000080000080000080
          0000800000800000800000808080800080800080800080800080800080800080
          80008080808080FFFFFF00808000808000808080808000808000808000808000
          8080FFFFFF808080008080008080008080008080008080008080008080008080
          0000FF0000800000800000800000800000800000808080800080800080800080
          80008080008080008080008080008080008080808080FFFFFF00808000808000
          8080008080008080008080FFFFFF808080008080008080008080008080008080
          0080800080800080800080800080800000800000800000800000800000808080
          8000808000808000808000808000808000808000808000808000808000808000
          8080808080FFFFFF008080008080008080008080008080808080008080008080
          0080800080800080800080800080800080800080800080800080800000FF0000
          8000008000008000008080808000808000808000808000808000808000808000
          8080008080008080008080008080008080808080FFFFFF008080008080008080
          8080800080800080800080800080800080800080800080800080800080800080
          800080800000FF00008000008000008000008000008080808000808000808000
          8080008080008080008080008080008080008080008080008080008080808080
          008080008080008080008080808080FFFFFF0080800080800080800080800080
          800080800080800080800080800000FF00008000008000008080808000008000
          0080000080808080008080008080008080008080008080008080008080008080
          008080008080808080008080008080008080008080008080808080FFFFFF0080
          800080800080800080800080800080800080800080800000FF00008000008000
          00808080800080800000FF000080000080000080808080008080008080008080
          008080008080008080008080008080808080008080008080008080808080FFFF
          FF008080008080808080FFFFFF00808000808000808000808000808000808000
          80800000FF0000800000808080800080800080800080800000FF000080000080
          000080808080008080008080008080008080008080008080808080FFFFFF0080
          80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
          80800080800080800080800080800080800000FF000080008080008080008080
          0080800080800000FF0000800000800000800080800080800080800080800080
          80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
          8080008080808080FFFFFF008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800000FF0000800000FF0080
          8000808000808000808000808000808000808080808080808000808000808000
          8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080808080808080808080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080}
        NumGlyphs = 2
      end
      object BitBtn4: TBitBtn
        Left = 437
        Top = 3
        Width = 95
        Height = 25
        Hint = 'Exclui o registro selecionado'
        Caption = '&Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BitBtn4Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
          3333333337FFF7F3333333333000003333333333377777333333}
        NumGlyphs = 2
      end
      object BitBtn5: TBitBtn
        Left = 628
        Top = 3
        Width = 95
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BitBtn5Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          038383838383830E603800000000380E660033333330830E660333333330000E
          660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
          660300000E60330E660333330600330E660333330030330E6603333333303330
          E6033333333033330E0333333330000000033333333333333333}
      end
      object BitBtn10: TBitBtn
        Left = 532
        Top = 3
        Width = 95
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 6
        OnClick = BitBtn10Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888BBB88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 70
      Width = 742
      Height = 464
      Align = alClient
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 2
      object Label3: TLabel
        Left = 33
        Top = 12
        Width = 104
        Height = 13
        Caption = 'Nome do Funcion'#225'rio:'
      end
      object Label36: TLabel
        Left = 88
        Top = 34
        Width = 49
        Height = 13
        Caption = 'N'#186' Cart'#227'o:'
      end
      object DBEdit1: TDBEdit
        Left = 140
        Top = 3
        Width = 339
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nome'
        DataSource = DM1.dsFuncionario
        TabOrder = 0
      end
      object StaticText4: TStaticText
        Left = 1
        Top = 446
        Width = 740
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'F3 = Consulta EPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit21: TDBEdit
        Left = 140
        Top = 25
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NumMatricula'
        DataSource = DM1.dsFuncionario
        TabOrder = 1
      end
    end
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 119
    Width = 723
    Height = 396
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Gerais'
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 368
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Label4: TLabel
          Left = 21
          Top = 17
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label5: TLabel
          Left = 445
          Top = 17
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object Label6: TLabel
          Left = 34
          Top = 42
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object SpeedButton1: TSpeedButton
          Left = 319
          Top = 33
          Width = 25
          Height = 25
          Hint = 'Abre o cadastro de cidades'
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
            000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
            00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
            8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
            8888880BB088888888888800008888888888}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object Label7: TLabel
          Left = 453
          Top = 42
          Width = 22
          Height = 13
          Caption = 'Cep:'
        end
        object Label8: TLabel
          Left = 594
          Top = 42
          Width = 36
          Height = 13
          Caption = 'Estado:'
        end
        object SpeedButton4: TSpeedButton
          Left = 683
          Top = 31
          Width = 25
          Height = 25
          Hint = 'Abre o cadastro de Estados'
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
            000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
            00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
            8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
            8888880BB088888888888800008888888888}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton4Click
        end
        object Label9: TLabel
          Left = 25
          Top = 67
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object Label10: TLabel
          Left = 217
          Top = 67
          Width = 53
          Height = 13
          Caption = 'Identidade:'
        end
        object Label11: TLabel
          Left = 451
          Top = 67
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'CPF:'
        end
        object Label12: TLabel
          Left = 39
          Top = 92
          Width = 31
          Height = 13
          Caption = 'CTPS:'
        end
        object Label13: TLabel
          Left = 202
          Top = 92
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
        end
        object Label14: TLabel
          Left = 374
          Top = 92
          Width = 100
          Height = 13
          Caption = 'Data de Nascimento:'
        end
        object Label15: TLabel
          Left = 50
          Top = 117
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'PIS:'
        end
        object Label16: TLabel
          Left = 5
          Top = 166
          Width = 65
          Height = 13
          Caption = 'Dt. Admiss'#227'o:'
        end
        object Label17: TLabel
          Left = 24
          Top = 190
          Width = 46
          Height = 13
          Caption = 'Hor'#225'rio 1:'
        end
        object Label18: TLabel
          Left = 2
          Top = 213
          Width = 68
          Height = 13
          Caption = 'Hrs Semanais:'
        end
        object Label19: TLabel
          Left = 332
          Top = 190
          Width = 46
          Height = 13
          Caption = 'Hor'#225'rio 2:'
        end
        object Label20: TLabel
          Left = 152
          Top = 213
          Width = 77
          Height = 13
          Caption = 'Valor de Sal'#225'rio:'
        end
        object Label21: TLabel
          Left = 394
          Top = 213
          Width = 77
          Height = 13
          Caption = '% Insalubridade:'
        end
        object Label22: TLabel
          Left = 570
          Top = 213
          Width = 83
          Height = 13
          Caption = '% Periculosidade:'
        end
        object Label23: TLabel
          Left = 4
          Top = 238
          Width = 66
          Height = 13
          Caption = 'Dt. Demiss'#227'o:'
        end
        object Label24: TLabel
          Left = 204
          Top = 238
          Width = 25
          Height = 13
          Caption = 'Obs.:'
        end
        object Label32: TLabel
          Left = 416
          Top = 117
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Estado Civil:'
        end
        object Label33: TLabel
          Left = 6
          Top = 141
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Escolaridade:'
        end
        object Label34: TLabel
          Left = 435
          Top = 141
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fun'#231#227'o:'
        end
        object Label35: TLabel
          Left = 229
          Top = 166
          Width = 42
          Height = 13
          Caption = 'C'#244'njuge:'
        end
        object DBEdit2: TDBEdit
          Left = 73
          Top = 9
          Width = 353
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Endereco'
          DataSource = DM1.dsFuncionario
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 478
          Top = 9
          Width = 230
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bairro'
          DataSource = DM1.dsFuncionario
          TabOrder = 1
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 73
          Top = 34
          Width = 242
          Height = 21
          DropDownCount = 8
          DataField = 'CodCidade'
          DataSource = DM1.dsFuncionario
          LookupField = 'Codigo'
          LookupDisplay = 'Nome'
          LookupSource = DM1.dsCidade
          TabOrder = 2
          OnDropDown = RxDBLookupCombo2Enter
          OnEnter = RxDBLookupCombo2Enter
          OnExit = RxDBLookupCombo2Exit
        end
        object DBEdit4: TDBEdit
          Left = 478
          Top = 34
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cep'
          DataSource = DM1.dsFuncionario
          TabOrder = 3
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 634
          Top = 34
          Width = 45
          Height = 21
          DropDownCount = 8
          DataField = 'Uf'
          DataSource = DM1.dsFuncionario
          LookupField = 'Sigla'
          LookupDisplay = 'Sigla'
          LookupSource = DM1.dsUF
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 73
          Top = 59
          Width = 106
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fone'
          DataSource = DM1.dsFuncionario
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 276
          Top = 59
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = DM1.dsFuncionario
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 478
          Top = 59
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = DM1.dsFuncionario
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 73
          Top = 84
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTPS'
          DataSource = DM1.dsFuncionario
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 235
          Top = 84
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Serie'
          DataSource = DM1.dsFuncionario
          TabOrder = 9
        end
        object DBDateEdit1: TDBDateEdit
          Left = 478
          Top = 84
          Width = 95
          Height = 21
          DataField = 'DtNascimento'
          DataSource = DM1.dsFuncionario
          NumGlyphs = 2
          TabOrder = 10
        end
        object DBEdit10: TDBEdit
          Left = 73
          Top = 109
          Width = 136
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PIS'
          DataSource = DM1.dsFuncionario
          TabOrder = 11
        end
        object DBDateEdit2: TDBDateEdit
          Left = 75
          Top = 158
          Width = 95
          Height = 21
          DataField = 'DtAdmissao'
          DataSource = DM1.dsFuncionario
          NumGlyphs = 2
          TabOrder = 15
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 23
          Top = 266
          Width = 197
          Height = 34
          Caption = 'Tipo de Pagamento'
          Columns = 2
          DataField = 'TipoPgto'
          DataSource = DM1.dsFuncionario
          Items.Strings = (
            'Mensalista'
            'Horista')
          TabOrder = 25
          Values.Strings = (
            'M'
            'H')
        end
        object DBEdit11: TDBEdit
          Left = 73
          Top = 182
          Width = 242
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Horario1'
          DataSource = DM1.dsFuncionario
          TabOrder = 17
        end
        object DBEdit12: TDBEdit
          Left = 73
          Top = 205
          Width = 52
          Height = 21
          CharCase = ecUpperCase
          DataField = 'HrSemanais'
          DataSource = DM1.dsFuncionario
          TabOrder = 19
        end
        object DBEdit13: TDBEdit
          Left = 385
          Top = 182
          Width = 243
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Horario2'
          DataSource = DM1.dsFuncionario
          TabOrder = 18
        end
        object DBEdit14: TDBEdit
          Left = 235
          Top = 205
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VlrSalario'
          DataSource = DM1.dsFuncionario
          TabOrder = 20
        end
        object DBEdit15: TDBEdit
          Left = 478
          Top = 205
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PercInsalubridade'
          DataSource = DM1.dsFuncionario
          TabOrder = 21
        end
        object DBEdit16: TDBEdit
          Left = 657
          Top = 205
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PercPericulosidade'
          DataSource = DM1.dsFuncionario
          TabOrder = 22
        end
        object DBDateEdit3: TDBDateEdit
          Left = 73
          Top = 230
          Width = 95
          Height = 21
          DataField = 'DtDemissao'
          DataSource = DM1.dsFuncionario
          NumGlyphs = 2
          TabOrder = 23
        end
        object DBMemo1: TDBMemo
          Left = 235
          Top = 230
          Width = 473
          Height = 93
          DataField = 'Obs'
          DataSource = DM1.dsFuncionario
          TabOrder = 24
        end
        object DBEdit17: TDBEdit
          Left = 478
          Top = 109
          Width = 229
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EstCivil'
          DataSource = DM1.dsFuncionario
          TabOrder = 12
        end
        object DBEdit18: TDBEdit
          Left = 73
          Top = 133
          Width = 248
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Escolaridade'
          DataSource = DM1.dsFuncionario
          TabOrder = 13
        end
        object DBEdit19: TDBEdit
          Left = 478
          Top = 133
          Width = 230
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Funcao'
          DataSource = DM1.dsFuncionario
          TabOrder = 14
        end
        object DBEdit20: TDBEdit
          Left = 273
          Top = 158
          Width = 435
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NomeConjuge'
          DataSource = DM1.dsFuncionario
          TabOrder = 16
        end
        object DBCheckBox1: TDBCheckBox
          Left = 72
          Top = 320
          Width = 145
          Height = 17
          Caption = 'Mostrar na Produ'#231#227'o'
          DataField = 'MostrarNaProducao'
          DataSource = DM1.dsFuncionario
          TabOrder = 26
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'F'#233'rias'
      ImageIndex = 1
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 368
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label25: TLabel
          Left = 27
          Top = 16
          Width = 102
          Height = 13
          Caption = 'Data Inicial de F'#233'rias:'
        end
        object Label26: TLabel
          Left = 267
          Top = 16
          Width = 97
          Height = 13
          Caption = 'Data Final de F'#233'rias:'
        end
        object SpeedButton2: TSpeedButton
          Left = 495
          Top = 32
          Width = 25
          Height = 25
          Hint = 'Cancela a inser'#231#227'o ou altera'#231#227'o de um registro'
          Enabled = False
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000C40E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080808080808080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080FFFFFF008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            800000808080800080800080800080800080800080800000FF80808000808000
            8080008080008080008080008080008080008080808080808080FFFFFF008080
            008080008080008080008080008080FFFFFF0080800080800080800080800080
            800080800080800000FF00008000008000008080808000808000808000808000
            00FF000080000080808080008080008080008080008080008080008080808080
            FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
            FF0080800080800080800080800080800080800000FF00008000008000008000
            00808080800080800000FF000080000080000080000080808080008080008080
            008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
            FF808080008080008080808080FFFFFF00808000808000808000808000808000
            80800000FF000080000080000080000080808080000080000080000080000080
            000080808080008080008080008080008080008080808080FFFFFF0080800080
            80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
            80800080800080800080800080800080800000FF000080000080000080000080
            0000800000800000800000808080800080800080800080800080800080800080
            80008080808080FFFFFF00808000808000808080808000808000808000808000
            8080FFFFFF808080008080008080008080008080008080008080008080008080
            0000FF0000800000800000800000800000800000808080800080800080800080
            80008080008080008080008080008080008080808080FFFFFF00808000808000
            8080008080008080008080FFFFFF808080008080008080008080008080008080
            0080800080800080800080800080800000800000800000800000800000808080
            8000808000808000808000808000808000808000808000808000808000808000
            8080808080FFFFFF008080008080008080008080008080808080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            8000008000008000008080808000808000808000808000808000808000808000
            8080008080008080008080008080008080808080FFFFFF008080008080008080
            8080800080800080800080800080800080800080800080800080800080800080
            800080800000FF00008000008000008000008000008080808000808000808000
            8080008080008080008080008080008080008080008080008080008080808080
            008080008080008080008080808080FFFFFF0080800080800080800080800080
            800080800080800080800080800000FF00008000008000008080808000008000
            0080000080808080008080008080008080008080008080008080008080008080
            008080008080808080008080008080008080008080008080808080FFFFFF0080
            800080800080800080800080800080800080800080800000FF00008000008000
            00808080800080800000FF000080000080000080808080008080008080008080
            008080008080008080008080008080808080008080008080008080808080FFFF
            FF008080008080808080FFFFFF00808000808000808000808000808000808000
            80800000FF0000800000808080800080800080800080800000FF000080000080
            000080808080008080008080008080008080008080008080808080FFFFFF0080
            80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
            80800080800080800080800080800080800000FF000080008080008080008080
            0080800080800000FF0000800000800000800080800080800080800080800080
            80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
            8080008080808080FFFFFF008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800000FF0000800000FF0080
            8000808000808000808000808000808000808080808080808000808000808000
            8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080808080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 495
          Top = 58
          Width = 25
          Height = 25
          Hint = 'Altera o item selecionado'
          Enabled = False
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object SpeedButton5: TSpeedButton
          Left = 495
          Top = 84
          Width = 25
          Height = 25
          Hint = 'Exclui o registro selecionado'
          Enabled = False
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton5Click
        end
        object DateEdit1: TDateEdit
          Left = 135
          Top = 8
          Width = 121
          Height = 21
          Enabled = False
          NumGlyphs = 2
          TabOrder = 0
        end
        object DateEdit2: TDateEdit
          Left = 369
          Top = 8
          Width = 121
          Height = 21
          Enabled = False
          NumGlyphs = 2
          TabOrder = 1
        end
        object BitBtn7: TBitBtn
          Left = 495
          Top = 6
          Width = 25
          Height = 25
          Hint = 'Confirma a inser'#231#227'o de um Item'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn7Click
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000D80E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8080000080000000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080FFFFFF
            FFFFFF0080800080800080800080800080800080800080800080800080800080
            8000808000808000808080000000800000800080000000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
            8000808000808000808000808000808000808080000000800000800000800000
            8000800000008080008080008080008080008080008080008080008080008080
            008080008080008080808080808080808080808080808080808080FFFFFFFFFF
            FF00808000808000808000808000808000808000808000808000808080000000
            8000008000008000008000008000008000800000008080008080008080008080
            0080800080800080800080800080800080808080808080808080808080808080
            80808080808080808080808080FFFFFF00808000808000808000808000808000
            808000808080000000800000800000800000FF00008000008000008000008000
            8000000080800080800080800080800080800080800080800080808080808080
            80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
            808000808000808000808000808000808000800000800000800000FF00008080
            00FF000080000080000080008000000080800080800080800080800080800080
            80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
            8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
            00800000FF0000808000808000808000FF000080000080000080008000000080
            80008080008080008080008080008080008080808080808080FFFFFF00808000
            8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
            00808000808000808000808000FF0000808000808000808000808000808000FF
            0000800000800000800080000000808000808000808000808000808000808000
            8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
            808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
            8000808000808000808000808000FF0000800000800000800080000000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
            8000808000808000808000808000808000808000808000808000808000FF0000
            8000008000008000800000008080008080008080008080008080008080008080
            008080008080008080008080008080008080FFFFFF8080808080808080808080
            80FFFFFF00808000808000808000808000808000808000808000808000808000
            808000808000808000808000FF00008000008000008000800000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
            808000808000808000808000808000808000808000808000808000FF00008000
            0080000080008000000080800080800080800080800080800080800080800080
            80008080008080008080008080008080FFFFFF808080808080808080808080FF
            FFFF008080008080008080008080008080008080008080008080008080008080
            00808000808000808000FF000080000080008000000080800080800080800080
            80008080008080008080008080008080008080008080008080008080008080FF
            FFFF808080808080808080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808000FF000080000080
            0000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF808080808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000FF0000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080FFFFFF
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
        end
        object RxDBGrid1: TRxDBGrid
          Left = 136
          Top = 34
          Width = 353
          Height = 296
          DataSource = DM1.dsFerias
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Item'
              Title.Alignment = taCenter
              Width = 72
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtInicial'
              Title.Alignment = taCenter
              Title.Caption = 'Data Inicial de F'#233'rias'
              Width = 120
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtFinal'
              Title.Alignment = taCenter
              Title.Caption = 'Data Final de F'#233'rias'
              Width = 120
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ficha de Sal'#225'rios'
      ImageIndex = 2
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 368
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label27: TLabel
          Left = 4
          Top = 16
          Width = 26
          Height = 13
          Caption = 'Data:'
        end
        object Label28: TLabel
          Left = 135
          Top = 15
          Width = 35
          Height = 13
          Caption = 'Motivo:'
        end
        object Label29: TLabel
          Left = 530
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Valor:'
        end
        object SpeedButton6: TSpeedButton
          Left = 685
          Top = 32
          Width = 25
          Height = 25
          Hint = 'Altera o item selecionado'
          Enabled = False
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton6Click
        end
        object SpeedButton7: TSpeedButton
          Left = 685
          Top = 57
          Width = 25
          Height = 25
          Hint = 'Cancela a inser'#231#227'o ou altera'#231#227'o de um item'
          Enabled = False
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000C40E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080808080808080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080FFFFFF008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            800000808080800080800080800080800080800080800000FF80808000808000
            8080008080008080008080008080008080008080808080808080FFFFFF008080
            008080008080008080008080008080FFFFFF0080800080800080800080800080
            800080800080800000FF00008000008000008080808000808000808000808000
            00FF000080000080808080008080008080008080008080008080008080808080
            FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
            FF0080800080800080800080800080800080800000FF00008000008000008000
            00808080800080800000FF000080000080000080000080808080008080008080
            008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
            FF808080008080008080808080FFFFFF00808000808000808000808000808000
            80800000FF000080000080000080000080808080000080000080000080000080
            000080808080008080008080008080008080008080808080FFFFFF0080800080
            80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
            80800080800080800080800080800080800000FF000080000080000080000080
            0000800000800000800000808080800080800080800080800080800080800080
            80008080808080FFFFFF00808000808000808080808000808000808000808000
            8080FFFFFF808080008080008080008080008080008080008080008080008080
            0000FF0000800000800000800000800000800000808080800080800080800080
            80008080008080008080008080008080008080808080FFFFFF00808000808000
            8080008080008080008080FFFFFF808080008080008080008080008080008080
            0080800080800080800080800080800000800000800000800000800000808080
            8000808000808000808000808000808000808000808000808000808000808000
            8080808080FFFFFF008080008080008080008080008080808080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            8000008000008000008080808000808000808000808000808000808000808000
            8080008080008080008080008080008080808080FFFFFF008080008080008080
            8080800080800080800080800080800080800080800080800080800080800080
            800080800000FF00008000008000008000008000008080808000808000808000
            8080008080008080008080008080008080008080008080008080008080808080
            008080008080008080008080808080FFFFFF0080800080800080800080800080
            800080800080800080800080800000FF00008000008000008080808000008000
            0080000080808080008080008080008080008080008080008080008080008080
            008080008080808080008080008080008080008080008080808080FFFFFF0080
            800080800080800080800080800080800080800080800000FF00008000008000
            00808080800080800000FF000080000080000080808080008080008080008080
            008080008080008080008080008080808080008080008080008080808080FFFF
            FF008080008080808080FFFFFF00808000808000808000808000808000808000
            80800000FF0000800000808080800080800080800080800000FF000080000080
            000080808080008080008080008080008080008080008080808080FFFFFF0080
            80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
            80800080800080800080800080800080800000FF000080008080008080008080
            0080800080800000FF0000800000800000800080800080800080800080800080
            80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
            8080008080808080FFFFFF008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800000FF0000800000FF0080
            8000808000808000808000808000808000808080808080808000808000808000
            8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080808080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
          OnClick = SpeedButton7Click
        end
        object SpeedButton8: TSpeedButton
          Left = 685
          Top = 83
          Width = 25
          Height = 25
          Hint = 'Exclui o item selecionado'
          Enabled = False
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton8Click
        end
        object SpeedButton12: TSpeedButton
          Left = 500
          Top = 6
          Width = 25
          Height = 25
          Hint = 'Abre o cadastro de Estados'
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
            000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
            00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
            8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
            8888880BB088888888888800008888888888}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton12Click
        end
        object DateEdit3: TDateEdit
          Left = 34
          Top = 8
          Width = 95
          Height = 21
          Enabled = False
          NumGlyphs = 2
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 174
          Top = 31
          Width = 496
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          MaxLength = 50
          TabOrder = 2
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 562
          Top = 8
          Width = 107
          Height = 21
          AutoSize = False
          DisplayFormat = '0.00'
          Enabled = False
          TabOrder = 3
        end
        object RxDBGrid2: TRxDBGrid
          Left = 6
          Top = 54
          Width = 677
          Height = 310
          DataSource = DM1.dsSalario
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Item'
              Title.Alignment = taCenter
              Width = 42
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data'
              Title.Alignment = taCenter
              Title.Caption = 'Dt. Altera'#231#227'o'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Motivo'
              Title.Alignment = taCenter
              Width = 402
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Width = 91
              Visible = True
            end>
        end
        object BitBtn8: TBitBtn
          Left = 685
          Top = 6
          Width = 25
          Height = 25
          Hint = 'Confirma a inser'#231#227'o ou altera'#231#227'o de um item'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn8Click
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000D80E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8080000080000000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080FFFFFF
            FFFFFF0080800080800080800080800080800080800080800080800080800080
            8000808000808000808080000000800000800080000000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
            8000808000808000808000808000808000808080000000800000800000800000
            8000800000008080008080008080008080008080008080008080008080008080
            008080008080008080808080808080808080808080808080808080FFFFFFFFFF
            FF00808000808000808000808000808000808000808000808000808080000000
            8000008000008000008000008000008000800000008080008080008080008080
            0080800080800080800080800080800080808080808080808080808080808080
            80808080808080808080808080FFFFFF00808000808000808000808000808000
            808000808080000000800000800000800000FF00008000008000008000008000
            8000000080800080800080800080800080800080800080800080808080808080
            80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
            808000808000808000808000808000808000800000800000800000FF00008080
            00FF000080000080000080008000000080800080800080800080800080800080
            80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
            8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
            00800000FF0000808000808000808000FF000080000080000080008000000080
            80008080008080008080008080008080008080808080808080FFFFFF00808000
            8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
            00808000808000808000808000FF0000808000808000808000808000808000FF
            0000800000800000800080000000808000808000808000808000808000808000
            8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
            808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
            8000808000808000808000808000FF0000800000800000800080000000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
            8000808000808000808000808000808000808000808000808000808000FF0000
            8000008000008000800000008080008080008080008080008080008080008080
            008080008080008080008080008080008080FFFFFF8080808080808080808080
            80FFFFFF00808000808000808000808000808000808000808000808000808000
            808000808000808000808000FF00008000008000008000800000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
            808000808000808000808000808000808000808000808000808000FF00008000
            0080000080008000000080800080800080800080800080800080800080800080
            80008080008080008080008080008080FFFFFF808080808080808080808080FF
            FFFF008080008080008080008080008080008080008080008080008080008080
            00808000808000808000FF000080000080008000000080800080800080800080
            80008080008080008080008080008080008080008080008080008080008080FF
            FFFF808080808080808080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808000FF000080000080
            0000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF808080808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000FF0000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080FFFFFF
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 174
          Top = 8
          Width = 325
          Height = 21
          DropDownCount = 8
          LookupField = 'Codigo'
          LookupDisplay = 'Nome'
          LookupSource = DM1.dsMotivo
          TabOrder = 1
          OnExit = RxDBLookupCombo3Exit
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Faltas'
      ImageIndex = 3
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 368
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Label30: TLabel
          Left = 16
          Top = 16
          Width = 26
          Height = 13
          Caption = 'Data:'
        end
        object Label31: TLabel
          Left = 148
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Motivo:'
        end
        object SpeedButton9: TSpeedButton
          Left = 685
          Top = 32
          Width = 25
          Height = 25
          Hint = 'Altera o item selecionado'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton9Click
        end
        object SpeedButton10: TSpeedButton
          Left = 685
          Top = 57
          Width = 25
          Height = 25
          Hint = 'Cancela a inser'#231#227'o ou altera'#231#227'o de um item'
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000C40E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080808080808080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080FFFFFF008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            800000808080800080800080800080800080800080800000FF80808000808000
            8080008080008080008080008080008080008080808080808080FFFFFF008080
            008080008080008080008080008080FFFFFF0080800080800080800080800080
            800080800080800000FF00008000008000008080808000808000808000808000
            00FF000080000080808080008080008080008080008080008080008080808080
            FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
            FF0080800080800080800080800080800080800000FF00008000008000008000
            00808080800080800000FF000080000080000080000080808080008080008080
            008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
            FF808080008080008080808080FFFFFF00808000808000808000808000808000
            80800000FF000080000080000080000080808080000080000080000080000080
            000080808080008080008080008080008080008080808080FFFFFF0080800080
            80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
            80800080800080800080800080800080800000FF000080000080000080000080
            0000800000800000800000808080800080800080800080800080800080800080
            80008080808080FFFFFF00808000808000808080808000808000808000808000
            8080FFFFFF808080008080008080008080008080008080008080008080008080
            0000FF0000800000800000800000800000800000808080800080800080800080
            80008080008080008080008080008080008080808080FFFFFF00808000808000
            8080008080008080008080FFFFFF808080008080008080008080008080008080
            0080800080800080800080800080800000800000800000800000800000808080
            8000808000808000808000808000808000808000808000808000808000808000
            8080808080FFFFFF008080008080008080008080008080808080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            8000008000008000008080808000808000808000808000808000808000808000
            8080008080008080008080008080008080808080FFFFFF008080008080008080
            8080800080800080800080800080800080800080800080800080800080800080
            800080800000FF00008000008000008000008000008080808000808000808000
            8080008080008080008080008080008080008080008080008080008080808080
            008080008080008080008080808080FFFFFF0080800080800080800080800080
            800080800080800080800080800000FF00008000008000008080808000008000
            0080000080808080008080008080008080008080008080008080008080008080
            008080008080808080008080008080008080008080008080808080FFFFFF0080
            800080800080800080800080800080800080800080800000FF00008000008000
            00808080800080800000FF000080000080000080808080008080008080008080
            008080008080008080008080008080808080008080008080008080808080FFFF
            FF008080008080808080FFFFFF00808000808000808000808000808000808000
            80800000FF0000800000808080800080800080800080800000FF000080000080
            000080808080008080008080008080008080008080008080808080FFFFFF0080
            80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
            80800080800080800080800080800080800000FF000080008080008080008080
            0080800080800000FF0000800000800000800080800080800080800080800080
            80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
            8080008080808080FFFFFF008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800000FF0000800000FF0080
            8000808000808000808000808000808000808080808080808000808000808000
            8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080808080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
          OnClick = SpeedButton10Click
        end
        object SpeedButton11: TSpeedButton
          Left = 685
          Top = 83
          Width = 25
          Height = 25
          Hint = 'Exclui o item selecionado'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton11Click
        end
        object DateEdit4: TDateEdit
          Left = 46
          Top = 8
          Width = 95
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 185
          Top = 8
          Width = 495
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
        end
        object RxDBGrid3: TRxDBGrid
          Left = 6
          Top = 32
          Width = 675
          Height = 300
          DataSource = DM1.dsFuncFaltas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data'
              Title.Alignment = taCenter
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Motivo'
              Width = 567
              Visible = True
            end>
        end
        object BitBtn9: TBitBtn
          Left = 685
          Top = 6
          Width = 25
          Height = 25
          Hint = 'Confirma a inser'#231#227'o ou altera'#231#227'o de um item'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn9Click
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000D80E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8080000080000000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080FFFFFF
            FFFFFF0080800080800080800080800080800080800080800080800080800080
            8000808000808000808080000000800000800080000000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
            8000808000808000808000808000808000808080000000800000800000800000
            8000800000008080008080008080008080008080008080008080008080008080
            008080008080008080808080808080808080808080808080808080FFFFFFFFFF
            FF00808000808000808000808000808000808000808000808000808080000000
            8000008000008000008000008000008000800000008080008080008080008080
            0080800080800080800080800080800080808080808080808080808080808080
            80808080808080808080808080FFFFFF00808000808000808000808000808000
            808000808080000000800000800000800000FF00008000008000008000008000
            8000000080800080800080800080800080800080800080800080808080808080
            80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
            808000808000808000808000808000808000800000800000800000FF00008080
            00FF000080000080000080008000000080800080800080800080800080800080
            80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
            8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
            00800000FF0000808000808000808000FF000080000080000080008000000080
            80008080008080008080008080008080008080808080808080FFFFFF00808000
            8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
            00808000808000808000808000FF0000808000808000808000808000808000FF
            0000800000800000800080000000808000808000808000808000808000808000
            8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
            808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
            8000808000808000808000808000FF0000800000800000800080000000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
            8000808000808000808000808000808000808000808000808000808000FF0000
            8000008000008000800000008080008080008080008080008080008080008080
            008080008080008080008080008080008080FFFFFF8080808080808080808080
            80FFFFFF00808000808000808000808000808000808000808000808000808000
            808000808000808000808000FF00008000008000008000800000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
            808000808000808000808000808000808000808000808000808000FF00008000
            0080000080008000000080800080800080800080800080800080800080800080
            80008080008080008080008080008080FFFFFF808080808080808080808080FF
            FFFF008080008080008080008080008080008080008080008080008080008080
            00808000808000808000FF000080000080008000000080800080800080800080
            80008080008080008080008080008080008080008080008080008080008080FF
            FFFF808080808080808080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808000FF000080000080
            0000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF808080808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000FF0000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080FFFFFF
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'EPI'
      ImageIndex = 4
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 368
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        OnEnter = Panel10Enter
        object SpeedButton13: TSpeedButton
          Left = 517
          Top = 17
          Width = 25
          Height = 25
          Hint = 'Altera o item selecionado'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton13Click
        end
        object SpeedButton14: TSpeedButton
          Left = 542
          Top = 17
          Width = 25
          Height = 25
          Hint = 'Cancela a inser'#231#227'o ou altera'#231#227'o de um item'
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000C40E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080808080808080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080FFFFFF008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            800000808080800080800080800080800080800080800000FF80808000808000
            8080008080008080008080008080008080008080808080808080FFFFFF008080
            008080008080008080008080008080FFFFFF0080800080800080800080800080
            800080800080800000FF00008000008000008080808000808000808000808000
            00FF000080000080808080008080008080008080008080008080008080808080
            FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
            FF0080800080800080800080800080800080800000FF00008000008000008000
            00808080800080800000FF000080000080000080000080808080008080008080
            008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
            FF808080008080008080808080FFFFFF00808000808000808000808000808000
            80800000FF000080000080000080000080808080000080000080000080000080
            000080808080008080008080008080008080008080808080FFFFFF0080800080
            80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
            80800080800080800080800080800080800000FF000080000080000080000080
            0000800000800000800000808080800080800080800080800080800080800080
            80008080808080FFFFFF00808000808000808080808000808000808000808000
            8080FFFFFF808080008080008080008080008080008080008080008080008080
            0000FF0000800000800000800000800000800000808080800080800080800080
            80008080008080008080008080008080008080808080FFFFFF00808000808000
            8080008080008080008080FFFFFF808080008080008080008080008080008080
            0080800080800080800080800080800000800000800000800000800000808080
            8000808000808000808000808000808000808000808000808000808000808000
            8080808080FFFFFF008080008080008080008080008080808080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            8000008000008000008080808000808000808000808000808000808000808000
            8080008080008080008080008080008080808080FFFFFF008080008080008080
            8080800080800080800080800080800080800080800080800080800080800080
            800080800000FF00008000008000008000008000008080808000808000808000
            8080008080008080008080008080008080008080008080008080008080808080
            008080008080008080008080808080FFFFFF0080800080800080800080800080
            800080800080800080800080800000FF00008000008000008080808000008000
            0080000080808080008080008080008080008080008080008080008080008080
            008080008080808080008080008080008080008080008080808080FFFFFF0080
            800080800080800080800080800080800080800080800000FF00008000008000
            00808080800080800000FF000080000080000080808080008080008080008080
            008080008080008080008080008080808080008080008080008080808080FFFF
            FF008080008080808080FFFFFF00808000808000808000808000808000808000
            80800000FF0000800000808080800080800080800080800000FF000080000080
            000080808080008080008080008080008080008080008080808080FFFFFF0080
            80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
            80800080800080800080800080800080800000FF000080008080008080008080
            0080800080800000FF0000800000800000800080800080800080800080800080
            80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
            8080008080808080FFFFFF008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800000FF0000800000FF0080
            8000808000808000808000808000808000808080808080808000808000808000
            8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080808080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
          OnClick = SpeedButton14Click
        end
        object SpeedButton15: TSpeedButton
          Left = 567
          Top = 17
          Width = 25
          Height = 25
          Hint = 'Exclui o item selecionado'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton15Click
        end
        object StaticText1: TStaticText
          Left = 6
          Top = 3
          Width = 95
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Data'
          TabOrder = 0
        end
        object DateEdit5: TDateEdit
          Left = 6
          Top = 21
          Width = 95
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 102
          Top = 21
          Width = 325
          Height = 21
          DropDownCount = 8
          LookupField = 'Codigo'
          LookupDisplay = 'Nome'
          LookupSource = DM2.dsqEquipEPI
          TabOrder = 2
        end
        object StaticText2: TStaticText
          Left = 102
          Top = 3
          Width = 325
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Epi'
          TabOrder = 3
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 428
          Top = 21
          Width = 65
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 4
        end
        object StaticText3: TStaticText
          Left = 428
          Top = 3
          Width = 65
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Qtd.'
          TabOrder = 5
        end
        object BitBtn11: TBitBtn
          Left = 493
          Top = 17
          Width = 25
          Height = 25
          Hint = 'Confirma a inser'#231#227'o ou altera'#231#227'o de um item'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BitBtn11Click
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000D80E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8080000080000000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080FFFFFF
            FFFFFF0080800080800080800080800080800080800080800080800080800080
            8000808000808000808080000000800000800080000000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
            8000808000808000808000808000808000808080000000800000800000800000
            8000800000008080008080008080008080008080008080008080008080008080
            008080008080008080808080808080808080808080808080808080FFFFFFFFFF
            FF00808000808000808000808000808000808000808000808000808080000000
            8000008000008000008000008000008000800000008080008080008080008080
            0080800080800080800080800080800080808080808080808080808080808080
            80808080808080808080808080FFFFFF00808000808000808000808000808000
            808000808080000000800000800000800000FF00008000008000008000008000
            8000000080800080800080800080800080800080800080800080808080808080
            80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
            808000808000808000808000808000808000800000800000800000FF00008080
            00FF000080000080000080008000000080800080800080800080800080800080
            80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
            8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
            00800000FF0000808000808000808000FF000080000080000080008000000080
            80008080008080008080008080008080008080808080808080FFFFFF00808000
            8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
            00808000808000808000808000FF0000808000808000808000808000808000FF
            0000800000800000800080000000808000808000808000808000808000808000
            8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
            808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
            8000808000808000808000808000FF0000800000800000800080000000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
            8000808000808000808000808000808000808000808000808000808000FF0000
            8000008000008000800000008080008080008080008080008080008080008080
            008080008080008080008080008080008080FFFFFF8080808080808080808080
            80FFFFFF00808000808000808000808000808000808000808000808000808000
            808000808000808000808000FF00008000008000008000800000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
            808000808000808000808000808000808000808000808000808000FF00008000
            0080000080008000000080800080800080800080800080800080800080800080
            80008080008080008080008080008080FFFFFF808080808080808080808080FF
            FFFF008080008080008080008080008080008080008080008080008080008080
            00808000808000808000FF000080000080008000000080800080800080800080
            80008080008080008080008080008080008080008080008080008080008080FF
            FFFF808080808080808080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808000FF000080000080
            0000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF808080808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000FF0000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080FFFFFF
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
        end
      end
      object RxDBGrid4: TRxDBGrid
        Left = 6
        Top = 45
        Width = 703
        Height = 316
        DataSource = DM1.dsFuncionarioEPI
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodEpi'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.EPI'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeEPI'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 388
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 532
    Top = 78
    Width = 195
    Height = 41
    TabOrder = 2
    object Label2: TLabel
      Left = 29
      Top = 1
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object DBText1: TDBText
      Left = 4
      Top = 15
      Width = 88
      Height = 21
      Alignment = taCenter
      DataField = 'Codigo'
      DataSource = DM1.dsFuncionario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn6: TBitBtn
      Left = 96
      Top = 8
      Width = 95
      Height = 25
      Hint = 'Confirma a inser'#231#227'o de um registro'
      Caption = '&Confirmar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn6Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000D80E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080000080000000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080FFFFFF
        FFFFFF0080800080800080800080800080800080800080800080800080800080
        8000808000808000808080000000800000800080000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800000800000
        8000800000008080008080008080008080008080008080008080008080008080
        008080008080008080808080808080808080808080808080808080FFFFFFFFFF
        FF00808000808000808000808000808000808000808000808000808080000000
        8000008000008000008000008000008000800000008080008080008080008080
        0080800080800080800080800080800080808080808080808080808080808080
        80808080808080808080808080FFFFFF00808000808000808000808000808000
        808000808080000000800000800000800000FF00008000008000008000008000
        8000000080800080800080800080800080800080800080800080808080808080
        80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
        808000808000808000808000808000808000800000800000800000FF00008080
        00FF000080000080000080008000000080800080800080800080800080800080
        80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
        8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
        00800000FF0000808000808000808000FF000080000080000080008000000080
        80008080008080008080008080008080008080808080808080FFFFFF00808000
        8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
        00808000808000808000808000FF0000808000808000808000808000808000FF
        0000800000800000800080000000808000808000808000808000808000808000
        8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
        808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
        8000808000808000808000808000FF0000800000800000800080000000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
        8000808000808000808000808000808000808000808000808000808000FF0000
        8000008000008000800000008080008080008080008080008080008080008080
        008080008080008080008080008080008080FFFFFF8080808080808080808080
        80FFFFFF00808000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
        808000808000808000808000808000808000808000808000808000FF00008000
        0080000080008000000080800080800080800080800080800080800080800080
        80008080008080008080008080008080FFFFFF808080808080808080808080FF
        FFFF008080008080008080008080008080008080008080008080008080008080
        00808000808000808000FF000080000080008000000080800080800080800080
        80008080008080008080008080008080008080008080008080008080008080FF
        FFFF808080808080808080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF808080808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080FFFFFF
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
  end
end
