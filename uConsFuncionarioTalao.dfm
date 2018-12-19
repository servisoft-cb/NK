object fConsFuncionarioTalao: TfConsFuncionarioTalao
  Left = 171
  Top = 127
  Width = 677
  Height = 540
  Caption = 'Consulta de Funcionarios por Tal'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 669
    Height = 106
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 171
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object Label3: TLabel
      Left = 10
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object Label4: TLabel
      Left = 28
      Top = 63
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label5: TLabel
      Left = 40
      Top = 85
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object BitBtn1: TBitBtn
      Left = 323
      Top = 10
      Width = 98
      Height = 28
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000D000000000000DD00D000000D0FF
        FFFFFFFF0D000D000000D0FFFFFFF0000800DD000000D0FFFFFF0877808DDD00
        0000D0FFFFF0877E880DDD000000D0FFFFF07777870DDD000000D0FFFFF07E77
        870DDD000000D0FFFFF08EE7880DDD000000D0FFFFFF087780DDDD000000D0FF
        FFFFF0000DDDDD000000D0FFFFFFFFFF0DDDDD000000D0FFFFFFF0000DDDDD00
        0000D0FFFFFFF070DDDDDD000000D0FFFFFFF00DDDDDDD000000DD00000000DD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
    end
    object BitBtn4: TBitBtn
      Left = 563
      Top = 10
      Width = 98
      Height = 28
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn4Click
      Glyph.Data = {
        B6010000424DB601000000000000760000002800000022000000100000000100
        04000000000040010000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
        03833333333333387F333300000083838383830E603833FFFFFFFF387F33FF00
        000000000000380E6600388888888F387F388300000033333330830E66033333
        33338F387F38F300000033333330000E6603333333FF88887F38F30000003333
        0030330E66033333388F8F387F38F300000033330E00330E660333FFF8F88F38
        7F38F300000000000EE0330E0603388888338F387F38F30000000EEEEEE6030E
        660338FFFFF378387F38F300000000000E60330E6603388888F78F387F38F300
        000033330600330E6603333338788F387F38F300000033330030330E66033333
        38838F387F38F3000000333333303330E603333333338F3387F8F30000003333
        333033330E03333333338FFFF878F30000003333333000000003333333338888
        8888330000003333333333333333333333333333333333000000}
      NumGlyphs = 2
    end
    object RxDBLookupFuncionario: TRxDBLookupCombo
      Left = 72
      Top = 32
      Width = 241
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsFuncionario
      TabOrder = 2
      OnEnter = RxDBLookupFuncionarioEnter
      OnExit = RxDBLookupFuncionarioExit
    end
    object RxDBLookupProduto: TRxDBLookupCombo
      Left = 72
      Top = 56
      Width = 241
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DM1.dsProduto
      TabOrder = 3
      OnEnter = RxDBLookupProdutoEnter
      OnExit = RxDBLookupProdutoExit
    end
    object RxDBLookupSetor: TRxDBLookupCombo
      Left = 72
      Top = 80
      Width = 241
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DM1.dsSetor
      TabOrder = 4
      OnEnter = RxDBLookupSetorEnter
      OnExit = RxDBLookupSetorExit
    end
    object DateEdit1: TDateEdit
      Left = 72
      Top = 8
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object DateEdit2: TDateEdit
      Left = 224
      Top = 8
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 106
    Width = 669
    Height = 407
    Align = alClient
    DataSource = dsConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Setor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTRADA'
        Title.Caption = 'Dt. Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HRENTRADA'
        Title.Caption = 'Hr. Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTSAIDA'
        Title.Caption = 'Dt. Saida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HRSAIDA'
        Title.Caption = 'Hr. Sa'#237'da'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPOTOTAL'
        Title.Caption = 'Tempo Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_1'
        Title.Caption = 'Produto'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUNCIONARIO'
        Title.Caption = 'Funcion'#225'rio'
        Visible = True
      end>
  end
  object qConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select TALAOMOV.CODSETOR, SETOR.NOME, TALAOMOV.DTENTRADA, TALAOM' +
        'OV.HRENTRADA,'
      
        'TALAOMOV.DTSAIDA, TALAOMOV.HRSAIDA, (TALAOMOV.HRSAIDA-TALAOMOV.H' +
        'RENTRADA) *60 AS TEMPOTOTAL,'
      
        'TALAO.CODPRODUTO, PRODUTO.NOME, PRODUTO.REFERENCIA, FUNCIONARIO.' +
        'NOME AS FUNCIONARIO,  TALAOMOV.CODFUNCIONARIO'
      'FROM TALAOMOV'
      'INNER JOIN SETOR ON (TALAOMOV.CODSETOR = SETOR.CODIGO)'
      'INNER JOIN TALAO ON (TALAOMOV.TALAO = TALAO.TALAO)'
      'INNER JOIN PRODUTO ON (TALAO.CODPRODUTO = PRODUTO.CODIGO)'
      
        'INNER JOIN FUNCIONARIO ON (TALAOMOV.CODFUNCIONARIO = FUNCIONARIO' +
        '.CODIGO)')
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 152
    object qConsultaCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object qConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 15
    end
    object qConsultaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qConsultaHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object qConsultaDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object qConsultaHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object qConsultaTEMPOTOTAL: TFMTBCDField
      FieldName = 'TEMPOTOTAL'
      Precision = 15
      Size = 8
    end
    object qConsultaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object qConsultaNOME_1: TStringField
      FieldName = 'NOME_1'
      Size = 40
    end
    object qConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qConsultaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 50
    end
    object qConsultaCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 256
    Top = 152
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 296
    Top = 152
    object cdsConsultaCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 15
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
    object cdsConsultaTEMPOTOTAL: TFMTBCDField
      FieldName = 'TEMPOTOTAL'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 8
    end
    object cdsConsultaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsConsultaNOME_1: TStringField
      FieldName = 'NOME_1'
      Size = 40
    end
    object cdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsultaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 50
    end
    object cdsConsultaCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 344
    Top = 152
  end
end
