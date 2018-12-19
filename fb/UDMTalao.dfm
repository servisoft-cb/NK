object DMTalao: TDMTalao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 245
  Top = 196
  Height = 432
  Width = 622
  object Talao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TALAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 16
    object TalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object TalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object TalaoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object TalaoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object TalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object TalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object TalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
    end
    object TalaoPEDCLIDIF: TStringField
      FieldName = 'PEDCLIDIF'
      Size = 2
    end
    object TalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object TalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object TalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object TalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object TalaoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
    object TalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object TalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 100
    end
    object TalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object TalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object TalaoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object TalaoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object TalaoIMPRESSODATA: TDateField
      FieldName = 'IMPRESSODATA'
    end
    object TalaoIMPRESSOHORA: TTimeField
      FieldName = 'IMPRESSOHORA'
    end
    object TalaoIMPRESSOUSUARIO: TStringField
      FieldName = 'IMPRESSOUSUARIO'
      Size = 15
    end
    object TalaoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object TalaoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object TalaoHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
    end
    object TalaoHORASPARADA: TFloatField
      FieldName = 'HORASPARADA'
    end
    object TalaoQTDEMPROCESSO: TIntegerField
      FieldName = 'QTDEMPROCESSO'
    end
    object TalaoQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object TalaoHORASTERCEIRO: TFloatField
      FieldName = 'HORASTERCEIRO'
    end
    object TalaoHRGERADO: TTimeField
      FieldName = 'HRGERADO'
    end
  end
  object pTalao: TDataSetProvider
    DataSet = Talao
    Left = 128
    Top = 16
  end
  object tTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTalao'
    Left = 160
    Top = 16
    object tTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object tTalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object tTalaoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object tTalaoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object tTalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object tTalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object tTalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
    end
    object tTalaoPEDCLIDIF: TStringField
      FieldName = 'PEDCLIDIF'
      Size = 2
    end
    object tTalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tTalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object tTalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object tTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object tTalaoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
    object tTalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tTalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 100
    end
    object tTalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object tTalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object tTalaoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object tTalaoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object tTalaoIMPRESSODATA: TDateField
      FieldName = 'IMPRESSODATA'
    end
    object tTalaoIMPRESSOHORA: TTimeField
      FieldName = 'IMPRESSOHORA'
    end
    object tTalaoIMPRESSOUSUARIO: TStringField
      FieldName = 'IMPRESSOUSUARIO'
      Size = 15
    end
    object tTalaoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object tTalaoTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
      DisplayFormat = '0.00'
    end
    object tTalaoHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
      DisplayFormat = '0.00'
    end
    object tTalaoHORASPARADA: TFloatField
      FieldName = 'HORASPARADA'
      DisplayFormat = '0.00'
    end
    object tTalaoQTDEMPROCESSO: TIntegerField
      FieldName = 'QTDEMPROCESSO'
    end
    object tTalaoQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object tTalaoTalaoSetor: TDataSetField
      FieldName = 'TalaoSetor'
    end
    object tTalaoHORASTERCEIRO: TFloatField
      FieldName = 'HORASTERCEIRO'
    end
    object tTalaoHRGERADO: TTimeField
      FieldName = 'HRGERADO'
    end
  end
  object dsTalao: TDataSource
    DataSet = tTalao
    Left = 192
    Top = 16
  end
  object dsTalaoMestre: TDataSource
    DataSet = Talao
    Left = 96
    Top = 72
  end
  object sdsExec: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 176
  end
  object TalaoSetor: TSQLDataSet
    CommandText = 
      'SELECT T.*, S.NOME NOMESETOR'#13#10'FROM TALAOSETOR T'#13#10'INNER JOIN SETO' +
      'R S'#13#10'ON S.CODIGO = T.CODSETOR'#13#10'WHERE TALAO = :TALAO'#13#10
    DataSource = dsTalaoMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 72
    object TalaoSetorTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoSetorCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object TalaoSetorPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TalaoSetorQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object TalaoSetorQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object TalaoSetorQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object TalaoSetorNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      ProviderFlags = []
      Size = 15
    end
    object TalaoSetorTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object TalaoSetorHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
    end
    object TalaoSetorHORASPARADAS: TFloatField
      FieldName = 'HORASPARADAS'
    end
  end
  object tTalaoSetor: TClientDataSet
    Aggregates = <>
    DataSetField = tTalaoTalaoSetor
    Params = <>
    Left = 160
    Top = 72
    object tTalaoSetorTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoSetorCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object tTalaoSetorPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tTalaoSetorQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object tTalaoSetorQTDQUEBRAS: TIntegerField
      FieldName = 'QTDQUEBRAS'
    end
    object tTalaoSetorQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object tTalaoSetorNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      ProviderFlags = []
      Size = 15
    end
    object tTalaoSetorTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
      DisplayFormat = '0.00'
    end
    object tTalaoSetorHORASPRODUCAO: TFloatField
      FieldName = 'HORASPRODUCAO'
      DisplayFormat = '0.00'
    end
    object tTalaoSetorHORASPARADAS: TFloatField
      FieldName = 'HORASPARADAS'
      DisplayFormat = '0.00'
    end
    object tTalaoSetorTalaoParadas: TDataSetField
      FieldName = 'TalaoParadas'
    end
    object tTalaoSetorTalaoQuebras: TDataSetField
      FieldName = 'TalaoQuebras'
    end
    object tTalaoSetorTalaoMov: TDataSetField
      FieldName = 'TalaoMov'
    end
  end
  object dsTalaoSetor: TDataSource
    DataSet = tTalaoSetor
    Left = 192
    Top = 72
  end
  object dsTalaoSetorMestre: TDataSource
    DataSet = TalaoSetor
    Left = 96
    Top = 128
  end
  object TalaoParadas: TSQLDataSet
    CommandText = 
      'SELECT T.*, P.NOME NOMEPARADA'#13#10'FROM TALAOPARADAS T'#13#10'INNER JOIN P' +
      'ARADAS P'#13#10'ON P.CODIGO = T.CODPARADA'#13#10'WHERE TALAO = :TALAO'#13#10'     ' +
      ' AND CODSETOR = :CODSETOR'
    DataSource = dsTalaoSetorMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CODSETOR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 184
    object TalaoParadasTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoParadasCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object TalaoParadasITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object TalaoParadasCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
      Required = True
    end
    object TalaoParadasDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object TalaoParadasHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object TalaoParadasDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object TalaoParadasHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object TalaoParadasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object TalaoParadasTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object TalaoParadasNOMEPARADA: TStringField
      FieldName = 'NOMEPARADA'
      ProviderFlags = []
      Size = 30
    end
  end
  object tTalaoParadas: TClientDataSet
    Aggregates = <>
    DataSetField = tTalaoSetorTalaoParadas
    Params = <>
    Left = 128
    Top = 184
    object tTalaoParadasTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoParadasCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object tTalaoParadasITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tTalaoParadasCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
      Required = True
    end
    object tTalaoParadasDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object tTalaoParadasHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object tTalaoParadasDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object tTalaoParadasHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object tTalaoParadasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object tTalaoParadasTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
      DisplayFormat = '0.00'
    end
    object tTalaoParadasNOMEPARADA: TStringField
      FieldName = 'NOMEPARADA'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsTalaoParadas: TDataSource
    DataSet = tTalaoParadas
    Left = 160
    Top = 184
  end
  object TalaoQuebras: TSQLDataSet
    CommandText = 
      'SELECT T.*, D.NOME NOMEDEFEITO'#13#10'FROM TALAOQUEBRAS T'#13#10'INNER JOIN ' +
      'DEFEITOS D'#13#10'ON D.CODIGO = T.CODDEFEITO'#13#10'WHERE TALAO = :TALAO'#13#10'  ' +
      '    AND CODSETOR = :CODSETOR'
    DataSource = dsTalaoSetorMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CODSETOR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 232
    object TalaoQuebrasTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoQuebrasCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object TalaoQuebrasITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object TalaoQuebrasCODDEFEITO: TIntegerField
      FieldName = 'CODDEFEITO'
      Required = True
    end
    object TalaoQuebrasDATA: TDateField
      FieldName = 'DATA'
    end
    object TalaoQuebrasQTD: TIntegerField
      FieldName = 'QTD'
    end
    object TalaoQuebrasHORA: TTimeField
      FieldName = 'HORA'
    end
    object TalaoQuebrasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object TalaoQuebrasNOMEDEFEITO: TStringField
      FieldName = 'NOMEDEFEITO'
      ProviderFlags = []
      Size = 30
    end
    object TalaoQuebrasCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
  end
  object tTalaoQuebras: TClientDataSet
    Aggregates = <>
    DataSetField = tTalaoSetorTalaoQuebras
    Params = <>
    Left = 128
    Top = 232
    object tTalaoQuebrasTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoQuebrasCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object tTalaoQuebrasITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tTalaoQuebrasCODDEFEITO: TIntegerField
      FieldName = 'CODDEFEITO'
      Required = True
    end
    object tTalaoQuebrasDATA: TDateField
      FieldName = 'DATA'
    end
    object tTalaoQuebrasQTD: TIntegerField
      FieldName = 'QTD'
    end
    object tTalaoQuebrasHORA: TTimeField
      FieldName = 'HORA'
    end
    object tTalaoQuebrasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object tTalaoQuebrasNOMEDEFEITO: TStringField
      FieldName = 'NOMEDEFEITO'
      ProviderFlags = []
      Size = 30
    end
    object tTalaoQuebrasCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
  end
  object dsTalaoQuebras: TDataSource
    DataSet = tTalaoQuebras
    Left = 160
    Top = 232
  end
  object sdsTalaoTerceiro: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM TALAOTERCEIRO'#13#10'WHERE TALAO = :TALAO'#13#10'ORDER BY ITE' +
      'M'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 336
    object sdsTalaoTerceiroTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoTerceiroITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalaoTerceiroDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalaoTerceiroHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsTalaoTerceiroDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalaoTerceiroHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalaoTerceiroCODFUNCIONARIOLIB: TIntegerField
      FieldName = 'CODFUNCIONARIOLIB'
    end
    object sdsTalaoTerceiroCODSETORLIB: TIntegerField
      FieldName = 'CODSETORLIB'
    end
    object sdsTalaoTerceiroQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object sdsTalaoTerceiroQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object sdsTalaoTerceiroQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object sdsTalaoTerceiroCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object sdsTalaoTerceiroTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
  end
  object dspTalaoTerceiro: TDataSetProvider
    DataSet = sdsTalaoTerceiro
    Left = 128
    Top = 336
  end
  object cdsTalaoTerceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoTerceiro'
    Left = 160
    Top = 336
    object cdsTalaoTerceiroTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoTerceiroITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalaoTerceiroDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalaoTerceiroHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsTalaoTerceiroDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalaoTerceiroHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalaoTerceiroCODFUNCIONARIOLIB: TIntegerField
      FieldName = 'CODFUNCIONARIOLIB'
    end
    object cdsTalaoTerceiroCODSETORLIB: TIntegerField
      FieldName = 'CODSETORLIB'
    end
    object cdsTalaoTerceiroQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object cdsTalaoTerceiroQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object cdsTalaoTerceiroQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object cdsTalaoTerceiroCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object cdsTalaoTerceiroTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
  end
  object dsTalaoTerceiro: TDataSource
    DataSet = cdsTalaoTerceiro
    Left = 192
    Top = 336
  end
  object sdsTalaoReg: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM TALAOREG'#13#10'WHERE TALAO = :TALAO'#13#10'ORDER BY ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 288
    object sdsTalaoRegTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoRegITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalaoRegCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object sdsTalaoRegCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object sdsTalaoRegPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoRegQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsTalaoRegQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object sdsTalaoRegDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object sdsTalaoRegHRMOV: TTimeField
      FieldName = 'HRMOV'
    end
  end
  object cdsTalaoReg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalaoReg'
    Left = 160
    Top = 288
    object cdsTalaoRegTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoRegITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalaoRegCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object cdsTalaoRegCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object cdsTalaoRegPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoRegQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsTalaoRegQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object cdsTalaoRegDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object cdsTalaoRegHRMOV: TTimeField
      FieldName = 'HRMOV'
    end
  end
  object dsTalaoReg: TDataSource
    DataSet = cdsTalaoReg
    Left = 192
    Top = 288
  end
  object dspTalaoReg: TDataSetProvider
    DataSet = sdsTalaoReg
    Left = 128
    Top = 288
  end
  object TalaoMov: TSQLDataSet
    CommandText = 
      'SELECT T.*, F.NOME NOMEFUNCIONARIO FROM TALAOMOV T INNER JOIN FU' +
      'NCIONARIO F ON F.CODIGO = T.CODFUNCIONARIO WHERE T.TALAO = :TALA' +
      'O  AND T.CODSETOR = :CODSETOR'#13#10'ORDER BY T.ITEM'
    DataSource = dsTalaoSetorMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TALAO'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CODSETOR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 128
    object TalaoMovTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object TalaoMovCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object TalaoMovITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object TalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object TalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object TalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object TalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object TalaoMovQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object TalaoMovQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object TalaoMovQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object TalaoMovCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object TalaoMovTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object TalaoMovTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object TalaoMovCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object TalaoMovNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object TalaoMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
  end
  object tTalaoMov: TClientDataSet
    Aggregates = <>
    DataSetField = tTalaoSetorTalaoMov
    Params = <>
    Left = 160
    Top = 128
    object tTalaoMovTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object tTalaoMovCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object tTalaoMovITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tTalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object tTalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object tTalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object tTalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object tTalaoMovQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object tTalaoMovQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object tTalaoMovQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object tTalaoMovCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object tTalaoMovTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object tTalaoMovTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object tTalaoMovCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object tTalaoMovNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object tTalaoMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
  end
  object dsTalaoMov: TDataSource
    DataSet = tTalaoMov
    Left = 192
    Top = 128
  end
  object qTalaoMov: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODFUNCIONARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT TM.*'
      'FROM TALAOMOV TM'
      'WHERE TM.DTSAIDA IS NULL'
      '  AND TM.CODFUNCIONARIO = :CODFUNCIONARIO')
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 88
    object qTalaoMovTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object qTalaoMovCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object qTalaoMovITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qTalaoMovDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qTalaoMovHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object qTalaoMovDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object qTalaoMovHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object qTalaoMovQTDENTRADA: TIntegerField
      FieldName = 'QTDENTRADA'
    end
    object qTalaoMovQTDPRODUZIDO: TIntegerField
      FieldName = 'QTDPRODUZIDO'
    end
    object qTalaoMovQTDQUEBRA: TIntegerField
      FieldName = 'QTDQUEBRA'
    end
    object qTalaoMovCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object qTalaoMovTIPOSAIDA: TStringField
      FieldName = 'TIPOSAIDA'
      FixedChar = True
      Size = 1
    end
    object qTalaoMovTOTALHORAS: TFloatField
      FieldName = 'TOTALHORAS'
    end
    object qTalaoMovCODPARADA: TIntegerField
      FieldName = 'CODPARADA'
    end
    object qTalaoMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object qTalaoMovTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
  end
end
