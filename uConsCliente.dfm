object fConsCliente: TfConsCliente
  Left = 4
  Top = 37
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
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel
    Left = 351
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label3: TLabel
    Left = 2
    Top = 30
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label4: TLabel
    Left = 21
    Top = 52
    Width = 30
    Height = 13
    Caption = 'Bairro:'
  end
  object Label5: TLabel
    Left = 338
    Top = 31
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Edit1: TEdit
    Left = 52
    Top = 1
    Width = 280
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 389
    Top = 1
    Width = 259
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCidade
    TabOrder = 3
    OnEnter = RxDBLookupCombo1Enter
  end
  object Edit2: TEdit
    Left = 52
    Top = 23
    Width = 280
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 52
    Top = 45
    Width = 280
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 389
    Top = 24
    Width = 259
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsVendedor
    TabOrder = 4
    OnEnter = RxDBLookupCombo2Enter
  end
  object Panel1: TPanel
    Left = 0
    Top = 72
    Width = 649
    Height = 41
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 232
      Top = 7
      Width = 92
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
      Left = 324
      Top = 7
      Width = 92
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 115
    Width = 785
    Height = 364
    Color = clInfoBk
    DataSource = dsqCliente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RxDBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCidade'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cep'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Telefone'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Telefone2'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fax'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pessoa'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CgcCpf'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF'
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
        Visible = True
      end>
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
    TabOrder = 7
  end
  object dsqCliente: TDataSource
    DataSet = qCliente
    Left = 520
    Top = 80
  end
  object qCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbCliente.Codigo, Dbcliente.Endereco, Dbcliente.Nome Nome' +
        'Cliente, Dbcliente.Bairro, Dbcliente.Uf, Dbcliente.Cep, Dbclient' +
        'e.Telefone, Dbcliente.Telefone2, Dbcliente.Fax, Dbcliente.Pessoa' +
        ', Dbcliente.CgcCpf, Dbcliente.InscrEst, Dbcliente.Contato, Dbcli' +
        'ente.Fantasia, dbVendedor.Nome NomeVendedor, dbCidade.Nome NomeC' +
        'idade'
      'FROM "dbCliente.DB" Dbcliente'
      '   LEFT JOIN "DBCIDADE.DB" Dbcidade'
      '   ON  (Dbcliente.CodCidade = Dbcidade.Codigo)'
      '   LEFT JOIN "dbVendedor.DB" Dbvendedor'
      '   ON  (Dbcliente.CodVendedor = Dbvendedor.Codigo)'
      'ORDER BY dbCliente.Nome'
      ''
      ' ')
    Left = 504
    Top = 80
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
  end
end
