object fTalaoCRapida: TfTalaoCRapida
  Left = 416
  Top = 185
  Width = 500
  Height = 350
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fTalaoCRapida'
  Color = clBtnFace
  Constraints.MinHeight = 350
  Constraints.MinWidth = 500
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 492
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 66
      Top = 16
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tal'#227'o:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 104
      Top = 8
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Consultar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 492
    Height = 282
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 85
      Top = 40
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tal'#227'o:'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 87
      Top = 64
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Setor:'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 57
      Top = 88
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Funcion'#225'rio:'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 75
      Top = 112
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto:'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 49
      Top = 184
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Entrada:'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 218
      Top = 184
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora Entrada:'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 57
      Top = 208
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Sa'#237'da:'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 225
      Top = 208
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora Sa'#237'da:'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 9
      Top = 240
      Width = 473
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = 'PROCESSO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 57
      Top = 136
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
      FocusControl = DBEdit9
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 32
      Width = 108
      Height = 21
      DataField = 'TALAO'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 56
      Width = 250
      Height = 21
      DataField = 'SETOR'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 120
      Top = 80
      Width = 250
      Height = 21
      DataField = 'FUNCIONARIO'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 120
      Top = 104
      Width = 250
      Height = 21
      DataField = 'PRODUTO'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 120
      Top = 176
      Width = 90
      Height = 21
      DataField = 'DTENTRADA'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 288
      Top = 176
      Width = 90
      Height = 21
      DataField = 'HRENTRADA'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 120
      Top = 200
      Width = 90
      Height = 21
      DataField = 'DTSAIDA'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 288
      Top = 200
      Width = 90
      Height = 21
      DataField = 'HRSAIDA'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 120
      Top = 128
      Width = 108
      Height = 21
      DataField = 'QTDEMPROCESSO'
      DataSource = dsConsTalao
      ReadOnly = True
      TabOrder = 8
    end
  end
  object ConsTalao: TSQLDataSet
    CommandText = 
      'SELECT T.TALAO, S.NOME SETOR, F.NOME FUNCIONARIO, P.NOME PRODUTO' +
      ', TM.DTENTRADA, TM.HRENTRADA, TM.DTSAIDA, TM.HRSAIDA, T.PROCESSO' +
      ', T.QTDEMPROCESSO'#13#10'FROM TALAO T'#13#10'LEFT JOIN TALAOMOV TM ON (TM.TA' +
      'LAO = T.TALAO)'#13#10'INNER JOIN PRODUTO P ON (T.CODPRODUTO = P.CODIGO' +
      ')'#13#10'LEFT JOIN SETOR S ON (TM.CODSETOR = S.CODIGO)'#13#10'LEFT JOIN FUNC' +
      'IONARIO F ON (TM.CODFUNCIONARIO = F.CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 8
  end
  object pConsTalao: TDataSetProvider
    DataSet = ConsTalao
    Left = 352
    Top = 8
  end
  object tConsTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pConsTalao'
    Left = 384
    Top = 8
    object tConsTalaoTALAO: TIntegerField
      DisplayWidth = 8
      FieldName = 'TALAO'
      Required = True
    end
    object tConsTalaoSETOR: TStringField
      DisplayWidth = 18
      FieldName = 'SETOR'
      Size = 15
    end
    object tConsTalaoFUNCIONARIO: TStringField
      DisplayWidth = 38
      FieldName = 'FUNCIONARIO'
      Size = 50
    end
    object tConsTalaoPRODUTO: TStringField
      DisplayWidth = 35
      FieldName = 'PRODUTO'
      Size = 40
    end
    object tConsTalaoDTENTRADA: TDateField
      DisplayWidth = 14
      FieldName = 'DTENTRADA'
    end
    object tConsTalaoHRENTRADA: TTimeField
      DisplayWidth = 14
      FieldName = 'HRENTRADA'
    end
    object tConsTalaoDTSAIDA: TDateField
      DisplayWidth = 12
      FieldName = 'DTSAIDA'
    end
    object tConsTalaoHRSAIDA: TTimeField
      DisplayWidth = 12
      FieldName = 'HRSAIDA'
    end
    object tConsTalaoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object tConsTalaoQTDEMPROCESSO: TIntegerField
      FieldName = 'QTDEMPROCESSO'
    end
  end
  object dsConsTalao: TDataSource
    DataSet = tConsTalao
    Left = 416
    Top = 8
  end
end
