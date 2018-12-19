object dmCadParadas: TdmCadParadas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 476
  Top = 188
  Height = 151
  Width = 384
  object sdsParadas: TSQLDataSet
    CommandText = 'SELECT *'#13#10'   FROM  PARADAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsParadasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsParadasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsParadasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspParadas: TDataSetProvider
    DataSet = sdsParadas
    Left = 136
    Top = 24
  end
  object cdsParadas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParadas'
    Left = 224
    Top = 24
    object cdsParadasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsParadasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsParadasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsParadas: TDataSource
    DataSet = cdsParadas
    Left = 304
    Top = 24
  end
end
