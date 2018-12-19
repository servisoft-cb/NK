object fGeraNotaEdi: TfGeraNotaEdi
  Left = 217
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera Nota'
  ClientHeight = 410
  ClientWidth = 407
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
    Left = 48
    Top = 53
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 221
    Top = 53
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 1
    Top = 130
    Width = 103
    Height = 13
    Caption = 'Endere'#231'o do Arquivo:'
  end
  object Label3: TLabel
    Left = 19
    Top = 155
    Width = 85
    Height = 13
    Caption = 'Nome do Arquivo:'
  end
  object Bevel1: TBevel
    Left = -1
    Top = 176
    Width = 409
    Height = 5
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 69
    Top = 105
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
  end
  object Label6: TLabel
    Left = 33
    Top = 79
    Width = 71
    Height = 13
    Caption = 'N'#186' Nota Inicial:'
  end
  object Label7: TLabel
    Left = 237
    Top = 79
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' Nota Final:'
  end
  object DateEdit1: TDateEdit
    Left = 108
    Top = 45
    Width = 101
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
    OnEnter = DateEdit1Enter
  end
  object DateEdit2: TDateEdit
    Left = 276
    Top = 45
    Width = 101
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
    OnEnter = DateEdit1Enter
  end
  object BitBtn1: TBitBtn
    Left = 107
    Top = 184
    Width = 95
    Height = 25
    Caption = 'Gerar'
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000CE0E0000C40E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888888888844888888888888888888888888888884224888
      8888888888888888888888884222248888888888888888888888888422222248
      88888888888888888888884222A222248888888888888888888888222A8A2224
      8888888888888888888888A2A888A22248888888888888888888888A88888A22
      248888888888888888888888888888A22248888888888888888888888888888A
      22248888888888888888888888888888A2224888888888888888888888888888
      8A22248888888888888888888888888888A22488888888888888888888888888
      888A22888888888888888888888888888888A888888888888888}
    NumGlyphs = 2
  end
  object DirectoryEdit1: TDirectoryEdit
    Left = 108
    Top = 122
    Width = 293
    Height = 21
    NumGlyphs = 1
    TabOrder = 6
    Text = 'C:\DMSD'
  end
  object Edit1: TEdit
    Left = 108
    Top = 147
    Width = 183
    Height = 21
    BorderStyle = bsNone
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object BitBtn5: TBitBtn
    Left = 203
    Top = 184
    Width = 95
    Height = 25
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
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
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 108
    Top = 97
    Width = 277
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 5
    OnEnter = RxDBLookupCombo1Enter
  end
  object RadioGroup1: TRadioGroup
    Left = 108
    Top = 2
    Width = 149
    Height = 36
    Caption = ' Op'#231#227'o... '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Data'
      'N'#186' Nota')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 108
    Top = 71
    Width = 69
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 3
    OnEnter = CurrencyEdit1Enter
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 308
    Top = 71
    Width = 69
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 4
    OnEnter = CurrencyEdit1Enter
  end
  object RxDBGrid1: TRxDBGrid
    Left = 1
    Top = 215
    Width = 404
    Height = 194
    DataSource = DM1.dsArqEDI
    TabOrder = 10
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumMov'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Movimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Visible = True
      end>
  end
  object tProdutoCli: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbProdutoCli.DB'
    Left = 272
    Top = 8
    object tProdutoCliCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCliCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoCliCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tProdutoCliCodProdCli: TStringField
      FieldName = 'CodProdCli'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    Left = 296
    Top = 8
  end
  object qEDI: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT MAX(NumMov) NumMov'
      'FROM "dbArquivoEDI.DB" Dbarquivoedi'
      'WHERE Data = :D1 and CodCli = :C1')
    Left = 16
    Top = 16
    ParamData = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptUnknown
      end>
    object qEDINumMov: TIntegerField
      FieldName = 'NumMov'
      Origin = 'TABELAS."dbArquivoEDI.DB".NumMov'
    end
  end
end
