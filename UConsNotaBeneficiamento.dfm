object fConsNotaBeneficiamento: TfConsNotaBeneficiamento
  Left = 2
  Top = 9
  Width = 796
  Height = 543
  BorderIcons = [biSystemMenu]
  Caption = 'Escolhe a Nota de Compra para ser devolvida'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 509
    Align = alClient
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 3
      Top = 14
      Width = 46
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 666
      Top = 362
      Width = 102
      Height = 13
      Caption = 'Notas Encerradas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ALed4: TALed
      Left = 645
      Top = 360
      Width = 16
      Height = 16
      FalseColor = clTeal
    end
    object RxDBGrid1: TRxDBGrid
      Left = 3
      Top = 61
      Width = 781
      Height = 291
      Hint = 'Duplo click para selecionar a nota'
      TabStop = False
      DataSource = dsqNotaEntrada
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 3
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
          FieldName = 'NumNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'Material'
          Width = 248
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Width = 146
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdRestante'
          Title.Alignment = taCenter
          Title.Caption = 'Q.Restante'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdDevolvida'
          Title.Alignment = taCenter
          Title.Caption = 'Q.Devolvida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnit'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotalItens'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'clVlrTotalRestante'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Restante'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEmissaoNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEntrada'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Entrada'
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodForn'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Fornec.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Material'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCor'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Cor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeForn'
          Title.Caption = 'Nome Fornecedor'
          Width = 172
          Visible = True
        end>
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 48
      Top = 10
      Width = 283
      Height = 21
      DropDownCount = 8
      LookupField = 'CodForn'
      LookupDisplay = 'NomeForn'
      LookupSource = DM1.dsFornecedores
      TabOrder = 0
      OnEnter = RxDBLookupCombo2Enter
    end
    object BitBtn1: TBitBtn
      Left = 466
      Top = 20
      Width = 115
      Height = 27
      Caption = 'Filtra as Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 697
      Top = 20
      Width = 88
      Height = 27
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 581
      Top = 20
      Width = 115
      Height = 27
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object RxDBGrid2: TRxDBGrid
      Left = 3
      Top = 354
      Width = 414
      Height = 159
      Color = clInfoBk
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NumNota'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota Fiscal'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Title.Caption = 'Item Nota'
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Enviada'
          Width = 111
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'lkDtEmissao'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Emiss'#227'o'
          Width = 80
          Visible = True
        end>
    end
    object RadioGroup1: TRadioGroup
      Left = 338
      Top = 0
      Width = 105
      Height = 56
      Caption = ' Op'#231#227'o '
      ItemIndex = 0
      Items.Strings = (
        'Pendentes'
        'Encerradas'
        'Ambas')
      TabOrder = 6
    end
  end
  object qNotaEntrada: TQuery
    OnCalcFields = qNotaEntradaCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbnentrada.N' +
        'umNEntr, Dbnentrada.DtEmissaoNEntr, Dbnentrada.VlrTotalNEntr, Db' +
        'nentrada.DtEntrada, Dbnentradaitens.CodMaterial, Dbnentradaitens' +
        '.Qtd, Dbnentradaitens.VlrUnit, Dbnentradaitens.VlrTotalItens, Db' +
        'nentradaitens.CodCor, Dbnentradaitens.Unidade, Dbnentradaitens.Q' +
        'tdRestante, Dbnentradaitens.QtdDevolvida, Dbnentradaitens.Item, ' +
        'Dbnentradaitens.SitTrib'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      'WHERE   (Dbnentrada.CodForn = :CodFornecedor)'
      
        '   AND  ( (Dbnentrada.Devolvida = FALSE)  OR  (Dbnentrada.Devolv' +
        'ida IS NULL) )'
      '   AND  (Dbnentradaitens.QtdRestante > 0)  '
      'ORDER BY Dbnentrada.CodForn, Dbnentrada.NumNEntr'
      ' '
      ' '
      ' '
      ' ')
    Left = 528
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptUnknown
      end>
    object qNotaEntradaCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbNEntrada.DB".CodForn'
    end
    object qNotaEntradaNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qNotaEntradaNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".NumNEntr'
    end
    object qNotaEntradaDtEmissaoNEntr: TDateField
      FieldName = 'DtEmissaoNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".DtEmissaoNEntr'
    end
    object qNotaEntradaVlrTotalNEntr: TFloatField
      FieldName = 'VlrTotalNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".VlrTotalNEntr'
    end
    object qNotaEntradaDtEntrada: TDateField
      FieldName = 'DtEntrada'
      Origin = 'TABELAS."dbNEntrada.DB".DtEntrada'
    end
    object qNotaEntradaCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qNotaEntradaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qNotaEntradaVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qNotaEntradaVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object qNotaEntradaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotaEntradaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotaEntradaQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object qNotaEntradaQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
    end
    object qNotaEntradalkNomeMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeMaterial'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodMaterial'
      Size = 40
      Lookup = True
    end
    object qNotaEntradalkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 15
      Lookup = True
    end
    object qNotaEntradaItem: TSmallintField
      FieldName = 'Item'
    end
    object qNotaEntradaSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object qNotaEntradaclVlrTotalRestante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlrTotalRestante'
      Calculated = True
    end
  end
  object dsqNotaEntrada: TDataSource
    DataSet = qNotaEntrada
    Left = 560
    Top = 288
  end
  object tNotaFiscalNDevolvida: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodFornecedor;NumNotaEntrada'
    MasterFields = 'CodForn;NumNEntr'
    MasterSource = dsqNotaEntrada
    TableName = 'dbNotaFiscalNDevolvida.DB'
    Left = 104
    Top = 456
    object tNotaFiscalNDevolvidaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalNDevolvidaItem: TIntegerField
      FieldName = 'Item'
    end
    object tNotaFiscalNDevolvidaCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object tNotaFiscalNDevolvidaNumNotaEntrada: TIntegerField
      FieldName = 'NumNotaEntrada'
    end
    object tNotaFiscalNDevolvidaItemNotaEntrada: TIntegerField
      FieldName = 'ItemNotaEntrada'
    end
    object tNotaFiscalNDevolvidaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalNDevolvidalkDtEmissao: TDateField
      FieldKind = fkLookup
      FieldName = 'lkDtEmissao'
      LookupDataSet = tNotaFiscal
      LookupKeyFields = 'NumNota'
      LookupResultField = 'DtEmissao'
      KeyFields = 'NumNota'
      Lookup = True
    end
  end
  object dsNotaFiscalNDevolvida: TDataSource
    DataSet = tNotaFiscalNDevolvida
    Left = 128
    Top = 456
  end
  object tNotaFiscal: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbNotaFiscal.DB'
    Left = 224
    Top = 432
    object tNotaFiscalFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object tNotaFiscalCodNatOper: TSmallintField
      FieldName = 'CodNatOper'
    end
    object tNotaFiscalCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object tNotaFiscalCondPgto: TStringField
      FieldName = 'CondPgto'
      Size = 1
    end
    object tNotaFiscalCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tNotaFiscalCodVenda: TSmallintField
      FieldName = 'CodVenda'
    end
    object tNotaFiscalNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object tNotaFiscalBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object tNotaFiscalVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object tNotaFiscalVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object tNotaFiscalVlrTotalNota: TFloatField
      FieldName = 'VlrTotalNota'
    end
    object tNotaFiscalVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object tNotaFiscalPercDesc: TFloatField
      FieldName = 'PercDesc'
    end
    object tNotaFiscalVlrTotalDesc: TFloatField
      FieldName = 'VlrTotalDesc'
    end
    object tNotaFiscalVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object tNotaFiscalVlrSeguro: TFloatField
      FieldName = 'VlrSeguro'
    end
    object tNotaFiscalOutrasDesp: TFloatField
      FieldName = 'OutrasDesp'
    end
    object tNotaFiscalQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object tNotaFiscalEspecie: TStringField
      FieldName = 'Especie'
      Size = 30
    end
    object tNotaFiscalMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object tNotaFiscalNumero: TStringField
      FieldName = 'Numero'
      Size = 30
    end
    object tNotaFiscalPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tNotaFiscalPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tNotaFiscalPlaca: TStringField
      FieldName = 'Placa'
      Size = 8
    end
    object tNotaFiscalUFPlaca: TStringField
      FieldName = 'UFPlaca'
      Size = 2
    end
    object tNotaFiscalEmitDest: TStringField
      FieldName = 'EmitDest'
      Size = 1
    end
    object tNotaFiscalCodTransp: TIntegerField
      FieldName = 'CodTransp'
    end
    object tNotaFiscalObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tNotaFiscalSaidaEntrada: TStringField
      FieldName = 'SaidaEntrada'
      Size = 1
    end
    object tNotaFiscalDuplImp: TBooleanField
      FieldName = 'DuplImp'
    end
    object tNotaFiscalCancelada: TBooleanField
      FieldName = 'Cancelada'
    end
    object tNotaFiscalDtSaidaEnt: TDateField
      FieldName = 'DtSaidaEnt'
    end
    object tNotaFiscalHoraSaida: TTimeField
      FieldName = 'HoraSaida'
    end
    object tNotaFiscalTipoCobr: TStringField
      FieldName = 'TipoCobr'
      Size = 1
    end
    object tNotaFiscalBcoCobr: TIntegerField
      FieldName = 'BcoCobr'
    end
    object tNotaFiscalImpressa: TBooleanField
      FieldName = 'Impressa'
    end
    object tNotaFiscalLocalEntrega: TBooleanField
      FieldName = 'LocalEntrega'
    end
    object tNotaFiscalInss: TBooleanField
      FieldName = 'Inss'
    end
    object tNotaFiscalIrf: TBooleanField
      FieldName = 'Irf'
    end
    object tNotaFiscalVlrInss: TFloatField
      FieldName = 'VlrInss'
    end
    object tNotaFiscalVlrIrf: TFloatField
      FieldName = 'VlrIrf'
    end
    object tNotaFiscalCustoPerc: TFloatField
      FieldName = 'CustoPerc'
    end
    object tNotaFiscalCustoFinanc: TFloatField
      FieldName = 'CustoFinanc'
    end
    object tNotaFiscalPrazoPgto: TIntegerField
      FieldName = 'PrazoPgto'
    end
    object tNotaFiscalEntrada: TFloatField
      FieldName = 'Entrada'
    end
    object tNotaFiscalPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tNotaFiscalDtEntr: TDateField
      FieldName = 'DtEntr'
    end
    object tNotaFiscalIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNotaFiscalPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object tNotaFiscalSituacao: TIntegerField
      FieldName = 'Situacao'
    end
    object tNotaFiscalDescDupl: TFloatField
      FieldName = 'DescDupl'
    end
    object tNotaFiscalNumNotaOrigem: TIntegerField
      FieldName = 'NumNotaOrigem'
    end
    object tNotaFiscalNumNotaDevol: TIntegerField
      FieldName = 'NumNotaDevol'
    end
    object tNotaFiscalNroLancExtComissao: TIntegerField
      FieldName = 'NroLancExtComissao'
    end
    object tNotaFiscalTipoNota: TStringField
      FieldName = 'TipoNota'
      Size = 1
    end
    object tNotaFiscalDescricaoDesc: TStringField
      FieldName = 'DescricaoDesc'
      Size = 70
    end
    object tNotaFiscalSuspensa: TBooleanField
      FieldName = 'Suspensa'
    end
    object tNotaFiscalExtComDif: TIntegerField
      FieldName = 'ExtComDif'
    end
    object tNotaFiscalDescTransf: TMemoField
      FieldName = 'DescTransf'
      BlobType = ftMemo
      Size = 1
    end
    object tNotaFiscalExportacao: TBooleanField
      FieldName = 'Exportacao'
    end
    object tNotaFiscalObsAux: TMemoField
      FieldName = 'ObsAux'
      BlobType = ftMemo
      Size = 1
    end
    object tNotaFiscalPercIssqn: TFloatField
      FieldName = 'PercIssqn'
    end
    object tNotaFiscalVlrMObra: TFloatField
      FieldName = 'VlrMObra'
    end
    object tNotaFiscalVlrIssqn: TFloatField
      FieldName = 'VlrIssqn'
    end
    object tNotaFiscalNumNotaDevFor: TIntegerField
      FieldName = 'NumNotaDevFor'
    end
    object tNotaFiscalCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tNotaFiscalPercTransf: TFloatField
      FieldName = 'PercTransf'
    end
    object tNotaFiscalVlrTotalDupl: TFloatField
      FieldName = 'VlrTotalDupl'
    end
    object tNotaFiscalVlrTransf: TFloatField
      FieldName = 'VlrTransf'
    end
    object tNotaFiscalNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalNFeRecibo: TStringField
      FieldName = 'NFeRecibo'
    end
    object tNotaFiscalNFeProtocolo: TStringField
      FieldName = 'NFeProtocolo'
      Size = 45
    end
    object tNotaFiscalNFeChaveAcesso: TStringField
      FieldName = 'NFeChaveAcesso'
      Size = 44
    end
    object tNotaFiscalNFeProtocoloCancelada: TStringField
      FieldName = 'NFeProtocoloCancelada'
      Size = 45
    end
    object tNotaFiscalSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object tNotaFiscalTipoEnvioNF: TStringField
      FieldName = 'TipoEnvioNF'
      Size = 6
    end
    object tNotaFiscalNFeCodBarraCont: TStringField
      FieldName = 'NFeCodBarraCont'
      Size = 44
    end
    object tNotaFiscalVlrPis: TFloatField
      FieldName = 'VlrPis'
    end
    object tNotaFiscalVlrCofins: TFloatField
      FieldName = 'VlrCofins'
    end
    object tNotaFiscalTipoNotaNFeRef: TStringField
      FieldName = 'TipoNotaNFeRef'
      Size = 1
    end
    object tNotaFiscalVlrTaxaCiscomex: TFloatField
      FieldName = 'VlrTaxaCiscomex'
    end
    object tNotaFiscalVlrOutros: TFloatField
      FieldName = 'VlrOutros'
    end
    object tNotaFiscalVlrImpImportacao: TFloatField
      FieldName = 'VlrImpImportacao'
    end
    object tNotaFiscalICMSVlrSubst: TFloatField
      FieldName = 'ICMSVlrSubst'
    end
    object tNotaFiscalICMSBaseSubst: TFloatField
      FieldName = 'ICMSBaseSubst'
    end
    object tNotaFiscalMotivoCanc: TStringField
      FieldName = 'MotivoCanc'
      Size = 100
    end
    object tNotaFiscalUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tNotaFiscalDtCad: TDateField
      FieldName = 'DtCad'
    end
    object tNotaFiscalHrCad: TTimeField
      FieldName = 'HrCad'
    end
    object tNotaFiscalPercIcmsSimples: TFloatField
      FieldName = 'PercIcmsSimples'
    end
    object tNotaFiscalVlrIcmsSimples: TFloatField
      FieldName = 'VlrIcmsSimples'
    end
    object tNotaFiscalCodVendedor2: TIntegerField
      FieldName = 'CodVendedor2'
    end
    object tNotaFiscalPercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
    object tNotaFiscalVersaoNFe: TStringField
      FieldName = 'VersaoNFe'
      Size = 10
    end
    object tNotaFiscalFinalidade: TStringField
      FieldName = 'Finalidade'
      Size = 1
    end
    object tNotaFiscalDtContingencia: TDateField
      FieldName = 'DtContingencia'
    end
    object tNotaFiscalHrContingencia: TTimeField
      FieldName = 'HrContingencia'
    end
    object tNotaFiscalMotivoContingencia: TStringField
      FieldName = 'MotivoContingencia'
      Size = 250
    end
    object tNotaFiscalIdentVersaoEmissao: TStringField
      FieldName = 'IdentVersaoEmissao'
    end
    object tNotaFiscalCodRegimeTrib: TIntegerField
      FieldName = 'CodRegimeTrib'
    end
    object tNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
    end
    object tNotaFiscalIdentifVagaoBalsa: TStringField
      FieldName = 'IdentifVagaoBalsa'
    end
    object tNotaFiscalTipoIdentifVagaoBalsa: TStringField
      FieldName = 'TipoIdentifVagaoBalsa'
      Size = 1
    end
    object tNotaFiscalUFEmbExp: TStringField
      FieldName = 'UFEmbExp'
      Size = 2
    end
    object tNotaFiscalLocalEmbExp: TStringField
      FieldName = 'LocalEmbExp'
      Size = 60
    end
    object tNotaFiscalVlrDuplicataOutros: TFloatField
      FieldName = 'VlrDuplicataOutros'
    end
    object tNotaFiscalPisCofinsSomarOutrasDesp: TBooleanField
      FieldName = 'PisCofinsSomarOutrasDesp'
    end
    object tNotaFiscalTipoDesconto: TStringField
      FieldName = 'TipoDesconto'
      Size = 1
    end
    object tNotaFiscalGeraDupl_PisCofins: TBooleanField
      FieldName = 'GeraDupl_PisCofins'
    end
    object tNotaFiscalGeraDupl_OutrosValores: TBooleanField
      FieldName = 'GeraDupl_OutrosValores'
    end
    object tNotaFiscalGeraDupl_Frete: TBooleanField
      FieldName = 'GeraDupl_Frete'
    end
    object tNotaFiscalGeraDupl_Seguro: TBooleanField
      FieldName = 'GeraDupl_Seguro'
    end
    object tNotaFiscalAliqICMS_PisCofins: TFloatField
      FieldName = 'AliqICMS_PisCofins'
    end
    object tNotaFiscalAliqICMS_OutrosValores: TFloatField
      FieldName = 'AliqICMS_OutrosValores'
    end
    object tNotaFiscalAliqICMS_Frete: TFloatField
      FieldName = 'AliqICMS_Frete'
    end
    object tNotaFiscalPercDescontoOrig: TFloatField
      FieldName = 'PercDescontoOrig'
    end
    object tNotaFiscalBaseIcmsSimples: TFloatField
      FieldName = 'BaseIcmsSimples'
    end
    object tNotaFiscalBaseIcmsOutros: TFloatField
      FieldName = 'BaseIcmsOutros'
    end
    object tNotaFiscalVlrIcmsOutros: TFloatField
      FieldName = 'VlrIcmsOutros'
    end
    object tNotaFiscalRefTipo: TStringField
      FieldName = 'RefTipo'
      Size = 3
    end
  end
end
