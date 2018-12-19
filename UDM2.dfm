object DM2: TDM2
  OldCreateOrder = False
  Left = 188
  Top = 234
  Height = 328
  Width = 439
  object tEstoqueMatMov2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'NumMov'
    TableName = 'dbEstoqueMatMov.DB'
    Left = 96
    Top = 88
    object tEstoqueMatMov2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
  end
  object qEquipEPI: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, QtdMes'
      'FROM "dbEquipEPI.db" Dbequipepi'
      'ORDER BY Nome')
    Left = 248
    Top = 88
    object qEquipEPICodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbEquipEPI.DB".Codigo'
    end
    object qEquipEPINome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbEquipEPI.DB".Nome'
      Size = 40
    end
    object qEquipEPIQtdMes: TIntegerField
      FieldName = 'QtdMes'
      Origin = 'TABELAS."dbEquipEPI.DB".QtdMes'
    end
  end
  object dsqEquipEPI: TDataSource
    DataSet = qEquipEPI
    Left = 264
    Top = 88
  end
  object qProximaNota: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'select max(NumNota) NumNota'
      'from dbnotafiscal.db'
      'where filial = :Filial'
      '   and Serie = :Serie')
    Left = 73
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptUnknown
      end>
    object qProximaNotaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
  end
  object qPais: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT * FROM DBPAIS ORDER BY PAIS')
    Left = 256
    Top = 197
    object qPaisID: TIntegerField
      FieldName = 'ID'
      Origin = 'TABELAS."dbPais.DB".ID'
    end
    object qPaisPais: TStringField
      FieldName = 'Pais'
      Origin = 'TABELAS."dbPais.DB".Pais'
      Size = 40
    end
    object qPaisCodPais: TStringField
      FieldName = 'CodPais'
      Origin = 'TABELAS."dbPais.DB".CodPais'
      Size = 5
    end
  end
  object dsqPais: TDataSource
    DataSet = qPais
    Left = 280
    Top = 197
  end
  object qVale: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT SUM( VlrTotal ) VlrTotal'
      'FROM "dbVale.DB" Dbvale'
      'WHERE   (Faturado = FALSE)  '
      '   AND  (GeraCobranca = FALSE)  ')
    Left = 184
    Top = 40
    object qValeVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbVale.DB".VlrTotal'
    end
  end
  object tFilial2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbFilial.DB'
    Left = 328
    Top = 32
    object tFilial2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tFilial2Empresa: TStringField
      FieldName = 'Empresa'
      Size = 60
    end
    object tFilial2Endereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tFilial2Bairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object tFilial2Cep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object tFilial2Cidade: TStringField
      FieldName = 'Cidade'
      Size = 26
    end
    object tFilial2Estado: TStringField
      FieldName = 'Estado'
      Size = 3
    end
    object tFilial2Tel: TStringField
      FieldName = 'Tel'
      Size = 13
    end
    object tFilial2Tel2: TStringField
      FieldName = 'Tel2'
      Size = 13
    end
    object tFilial2Fax: TStringField
      FieldName = 'Fax'
      Size = 13
    end
    object tFilial2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object tFilial2Inscr: TStringField
      FieldName = 'Inscr'
      Size = 18
    end
    object tFilial2Simples: TBooleanField
      FieldName = 'Simples'
    end
    object tFilial2Email: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object tFilial2SimplesGaucho: TBooleanField
      FieldName = 'SimplesGaucho'
    end
    object tFilial2ImpSimplesGaucho: TBooleanField
      FieldName = 'ImpSimplesGaucho'
    end
    object tFilial2EndLogo: TStringField
      FieldName = 'EndLogo'
      Size = 200
    end
    object tFilial2NomeInterno: TStringField
      FieldName = 'NomeInterno'
      Size = 200
    end
    object tFilial2CalculaIPI: TBooleanField
      FieldName = 'CalculaIPI'
    end
    object tFilial2Inativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tFilial2CodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object tFilial2InscMunicipal: TStringField
      FieldName = 'InscMunicipal'
      Size = 15
    end
    object tFilial2CNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object tFilial2NumEnd: TStringField
      FieldName = 'NumEnd'
      Size = 15
    end
    object tFilial2HomePage: TStringField
      FieldName = 'HomePage'
      Size = 250
    end
    object tFilial2UsarICMSimples: TBooleanField
      FieldName = 'UsarICMSimples'
    end
    object tFilial2CodRegimeTrib: TIntegerField
      FieldName = 'CodRegimeTrib'
    end
    object tFilial2CodPis: TStringField
      FieldName = 'CodPis'
      Size = 2
    end
    object tFilial2CodCofins: TStringField
      FieldName = 'CodCofins'
      Size = 2
    end
    object tFilial2TipoPis: TStringField
      FieldName = 'TipoPis'
      Size = 2
    end
    object tFilial2TipoCofins: TStringField
      FieldName = 'TipoCofins'
      Size = 2
    end
    object tFilial2PercCofins: TFloatField
      FieldName = 'PercCofins'
    end
    object tFilial2PercPis: TFloatField
      FieldName = 'PercPis'
    end
    object tFilial2CodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tFilial2CodCSTIPI: TStringField
      FieldName = 'CodCSTIPI'
      Size = 2
    end
    object tFilial2DtEstoque: TDateField
      FieldName = 'DtEstoque'
    end
    object tFilial2EmailNfe: TStringField
      FieldName = 'EmailNfe'
      Size = 200
    end
  end
end
