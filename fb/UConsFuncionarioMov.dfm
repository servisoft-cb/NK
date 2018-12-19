object fConsFuncionarioMov: TfConsFuncionarioMov
  Left = 108
  Top = 95
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Situa'#231#227'o Funcion'#225'rio'
  ClientHeight = 563
  ClientWidth = 782
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 33
    Width = 782
    Height = 530
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Situa'#231#227'o'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 33
        Width = 778
        Height = 305
        Align = alClient
        DataSource = dsmFuncionario
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 4
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumMatricula'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Funcion'#225'rio'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFuncionario'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Funcion'#225'rio'
            Width = 382
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Width = 145
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 33
        Align = alTop
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 8
          Top = 5
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
          OnClick = BitBtn1Click
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 369
        Width = 778
        Height = 138
        Align = alBottom
        DataSource = dsmMovimento
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
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
        ColCount = 15
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Talao'
            Title.Alignment = taCenter
            Title.Caption = 'Tal'#227'o'
            Width = 39
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodSetor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Setor'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeSetor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Setor'
            Width = 133
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdProduzido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Produzido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdQuebra'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Quebra'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtSaida'
            Title.Alignment = taCenter
            Title.Caption = 'Data Saida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrSaida'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Saida'
            Visible = True
          end
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
            FieldName = 'TipoSaida'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Saida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 338
        Width = 778
        Height = 31
        Align = alBottom
        TabOrder = 3
        DesignSize = (
          778
          31)
        object BitBtn3: TBitBtn
          Left = 661
          Top = 4
          Width = 113
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Hist'#243'rico do Tal'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn3Click
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Tempo por Funcion'#225'rio'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 56
        Align = alTop
        TabOrder = 0
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
          Top = 36
          Width = 60
          Height = 13
          Caption = 'Ordenar Por:'
        end
        object Label4: TLabel
          Left = 36
          Top = 37
          Width = 28
          Height = 13
          Caption = 'Setor:'
        end
        object BitBtn2: TBitBtn
          Left = 552
          Top = 25
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
          Left = 403
          Top = 28
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'Funcionario'
          Items.Strings = (
            'Funcionario'
            'Setor')
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
          OnExit = RxDBLookupCombo1Exit
        end
      end
      object RzPageControl2: TRzPageControl
        Left = 0
        Top = 56
        Width = 778
        Height = 451
        ActivePage = TabSheet3
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        FixedDimension = 19
        object TabSheet3: TRzTabSheet
          Caption = 'Por Setor'
          object SMDBGrid2: TSMDBGrid
            Left = 0
            Top = 0
            Width = 774
            Height = 428
            Align = alClient
            DataSource = dsmSetorFuncionario
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
            OnGetCellParams = SMDBGrid2GetCellParams
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 7
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'NomeFuncionario'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Funcion'#225'rio'
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
                Alignment = taCenter
                Expanded = False
                FieldName = 'TotalHoras'
                Title.Alignment = taCenter
                Title.Caption = 'Total Horas'
                Width = 85
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TotalHorasParada'
                Title.Alignment = taCenter
                Title.Caption = 'Total Horas Parada'
                Width = 112
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TotalHorasProd'
                Title.Alignment = taCenter
                Title.Caption = 'Total Horas Produ'#231#227'o'
                Width = 104
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CodSetor'
                Visible = True
              end>
          end
        end
        object TabSheet4: TRzTabSheet
          Caption = 'Por Dia'
          object SMDBGrid4: TSMDBGrid
            Left = 0
            Top = 0
            Width = 774
            Height = 428
            Align = alClient
            DataSource = dsmFuncionarioDia
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
            OnGetCellParams = SMDBGrid2GetCellParams
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
                FieldName = 'CodFuncionario'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Funcion'#225'rio'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NomeFuncionario'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Funcion'#225'rio'
                Width = 253
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Data'
                Title.Alignment = taCenter
                Width = 102
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TotalHorasGeral'
                Title.Alignment = taCenter
                Title.Caption = 'Total Horas a Produzir'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TotalHorasProd'
                Title.Alignment = taCenter
                Title.Caption = 'Total Horas Produ'#231#227'o'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TotalHorasParada'
                Title.Alignment = taCenter
                Title.Caption = 'Total Horas Parada'
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 33
    Align = alTop
    TabOrder = 0
    DesignSize = (
      782
      33)
    object Shape3: TShape
      Left = 678
      Top = 8
      Width = 21
      Height = 15
      Anchors = [akTop, akRight]
      Brush.Color = clTeal
    end
    object Label7: TLabel
      Left = 702
      Top = 8
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Em Produ'#231#227'o'
    end
    object Label3: TLabel
      Left = 7
      Top = 13
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 65
      Top = 5
      Width = 65
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnExit = CurrencyEdit1Exit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 129
      Top = 5
      Width = 264
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dsFuncionario
      TabOrder = 1
      OnExit = RxDBLookupCombo1Exit
    end
  end
  object sdsTalaoFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select tm.codfuncionario, max(tm.dtentrada) dtentrada , tm.dtsai' +
      'da, tm.talao, tm.codsetor, tm.HrEntrada, tm.codproduto, tm.codpa' +
      'rada, tm.tiposaida, s.nome nomesetor, tm.qtdentrada, tm.qtdprodu' +
      'zido, tm.qtdquebra, tm.hrsaida, PR.NOME NOMEPRODUTO, PR.REFERENC' +
      'IA'#13#10'FROM talao T'#13#10'INNER JOIN talaomov TM'#13#10'ON TM.talao = T.talao'#13 +
      #10'INNER JOIN setor s'#13#10'on s.codigo = tm.codsetor'#13#10'INNER JOIN PRODU' +
      'TO PR'#13#10'ON PR.CODIGO = T.CODPRODUTO'#13#10'where T.cancelado = '#39'N'#39#13#10'   ' +
      'AND tm.dtsaida is null'#13#10'   AND TM.CODFUNCIONARIO = :CODFUNCIONAR' +
      'IO'#13#10'group by  tm.codfuncionario, tm.dtsaida, tm.talao, tm.codset' +
      'or, tm.HrEntrada, tm.codproduto, tm.codparada, tm.tiposaida, s.n' +
      'ome, tm.qtdentrada, tm.qtdproduzido, tm.qtdquebra, tm.hrsaida, P' +
      'R.NOME, PR.REFERENCIA'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODFUNCIONARIO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 104
    object sdsTalaoFuncionarioCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object sdsTalaoFuncionarioDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalaoFuncionarioDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalaoFuncionarioTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoFuncionarioCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsTalaoFuncionarioHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsTalaoFuncionarioCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsTalaoFuncionarioCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object sdsTalaoFuncionarioTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoFuncionarioNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
    end
    object sdsTalaoFuncionarioQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object sdsTalaoFuncionarioQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object sdsTalaoFuncionarioQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object sdsTalaoFuncionarioHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalaoFuncionarioNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object sdsTalaoFuncionarioREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dspTalaoFuncionario: TDataSetProvider
    DataSet = sdsTalaoFuncionario
    Left = 176
    Top = 104
  end
  object cdsTalaoFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoFuncionario'
    Left = 208
    Top = 104
    object cdsTalaoFuncionarioCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object cdsTalaoFuncionarioDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalaoFuncionarioDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalaoFuncionarioTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoFuncionarioCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsTalaoFuncionarioHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsTalaoFuncionarioCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsTalaoFuncionarioCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object cdsTalaoFuncionarioTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoFuncionarioNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
    end
    object cdsTalaoFuncionarioQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object cdsTalaoFuncionarioQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object cdsTalaoFuncionarioQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object cdsTalaoFuncionarioHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalaoFuncionarioNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 40
    end
    object cdsTalaoFuncionarioREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object mFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodFuncionario'
        DataType = ftInteger
      end
      item
        Name = 'NomeFuncionario'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Processo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Processo2'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NumMatricula'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NomeFuncionario'
    Params = <>
    StoreDefs = True
    Left = 568
    Top = 120
    Data = {
      BB0000009619E0BD010000001800000005000000000003000000BB000E436F64
      46756E63696F6E6172696F04000100000000000F4E6F6D6546756E63696F6E61
      72696F01004900000001000557494454480200020028000850726F636573736F
      01004900000001000557494454480200020014000950726F636573736F320100
      4900000001000557494454480200020003000C4E756D4D6174726963756C6104
      0001000000000001000D44454641554C545F4F524445520200820000000000}
    object mFuncionarioCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object mFuncionarioNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 40
    end
    object mFuncionarioProcesso: TStringField
      FieldName = 'Processo'
    end
    object mFuncionarioProcesso2: TStringField
      FieldName = 'Processo2'
      Size = 3
    end
    object mFuncionarioNumMatricula: TIntegerField
      FieldName = 'NumMatricula'
    end
  end
  object dsmFuncionario: TDataSource
    DataSet = mFuncionario
    Left = 592
    Top = 120
  end
  object sdsSetor_Funcionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select sf.*, S.NOME NOMESETOR, F.NOME NOMEFUNCIONARIO'#13#10'from seto' +
      'r_funcionario sf'#13#10'INNER JOIN SETOR S'#13#10'ON S.CODIGO = SF.CODSETOR'#13 +
      #10'INNER JOIN FUNCIONARIO F'#13#10'ON F.CODIGO = SF.codfuncionario'#13#10'wher' +
      'e sf.data between :data1 and :data2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'data1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 200
    object sdsSetor_FuncionarioCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsSetor_FuncionarioCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
      Required = True
    end
    object sdsSetor_FuncionarioDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sdsSetor_FuncionarioTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object sdsSetor_FuncionarioTOTALHORASPARADA: TFloatField
      FieldName = 'TOTALHORASPARADA'
    end
    object sdsSetor_FuncionarioTOTALHORASPROD: TFloatField
      FieldName = 'TOTALHORASPROD'
    end
    object sdsSetor_FuncionarioNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
    end
    object sdsSetor_FuncionarioNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
  end
  object dspSetor_Funcionario: TDataSetProvider
    DataSet = sdsSetor_Funcionario
    Left = 184
    Top = 200
  end
  object cdsSetor_Funcionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor_Funcionario'
    Left = 224
    Top = 200
    object cdsSetor_FuncionarioCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsSetor_FuncionarioCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
      Required = True
    end
    object cdsSetor_FuncionarioDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object cdsSetor_FuncionarioTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object cdsSetor_FuncionarioTOTALHORASPARADA: TFloatField
      FieldName = 'TOTALHORASPARADA'
    end
    object cdsSetor_FuncionarioTOTALHORASPROD: TFloatField
      FieldName = 'TOTALHORASPROD'
    end
    object cdsSetor_FuncionarioNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 15
    end
    object cdsSetor_FuncionarioNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
  end
  object mSetorFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodFuncionario'
        DataType = ftInteger
      end
      item
        Name = 'NomeFuncionario'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodSetor'
        DataType = ftInteger
      end
      item
        Name = 'NomeSetor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TotalHoras'
        DataType = ftFloat
      end
      item
        Name = 'TotalHorasParada'
        DataType = ftFloat
      end
      item
        Name = 'TotalHorasProd'
        DataType = ftFloat
      end
      item
        Name = 'Processo'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    IndexFieldNames = 'NomeFuncionario;NomeSetor'
    Params = <>
    StoreDefs = True
    OnNewRecord = mSetorFuncionarioNewRecord
    Left = 201
    Top = 236
    Data = {
      E40000009619E0BD010000001800000008000000000003000000E4000E436F64
      46756E63696F6E6172696F04000100000000000F4E6F6D6546756E63696F6E61
      72696F010049000000010005574944544802000200280008436F645365746F72
      0400010000000000094E6F6D655365746F720100490000000100055749445448
      020002001E000A546F74616C486F726173080004000000000010546F74616C48
      6F72617350617261646108000400000000000E546F74616C486F72617350726F
      6408000400000000000850726F636573736F0100490000000100055749445448
      020002000F000000}
    object mSetorFuncionarioCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object mSetorFuncionarioNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 40
    end
    object mSetorFuncionarioCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mSetorFuncionarioNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 30
    end
    object mSetorFuncionarioTotalHoras: TFloatField
      FieldName = 'TotalHoras'
      DisplayFormat = '0.00'
    end
    object mSetorFuncionarioTotalHorasParada: TFloatField
      FieldName = 'TotalHorasParada'
      DisplayFormat = '0.00'
    end
    object mSetorFuncionarioTotalHorasProd: TFloatField
      FieldName = 'TotalHorasProd'
      DisplayFormat = '0.00'
    end
    object mSetorFuncionarioProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
  end
  object dsmSetorFuncionario: TDataSource
    DataSet = mSetorFuncionario
    Left = 233
    Top = 236
  end
  object mMovimento: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodFuncionario'
        DataType = ftInteger
      end
      item
        Name = 'CodSetor'
        DataType = ftInteger
      end
      item
        Name = 'Talao'
        DataType = ftInteger
      end
      item
        Name = 'DtEntrada'
        DataType = ftDate
      end
      item
        Name = 'HrEntrada'
        DataType = ftTime
      end
      item
        Name = 'DtSaida'
        DataType = ftDate
      end
      item
        Name = 'HrSaida'
        DataType = ftTime
      end
      item
        Name = 'QtdEntrada'
        DataType = ftInteger
      end
      item
        Name = 'QtdProduzido'
        DataType = ftInteger
      end
      item
        Name = 'QtdQuebra'
        DataType = ftInteger
      end
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'CodParada'
        DataType = ftInteger
      end
      item
        Name = 'TipoSaida'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NomeSetor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodFuncionario;DtEntrada'
    MasterFields = 'CodFuncionario'
    MasterSource = dsmFuncionario
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 425
    Top = 164
    Data = {
      840100009619E0BD01000000180000001000000000000300000084010E436F64
      46756E63696F6E6172696F040001000000000008436F645365746F7204000100
      000000000554616C616F0400010000000000094474456E747261646104000600
      00000000094872456E7472616461040007000000000007447453616964610400
      060000000000074872536169646104000700000000000A517464456E74726164
      6104000100000000000C51746450726F64757A69646F04000100000000000951
      746451756562726104000100000000000A436F6450726F6475746F0400010000
      00000009436F645061726164610400010000000000095469706F536169646101
      00490000000100055749445448020002000F000B4E6F6D6550726F6475746F01
      00490000000100055749445448020002002800094E6F6D655365746F72010049
      0000000100055749445448020002001E000A5265666572656E63696101004900
      0000010005574944544802000200140001000D44454641554C545F4F52444552
      0200820000000000}
    object mMovimentoCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object mMovimentoCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mMovimentoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object mMovimentoDtEntrada: TDateField
      FieldName = 'DtEntrada'
    end
    object mMovimentoHrEntrada: TTimeField
      FieldName = 'HrEntrada'
    end
    object mMovimentoDtSaida: TDateField
      FieldName = 'DtSaida'
    end
    object mMovimentoHrSaida: TTimeField
      FieldName = 'HrSaida'
    end
    object mMovimentoQtdEntrada: TIntegerField
      FieldName = 'QtdEntrada'
    end
    object mMovimentoQtdProduzido: TIntegerField
      FieldName = 'QtdProduzido'
    end
    object mMovimentoQtdQuebra: TIntegerField
      FieldName = 'QtdQuebra'
    end
    object mMovimentoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mMovimentoCodParada: TIntegerField
      FieldName = 'CodParada'
    end
    object mMovimentoTipoSaida: TStringField
      FieldName = 'TipoSaida'
      Size = 15
    end
    object mMovimentoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mMovimentoNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 30
    end
    object mMovimentoReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object dsmMovimento: TDataSource
    DataSet = mMovimento
    Left = 457
    Top = 164
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select f.codigo, f.funcao, f.nome, f.NumMatricula'#13#10'from funciona' +
      'rio f'#13#10'where f.mostrarnaproducao = '#39'S'#39#13#10'  and f.dtdemissao is nu' +
      'll'#13#10'ORDER BY F.NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 104
    object sdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 344
    Top = 104
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 376
    Top = 104
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 409
    Top = 108
  end
  object sdsTalaoMov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select t.*'#13#10'from talaomov t'#13#10'where t.codfuncionario = :codfuncio' +
      'nario'#13#10'  and t.codsetor = :codsetor'#13#10'  and t.dtsaida is null'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codfuncionario'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codsetor'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 153
    Top = 316
    object sdsTalaoMovTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoMovCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsTalaoMovITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsTalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalaoMovQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object sdsTalaoMovQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object sdsTalaoMovQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object sdsTalaoMovCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object sdsTalaoMovTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoMovTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object sdsTalaoMovCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object sdsTalaoMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
  end
  object dspTalaoMov: TDataSetProvider
    DataSet = sdsTalaoMov
    Left = 193
    Top = 316
  end
  object cdsTalaoMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoMov'
    Left = 233
    Top = 316
    object cdsTalaoMovTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoMovCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsTalaoMovITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsTalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalaoMovQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object cdsTalaoMovQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object cdsTalaoMovQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object cdsTalaoMovCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object cdsTalaoMovTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoMovTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object cdsTalaoMovCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object cdsTalaoMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
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
  object mFuncionarioDia: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NomeFuncionario;Data'
    Params = <>
    Left = 586
    Top = 337
    Data = {
      AA0000009619E0BD010000001800000006000000000003000000AA000E436F64
      46756E63696F6E6172696F04000100000000000F4E6F6D6546756E63696F6E61
      72696F0100490000000100055749445448020002002800044461746104000600
      000000000F546F74616C486F726173476572616C08000400000000000E546F74
      616C486F72617350726F64080004000000000010546F74616C486F7261735061
      7261646108000400000000000000}
    object mFuncionarioDiaCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object mFuncionarioDiaNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 40
    end
    object mFuncionarioDiaData: TDateField
      FieldName = 'Data'
    end
    object mFuncionarioDiaTotalHorasGeral: TFloatField
      FieldName = 'TotalHorasGeral'
    end
    object mFuncionarioDiaTotalHorasProd: TFloatField
      FieldName = 'TotalHorasProd'
    end
    object mFuncionarioDiaTotalHorasParada: TFloatField
      FieldName = 'TotalHorasParada'
    end
  end
  object dsmFuncionarioDia: TDataSource
    DataSet = mFuncionarioDia
    Left = 618
    Top = 337
  end
end
