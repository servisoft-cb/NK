object fConsPedidoBR: TfConsPedidoBR
  Left = 86
  Top = 41
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Pedidos'
  ClientHeight = 543
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 99
    Width = 787
    Height = 319
    Align = alClient
    DataSource = dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
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
    Groupings = <
      item
        Expression = 'aaa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Color = 10930928
      end>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 21
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramacao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido Cliente'
        Width = 99
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumTalao'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Tal'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 47
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdPares'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdParesFat'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Entregue'
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdParesRest'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pendente'
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdProduzida'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Produzido'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Desc. Material'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdParesCanc'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Cancelada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumOS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OS'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Solicitante'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 99
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 30
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 517
      Top = 30
      Width = 74
      Height = 13
      Caption = 'Parte do Nome:'
    end
    object Label3: TLabel
      Left = 522
      Top = 7
      Width = 69
      Height = 13
      Caption = 'P.Cliente (OC):'
    end
    object Label4: TLabel
      Left = 290
      Top = 7
      Width = 33
      Height = 13
      Caption = 'N'#186' OS:'
    end
    object Label5: TLabel
      Left = 12
      Top = 51
      Width = 32
      Height = 13
      Caption = 'Refer.:'
    end
    object Label6: TLabel
      Left = 201
      Top = 51
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label8: TLabel
      Left = 21
      Top = 7
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 45
      Top = 22
      Width = 323
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'Codigo'
      LookupDisplay = 'Nome;CgcCpf'
      LookupSource = DM1.dsCliente
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
    end
    object Edit1: TEdit
      Left = 592
      Top = 22
      Width = 192
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 592
      Top = 1
      Width = 192
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 325
      Top = 1
      Width = 192
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 242
      Top = 43
      Width = 323
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsProduto
      TabOrder = 4
      OnChange = RxDBLookupCombo2Change
      OnEnter = RxDBLookupCombo2Enter
    end
    object Panel2: TPanel
      Left = 0
      Top = 67
      Width = 433
      Height = 29
      TabOrder = 5
      object BitBtn1: TBitBtn
        Left = 9
        Top = 3
        Width = 93
        Height = 23
        Caption = 'Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 102
        Top = 3
        Width = 93
        Height = 23
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn4: TBitBtn
        Left = 352
        Top = 3
        Width = 75
        Height = 23
        Caption = 'Mais pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 196
        Top = 3
        Width = 93
        Height = 23
        Caption = 'Materia-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn5Click
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 593
      Top = 46
      Width = 191
      Height = 46
      Caption = ' Op'#231#227'o '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Pendentes'
        'Faturados'
        'Ambos')
      TabOrder = 6
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 45
      Top = 0
      Width = 220
      Height = 21
      DropDownCount = 8
      DropDownWidth = 600
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno;Empresa'
      TabOrder = 7
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 45
      Top = 43
      Width = 148
      Height = 21
      DropDownCount = 8
      DropDownWidth = 300
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia;DescMaterial'
      LookupSource = DM1.dsProduto
      TabOrder = 8
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo4Enter
    end
    object ckImpNota: TCheckBox
      Left = 456
      Top = 67
      Width = 97
      Height = 17
      Caption = 'Imp. as notas'
      TabOrder = 9
    end
    object ckImpTotal: TCheckBox
      Left = 456
      Top = 81
      Width = 97
      Height = 17
      Caption = 'Imp. Total'
      TabOrder = 10
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 418
    Width = 787
    Height = 125
    Align = alBottom
    TabOrder = 2
    object Label7: TLabel
      Left = 168
      Top = 11
      Width = 236
      Height = 13
      Caption = 'Notas que foram baixadas por Item do Pedido ==>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 4
      Top = 30
      Width = 21
      Height = 15
      Brush.Color = clTeal
    end
    object Label9: TLabel
      Left = 27
      Top = 32
      Width = 42
      Height = 13
      Caption = 'Faturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 84
      Top = 30
      Width = 21
      Height = 15
      Brush.Color = clAqua
    end
    object Label10: TLabel
      Left = 107
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Tal'#227'o Gerado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape3: TShape
      Left = 191
      Top = 30
      Width = 21
      Height = 15
    end
    object Label11: TLabel
      Left = 214
      Top = 32
      Width = 51
      Height = 13
      Caption = 'Sem Tal'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 271
      Top = 30
      Width = 21
      Height = 15
      Brush.Color = clRed
    end
    object Label12: TLabel
      Left = 294
      Top = 32
      Width = 51
      Height = 13
      Caption = 'Cancelado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape5: TShape
      Left = 84
      Top = 46
      Width = 21
      Height = 15
      Brush.Color = clMoneyGreen
    end
    object Label14: TLabel
      Left = 107
      Top = 48
      Width = 77
      Height = 13
      Caption = 'Tal'#227'o Produzido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape6: TShape
      Left = 191
      Top = 46
      Width = 21
      Height = 15
      Brush.Color = 10930928
    end
    object Label15: TLabel
      Left = 214
      Top = 48
      Width = 82
      Height = 13
      Caption = 'Produzido Parcial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxDBGrid2: TRxDBGrid
      Left = 409
      Top = 1
      Width = 377
      Height = 123
      Align = alRight
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumNota'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ItemNota'
          Title.Alignment = taCenter
          Title.Caption = 'Item da Nota'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Width = 28
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtNota'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Nota'
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdPares'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade Faturada'
          Width = 111
          Visible = True
        end>
    end
    object RadioGroup2: TRadioGroup
      Left = 6
      Top = 64
      Width = 397
      Height = 51
      Caption = ' Ordenar a consulta por '
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Dt.Entrega'
        'OC (Ped.Cliente)'
        'N'#186' OS (Remessa)'
        'Produto')
      TabOrder = 1
    end
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.PedidoCliente, Dbpedido.CodClie' +
        'nte, Dbcliente.Nome NomeCliente, Dbpedidoitem.Item, Dbpedidoitem' +
        '.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.QtdPares, Dbpedid' +
        'oitem.QtdParesFat, Dbpedidoitem.QtdParesRest, Dbpedidoitem.QtdPa' +
        'resCanc, Dbpedidoitem.NumOS, Dbpedidoitem.DtReprogramacao, Dbped' +
        'idoitem.CodGrade, Dbpedido.DtEmissao, Dbcliente.Fantasia, Dbprod' +
        'uto.Referencia, Dbproduto.Nome NomeProduto, Dbproduto.DescMateri' +
        'al, Dbpedidoitem.NumTalao, Dbtalao.Produzido, Dbtalao.QtdProduzi' +
        'da, Dbtalao.Encerrado, Dbpedidoitem.Unidade, Dbpedido.Solicitant' +
        'e'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      '   FULL OUTER JOIN "dbTalao.DB" Dbtalao'
      '   ON  (Dbpedidoitem.NumTalao = Dbtalao.Talao)  ')
    Left = 288
    Top = 264
    object qConsultaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qConsultaPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qConsultaCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qConsultaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qConsultaItem: TIntegerField
      FieldName = 'Item'
    end
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qConsultaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qConsultaQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qConsultaQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qConsultaQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qConsultaQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object qConsultaNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qConsultaDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qConsultalkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
    object qConsultaCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object qConsultaDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qConsultaFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qConsultaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qConsultaDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 50
    end
    object qConsultaNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qConsultaNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object qConsultaProduzido: TBooleanField
      FieldName = 'Produzido'
    end
    object qConsultaQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
    end
    object qConsultaEncerrado: TBooleanField
      FieldName = 'Encerrado'
    end
    object qConsultaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qConsultaSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 30
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 304
    Top = 264
  end
  object tPedidoNota: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Pedido;Item'
    MasterFields = 'Pedido;Item'
    MasterSource = dsqConsulta
    TableName = 'dbPedidoNota.DB'
    Left = 432
    Top = 264
    object tPedidoNotaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedidoNotaItem: TIntegerField
      FieldName = 'Item'
    end
    object tPedidoNotaTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object tPedidoNotaNumSeqNota: TIntegerField
      FieldName = 'NumSeqNota'
    end
    object tPedidoNotaItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object tPedidoNotaDtNota: TDateField
      FieldName = 'DtNota'
    end
    object tPedidoNotaQtdPares: TIntegerField
      FieldName = 'QtdPares'
    end
    object tPedidoNotaNroLancExtComissao: TIntegerField
      FieldName = 'NroLancExtComissao'
    end
    object tPedidoNotaNroLancExtComissaoMod: TIntegerField
      FieldName = 'NroLancExtComissaoMod'
    end
    object tPedidoNotaNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tPedidoNotaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tPedidoNotaFilialNota: TIntegerField
      FieldName = 'FilialNota'
    end
  end
  object dsPedidoNota: TDataSource
    DataSet = tPedidoNota
    Left = 456
    Top = 264
  end
  object mResumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QtdTotal'
        DataType = ftFloat
      end
      item
        Name = 'QtdFaturada'
        DataType = ftFloat
      end
      item
        Name = 'PercRestante'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'QtdProduzida'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NumOS'
    Params = <>
    StoreDefs = True
    Left = 384
    Top = 264
    Data = {
      2A0100009619E0BD01000000180000000B0000000000030000002A010A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      0100055749445448020002002800054E756D4F53010049000000010005574944
      5448020002001E0008517464546F74616C08000400000000000B517464466174
      757261646108000400000000000C5065726352657374616E7465080004000000
      00000B51746452657374616E74650800040000000000074E6F6D65436F720100
      49000000010005574944544802000200190006436F64436F7204000100000000
      000C51746450726F64757A696461080004000000000001000D44454641554C54
      5F4F524445520200820000000000}
    object mResumoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mResumoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mResumoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mResumoNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mResumoQtdTotal: TFloatField
      FieldName = 'QtdTotal'
      DisplayFormat = '0.###'
    end
    object mResumoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
      DisplayFormat = '0.###'
    end
    object mResumoPercRestante: TFloatField
      FieldName = 'PercRestante'
      DisplayFormat = '0.##'
    end
    object mResumoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.###'
    end
    object mResumoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
    object mResumoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mResumoQtdProduzida: TFloatField
      FieldName = 'QtdProduzida'
    end
  end
  object dsmResumo: TDataSource
    DataSet = mResumo
    Left = 400
    Top = 264
  end
end
