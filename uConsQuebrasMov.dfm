object fConsQuebrasMov: TfConsQuebrasMov
  Left = 159
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Quebras'
  ClientHeight = 453
  ClientWidth = 688
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
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 56
    Width = 688
    Height = 397
    ActivePage = TabSheet4
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    FixedDimension = 19
    object TabSheet3: TRzTabSheet
      Caption = 'Por Setor/Produto/Defeito'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 684
        Height = 374
        Align = alClient
        DataSource = dsmSetorDefeito
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodSetor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Setor'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeSetor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeDefeito'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Defeito'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdQuebras'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Quebras'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodDefeito'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Defeito'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end>
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Por Produto/Defeito'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 684
        Height = 374
        Align = alClient
        DataSource = dsmProdutoDefeito
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodDefeito'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Defeito'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeDefeito'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Defeito'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end>
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'Produto'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 684
        Height = 374
        Align = alClient
        DataSource = dsmProdutoAcum
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Detalhado'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 684
        Height = 374
        Align = alClient
        DataSource = dsTalaoQuebras
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 14
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMESETOR'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Setor'
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
            FieldName = 'CODSETOR'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Setor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDEFEITO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Defeito'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HORA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODFUNCIONARIO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Funcion'#225'rio'
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
            Expanded = False
            FieldName = 'NOMEDEFEITO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Defeito'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODPRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 56
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 20
      Top = 14
      Width = 44
      Height = 13
      Caption = 'Dt.Inicial:'
    end
    object Label2: TLabel
      Left = 196
      Top = 14
      Width = 39
      Height = 13
      Caption = 'Dt.Final:'
    end
    object Label5: TLabel
      Left = 341
      Top = 12
      Width = 112
      Height = 13
      Caption = 'Ordenar Detalhado Por:'
    end
    object Label4: TLabel
      Left = 36
      Top = 37
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object BitBtn2: TBitBtn
      Left = 608
      Top = 1
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object DateEdit1: TDateEdit
      Left = 66
      Top = 6
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 238
      Top = 6
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 455
      Top = 6
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Setor'
      Items.Strings = (
        'Setor'
        'Produto'
        'Tal'#227'o'
        'Funcion'#225'rio')
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 66
      Top = 29
      Width = 272
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dsSetor
      TabOrder = 4
    end
    object ProgressBar1: TProgressBar
      Left = 377
      Top = 36
      Width = 305
      Height = 16
      TabOrder = 5
    end
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SETOR'#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 240
    object sdsSetorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsSetorNOME: TStringField
      FieldName = 'NOME'
      Size = 15
    end
    object sdsSetorIMPTALAO: TStringField
      FieldName = 'IMPTALAO'
      FixedChar = True
      Size = 1
    end
    object sdsSetorATELIER: TStringField
      FieldName = 'ATELIER'
      FixedChar = True
      Size = 1
    end
    object sdsSetorMETADIA: TIntegerField
      FieldName = 'METADIA'
    end
    object sdsSetorFINAL: TStringField
      FieldName = 'FINAL'
      FixedChar = True
      Size = 1
    end
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 376
    Top = 240
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    Left = 408
    Top = 240
    object cdsSetorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
      Size = 15
    end
    object cdsSetorIMPTALAO: TStringField
      FieldName = 'IMPTALAO'
      FixedChar = True
      Size = 1
    end
    object cdsSetorATELIER: TStringField
      FieldName = 'ATELIER'
      FixedChar = True
      Size = 1
    end
    object cdsSetorMETADIA: TIntegerField
      FieldName = 'METADIA'
    end
    object cdsSetorFINAL: TStringField
      FieldName = 'FINAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 441
    Top = 244
  end
  object mSetorDefeito: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodSetor;CodProduto;CodDefeito'
    Params = <>
    OnNewRecord = mSetorDefeitoNewRecord
    Left = 513
    Top = 188
    Data = {
      E10000009619E0BD010000001800000008000000000003000000E10008436F64
      5365746F720400010000000000094E6F6D655365746F72010049000000010005
      5749445448020002001E000A436F6450726F6475746F04000100000000000B4E
      6F6D6550726F6475746F01004900000001000557494454480200020028000A52
      65666572656E63696101004900000001000557494454480200020014000A5174
      645175656272617304000100000000000A436F644465666569746F0400010000
      0000000B4E6F6D654465666569746F0100490000000100055749445448020002
      0028000000}
    object mSetorDefeitoCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mSetorDefeitoNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 30
    end
    object mSetorDefeitoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mSetorDefeitoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mSetorDefeitoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mSetorDefeitoQtdQuebras: TIntegerField
      FieldName = 'QtdQuebras'
    end
    object mSetorDefeitoCodDefeito: TIntegerField
      FieldName = 'CodDefeito'
    end
    object mSetorDefeitoNomeDefeito: TStringField
      FieldName = 'NomeDefeito'
      Size = 40
    end
  end
  object dsmSetorDefeito: TDataSource
    DataSet = mSetorDefeito
    Left = 544
    Top = 187
  end
  object sdsTalaoQuebras: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select t.codproduto, tq.*, p.nome nomeproduto, p.referencia, d.n' +
      'ome nomedefeito, S.NOME NOMESETOR'#13#10'from talao t'#13#10'inner join tala' +
      'oquebras tq'#13#10'on tq.talao = t.talao'#13#10'inner join produto p'#13#10'on p.c' +
      'odigo = t.codproduto'#13#10'inner join funcionario f'#13#10'on f.codigo = tq' +
      '.codfuncionario'#13#10'inner join SETOR S'#13#10'on S.codigo = tq.CODSETOR'#13#10 +
      'left join defeitos d'#13#10'on d.codigo = tq.coddefeito'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 176
    Top = 152
    object sdsTalaoQuebrasCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsTalaoQuebrasTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoQuebrasCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsTalaoQuebrasITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalaoQuebrasCODDEFEITO: TIntegerField
      FieldName = 'CODDEFEITO'
      Required = True
    end
    object sdsTalaoQuebrasDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsTalaoQuebrasQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsTalaoQuebrasHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsTalaoQuebrasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object sdsTalaoQuebrasCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object sdsTalaoQuebrasNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object sdsTalaoQuebrasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsTalaoQuebrasNOMEDEFEITO: TStringField
      FieldName = 'NOMEDEFEITO'
      Size = 30
    end
    object sdsTalaoQuebrasNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
    end
  end
  object dspTalaoQuebras: TDataSetProvider
    DataSet = sdsTalaoQuebras
    Left = 208
    Top = 152
  end
  object cdsTalaoQuebras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoQuebras'
    Left = 240
    Top = 152
    object cdsTalaoQuebrasCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsTalaoQuebrasTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoQuebrasCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsTalaoQuebrasITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalaoQuebrasCODDEFEITO: TIntegerField
      FieldName = 'CODDEFEITO'
      Required = True
    end
    object cdsTalaoQuebrasDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsTalaoQuebrasQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsTalaoQuebrasHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsTalaoQuebrasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object cdsTalaoQuebrasCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object cdsTalaoQuebrasNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object cdsTalaoQuebrasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsTalaoQuebrasNOMEDEFEITO: TStringField
      FieldName = 'NOMEDEFEITO'
      Size = 30
    end
    object cdsTalaoQuebrasNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
    end
  end
  object mProdutoDefeito: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodProduto;CodDefeito'
    Params = <>
    OnNewRecord = mProdutoDefeitoNewRecord
    Left = 513
    Top = 228
    Data = {
      AB0000009619E0BD010000001800000006000000000003000000AB000A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      01000557494454480200020028000A436F644465666569746F04000100000000
      000B4E6F6D654465666569746F01004900000001000557494454480200020028
      000351746404000100000000000000}
    object mProdutoDefeitoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutoDefeitoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutoDefeitoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mProdutoDefeitoCodDefeito: TIntegerField
      FieldName = 'CodDefeito'
    end
    object mProdutoDefeitoNomeDefeito: TStringField
      FieldName = 'NomeDefeito'
      Size = 40
    end
    object mProdutoDefeitoQtd: TIntegerField
      FieldName = 'Qtd'
    end
  end
  object dsmProdutoDefeito: TDataSource
    DataSet = mProdutoDefeito
    Left = 545
    Top = 228
  end
  object mProdutoAcum: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodProduto'
    Params = <>
    OnNewRecord = mProdutoAcumNewRecord
    Left = 513
    Top = 292
    Data = {
      780000009619E0BD01000000180000000400000000000300000078000A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      01000557494454480200020028000351746404000100000000000000}
    object mProdutoAcumCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutoAcumReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutoAcumNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mProdutoAcumQtd: TIntegerField
      FieldName = 'Qtd'
    end
  end
  object dsmProdutoAcum: TDataSource
    DataSet = mProdutoAcum
    Left = 553
    Top = 292
  end
  object dsTalaoQuebras: TDataSource
    DataSet = cdsTalaoQuebras
    Left = 273
    Top = 152
  end
end
