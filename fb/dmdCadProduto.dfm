object dmCadProduto: TdmCadProduto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 375
  Top = 190
  Height = 270
  Width = 384
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'   FROM PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object sdsProdutoCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsProdutoCODCLASFISCAL: TStringField
      FieldName = 'CODCLASFISCAL'
      Size = 12
    end
    object sdsProdutoCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object sdsProdutoLANCAGRADE: TStringField
      FieldName = 'LANCAGRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object sdsProdutoQPARTALAO: TFloatField
      FieldName = 'QPARTALAO'
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object sdsProdutoALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object sdsProdutoNOMEEXP: TStringField
      FieldName = 'NOMEEXP'
      Size = 45
    end
    object sdsProdutoDESCMATERIAL: TStringField
      FieldName = 'DESCMATERIAL'
      Size = 10
    end
    object sdsProdutoREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
    end
    object sdsProdutoVLRATELIER: TFloatField
      FieldName = 'VLRATELIER'
    end
    object sdsProdutoNOMEMODELO: TStringField
      FieldName = 'NOMEMODELO'
    end
    object sdsProdutoFOTOJPEG: TMemoField
      FieldName = 'FOTOJPEG'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoENDETIQ: TStringField
      FieldName = 'ENDETIQ'
      Size = 60
    end
    object sdsProdutoLANCACOR: TStringField
      FieldName = 'LANCACOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECOGRADE: TStringField
      FieldName = 'PRECOGRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
    object sdsProdutoPRODMAT: TStringField
      FieldName = 'PRODMAT'
      Size = 1
    end
    object sdsProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sdsProdutoPOSSEMAT: TStringField
      FieldName = 'POSSEMAT'
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoDTALTERACAO: TSQLTimeStampField
      FieldName = 'DTALTERACAO'
    end
    object sdsProdutoMATERIALOUTROS: TStringField
      FieldName = 'MATERIALOUTROS'
      Size = 1
    end
    object sdsProdutoPRECOCOR: TStringField
      FieldName = 'PRECOCOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object sdsProdutoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object sdsProdutoESTMAXIMO: TFloatField
      FieldName = 'ESTMAXIMO'
    end
    object sdsProdutoDIAMETRO: TStringField
      FieldName = 'DIAMETRO'
      Size = 12
    end
    object sdsProdutoCOMPRIMENTO: TStringField
      FieldName = 'COMPRIMENTO'
      Size = 12
    end
    object sdsProdutoROSCA: TStringField
      FieldName = 'ROSCA'
      Size = 12
    end
    object sdsProdutoCABECA: TStringField
      FieldName = 'CABECA'
      Size = 12
    end
    object sdsProdutoENDFOTOTALAO: TStringField
      FieldName = 'ENDFOTOTALAO'
      Size = 250
    end
    object sdsProdutoCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      Size = 2
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object sdsProdutoORIGEMPROD: TStringField
      FieldName = 'ORIGEMPROD'
      Size = 1
    end
    object sdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object sdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 136
    Top = 24
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 224
    Top = 24
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object cdsProdutoCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsProdutoCODCLASFISCAL: TStringField
      FieldName = 'CODCLASFISCAL'
      Size = 12
    end
    object cdsProdutoCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object cdsProdutoLANCAGRADE: TStringField
      FieldName = 'LANCAGRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object cdsProdutoQPARTALAO: TFloatField
      FieldName = 'QPARTALAO'
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object cdsProdutoALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object cdsProdutoNOMEEXP: TStringField
      FieldName = 'NOMEEXP'
      Size = 45
    end
    object cdsProdutoDESCMATERIAL: TStringField
      FieldName = 'DESCMATERIAL'
      Size = 10
    end
    object cdsProdutoREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
    end
    object cdsProdutoVLRATELIER: TFloatField
      FieldName = 'VLRATELIER'
    end
    object cdsProdutoNOMEMODELO: TStringField
      FieldName = 'NOMEMODELO'
    end
    object cdsProdutoFOTOJPEG: TMemoField
      FieldName = 'FOTOJPEG'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoENDETIQ: TStringField
      FieldName = 'ENDETIQ'
      Size = 60
    end
    object cdsProdutoLANCACOR: TStringField
      FieldName = 'LANCACOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECOGRADE: TStringField
      FieldName = 'PRECOGRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
    object cdsProdutoPRODMAT: TStringField
      FieldName = 'PRODMAT'
      Size = 1
    end
    object cdsProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object cdsProdutoPOSSEMAT: TStringField
      FieldName = 'POSSEMAT'
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoDTALTERACAO: TSQLTimeStampField
      FieldName = 'DTALTERACAO'
    end
    object cdsProdutoMATERIALOUTROS: TStringField
      FieldName = 'MATERIALOUTROS'
      Size = 1
    end
    object cdsProdutoPRECOCOR: TStringField
      FieldName = 'PRECOCOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsProdutoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object cdsProdutoESTMAXIMO: TFloatField
      FieldName = 'ESTMAXIMO'
    end
    object cdsProdutoDIAMETRO: TStringField
      FieldName = 'DIAMETRO'
      Size = 12
    end
    object cdsProdutoCOMPRIMENTO: TStringField
      FieldName = 'COMPRIMENTO'
      Size = 12
    end
    object cdsProdutoROSCA: TStringField
      FieldName = 'ROSCA'
      Size = 12
    end
    object cdsProdutoCABECA: TStringField
      FieldName = 'CABECA'
      Size = 12
    end
    object cdsProdutoENDFOTOTALAO: TStringField
      FieldName = 'ENDFOTOTALAO'
      Size = 250
    end
    object cdsProdutoCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      Size = 2
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsProdutoORIGEMPROD: TStringField
      FieldName = 'ORIGEMPROD'
      Size = 1
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 304
    Top = 24
  end
end
