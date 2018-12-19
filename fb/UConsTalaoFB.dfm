object fConsTalaoFB: TfConsTalaoFB
  Left = 191
  Top = 87
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Tal'#245'es'
  ClientHeight = 563
  ClientWidth = 782
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 76
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 52
      Top = 10
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tal'#227'o:'
    end
    object Label2: TLabel
      Left = 46
      Top = 33
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido:'
    end
    object Label3: TLabel
      Left = 174
      Top = 10
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label9: TLabel
      Left = 16
      Top = 57
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gerado Entre:'
    end
    object Label10: TLabel
      Left = 196
      Top = 55
      Width = 10
      Height = 13
      Alignment = taRightJustify
      Caption = 'E:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 86
      Top = 2
      Width = 81
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 86
      Top = 25
      Width = 81
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 211
      Top = 2
      Width = 222
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 2
      OnEnter = RxDBLookupCombo1Enter
    end
    object BitBtn1: TBitBtn
      Left = 433
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 508
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 665
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 8
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 583
      Top = 48
      Width = 82
      Height = 25
      Caption = 'Cancelar Tal'#227'o'
      TabOrder = 9
      OnClick = BitBtn4Click
    end
    object CheckBox1: TCheckBox
      Left = 211
      Top = 29
      Width = 150
      Height = 17
      Caption = 'Calcular tempo ocioso'
      TabOrder = 3
    end
    object DateEdit1: TDateEdit
      Left = 86
      Top = 48
      Width = 90
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 4
    end
    object DateEdit2: TDateEdit
      Left = 211
      Top = 48
      Width = 90
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 5
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 76
    Width = 782
    Height = 446
    Align = alClient
    Ctl3D = True
    DataSource = dsTalao
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    FixedCols = 3
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 27
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TALAO'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 42
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
        FieldName = 'NOMEPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. do Tal'#227'o'
        Width = 48
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TOTALHORAS'
        Title.Alignment = taCenter
        Title.Caption = 'Total Horas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORASPARADA'
        Title.Alignment = taCenter
        Title.Caption = 'Horas Paradas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORASPRODUCAO'
        Title.Alignment = taCenter
        Title.Caption = 'Horas Produ'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clOcioso'
        Title.Caption = 'Tempo Ocioso'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEMPEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Item Pedido'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDPRODUZIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Produzida'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTGERADO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Gerado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HRGERADO'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ENCERRADO'
        Title.Alignment = taCenter
        Title.Caption = 'Encerrado'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IMPRESSODATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Impress'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IMPRESSOHORA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Impress'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPRESSOUSUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio que fez a impress'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROCESSO'
        Title.Alignment = taCenter
        Title.Caption = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Alignment = taCenter
        Title.Caption = 'Fantasia'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDOCLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTCANCELADO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cancelado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVOCANCELADO'
        Title.Alignment = taCenter
        Title.Caption = 'Motivo Cancelado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALHORAS'
        Title.Caption = 'Total Horas'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 782
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Shape1: TShape
      Left = 8
      Top = 10
      Width = 28
      Height = 18
      Brush.Color = clYellow
    end
    object Label4: TLabel
      Left = 39
      Top = 14
      Width = 64
      Height = 13
      Caption = 'Em Produ'#231#227'o'
    end
    object Shape2: TShape
      Left = 120
      Top = 10
      Width = 28
      Height = 18
      Brush.Color = clTeal
    end
    object Label5: TLabel
      Left = 151
      Top = 14
      Width = 49
      Height = 13
      Caption = 'Encerrado'
    end
    object Shape3: TShape
      Left = 217
      Top = 11
      Width = 28
      Height = 18
      Brush.Color = clRed
    end
    object Label6: TLabel
      Left = 248
      Top = 15
      Width = 51
      Height = 13
      Caption = 'Cancelado'
    end
    object Shape4: TShape
      Left = 313
      Top = 11
      Width = 28
      Height = 18
      Brush.Color = clAqua
    end
    object Label7: TLabel
      Left = 344
      Top = 15
      Width = 34
      Height = 13
      Caption = 'Parado'
    end
    object Shape5: TShape
      Left = 401
      Top = 11
      Width = 28
      Height = 18
      Brush.Color = 8454016
    end
    object Label8: TLabel
      Left = 432
      Top = 15
      Width = 39
      Height = 13
      Caption = 'Terceiro'
    end
    object BitBtn5: TBitBtn
      Left = 680
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 0
      Visible = False
    end
  end
  object Talao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.*, CL.NOME NOMECLIENTE, CL.FANTASIA, P.REFERENCIA, P.NO' +
      'ME NOMEPRODUTO, P.DIAMETRO, P.COMPRIMENTO, P.ROSCA, P.CABECA, P.' +
      'ENDFOTOTALAO'#13#10'FROM TALAO T'#13#10'INNER JOIN CLIENTE  CL ON (CL.CODIGO' +
      ' = T.CODCLIENTE)'#13#10'INNER JOIN PRODUTO P ON (P.CODIGO = T.CODPRODU' +
      'TO)'#13#10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 176
    object TalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object TalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object TalaoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object TalaoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object TalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object TalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object TalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
    end
    object TalaoPEDCLIDIF: TStringField
      FieldName = 'PEDCLIDIF'
      Size = 2
    end
    object TalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object TalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object TalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object TalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object TalaoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
    object TalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object TalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 100
    end
    object TalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object TalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object TalaoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object TalaoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object TalaoIMPRESSODATA: TDateField
      FieldName = 'IMPRESSODATA'
    end
    object TalaoIMPRESSOHORA: TTimeField
      FieldName = 'IMPRESSOHORA'
    end
    object TalaoIMPRESSOUSUARIO: TStringField
      FieldName = 'IMPRESSOUSUARIO'
      Size = 15
    end
    object TalaoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object TalaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object TalaoFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object TalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object TalaoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object TalaoDIAMETRO: TStringField
      FieldName = 'DIAMETRO'
      Size = 12
    end
    object TalaoCOMPRIMENTO: TStringField
      FieldName = 'COMPRIMENTO'
      Size = 12
    end
    object TalaoROSCA: TStringField
      FieldName = 'ROSCA'
      Size = 12
    end
    object TalaoCABECA: TStringField
      FieldName = 'CABECA'
      Size = 12
    end
    object TalaoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object TalaoHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
    end
    object TalaoHORASPARADA: TFloatField
      FieldName = 'HORASPARADA'
    end
    object TalaoQTDEMPROCESSO: TIntegerField
      FieldName = 'QTDEMPROCESSO'
    end
    object TalaoQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object TalaoENDFOTOTALAO: TStringField
      FieldName = 'ENDFOTOTALAO'
      Size = 250
    end
    object TalaoHORASTERCEIRO: TFloatField
      FieldName = 'HORASTERCEIRO'
    end
    object TalaoHRGERADO: TTimeField
      FieldName = 'HRGERADO'
    end
  end
  object pTalao: TDataSetProvider
    DataSet = Talao
    Left = 240
    Top = 176
  end
  object tTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTalao'
    OnCalcFields = tTalaoCalcFields
    Left = 272
    Top = 176
    object tTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object tTalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object tTalaoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object tTalaoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object tTalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object tTalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object tTalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
    end
    object tTalaoPEDCLIDIF: TStringField
      FieldName = 'PEDCLIDIF'
      Size = 2
    end
    object tTalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tTalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object tTalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object tTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object tTalaoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
    object tTalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tTalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 100
    end
    object tTalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object tTalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object tTalaoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object tTalaoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object tTalaoIMPRESSODATA: TDateField
      FieldName = 'IMPRESSODATA'
    end
    object tTalaoIMPRESSOHORA: TTimeField
      FieldName = 'IMPRESSOHORA'
    end
    object tTalaoIMPRESSOUSUARIO: TStringField
      FieldName = 'IMPRESSOUSUARIO'
      Size = 15
    end
    object tTalaoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object tTalaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object tTalaoFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object tTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object tTalaoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object tTalaoDIAMETRO: TStringField
      FieldName = 'DIAMETRO'
      Size = 12
    end
    object tTalaoCOMPRIMENTO: TStringField
      FieldName = 'COMPRIMENTO'
      Size = 12
    end
    object tTalaoROSCA: TStringField
      FieldName = 'ROSCA'
      Size = 12
    end
    object tTalaoCABECA: TStringField
      FieldName = 'CABECA'
      Size = 12
    end
    object tTalaoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
      DisplayFormat = '0.00'
    end
    object tTalaoHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
      DisplayFormat = '0.00'
    end
    object tTalaoHORASPARADA: TFloatField
      FieldName = 'HORASPARADA'
      DisplayFormat = '0.00'
    end
    object tTalaoQTDEMPROCESSO: TIntegerField
      FieldName = 'QTDEMPROCESSO'
    end
    object tTalaoQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object tTalaoENDFOTOTALAO: TStringField
      FieldName = 'ENDFOTOTALAO'
      Size = 250
    end
    object tTalaoHORASTERCEIRO: TFloatField
      FieldName = 'HORASTERCEIRO'
    end
    object tTalaoHRGERADO: TTimeField
      FieldName = 'HRGERADO'
    end
    object tTalaoclOcioso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clOcioso'
      DisplayFormat = '0.00'
      Calculated = True
    end
  end
  object dsTalao: TDataSource
    DataSet = tTalao
    Left = 304
    Top = 176
  end
  object tPedidoItem2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Pedido;Item'
    TableName = 'DBPEDIDOITEM.DB'
    Left = 296
    Top = 320
    object tPedidoItem2Pedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedidoItem2Item: TIntegerField
      FieldName = 'Item'
    end
    object tPedidoItem2DtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object tPedidoItem2Obs: TStringField
      FieldName = 'Obs'
      Size = 100
    end
  end
  object TalaoMov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TM.DTENTRADA, TM.HRENTRADA, TM.DTSAIDA, TM.HRSAIDA'#13#10'FROM ' +
      'TALAOMOV TM'#13#10'WHERE TALAO = :T1'#13#10'ORDER BY DTENTRADA, HRENTRADA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'T1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 208
    object TalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object TalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object TalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object TalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
  end
  object pTalaoMov: TDataSetProvider
    DataSet = TalaoMov
    Left = 240
    Top = 208
  end
  object tTalaoMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTalaoMov'
    OnCalcFields = tTalaoCalcFields
    Left = 272
    Top = 208
    object tTalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object tTalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object tTalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object tTalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
  end
  object dsTalaoMov: TDataSource
    DataSet = tTalaoMov
    Left = 304
    Top = 208
  end
end
