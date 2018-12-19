object fConsTalaoSetor: TfConsTalaoSetor
  Left = 107
  Top = 130
  Width = 702
  Height = 531
  Caption = 'Consulta Tal'#227'o Setor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 148
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 94
      Height = 13
      Caption = 'Data entrada inicial:'
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 87
      Height = 13
      Caption = 'Data entrada final:'
    end
    object Label3: TLabel
      Left = 19
      Top = 40
      Width = 83
      Height = 13
      Caption = 'Data saida inicial:'
    end
    object Label4: TLabel
      Left = 219
      Top = 40
      Width = 76
      Height = 13
      Caption = 'Data saida final:'
    end
    object Label5: TLabel
      Left = 74
      Top = 64
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object Label6: TLabel
      Left = 62
      Top = 86
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label7: TLabel
      Left = 44
      Top = 108
      Width = 58
      Height = 13
      Caption = 'Funcionario:'
    end
    object Label8: TLabel
      Left = 40
      Top = 132
      Width = 60
      Height = 13
      Caption = 'Tal'#227'o Inicial:'
    end
    object Label9: TLabel
      Left = 421
      Top = 130
      Width = 47
      Height = 13
      Caption = 'Processo:'
    end
    object Label10: TLabel
      Left = 260
      Top = 130
      Width = 55
      Height = 13
      Caption = 'Tal'#227'o Final:'
    end
    object Label11: TLabel
      Left = 408
      Top = 106
      Width = 60
      Height = 13
      Caption = 'Ordenar Por:'
    end
    object DateEdit1: TDateEdit
      Left = 104
      Top = 8
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 299
      Top = 8
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit3: TDateEdit
      Left = 104
      Top = 32
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit4: TDateEdit
      Left = 299
      Top = 32
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object RxDBLookupSetor: TRxDBLookupCombo
      Left = 104
      Top = 56
      Width = 292
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsSetor
      TabOrder = 4
      OnEnter = RxDBLookupSetorEnter
      OnExit = RxDBLookupSetorExit
    end
    object RxDBLookupProduto: TRxDBLookupCombo
      Left = 104
      Top = 78
      Width = 292
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia'
      LookupSource = DM1.dsProduto
      TabOrder = 5
      OnEnter = RxDBLookupProdutoEnter
      OnExit = RxDBLookupProdutoExit
    end
    object RxDBLookupFuncionario: TRxDBLookupCombo
      Left = 104
      Top = 100
      Width = 292
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsFuncionario
      TabOrder = 6
      OnEnter = RxDBLookupFuncionarioEnter
      OnExit = RxDBLookupFuncionarioExit
    end
    object BitBtn3: TBitBtn
      Left = 595
      Top = 6
      Width = 95
      Height = 30
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtn3Click
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
    object BitBtn6: TBitBtn
      Left = 403
      Top = 38
      Width = 95
      Height = 30
      Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777700000000000777707777777770707700000000000007070777777BBB77
        0007077777788877070700000000000007700777777777707070700000000007
        0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
        077777770FFFFFFFF07777777000000000777777777777777777}
    end
    object BitBtn1: TBitBtn
      Left = 403
      Top = 6
      Width = 95
      Height = 30
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn1Click
      Glyph.Data = {
        36050000424D360500000000000036040000280000000E000000100000000100
        08000000000000010000CA0E0000C30E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000ACACACACACAC
        ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
        00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
        02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
        5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
        00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
        ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
        D7D7D7D700000000FFFFACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
        D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
    end
    object edTalao: TEdit
      Left = 104
      Top = 124
      Width = 79
      Height = 21
      TabOrder = 10
    end
    object ComboBox1: TComboBox
      Left = 469
      Top = 122
      Width = 140
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 12
      Text = 'Todos'
      Items.Strings = (
        'Parado'
        'Encerrado'
        'N'#227'o foi para produ'#231#227'o'
        'Aberto / esta em produ'#231#227'o'
        'Todos')
    end
    object edTalao2: TEdit
      Left = 317
      Top = 122
      Width = 79
      Height = 21
      TabOrder = 11
    end
    object ComboBox2: TComboBox
      Left = 469
      Top = 98
      Width = 140
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 13
      Text = 'Setor'
      Items.Strings = (
        'Setor'
        'Tal'#227'o'
        'Dt. Entradad'
        'Dt. Saida')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 148
    Width = 694
    Height = 356
    Align = alClient
    DataSource = dsConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 13
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMESETOR'
        Title.Alignment = taCenter
        Title.Caption = 'Setor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TALAO'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDPRODUZIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd Produzida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDQUEBRA'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd Quebra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFUNCIONARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Funcion'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HRENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Saida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HRSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Sa'#237'da'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALHORAS'
        Title.Alignment = taCenter
        Title.Caption = 'Total Horas'
        Visible = True
      end>
  end
  object dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 136
    Top = 312
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 176
    Top = 312
    object cdsConsultaCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsConsultaNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
    end
    object cdsConsultaTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsConsultaQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object cdsConsultaQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object cdsConsultaQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object cdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsultaNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
    object cdsConsultaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsConsultaHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsConsultaDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsConsultaHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsConsultaTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
      DisplayFormat = '0.00'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 216
    Top = 312
  end
  object qConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT TALAOSETOR.CODSETOR, SETOR.NOME AS NOMESETOR, TALAOSETOR.' +
        'TALAO, TALAOMOV.QTDENTRADA,'
      
        'TALAOMOV.QTDPRODUZIDO, TALAOMOV.QTDQUEBRA, PRODUTO.REFERENCIA, F' +
        'UNCIONARIO.NOME AS NOMEFUNCIONARIO,'
      
        'TALAOMOV.DTENTRADA, TALAOMOV.HRENTRADA, TALAOMOV.DTSAIDA,  TALAO' +
        'MOV.HRSAIDA, TALAOMOV.TOTALHORAS'
      ''
      'FROM TALAOSETOR'
      'LEFT JOIN SETOR ON (TALAOSETOR.CODSETOR = SETOR.CODIGO)'
      'LEFT JOIN TALAOMOV ON (TALAOSETOR.TALAO = TALAOMOV.TALAO)'
      'LEFT JOIN PRODUTO ON (TALAOMOV.CODPRODUTO = PRODUTO.CODIGO)'
      
        'LEFT JOIN FUNCIONARIO ON (TALAOMOV.CODFUNCIONARIO = FUNCIONARIO.' +
        'CODIGO)')
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 312
  end
end
