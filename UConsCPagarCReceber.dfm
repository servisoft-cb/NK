object fConsCPagarCReceber: TfConsCPagarCReceber
  Left = 4
  Top = 24
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta di'#225'ria'
  ClientHeight = 532
  ClientWidth = 786
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
  object Label1: TLabel
    Left = 1
    Top = 10
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 169
    Top = 10
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Bevel1: TBevel
    Left = -1
    Top = 33
    Width = 788
    Height = 3
    Shape = bsTopLine
  end
  object DateEdit1: TDateEdit
    Left = 57
    Top = 2
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 222
    Top = 2
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 336
    Top = 4
    Width = 93
    Height = 26
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 1
    Top = 38
    Width = 785
    Height = 231
    Color = clInfoBk
    DataSource = dsmDetalhado
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
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
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtVencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 238
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Parcela'
        Title.Alignment = taCenter
        Title.Caption = 'Parc.'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrReceber'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Receber'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrPagar'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Pagar'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Width = 111
        Visible = True
      end>
  end
  object SMDBGrid2: TSMDBGrid
    Left = 1
    Top = 276
    Width = 447
    Height = 255
    Color = 10930928
    DataSource = dsmResumo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
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
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtVencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrReceber'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Receber'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrPagar'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Pagar'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Width = 128
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 613
    Top = 4
    Width = 93
    Height = 26
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object GroupBox1: TGroupBox
    Left = 591
    Top = 277
    Width = 193
    Height = 81
    Caption = ' Atraso '
    Enabled = False
    TabOrder = 6
    object Label3: TLabel
      Left = 8
      Top = 19
      Width = 44
      Height = 13
      Caption = 'Receber:'
    end
    object Label4: TLabel
      Left = 21
      Top = 41
      Width = 31
      Height = 13
      Caption = 'Pagar:'
    end
    object Label5: TLabel
      Left = 22
      Top = 63
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 55
      Top = 12
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 55
      Top = 34
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 1
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 55
      Top = 56
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 591
    Top = 361
    Width = 193
    Height = 82
    Caption = ' Saldo no Per'#237'odo '
    Enabled = False
    TabOrder = 7
    object Label6: TLabel
      Left = 8
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Receber:'
    end
    object Label7: TLabel
      Left = 21
      Top = 42
      Width = 31
      Height = 13
      Caption = 'Pagar:'
    end
    object Label8: TLabel
      Left = 22
      Top = 64
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 55
      Top = 13
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 0
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 55
      Top = 35
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 1
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 55
      Top = 57
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 590
    Top = 446
    Width = 193
    Height = 85
    Caption = ' Saldo at'#233' a data final'
    Enabled = False
    TabOrder = 8
    object Label9: TLabel
      Left = 8
      Top = 22
      Width = 44
      Height = 13
      Caption = 'Receber:'
    end
    object Label10: TLabel
      Left = 21
      Top = 44
      Width = 31
      Height = 13
      Caption = 'Pagar:'
    end
    object Label11: TLabel
      Left = 22
      Top = 66
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object CurrencyEdit7: TCurrencyEdit
      Left = 55
      Top = 15
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 0
    end
    object CurrencyEdit8: TCurrencyEdit
      Left = 55
      Top = 37
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 1
    end
    object CurrencyEdit9: TCurrencyEdit
      Left = 55
      Top = 59
      Width = 121
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '###,###,##0.00'
      TabOrder = 2
    end
  end
  object BitBtn3: TBitBtn
    Left = 428
    Top = 4
    Width = 93
    Height = 26
    Caption = 'Imp.Detalhado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 520
    Top = 4
    Width = 93
    Height = 26
    Caption = 'Imp.Resumo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn4Click
  end
  object qCReceber: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcreceberparc.NumCReceber, Dbcreceberparc.ParcCReceber, ' +
        'Dbcreceberparc.VlrParcCReceber, Dbcreceberparc.DtVencCReceber, D' +
        'bcreceberparc.DtPagParcCReceber, Dbcreceberparc.CodCli, Dbcreceb' +
        'erparc.NumNota, Dbcreceberparc.PgtoParcial, Dbcreceberparc.RestP' +
        'arcela, Dbcreceberparc.PercComissao, Dbcreceberparc.VlrComissao,' +
        ' Dbcreceberparc.VlrDevolucao, Dbcreceberparc.Transferencia, Dbcl' +
        'iente.Nome NomeCliente, Dbcreceberparc.CodVendedor, Dbcreceberpa' +
        'rc.DtGerado, Dbcreceberparc.TipoDoc'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbcreceberparc.CodCli = Dbcliente.Codigo)  '
      'WHERE   (Dbcreceberparc.Cancelado = FALSE)  '
      '   AND  (Dbcreceberparc.RestParcela > 0)  ')
    Left = 648
    Top = 104
    object qCReceberNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".NumCReceber'
    end
    object qCReceberParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".ParcCReceber'
    end
    object qCReceberVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrParcCReceber'
    end
    object qCReceberDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".DtVencCReceber'
    end
    object qCReceberDtPagParcCReceber: TDateField
      FieldName = 'DtPagParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".DtPagParcCReceber'
    end
    object qCReceberCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbCReceberParc.DB".CodCli'
    end
    object qCReceberNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbCReceberParc.DB".NumNota'
    end
    object qCReceberPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
      Origin = 'TABELAS."dbCReceberParc.DB".PgtoParcial'
    end
    object qCReceberRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCReceberParc.DB".RestParcela'
    end
    object qCReceberPercComissao: TFloatField
      FieldName = 'PercComissao'
      Origin = 'TABELAS."dbCReceberParc.DB".PercComissao'
    end
    object qCReceberVlrComissao: TFloatField
      FieldName = 'VlrComissao'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrComissao'
    end
    object qCReceberVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrDevolucao'
    end
    object qCReceberTransferencia: TBooleanField
      FieldName = 'Transferencia'
      Origin = 'TABELAS."dbCReceberParc.DB".Transferencia'
    end
    object qCReceberNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 40
    end
    object qCReceberCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbCReceberParc.DB".CodVendedor'
    end
    object qCReceberDtGerado: TDateField
      FieldName = 'DtGerado'
      Origin = 'TABELAS."dbCReceberParc.DB".DtGerado'
    end
    object qCReceberTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Origin = 'TABELAS."dbCReceberParc.DB".TipoDoc'
      Size = 2
    end
  end
  object qCPagar: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcpagarparc.NumCPagar, Dbcpagarparc.ParcCPagar, Dbcpagar' +
        'parc.DtVencCPagar, Dbcpagarparc.VlrParcCPagar, Dbcpagarparc.DtPa' +
        'gParcCPagar, Dbcpagarparc.CodForn, Dbfornecedores.NomeForn, Dbcp' +
        'agarparc.NumNotaEnt, Dbcpagarparc.PgtoParcial, Dbcpagarparc.Rest' +
        'Parcela, Dbcpagarparc.NroDuplicata'
      'FROM "dbCPagarParc.DB" Dbcpagarparc'
      '   INNER JOIN "DBFORNECEDORES.DB" Dbfornecedores'
      '   ON  (Dbcpagarparc.CodForn = Dbfornecedores.CodForn)  '
      'WHERE  Dbcpagarparc.RestParcela > 0 ')
    Left = 648
    Top = 136
    object qCPagarNumCPagar: TIntegerField
      FieldName = 'NumCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".NumCPagar'
    end
    object qCPagarParcCPagar: TIntegerField
      FieldName = 'ParcCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".ParcCPagar'
    end
    object qCPagarDtVencCPagar: TDateField
      FieldName = 'DtVencCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".DtVencCPagar'
    end
    object qCPagarVlrParcCPagar: TFloatField
      FieldName = 'VlrParcCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".VlrParcCPagar'
    end
    object qCPagarDtPagParcCPagar: TDateField
      FieldName = 'DtPagParcCPagar'
      Origin = 'TABELAS."dbCPagarParc.DB".DtPagParcCPagar'
    end
    object qCPagarCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbCPagarParc.DB".CodForn'
    end
    object qCPagarNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qCPagarNumNotaEnt: TIntegerField
      FieldName = 'NumNotaEnt'
      Origin = 'TABELAS."dbCPagarParc.DB".NumNotaEnt'
    end
    object qCPagarPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
      Origin = 'TABELAS."dbCPagarParc.DB".PgtoParcial'
    end
    object qCPagarRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCPagarParc.DB".RestParcela'
    end
    object qCPagarNroDuplicata: TIntegerField
      FieldName = 'NroDuplicata'
      Origin = 'TABELAS."dbCPagarParc.DB".NroDuplicata'
    end
  end
  object mDetalhado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCliForn'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'VlrReceber'
        DataType = ftFloat
      end
      item
        Name = 'VlrPagar'
        DataType = ftFloat
      end
      item
        Name = 'Saldo'
        DataType = ftFloat
      end
      item
        Name = 'Tipo'
        DataType = ftInteger
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'Parcela'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'DtVencimento;Tipo'
    Params = <>
    StoreDefs = True
    OnNewRecord = mDetalhadoNewRecord
    Left = 640
    Top = 8
    Data = {
      D00000009619E0BD010000001800000009000000000003000000D0000A436F64
      436C69466F726E0400010000000000044E6F6D65010049000000010005574944
      54480200020028000C447456656E63696D656E746F04000600000000000A566C
      7252656365626572080004000000000008566C72506167617208000400000000
      000553616C646F0800040000000000045469706F0400010000000000074E756D
      4E6F746104000100000000000750617263656C61040001000000000001000D44
      454641554C545F4F524445520200820000000000}
    object mDetalhadoCodCliForn: TIntegerField
      FieldName = 'CodCliForn'
    end
    object mDetalhadoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mDetalhadoDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mDetalhadoVlrReceber: TFloatField
      FieldName = 'VlrReceber'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoVlrPagar: TFloatField
      FieldName = 'VlrPagar'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object mDetalhadoNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mDetalhadoParcela: TIntegerField
      FieldName = 'Parcela'
    end
  end
  object dsmDetalhado: TDataSource
    DataSet = mDetalhado
    Left = 656
    Top = 8
  end
  object mResumo: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'DtVencimento'
    Params = <>
    OnNewRecord = mResumoNewRecord
    Left = 704
    Top = 8
    Data = {
      610000009619E0BD01000000180000000400000000000300000061000C447456
      656E63696D656E746F04000600000000000A566C725265636562657208000400
      0000000008566C72506167617208000400000000000553616C646F0800040000
      0000000000}
    object mResumoDtVencimento: TDateField
      DisplayWidth = 18
      FieldName = 'DtVencimento'
    end
    object mResumoVlrReceber: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrReceber'
      DisplayFormat = '###,###,##0.00'
    end
    object mResumoVlrPagar: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrPagar'
      DisplayFormat = '###,###,##0.00'
    end
    object mResumoSaldo: TFloatField
      DisplayWidth = 12
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmResumo: TDataSource
    DataSet = mResumo
    Left = 720
    Top = 8
  end
  object qCPagarAtraso: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT SUM( RestParcela ) RestParcela'
      'FROM "dbCPagarParc.DB" Dbcpagarparc'
      'WHERE  RestParcela > 0 ')
    Left = 648
    Top = 72
    object qCPagarAtrasoRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCPagarParc.DB".RestParcela'
      DisplayFormat = '0.00'
    end
  end
  object qCReceberAtraso: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT SUM( RestParcela ) RestParcela'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      'WHERE   (Cancelado = FALSE)  '
      '   AND  (RestParcela > 0)  ')
    Left = 688
    Top = 72
    object qCReceberAtrasoRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCReceberParc.DB".RestParcela'
      DisplayFormat = '###,###,##0.00'
    end
  end
end
