object fPrevBoletos: TfPrevBoletos
  Left = 196
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o de Boletos'
  ClientHeight = 376
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 376
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 425
      Height = 374
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 104
        Width = 71
        Height = 13
        Caption = 'N'#186' Nota Inicial:'
      end
      object Label2: TLabel
        Left = 162
        Top = 104
        Width = 66
        Height = 13
        Caption = 'N'#186' Nota Final:'
      end
      object Label3: TLabel
        Left = 24
        Top = 43
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object Label4: TLabel
        Left = 15
        Top = 128
        Width = 68
        Height = 13
        Caption = 'Data Emiss'#227'o:'
      end
      object Label5: TLabel
        Left = 261
        Top = 128
        Width = 57
        Height = 13
        Caption = 'Data Venc.:'
      end
      object Label6: TLabel
        Left = 27
        Top = 152
        Width = 56
        Height = 13
        Caption = 'Instru'#231#227'o 1:'
      end
      object Label7: TLabel
        Left = 27
        Top = 177
        Width = 56
        Height = 13
        Caption = 'Instru'#231#227'o 2:'
      end
      object Label8: TLabel
        Left = 27
        Top = 203
        Width = 56
        Height = 13
        Caption = 'Instru'#231#227'o 3:'
      end
      object Label9: TLabel
        Left = 27
        Top = 229
        Width = 56
        Height = 13
        Caption = 'Instru'#231#227'o 4:'
      end
      object Label10: TLabel
        Left = 27
        Top = 256
        Width = 56
        Height = 13
        Caption = 'Instru'#231#227'o 5:'
      end
      object Label11: TLabel
        Left = 27
        Top = 282
        Width = 56
        Height = 13
        Caption = 'Instru'#231#227'o 6:'
      end
      object Label12: TLabel
        Left = 27
        Top = 309
        Width = 56
        Height = 13
        Caption = 'Instru'#231#227'o 7:'
      end
      object Label13: TLabel
        Left = 306
        Top = 104
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label14: TLabel
        Left = 25
        Top = 64
        Width = 34
        Height = 13
        Caption = 'Banco:'
      end
      object Bevel1: TBevel
        Left = 1
        Top = 81
        Width = 424
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Bevel2: TBevel
        Left = 0
        Top = 29
        Width = 424
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 61
        Top = 35
        Width = 335
        Height = 21
        DropDownCount = 8
        Color = clAqua
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsCliente
        TabOrder = 2
        OnDropDown = RxDBLookupCombo1DropDown
        OnEnter = RxDBLookupCombo1DropDown
        OnExit = RxDBLookupCombo1Exit
      end
      object Edit1: TEdit
        Left = 85
        Top = 96
        Width = 70
        Height = 21
        TabOrder = 4
      end
      object Edit2: TEdit
        Left = 232
        Top = 96
        Width = 70
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 5
      end
      object Panel3: TPanel
        Left = 56
        Top = 331
        Width = 315
        Height = 41
        TabOrder = 16
        object BitBtn1: TBitBtn
          Left = 7
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Gerar'
          Enabled = False
          TabOrder = 0
          OnClick = BitBtn1Click
          Glyph.Data = {
            8E050000424D8E05000000000000360000002800000017000000130000000100
            18000000000058050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
            0000BFBFBFBFBFBFBFBFBFBEBEBEAEAEAEBABABABFBFBF5F5F6041414D545456
            BFBFBFBCBCBCAEAEAEBCBCBCBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF8B8BAC1A1A48646464BFBFBF3C
            3C6600007F2B2B61BFBFBF7373731919407E7EA4BFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF4D4D9F0909
            9817174D3B3B4B21217B0E0E8F2222813B3B4B1C1C530808833E3EA4BFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBC
            7373733737870000A300005600007F0C0C8D7D7DFF1C1C9800007F1212573535
            9C2D2D8E737373B6B6B6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
            0000BFBFBF61616411116B0606483F3FCE4242C411114313138C7C7CFF39399C
            1313437878B66C6CD21C1C4F10106B53535DBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBF000000BFBFBF48484C00007F00007A2F2F6E8181ED7D7DCB2E
            2E874949875858874141C16565F300005A00006C00007F383846BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF6464945555CA3C3CD18585
            E28989D1626262B1B1B182828257575717172E4A4AC47C7CE66F6FBA5656B74A
            4A4CBFBFBFB6B6B69E9E9EBDBDBDBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBE
            7171A532326A3333B27F7FA07F7F7FDADADAA1A1A16C6C6C3D3D3D2B2B957F7F
            DE121E27003F3F383F3FBFBFBF5D69692351517D8080BFBFBFBFBFBFBFBFBF00
            0000BFBFBFBFBFBFBFBFBF48485C6161C27575F99191A1DADADAA1A1A16C6C6C
            00005A7171F31A1ACB001E341E9B9B192B2B2945451C7575078181434A4ABFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF55559F8080EB6F6F93444466DE
            DEDEA1A1A16C6C6C00001C1414847F7FFF2E46577EFFFF0D3A3A007F7F229090
            369A9A282F2F636363BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFABABB95353
            A29595A6A6A6A6A0A0A0A3A3A37D7D7D4C5C5C44BED13150AF209EA981FFFF3B
            8D8D244F4F75DDDD6CC2C20A4040167777565959BFBFBF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFB9B9B9B1B1B1B7B7B79E9E9E8FAAAA7AF5F57EB4
            B4266F6F326F6F496F6F3FC1C167F0F0004F4F007777007F7F484C4CBFBFBF00
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF76AAAA7EC9C950D9D9
            8CFFFF89B4B4696969CACACA8D8D8D5757572836363EC2C26AF0F071B3B35097
            976B6B6BBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB8
            BCBC86ABAB2F68687BD7D7A0A0A0737373DFDFDF9C9C9C6161613A3A3A2FADAD
            7AD1D1343838797979BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBF4463637DD1D177F5F58EA1A1DFDFDF9C9C9C61
            616100717180FAFA26CACA434C4CBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF5CA6A684E2E25C7575536A
            6AE2E2E29C9C9C6464640B26262E888882DFDF494E4EBFBFBFBFBFBFBFBFBF00
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFB9B9
            65A2A2ABB4B4AEAEAE9E9E9EABABAB7979797171719E9F9F525353B5B5B5BFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBABABAAEAEAEABABABA3A3A3A5A5A5BFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
        end
        object BitBtn2: TBitBtn
          Left = 82
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 1
          OnClick = BitBtn2Click
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
        object BitBtn3: TBitBtn
          Left = 157
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = BitBtn3Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033337733333333333333333F333333333333
            0000333911733333973333333377F333333F3333000033391117333911733333
            37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
            911117111117333337F3337F733337F3000033333911111111733333337F3337
            3333F7330000333333911111173333333337F333333F73330000333333311111
            7333333333337F3333373333000033333339111173333333333337F333733333
            00003333339111117333333333333733337F3333000033333911171117333333
            33337333337F333300003333911173911173333333373337F337F33300003333
            9117333911173333337F33737F337F33000033333913333391113333337FF733
            37F337F300003333333333333919333333377333337FFF730000333333333333
            3333333333333333333777330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object BitBtn4: TBitBtn
          Left = 232
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 3
          OnClick = BitBtn4Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0037373737370E
            037373737373730E603700000000370E660033333330730E660333333330000E
            660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
            660300000E60330E660333330600330E660333330030330E6603333333303330
            E6033333333033330E0333333330000000033333333333333333}
        end
      end
      object DateEdit1: TDateEdit
        Left = 85
        Top = 120
        Width = 95
        Height = 21
        Color = clInfoBk
        NumGlyphs = 2
        ReadOnly = True
        TabOrder = 7
      end
      object DateEdit2: TDateEdit
        Left = 322
        Top = 120
        Width = 95
        Height = 21
        Color = clInfoBk
        NumGlyphs = 2
        ReadOnly = True
        TabOrder = 8
      end
      object Ed_Inst1: TEdit
        Left = 85
        Top = 144
        Width = 333
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 63
        ReadOnly = True
        TabOrder = 9
      end
      object Ed_Inst2: TEdit
        Left = 85
        Top = 169
        Width = 333
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 63
        ReadOnly = True
        TabOrder = 10
      end
      object Ed_Inst3: TEdit
        Left = 85
        Top = 195
        Width = 333
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 63
        ReadOnly = True
        TabOrder = 11
      end
      object Ed_Inst4: TEdit
        Left = 85
        Top = 221
        Width = 333
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 63
        ReadOnly = True
        TabOrder = 12
      end
      object Ed_Inst5: TEdit
        Left = 85
        Top = 248
        Width = 333
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 63
        ReadOnly = True
        TabOrder = 13
      end
      object Ed_Inst6: TEdit
        Left = 85
        Top = 274
        Width = 333
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 63
        ReadOnly = True
        TabOrder = 14
      end
      object Ed_Inst7: TEdit
        Left = 85
        Top = 301
        Width = 333
        Height = 21
        Color = clInfoBk
        Enabled = False
        MaxLength = 63
        ReadOnly = True
        TabOrder = 15
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 336
        Top = 96
        Width = 82
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0.00'
        ReadOnly = True
        TabOrder = 6
      end
      object CheckBox1: TCheckBox
        Left = 102
        Top = 9
        Width = 85
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Boleto Avulso'
        Enabled = False
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 18
        Top = 9
        Width = 57
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Agrupar'
        TabOrder = 0
        OnClick = CheckBox2Click
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 61
        Top = 56
        Width = 335
        Height = 21
        DropDownCount = 8
        Color = clAqua
        LookupField = 'CodConta'
        LookupDisplay = 'NomeConta'
        LookupSource = DM1.dsContas
        TabOrder = 3
        OnExit = RxDBLookupCombo2Exit
      end
    end
  end
  object qsBoletos: TDataSource
    DataSet = qBoletos
    Left = 368
    Top = 24
  end
  object qBoletos: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbcreceber.VlrTotal ), Dbcliente.Nome, Dbcreceber.Nu' +
        'mNota, Dbcreceberparc.ParcCReceber, Dbcreceberparc.VlrParcCReceb' +
        'er, Dbcreceberparc.DtVencCReceber'
      'FROM "DBCRECEBER.DB" Dbcreceber'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbcreceber.CodCli = Dbcliente.Codigo)  '
      '   INNER JOIN "DBCRECEBERPARC.DB" Dbcreceberparc'
      '   ON  (Dbcreceberparc.NumCReceber = Dbcreceber.NumCReceber)  '
      
        'GROUP BY Dbcliente.Nome, Dbcreceber.NumNota, Dbcreceberparc.Parc' +
        'CReceber, Dbcreceberparc.VlrParcCReceber, Dbcreceberparc.DtVencC' +
        'Receber'
      'ORDER BY Dbcliente.Nome, Dbcreceber.NumNota')
    Left = 344
    Top = 24
  end
  object mBoletos: TMemoryTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'mBoletos'
    Left = 112
    Top = 243
    object mBoletosCliente: TStringField
      FieldName = 'Cliente'
      Size = 40
    end
    object mBoletosDtVencto: TDateField
      FieldName = 'DtVencto'
    end
    object mBoletosDtDoc: TDateField
      FieldName = 'DtDoc'
    end
    object mBoletosNumDoc: TStringField
      FieldName = 'NumDoc'
      Size = 15
    end
    object mBoletosVlrDoc: TFloatField
      FieldName = 'VlrDoc'
      DisplayFormat = '0.00'
    end
    object mBoletosNumNotas: TStringField
      FieldName = 'NumNotas'
      Size = 100
    end
    object mBoletosInstrucao1: TStringField
      FieldName = 'Instrucao1'
      Size = 63
    end
    object mBoletosInstrucao2: TStringField
      FieldName = 'Instrucao2'
      Size = 63
    end
    object mBoletosInstrucao3: TStringField
      FieldName = 'Instrucao3'
      Size = 63
    end
    object mBoletosInstrucao4: TStringField
      FieldName = 'Instrucao4'
      Size = 63
    end
    object mBoletosInstrucao5: TStringField
      FieldName = 'Instrucao5'
    end
    object mBoletosInstrucao6: TStringField
      FieldName = 'Instrucao6'
      Size = 63
    end
    object mBoletosInstrucao7: TStringField
      FieldName = 'Instrucao7'
      Size = 63
    end
    object mBoletosEspecie: TStringField
      FieldName = 'Especie'
      Size = 3
    end
    object mBoletosCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
  end
  object msBoletos: TDataSource
    DataSet = mBoletos
    Left = 136
    Top = 248
  end
end
