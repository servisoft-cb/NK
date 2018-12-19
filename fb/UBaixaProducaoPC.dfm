object fBaixaProducaoPC: TfBaixaProducaoPC
  Left = 255
  Top = 273
  Width = 669
  Height = 285
  BorderIcons = [biSystemMenu]
  Caption = 'Baixa Produ'#231#227'o'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 24
    Width = 58
    Height = 13
    Caption = 'Funcion'#225'rio:'
  end
  object lbFuncionario: TLabel
    Left = 236
    Top = 24
    Width = 250
    Height = 13
    AutoSize = False
  end
  object Label2: TLabel
    Left = 39
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Setor:'
  end
  object lbSetor: TLabel
    Left = 236
    Top = 45
    Width = 250
    Height = 13
    AutoSize = False
  end
  object lblTalao: TLabel
    Left = 37
    Top = 95
    Width = 30
    Height = 13
    Caption = 'Tal'#227'o:'
    Visible = False
  end
  object Label5: TLabel
    Left = 30
    Top = 72
    Width = 37
    Height = 13
    Caption = 'Evento:'
  end
  object lblQtd: TLabel
    Left = 9
    Top = 118
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
    Visible = False
  end
  object lbMensagem: TLabel
    Left = 48
    Top = 227
    Width = 176
    Height = 19
    Caption = '... Movimento Gerado ...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 149
    Top = 69
    Width = 287
    Height = 13
    Caption = '1=Marcar Tal'#227'o     2=Ocorr'#234'ncias    3=Terceiriza'#231#227'o    4=Fim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblOcorrencia: TLabel
    Left = 240
    Top = 96
    Width = 201
    Height = 13
    AutoSize = False
  end
  object Label4: TLabel
    Left = 41
    Top = 146
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label6: TLabel
    Left = 185
    Top = 144
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object BitBtn2: TBitBtn
    Left = 570
    Top = 13
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object edFuncionario: TEdit
    Left = 69
    Top = 17
    Width = 164
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnChange = edFuncionarioChange
    OnExit = edFuncionarioExit
    OnKeyDown = edFuncionarioKeyDown
  end
  object edSetor: TEdit
    Left = 69
    Top = 41
    Width = 164
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnChange = edSetorChange
    OnExit = edSetorExit
    OnKeyDown = edSetorKeyDown
  end
  object edTalao: TEdit
    Left = 69
    Top = 87
    Width = 164
    Height = 21
    TabOrder = 3
    Visible = False
    OnKeyDown = edTalaoKeyDown
  end
  object BitBtn3: TBitBtn
    Left = 570
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Ca&ncelar'
    TabOrder = 9
    OnClick = BitBtn3Click
  end
  object ceOcorrencia: TCurrencyEdit
    Left = 69
    Top = 64
    Width = 76
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    MaxLength = 1
    TabOrder = 2
    OnKeyDown = ceOcorrenciaKeyDown
  end
  object ceQtd: TCurrencyEdit
    Left = 69
    Top = 110
    Width = 76
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 4
    Visible = False
    OnExit = ceQtdExit
  end
  object btnConfirmar: TBitBtn
    Left = 72
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnConfirmarClick
  end
  object deData: TDateEdit
    Left = 69
    Top = 138
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object rzdtHora: TRzDateTimeEdit
    Left = 213
    Top = 136
    Width = 100
    Height = 21
    EditType = etTime
    Format = 'hh:nn'
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 560
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Im&primir Menu'
    TabOrder = 10
    OnClick = BitBtn1Click
  end
  object BitBtn4: TBitBtn
    Left = 570
    Top = 63
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    TabOrder = 11
  end
  object TalaoSetor2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODSETOR'#13#10'FROM TALAOSETOR'#13#10'WHERE (TALAO = :TALAO)'#13#10'  AND ' +
      '((PROCESSO = '#39'A'#39') OR (PROCESSO = '#39'P'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 120
    object TalaoSetor2CODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
  end
  object pTalaoSetor2: TDataSetProvider
    DataSet = TalaoSetor2
    Left = 472
    Top = 120
  end
  object tTalaoSetor2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTalaoSetor2'
    Left = 512
    Top = 120
    object tTalaoSetor2CODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
  end
  object dsTalaoSetor2: TDataSource
    DataSet = tTalaoSetor2
    Left = 560
    Top = 120
  end
  object TalaoSetor3: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TALAO'#13#10'FROM TALAOSETOR'#13#10'WHERE (CODSETOR = :CODSETOR)'#13#10'  A' +
      'ND ((PROCESSO = '#39'A'#39') OR (PROCESSO = '#39'P'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODSETOR'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 184
    object TalaoSetor3TALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
  end
  object pTalaoSetor3: TDataSetProvider
    DataSet = TalaoSetor3
    Left = 472
    Top = 184
  end
  object tTalaoSetor3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTalaoSetor3'
    Left = 512
    Top = 184
    object tTalaoSetor3TALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
  end
end
