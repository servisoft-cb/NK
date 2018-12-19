object fCopiaConsCliente: TfCopiaConsCliente
  Left = 147
  Top = 134
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Cliente'
  ClientHeight = 499
  ClientWidth = 785
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
    Width = 785
    Height = 91
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 335
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object Label3: TLabel
      Left = 2
      Top = 29
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label4: TLabel
      Left = 21
      Top = 51
      Width = 30
      Height = 13
      Caption = 'Bairro:'
    end
    object Label5: TLabel
      Left = 322
      Top = 30
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object Label9: TLabel
      Left = 422
      Top = 51
      Width = 59
      Height = 13
      Caption = 'Ordenar por:'
    end
    object Label52: TLabel
      Left = 443
      Top = 74
      Width = 38
      Height = 13
      Caption = 'Imprimir:'
    end
    object BitBtn1: TBitBtn
      Left = 609
      Top = 58
      Width = 83
      Height = 28
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 692
      Top = 6
      Width = 82
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 692
      Top = 58
      Width = 82
      Height = 28
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object Edit1: TEdit
      Left = 52
      Top = 1
      Width = 261
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 373
      Top = 1
      Width = 223
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCidade
      TabOrder = 4
      OnEnter = RxDBLookupCombo1Enter
    end
    object Edit2: TEdit
      Left = 52
      Top = 22
      Width = 261
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 52
      Top = 44
      Width = 261
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 373
      Top = 23
      Width = 223
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsVendedor
      TabOrder = 7
      OnEnter = RxDBLookupCombo2Enter
    end
    object ComboBox2: TComboBox
      Left = 483
      Top = 46
      Width = 113
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'C'#243'digo'
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cidade'
        'Endere'#231'o')
    end
    object CheckBox1: TCheckBox
      Left = 317
      Top = 50
      Width = 91
      Height = 15
      Caption = 'Imprimir E-mail'
      TabOrder = 9
    end
    object ComboBox1: TComboBox
      Left = 483
      Top = 67
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 10
      Text = 'CNPJ'
      Items.Strings = (
        'CNPJ'
        'Endere'#231'o'
        'Ambos')
    end
    object CheckBox2: TCheckBox
      Left = 157
      Top = 74
      Width = 204
      Height = 15
      Caption = 'Imprimir somente os selecionados'
      TabOrder = 11
    end
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 482
    Width = 785
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 
      'Duplo clique ou Enter no registro para fazer a consulta do cadas' +
      'tro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 91
    Width = 785
    Height = 391
    Align = alClient
    DataSource = dsqCliente
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid2DblClick
    OnKeyPress = SMDBGrid2KeyPress
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 18
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 303
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCidade'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Width = 289
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bairro'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Uf'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 25
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cep'
        Title.Alignment = taCenter
        Title.Caption = 'CEP'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Telefone'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Telefone2'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone 2'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fax'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pessoa'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CgcCpf'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ / CPF'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'InscrEst'
        Title.Alignment = taCenter
        Title.Caption = 'Insc. Estadual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contato'
        Title.Alignment = taCenter
        Width = 144
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
        FieldName = 'NomeVendedor'
        Title.Alignment = taCenter
        Title.Caption = 'Vendedor'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Title.Alignment = taCenter
        Width = 313
        Visible = True
      end>
  end
  object dsqCliente: TDataSource
    DataSet = qCliente
    Left = 512
    Top = 200
  end
  object qCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcliente.Codigo, Dbcliente.Endereco, Dbcliente.Nome Nome' +
        'Cliente, Dbcliente.Bairro, Dbcliente.Uf, Dbcliente.Cep, Dbclient' +
        'e.Telefone, '
      
        'Dbcliente.Telefone2, Dbcliente.Fax, Dbcliente.Pessoa, Dbcliente.' +
        'CgcCpf, Dbcliente.InscrEst, Dbcliente.Contato, Dbcliente.Fantasi' +
        'a, '
      
        'Dbvendedor.Nome NomeVendedor, Dbcidade.Nome NomeCidade, Dbclient' +
        'e.Email, dbCliente.NumEnd,'
      'dbCliente.ComplEndereco'
      'FROM "dbCliente.DB" Dbcliente'
      '   LEFT OUTER JOIN "DBCIDADE.DB" Dbcidade'
      '   ON  (Dbcliente.CodCidade = Dbcidade.Codigo)  '
      '   LEFT OUTER JOIN "dbVendedor.DB" Dbvendedor'
      '   ON  (Dbcliente.CodVendedor = Dbvendedor.Codigo)  '
      'ORDER BY NomeCliente')
    Left = 488
    Top = 200
    object qClienteCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qClienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object qClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object qClienteUf: TStringField
      FieldName = 'Uf'
      Size = 3
    end
    object qClienteCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object qClienteTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object qClienteTelefone2: TStringField
      FieldName = 'Telefone2'
      Size = 15
    end
    object qClienteFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object qClientePessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object qClienteCgcCpf: TStringField
      FieldName = 'CgcCpf'
      Size = 18
    end
    object qClienteInscrEst: TStringField
      FieldName = 'InscrEst'
      Size = 18
    end
    object qClienteContato: TStringField
      FieldName = 'Contato'
      Size = 30
    end
    object qClienteFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qClienteNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object qClienteNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 26
    end
    object qClienteEmail: TStringField
      FieldName = 'Email'
      Size = 210
    end
    object qClienteNumEnd: TStringField
      FieldName = 'NumEnd'
      Size = 15
    end
    object qClienteComplEndereco: TStringField
      FieldName = 'ComplEndereco'
      Size = 50
    end
  end
end
