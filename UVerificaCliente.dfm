object fVerificaCliente: TfVerificaCliente
  Left = 32
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico do cliente'
  ClientHeight = 341
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ALed3: TALed
    Left = 425
    Top = 309
    Width = 16
    Height = 16
    TrueColor = clRed
    FalseColor = clRed
  end
  object Label12: TLabel
    Left = 444
    Top = 312
    Width = 48
    Height = 13
    Caption = 'Em Atraso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxDBGrid1: TRxDBGrid
    Left = 1
    Top = 4
    Width = 672
    Height = 289
    DataSource = dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = RxDBGrid1GetCellParams
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ParcCReceber'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtVencCReceber'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Vencimento'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrParcCReceber'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Parcela'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PgtoParcial'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Pagto.'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RestParcela'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Pendente'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtPagParcCReceber'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Pagto.'
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'clAtraso'
        Title.Alignment = taCenter
        Title.Caption = 'Dias Atraso'
        Width = 70
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 583
    Top = 301
    Width = 87
    Height = 32
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object qConsulta: TQuery
    OnCalcFields = qConsultaCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT NumCReceber, ParcCReceber, VlrParcCReceber, DtVencCRecebe' +
        'r, QuitParcCReceber, JurosParcCReceber, DtPagParcCReceber, CodCl' +
        'i, NumNota, Desconto, PgtoParcial, RestParcela, ContaDupl, Selec' +
        'ionado, CodVendedor, Baixada, PercComissao, VlrComissao, PlanoCo' +
        'ntas, Agencia, TitPortador, CodTipoCobranca, Despesas, Abatiment' +
        'os, CodConta, PgCartorio, DiasAtraso, LetraCambio, NroLancExtCom' +
        'issao, JurosPagos, Cancelado, TitProtestado, DtGerado, TipoDoc, ' +
        'VlrDevolucao, ArqGerado, Transferencia, NumTitBanco'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      'WHERE   (Cancelado = FALSE)  '
      '   AND  (RestParcela > 0)  '
      '   AND  (CodCli = :CodCli) '
      'ORDER BY DtVencCReceber')
    Left = 472
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCli'
        ParamType = ptUnknown
      end>
    object qConsultaNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".NumCReceber'
    end
    object qConsultaParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".ParcCReceber'
    end
    object qConsultaVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrParcCReceber'
      DisplayFormat = '###,###,##0.00'
    end
    object qConsultaDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".DtVencCReceber'
    end
    object qConsultaQuitParcCReceber: TBooleanField
      FieldName = 'QuitParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".QuitParcCReceber'
    end
    object qConsultaJurosParcCReceber: TFloatField
      FieldName = 'JurosParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".JurosParcCReceber'
    end
    object qConsultaDtPagParcCReceber: TDateField
      FieldName = 'DtPagParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".DtPagParcCReceber'
    end
    object qConsultaCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbCReceberParc.DB".CodCli'
    end
    object qConsultaNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbCReceberParc.DB".NumNota'
    end
    object qConsultaDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'TABELAS."dbCReceberParc.DB".Desconto'
    end
    object qConsultaPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
      Origin = 'TABELAS."dbCReceberParc.DB".PgtoParcial'
      DisplayFormat = '###,###,##0.00'
    end
    object qConsultaRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCReceberParc.DB".RestParcela'
      DisplayFormat = '###,###,##0.00'
    end
    object qConsultaContaDupl: TSmallintField
      FieldName = 'ContaDupl'
      Origin = 'TABELAS."dbCReceberParc.DB".ContaDupl'
    end
    object qConsultaSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'TABELAS."dbCReceberParc.DB".Selecionado'
    end
    object qConsultaCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbCReceberParc.DB".CodVendedor'
    end
    object qConsultaBaixada: TBooleanField
      FieldName = 'Baixada'
      Origin = 'TABELAS."dbCReceberParc.DB".Baixada'
    end
    object qConsultaPercComissao: TFloatField
      FieldName = 'PercComissao'
      Origin = 'TABELAS."dbCReceberParc.DB".PercComissao'
    end
    object qConsultaVlrComissao: TFloatField
      FieldName = 'VlrComissao'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrComissao'
    end
    object qConsultaPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
      Origin = 'TABELAS."dbCReceberParc.DB".PlanoContas'
    end
    object qConsultaAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'TABELAS."dbCReceberParc.DB".Agencia'
      Size = 6
    end
    object qConsultaTitPortador: TStringField
      FieldName = 'TitPortador'
      Origin = 'TABELAS."dbCReceberParc.DB".TitPortador'
    end
    object qConsultaCodTipoCobranca: TIntegerField
      FieldName = 'CodTipoCobranca'
      Origin = 'TABELAS."dbCReceberParc.DB".CodTipoCobranca'
    end
    object qConsultaDespesas: TFloatField
      FieldName = 'Despesas'
      Origin = 'TABELAS."dbCReceberParc.DB".Despesas'
    end
    object qConsultaAbatimentos: TFloatField
      FieldName = 'Abatimentos'
      Origin = 'TABELAS."dbCReceberParc.DB".Abatimentos'
    end
    object qConsultaCodConta: TIntegerField
      FieldName = 'CodConta'
      Origin = 'TABELAS."dbCReceberParc.DB".CodConta'
    end
    object qConsultaPgCartorio: TBooleanField
      FieldName = 'PgCartorio'
      Origin = 'TABELAS."dbCReceberParc.DB".PgCartorio'
    end
    object qConsultaDiasAtraso: TFloatField
      FieldName = 'DiasAtraso'
      Origin = 'TABELAS."dbCReceberParc.DB".DiasAtraso'
    end
    object qConsultaLetraCambio: TBooleanField
      FieldName = 'LetraCambio'
      Origin = 'TABELAS."dbCReceberParc.DB".LetraCambio'
    end
    object qConsultaNroLancExtComissao: TIntegerField
      FieldName = 'NroLancExtComissao'
      Origin = 'TABELAS."dbCReceberParc.DB".NroLancExtComissao'
    end
    object qConsultaJurosPagos: TFloatField
      FieldName = 'JurosPagos'
      Origin = 'TABELAS."dbCReceberParc.DB".JurosPagos'
    end
    object qConsultaCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'TABELAS."dbCReceberParc.DB".Cancelado'
    end
    object qConsultaTitProtestado: TBooleanField
      FieldName = 'TitProtestado'
      Origin = 'TABELAS."dbCReceberParc.DB".TitProtestado'
    end
    object qConsultaDtGerado: TDateField
      FieldName = 'DtGerado'
      Origin = 'TABELAS."dbCReceberParc.DB".DtGerado'
    end
    object qConsultaTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Origin = 'TABELAS."dbCReceberParc.DB".TipoDoc'
      Size = 2
    end
    object qConsultaVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrDevolucao'
    end
    object qConsultaArqGerado: TBooleanField
      FieldName = 'ArqGerado'
      Origin = 'TABELAS."dbCReceberParc.DB".ArqGerado'
    end
    object qConsultaTransferencia: TBooleanField
      FieldName = 'Transferencia'
      Origin = 'TABELAS."dbCReceberParc.DB".Transferencia'
    end
    object qConsultaNumTitBanco: TStringField
      FieldName = 'NumTitBanco'
      Origin = 'TABELAS."dbCReceberParc.DB".NumTitBanco'
    end
    object qConsultaclAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clAtraso'
      Calculated = True
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 488
    Top = 88
  end
end
