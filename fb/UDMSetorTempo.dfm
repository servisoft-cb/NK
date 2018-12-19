object DMSetorTempo: TDMSetorTempo
  OldCreateOrder = False
  Left = 283
  Top = 217
  Height = 238
  Width = 472
  object sdsSetor_Tempo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SETOR_TEMPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 72
    object sdsSetor_TempoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object sdsSetor_TempoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sdsSetor_TempoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object sdsSetor_TempoTOTALHORASPARADA: TFloatField
      FieldName = 'TOTALHORASPARADA'
    end
    object sdsSetor_TempoTOTALHORASPROD: TFloatField
      FieldName = 'TOTALHORASPROD'
    end
  end
  object dspSetor_Tempo: TDataSetProvider
    DataSet = sdsSetor_Tempo
    Left = 136
    Top = 72
  end
  object cdsSetor_Tempo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor_Tempo'
    Left = 176
    Top = 72
    object cdsSetor_TempoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object cdsSetor_TempoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object cdsSetor_TempoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object cdsSetor_TempoTOTALHORASPARADA: TFloatField
      FieldName = 'TOTALHORASPARADA'
    end
    object cdsSetor_TempoTOTALHORASPROD: TFloatField
      FieldName = 'TOTALHORASPROD'
    end
  end
  object dsSetor_Tempo: TDataSource
    DataSet = cdsSetor_Tempo
    Left = 224
    Top = 72
  end
end
