object dmCadFuncionario: TdmCadFuncionario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 375
  Top = 190
  Height = 270
  Width = 384
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'   FROM FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsFuncionarioCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object sdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsFuncionarioFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsFuncionarioDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object sdsFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object sdsFuncionarioRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object sdsFuncionarioCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object sdsFuncionarioSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object sdsFuncionarioPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object sdsFuncionarioDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsFuncionarioHRSEMANAIS: TFloatField
      FieldName = 'HRSEMANAIS'
    end
    object sdsFuncionarioTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 1
    end
    object sdsFuncionarioVLRSALARIO: TFloatField
      FieldName = 'VLRSALARIO'
    end
    object sdsFuncionarioDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object sdsFuncionarioHORARIO1: TStringField
      FieldName = 'HORARIO1'
      Size = 30
    end
    object sdsFuncionarioHORARIO2: TStringField
      FieldName = 'HORARIO2'
      Size = 30
    end
    object sdsFuncionarioPERCINSALUBRIDADE: TFloatField
      FieldName = 'PERCINSALUBRIDADE'
    end
    object sdsFuncionarioPERCPERICULOSIDADE: TFloatField
      FieldName = 'PERCPERICULOSIDADE'
    end
    object sdsFuncionarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFuncionarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFuncionarioESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 15
    end
    object sdsFuncionarioESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object sdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object sdsFuncionarioNOMECONJUGE: TStringField
      FieldName = 'NOMECONJUGE'
      Size = 40
    end
    object sdsFuncionarioNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
    object sdsFuncionarioMOSTRARNAPRODUCAO: TStringField
      FieldName = 'MOSTRARNAPRODUCAO'
      FixedChar = True
      Size = 1
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 136
    Top = 24
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 224
    Top = 24
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsFuncionarioCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object cdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFuncionarioFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFuncionarioDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object cdsFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsFuncionarioRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object cdsFuncionarioCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object cdsFuncionarioSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsFuncionarioPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object cdsFuncionarioDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsFuncionarioHRSEMANAIS: TFloatField
      FieldName = 'HRSEMANAIS'
    end
    object cdsFuncionarioTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 1
    end
    object cdsFuncionarioVLRSALARIO: TFloatField
      FieldName = 'VLRSALARIO'
    end
    object cdsFuncionarioDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object cdsFuncionarioHORARIO1: TStringField
      FieldName = 'HORARIO1'
      Size = 30
    end
    object cdsFuncionarioHORARIO2: TStringField
      FieldName = 'HORARIO2'
      Size = 30
    end
    object cdsFuncionarioPERCINSALUBRIDADE: TFloatField
      FieldName = 'PERCINSALUBRIDADE'
    end
    object cdsFuncionarioPERCPERICULOSIDADE: TFloatField
      FieldName = 'PERCPERICULOSIDADE'
    end
    object cdsFuncionarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFuncionarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFuncionarioESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 15
    end
    object cdsFuncionarioESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object cdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object cdsFuncionarioNOMECONJUGE: TStringField
      FieldName = 'NOMECONJUGE'
      Size = 40
    end
    object cdsFuncionarioNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
    object cdsFuncionarioMOSTRARNAPRODUCAO: TStringField
      FieldName = 'MOSTRARNAPRODUCAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 304
    Top = 24
  end
end
