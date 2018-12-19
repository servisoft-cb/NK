object DMHorarioProd: TDMHorarioProd
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 330
  Top = 196
  Height = 190
  Width = 448
  object sdsHorarioProd: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM HORARIOPROD'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 24
    object sdsHorarioProdDIASEMANA: TIntegerField
      FieldName = 'DIASEMANA'
      Required = True
    end
    object sdsHorarioProdQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
    end
    object sdsHorarioProdDIA: TStringField
      FieldName = 'DIA'
      Size = 15
    end
  end
  object dspHorarioProd: TDataSetProvider
    DataSet = sdsHorarioProd
    Left = 128
    Top = 24
  end
  object cdsHorarioProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHorarioProd'
    Left = 216
    Top = 24
    object cdsHorarioProdDIASEMANA: TIntegerField
      FieldName = 'DIASEMANA'
      Required = True
    end
    object cdsHorarioProdQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
    end
    object cdsHorarioProdDIA: TStringField
      FieldName = 'DIA'
      Size = 15
    end
  end
  object dsHorarioProd: TDataSource
    DataSet = cdsHorarioProd
    Left = 288
    Top = 24
  end
end
