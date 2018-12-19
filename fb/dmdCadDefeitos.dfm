object dmCadDefeitos: TdmCadDefeitos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 510
  Top = 189
  Height = 151
  Width = 384
  object sdsDefeitos: TSQLDataSet
    CommandText = 'SELECT *'#13#10'   FROM  DEFEITOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsDefeitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsDefeitosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspDefeitos: TDataSetProvider
    DataSet = sdsDefeitos
    Left = 136
    Top = 24
  end
  object cdsDefeitos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDefeitos'
    Left = 224
    Top = 24
    object cdsDefeitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDefeitosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsDefeitos: TDataSource
    DataSet = cdsDefeitos
    Left = 304
    Top = 24
  end
end
