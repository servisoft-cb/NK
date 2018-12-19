object dmCadCliente: TdmCadCliente
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 375
  Top = 190
  Height = 270
  Width = 384
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'   FROM CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object sdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 26
    end
    object sdsClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sdsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object sdsClienteCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object sdsClienteINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object sdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sdsClienteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsClienteAPROVCREDITO: TStringField
      FieldName = 'APROVCREDITO'
      Size = 1
    end
    object sdsClienteTIPOAPROV: TStringField
      FieldName = 'TIPOAPROV'
      Size = 1
    end
    object sdsClienteENDENTREGA: TStringField
      FieldName = 'ENDENTREGA'
      Size = 40
    end
    object sdsClienteBAIRROENTREGA: TStringField
      FieldName = 'BAIRROENTREGA'
      Size = 26
    end
    object sdsClienteCIDENTREGA: TStringField
      FieldName = 'CIDENTREGA'
      Size = 26
    end
    object sdsClienteCEPENTREGA: TStringField
      FieldName = 'CEPENTREGA'
      Size = 10
    end
    object sdsClienteUFENTREGA: TStringField
      FieldName = 'UFENTREGA'
      Size = 2
    end
    object sdsClienteCGCCPFENTREGA: TStringField
      FieldName = 'CGCCPFENTREGA'
      Size = 18
    end
    object sdsClienteINSCENTREGA: TStringField
      FieldName = 'INSCENTREGA'
      Size = 18
    end
    object sdsClienteENDPGTO: TStringField
      FieldName = 'ENDPGTO'
      Size = 40
    end
    object sdsClienteBAIRROPGTO: TStringField
      FieldName = 'BAIRROPGTO'
      Size = 26
    end
    object sdsClienteCIDPGTO: TStringField
      FieldName = 'CIDPGTO'
      Size = 26
    end
    object sdsClienteCEPPGTO: TStringField
      FieldName = 'CEPPGTO'
      Size = 10
    end
    object sdsClienteUFPGTO: TStringField
      FieldName = 'UFPGTO'
      Size = 2
    end
    object sdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object sdsClienteDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
    end
    object sdsClienteCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object sdsClienteOBSCTAS: TMemoField
      FieldName = 'OBSCTAS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsClienteLOJAS: TIntegerField
      FieldName = 'LOJAS'
    end
    object sdsClienteSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsClienteCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsClienteCODCIDADEE: TIntegerField
      FieldName = 'CODCIDADEE'
    end
    object sdsClienteCODCIDADEP: TIntegerField
      FieldName = 'CODCIDADEP'
    end
    object sdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sdsClientePERCTRANSF: TFloatField
      FieldName = 'PERCTRANSF'
    end
    object sdsClienteCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object sdsClienteDTNASCCONTATO: TSQLTimeStampField
      FieldName = 'DTNASCCONTATO'
    end
    object sdsClienteNOMERESP: TStringField
      FieldName = 'NOMERESP'
      Size = 30
    end
    object sdsClienteCONTATOCLIENTE: TStringField
      FieldName = 'CONTATOCLIENTE'
      Size = 40
    end
    object sdsClienteCONTATOMODELAGEM: TStringField
      FieldName = 'CONTATOMODELAGEM'
      Size = 40
    end
    object sdsClienteIMPITEMNOTAPORTAM: TStringField
      FieldName = 'IMPITEMNOTAPORTAM'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCODBANCOBOLETO: TIntegerField
      FieldName = 'CODBANCOBOLETO'
    end
    object sdsClienteFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsClienteLIBERACAO: TStringField
      FieldName = 'LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object sdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 210
    end
    object sdsClienteCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object sdsClienteEMAILNFE: TStringField
      FieldName = 'EMAILNFE'
      Size = 250
    end
    object sdsClienteNUMEND: TStringField
      FieldName = 'NUMEND'
      Size = 15
    end
    object sdsClienteNUMENDENTREGA: TStringField
      FieldName = 'NUMENDENTREGA'
      Size = 15
    end
    object sdsClienteCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      Size = 2
    end
    object sdsClienteCOMPLENDERECO: TStringField
      FieldName = 'COMPLENDERECO'
      Size = 50
    end
    object sdsClienteIPISUSPENSO: TStringField
      FieldName = 'IPISUSPENSO'
      FixedChar = True
      Size = 10
    end
    object sdsClienteDTVALIDADEIPI: TDateField
      FieldName = 'DTVALIDADEIPI'
    end
    object sdsClienteCODOBSIPI: TIntegerField
      FieldName = 'CODOBSIPI'
    end
    object sdsClienteCOMPLENDERECOENTREGA: TStringField
      FieldName = 'COMPLENDERECOENTREGA'
      Size = 50
    end
    object sdsClienteCODSITTRIBSIMPLES: TIntegerField
      FieldName = 'CODSITTRIBSIMPLES'
    end
    object sdsClienteUSAICMSSIMPLES: TStringField
      FieldName = 'USAICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsClienteDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsClienteDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsClienteIPI: TFloatField
      FieldName = 'IPI'
    end
    object sdsClienteTIPOFRETE: TStringField
      FieldName = 'TIPOFRETE'
      Size = 1
    end
    object sdsClienteIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object sdsClienteEMAILNFE2: TStringField
      FieldName = 'EMAILNFE2'
      Size = 150
    end
    object sdsClienteCGCCPFPGTO: TStringField
      FieldName = 'CGCCPFPGTO'
      Size = 18
    end
    object sdsClienteINSCPGTO: TStringField
      FieldName = 'INSCPGTO'
      Size = 18
    end
    object sdsClientePESSOAENTREGA: TStringField
      FieldName = 'PESSOAENTREGA'
      FixedChar = True
      Size = 1
    end
    object sdsClientePESSOAPGTO: TStringField
      FieldName = 'PESSOAPGTO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteTIPO_CONSUMIDOR: TIntegerField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsClienteTIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 136
    Top = 24
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 224
    Top = 24
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 26
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object cdsClienteCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object cdsClienteINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object cdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsClienteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteAPROVCREDITO: TStringField
      FieldName = 'APROVCREDITO'
      Size = 1
    end
    object cdsClienteTIPOAPROV: TStringField
      FieldName = 'TIPOAPROV'
      Size = 1
    end
    object cdsClienteENDENTREGA: TStringField
      FieldName = 'ENDENTREGA'
      Size = 40
    end
    object cdsClienteBAIRROENTREGA: TStringField
      FieldName = 'BAIRROENTREGA'
      Size = 26
    end
    object cdsClienteCIDENTREGA: TStringField
      FieldName = 'CIDENTREGA'
      Size = 26
    end
    object cdsClienteCEPENTREGA: TStringField
      FieldName = 'CEPENTREGA'
      Size = 10
    end
    object cdsClienteUFENTREGA: TStringField
      FieldName = 'UFENTREGA'
      Size = 2
    end
    object cdsClienteCGCCPFENTREGA: TStringField
      FieldName = 'CGCCPFENTREGA'
      Size = 18
    end
    object cdsClienteINSCENTREGA: TStringField
      FieldName = 'INSCENTREGA'
      Size = 18
    end
    object cdsClienteENDPGTO: TStringField
      FieldName = 'ENDPGTO'
      Size = 40
    end
    object cdsClienteBAIRROPGTO: TStringField
      FieldName = 'BAIRROPGTO'
      Size = 26
    end
    object cdsClienteCIDPGTO: TStringField
      FieldName = 'CIDPGTO'
      Size = 26
    end
    object cdsClienteCEPPGTO: TStringField
      FieldName = 'CEPPGTO'
      Size = 10
    end
    object cdsClienteUFPGTO: TStringField
      FieldName = 'UFPGTO'
      Size = 2
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object cdsClienteDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
    end
    object cdsClienteCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsClienteOBSCTAS: TMemoField
      FieldName = 'OBSCTAS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteLOJAS: TIntegerField
      FieldName = 'LOJAS'
    end
    object cdsClienteSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsClienteCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsClienteCODCIDADEE: TIntegerField
      FieldName = 'CODCIDADEE'
    end
    object cdsClienteCODCIDADEP: TIntegerField
      FieldName = 'CODCIDADEP'
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsClientePERCTRANSF: TFloatField
      FieldName = 'PERCTRANSF'
    end
    object cdsClienteCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object cdsClienteDTNASCCONTATO: TSQLTimeStampField
      FieldName = 'DTNASCCONTATO'
    end
    object cdsClienteNOMERESP: TStringField
      FieldName = 'NOMERESP'
      Size = 30
    end
    object cdsClienteCONTATOCLIENTE: TStringField
      FieldName = 'CONTATOCLIENTE'
      Size = 40
    end
    object cdsClienteCONTATOMODELAGEM: TStringField
      FieldName = 'CONTATOMODELAGEM'
      Size = 40
    end
    object cdsClienteIMPITEMNOTAPORTAM: TStringField
      FieldName = 'IMPITEMNOTAPORTAM'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCODBANCOBOLETO: TIntegerField
      FieldName = 'CODBANCOBOLETO'
    end
    object cdsClienteFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsClienteLIBERACAO: TStringField
      FieldName = 'LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object cdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 210
    end
    object cdsClienteCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsClienteEMAILNFE: TStringField
      FieldName = 'EMAILNFE'
      Size = 250
    end
    object cdsClienteNUMEND: TStringField
      FieldName = 'NUMEND'
      Size = 15
    end
    object cdsClienteNUMENDENTREGA: TStringField
      FieldName = 'NUMENDENTREGA'
      Size = 15
    end
    object cdsClienteCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      Size = 2
    end
    object cdsClienteCOMPLENDERECO: TStringField
      FieldName = 'COMPLENDERECO'
      Size = 50
    end
    object cdsClienteIPISUSPENSO: TStringField
      FieldName = 'IPISUSPENSO'
      FixedChar = True
      Size = 10
    end
    object cdsClienteDTVALIDADEIPI: TDateField
      FieldName = 'DTVALIDADEIPI'
    end
    object cdsClienteCODOBSIPI: TIntegerField
      FieldName = 'CODOBSIPI'
    end
    object cdsClienteCOMPLENDERECOENTREGA: TStringField
      FieldName = 'COMPLENDERECOENTREGA'
      Size = 50
    end
    object cdsClienteCODSITTRIBSIMPLES: TIntegerField
      FieldName = 'CODSITTRIBSIMPLES'
    end
    object cdsClienteUSAICMSSIMPLES: TStringField
      FieldName = 'USAICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsClienteDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsClienteDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsClienteIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsClienteTIPOFRETE: TStringField
      FieldName = 'TIPOFRETE'
      Size = 1
    end
    object cdsClienteIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsClienteEMAILNFE2: TStringField
      FieldName = 'EMAILNFE2'
      Size = 150
    end
    object cdsClienteCGCCPFPGTO: TStringField
      FieldName = 'CGCCPFPGTO'
      Size = 18
    end
    object cdsClienteINSCPGTO: TStringField
      FieldName = 'INSCPGTO'
      Size = 18
    end
    object cdsClientePESSOAENTREGA: TStringField
      FieldName = 'PESSOAENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsClientePESSOAPGTO: TStringField
      FieldName = 'PESSOAPGTO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteTIPO_CONSUMIDOR: TIntegerField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsClienteTIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 304
    Top = 24
  end
end
