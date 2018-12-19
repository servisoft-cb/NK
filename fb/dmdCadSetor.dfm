object dmCadSetor: TdmCadSetor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 375
  Top = 190
  Height = 270
  Width = 384
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'   FROM SETOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
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
    Left = 136
    Top = 24
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    Left = 224
    Top = 24
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
    Left = 304
    Top = 24
  end
end
