unit UDM1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBTables, DBIProcs, RLFilters, RLDraftFilter, RLRichFilter, RLHTMLFilter, MidasLib,
  SendMailOptions, StdConvs, DateUtils, LogProvider, RLXLSFilter, RLPreviewForm, RLPDFFilter, DBGrids, SMDBGrid, Grids, LogTypes, rsDataSetError, DBFilter;

type
  TDM1 = class(TDataModule)
    Tabelas: TDatabase;
    tGrupo: TTable;
    dsGrupo: TDataSource;
    tGrupoCodigo: TIntegerField;
    tGrupoNome: TStringField;
    tUsuario: TTable;
    dsUsuario: TDataSource;
    tUsuarioAlt: TTable;
    dsUsuarioAlt: TDataSource;
    tUsuarioExc: TTable;
    dsUsuarioExc: TDataSource;
    tUsuarioIns: TTable;
    dsUsuarioIns: TDataSource;
    tFornecedores: TTable;
    dsFornecedores: TDataSource;
    tFornecedoresCodForn: TIntegerField;
    tFornecedoresNomeForn: TStringField;
    tFornecedoresEndForn: TStringField;
    tFornecedoresBairroForn: TStringField;
    tFornecedoresCidadeForn: TStringField;
    tFornecedoresCEPForn: TStringField;
    tFornecedoresEstadoForn: TStringField;
    tFornecedoresTel1Forn: TStringField;
    tFornecedoresTel2Forn: TStringField;
    tFornecedoresFaxForn: TStringField;
    tFornecedoresCGC: TStringField;
    tFornecedoresInsc: TStringField;
    tFornecedoresContatoForn: TStringField;
    tFornecedoresDataCadastroForn: TDateField;
    tFornecedoresObsForn: TMemoField;
    tFornecedoresRamal: TStringField;                                                                                       
    tFornecedoresEmail: TStringField;
    tFornecedoresHomePage: TStringField;
    tGrade: TTable;
    dsGrade: TDataSource;
    tGradeCodigo: TIntegerField;
    tGradeNome: TStringField;
    tGradeItem: TTable;
    dsGradeItem: TDataSource;
    tGradeItemCodGrade: TIntegerField;
    tGradeItemPosicao: TIntegerField;
    tGradeItemTamanho: TStringField;
    tCor: TTable;
    dsCor: TDataSource;
    tCorCodigo: TIntegerField;
    tCondPgto: TTable;
    dsCondPgto: TDataSource;
    tCondPgtoCodigo: TIntegerField;
    tCondPgtoNome: TStringField;
    tCondPgtoItem: TTable;
    dsCondPgtoItem: TDataSource;
    tCondPgtoItemCodigo: TIntegerField;
    tCondPgtoItemItem: TIntegerField;
    tCondPgtoItemQtdDias: TSmallintField;
    tTransp: TTable;
    dsTransp: TDataSource;
    tTranspCodigo: TIntegerField;
    tTranspNome: TStringField;
    tTranspEndereco: TStringField;
    tTranspBairro: TStringField;
    tTranspCidade: TStringField;
    tTranspCep: TStringField;
    tTranspUF: TStringField;
    tTranspFone: TStringField;
    tTranspFax: TStringField;
    tTranspCNPJ: TStringField;
    tTranspInscricao: TStringField;
    tTranspContato: TStringField;
    tTranspObs: TMemoField;
    tOrdemCompra: TTable;
    dsOrdemCompra: TDataSource;
    tOrdemCompraCodFornecedor: TIntegerField;
    tOrdemCompraCodCondPgto: TIntegerField;
    tOrdemCompraCodTransp: TIntegerField;
    tOrdemCompraDtEmissao: TDateField;
    tOrdemCompraObs: TMemoField;
    tOrdemCompraVlrTotal: TFloatField;
    tOrdemCompraItem: TTable;
    dsOrdemCompraItem: TDataSource;
    tOrdemCompraCodigo: TIntegerField;
    tOrdemCompraItemCodigo: TIntegerField;
    tOrdemCompraItemItem: TIntegerField;
    tOrdemCompraItemCodMaterial: TIntegerField;
    tOrdemCompraItemQtd: TFloatField;
    tOrdemCompraItemVlrUnitario: TFloatField;
    tOrdemCompraItemAliqIPI: TFloatField;
    tOrdemCompraItemVlrIPI: TFloatField;
    tOrdemCompraItemDtEntrega: TDateField;
    tOrdemCompraItemVlrTotal: TFloatField;
    tOrdemCompraItemCodCor: TIntegerField;
    tOrdemCompraItemGrade: TTable;
    dsOrdemCompraItemGrade: TDataSource;
    tOrdemCompraItemGradeCodigo: TIntegerField;
    tOrdemCompraItemGradeItem: TIntegerField;
    tOrdemCompraItemGradeCodGrade: TIntegerField;
    tOrdemCompraItemGradePosicao: TIntegerField;
    tOrdemCompraItemGradeQtd: TFloatField;
    tOrdemCompraItemGradeVlrUnitario: TFloatField;
    tOrdemCompraItemGradeVlrTotal: TFloatField;
    tOrdemCompraItemGradelkTamanho: TStringField;
    tOrdemCompraItemlkNomeMaterial: TStringField;
    tFornecedoresCodCondPgto: TIntegerField;
    tCondPgtoPrazoVista: TStringField;
    tEmpresa: TTable;
    dsEmpresa: TDataSource;
    tEmpresaEmpresa: TStringField;
    tEmpresaEndereco: TStringField;
    tEmpresaBairro: TStringField;
    tEmpresaCep: TStringField;
    tEmpresaCidade: TStringField;
    tEmpresaEstado: TStringField;
    tEmpresaTel: TStringField;
    tEmpresaTel2: TStringField;
    tEmpresaFax: TStringField;
    tEmpresaCgc: TStringField;
    tEmpresaInscr: TStringField;
    tEmpresaCodigo: TSmallintField;
    tEmpresaAutorizacao: TStringField;
    tEmpresaData: TDateField;
    tOrdemCompraItemlkLancaGrade: TBooleanField;
    tOrdemCompraItemlkPrecoGrade: TBooleanField;
    tClasFiscal: TTable;
    dsClasFiscal: TDataSource;
    tClasFiscalClasFiscal: TStringField;
    tSitTributaria: TTable;
    dsSitTributaria: TDataSource;
    tSitTributariaCodigo: TIntegerField;
    tSitTributariaSitTributaria: TFloatField;
    tProduto: TTable;
    dsProduto: TDataSource;
    tProdutoCodigo: TIntegerField;
    tProdutoCodGrupo: TIntegerField;
    tProdutoCodSubGrupo: TIntegerField;
    tProdutoNome: TStringField;
    tProdutoUnidade: TStringField;
    tProdutoCodSitTrib: TIntegerField;
    tProdutoQParTalao: TFloatField;
    tProdutoPesoLiquido: TFloatField;
    tProdutoPesoBruto: TFloatField;
    tProdutoCodClasFiscal: TStringField;
    tProdutoCodGrade: TIntegerField;
    tProdutoCor: TTable;
    dsProdutoCor: TDataSource;
    tProdutoCorCodProduto: TIntegerField;
    tProdutoCorCodCor: TIntegerField;
    tProdutoLancaGrade: TBooleanField;
    tProdutoInativo: TBooleanField;
    tProdutoMat: TTable;
    dsProdutoMat: TDataSource;
    tProdutoMatCodProduto: TIntegerField;
    tProdutoMatItem: TIntegerField;
    tProdutoMatCodMaterial: TIntegerField;
    tProdutoMatCodGrade: TIntegerField;
    tProdutoMatCodCor: TIntegerField;
    tProdutoMatQtd: TFloatField;
    tProdutoMatVlrUnitario: TFloatField;
    tProdutoMatVlrTotal: TFloatField;
    tMaterialGradeNum: TTable;
    dsMaterialGradeNum: TDataSource;
    tMaterialGradeNumCodMaterial: TIntegerField;
    tMaterialGradeNumCodGrade: TIntegerField;
    tMaterialGradeNumPosicao: TIntegerField;
    tMaterialGradeNumTamanho: TStringField;
    tMaterialGradeNumlkNomeGrade: TStringField;
    tProdutoMatlkNomeMaterial: TStringField;
    tVendedor: TTable;
    dsVendedor: TDataSource;
    dsVendedor2: TDataSource;
    tVendedor2Codigo: TIntegerField;
    tVendedor2Nome: TStringField;
    tVendedor2PercComissao: TFloatField;
    tVendedorCodigo: TIntegerField;
    tVendedorNome: TStringField;
    tVendedorPercComissao: TFloatField;
    tNatOperacao: TTable;
    dsNatOperacao: TDataSource;
    tNatOperacaoCodigo: TIntegerField;
    tNatOperacaoCodNatOper: TStringField;
    tNatOperacaoDescricao: TStringField;
    tNatOperacaoEntradaSaida: TBooleanField;
    tNatOperacao2: TTable;
    dsNatOperacao2: TDataSource;
    tNatOperacao2Codigo: TIntegerField;
    tNatOperacao2CodNatOper: TStringField;
    tNatOperacao2Descricao: TStringField;
    tNatOperacao2EntradaSaida: TBooleanField;
    tPedido: TTable;
    dsPedido: TDataSource;
    tPedidoDesconto: TTable;
    dsPedidoDesconto: TDataSource;
    tPedidoGrade: TTable;
    dsPedidoGrade: TDataSource;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
    tPedidoMaterial: TTable;
    dsPedidoMaterial: TDataSource;
    tPedidoPedido: TIntegerField;
    tPedidoDtEmissao: TDateField;
    tPedidoCodCliente: TIntegerField;
    tPedidoCodTransp: TIntegerField;
    tPedidoCodRedespacho: TIntegerField;
    tPedidoCodCondPgto: TIntegerField;
    tPedidoTipoFrete: TStringField;
    tPedidoCodVendedor: TIntegerField;
    tPedidoPercComissao: TFloatField;
    tPedidoDtIniEmbarque: TDateField;
    tPedidoDtFinEmbarque: TDateField;
    tPedidoCodNatOper: TIntegerField;
    tPedidoSituacao: TIntegerField;
    tPedidoNumLote: TIntegerField;
    tPedidoDescontoPedido: TIntegerField;
    tPedidoDescontoItem: TIntegerField;
    tPedidoDescontoPercDesconto: TFloatField;
    tPedidoDescontoVlrDesconto: TFloatField;
    tPedidoGradePedido: TIntegerField;
    tPedidoGradeItemPed: TIntegerField;
    tPedidoGradeCodGrade: TIntegerField;
    tPedidoGradePosicao: TIntegerField;
    tPedidoGradeQtd: TFloatField;
    tPedidoItemPedido: TIntegerField;
    tPedidoItemItem: TIntegerField;
    tPedidoItemCodProduto: TIntegerField;
    tPedidoItemCodCor: TIntegerField;
    tPedidoItemCodGrade: TIntegerField;
    tPedidoItemQtdPares: TFloatField;
    tPedidoItemPreco: TFloatField;
    tPedidoMaterialPedido: TIntegerField;
    tPedidoMaterialItemPed: TIntegerField;
    tPedidoMaterialOrdem: TIntegerField;
    tPedidoMaterialCodCor: TIntegerField;
    tPedidoMaterialCodMaterial: TIntegerField;
    tPedidoMaterialConsumoPr: TFloatField;
    tCliente: TTable;
    dsCliente: TDataSource;
    tPedidoQtdPares: TFloatField;
    tPedidoVlrTotal: TFloatField;
    tPedidoItemVlrTotal: TFloatField;
    tClienteCodigo: TIntegerField;
    tClienteNome: TStringField;
    tClienteEndereco: TStringField;
    tClienteBairro: TStringField;
    tClienteCidade: TStringField;
    tClienteUf: TStringField;
    tClienteTelefone: TStringField;
    tClienteTelefone2: TStringField;
    tClienteFax: TStringField;
    tClientePessoa: TStringField;
    tClienteCgcCpf: TStringField;
    tClienteInscrEst: TStringField;
    tClienteContato: TStringField;
    tPedidoGradeVlrUnitario: TFloatField;
    tPedidoGradeVlrTotal: TFloatField;
    tPedidoMateriallkNomeMaterial: TStringField;
    tPedidoVlrMercadoria: TFloatField;
    tPedidoVlrDesconto: TFloatField;
    tPedidolkNomeVendedor: TStringField;
    tPedidolkNomeCliente: TStringField;
    tClienteObs: TMemoField;
    tClienteAprovCredito: TStringField;
    tClienteTipoAprov: TStringField;
    tSetor: TTable;
    dsSetor: TDataSource;
    tSetorCodigo: TIntegerField;
    tSetorNome: TStringField;
    tPedidoMateriallkUnidade: TStringField;
    tPedidoMateriallkCodGrade: TIntegerField;
    tSetorImpTalao: TBooleanField;
    tCorNome: TStringField;
    tOrdemCompraItemlkNomeCor: TStringField;
    tProdutoCorlkNomeCor: TStringField;
    tProdutoMatlkNomeCor: TStringField;
    tPedidoItemlkCor: TStringField;
    tPedidoMateriallkNomeCor: TStringField;
    tPedidolkEndereco: TStringField;
    tPedidolkBairro: TStringField;
    tPedidolkTransp: TStringField;
    tPedidolkTelefone: TStringField;
    tPedidolkFax: TStringField;
    tPedidolkUf: TStringField;
    tPedidolkCgcCpf: TStringField;
    tPedidolkInscrEst: TStringField;
    tPedidolkCondPgto: TStringField;
    tPedidoMateriallkLancaGrade: TBooleanField;
    tPedidoGerarLote: TStringField;
    tPedidoCancelado: TBooleanField;
    tPedidoSuspenso: TBooleanField;
    tPedidoImpresso: TBooleanField;
    tPedido2: TTable;
    dsPedido2: TDataSource;
    tPedido2Pedido: TIntegerField;
    tPedido2DtEmissao: TDateField;
    tPedido2CodCliente: TIntegerField;
    tPedido2CodTransp: TIntegerField;
    tPedido2CodRedespacho: TIntegerField;
    tPedido2CodCondPgto: TIntegerField;
    tPedido2TipoFrete: TStringField;
    tPedido2CodVendedor: TIntegerField;
    tPedido2PercComissao: TFloatField;
    tPedido2DtIniEmbarque: TDateField;
    tPedido2DtFinEmbarque: TDateField;
    tPedido2CodNatOper: TIntegerField;
    tPedido2Situacao: TIntegerField;
    tPedido2NumLote: TIntegerField;
    tPedido2QtdPares: TFloatField;
    tPedido2VlrTotal: TFloatField;
    tPedido2VlrMercadoria: TFloatField;
    tPedido2VlrDesconto: TFloatField;
    tPedido2GerarLote: TStringField;
    tPedido2Cancelado: TBooleanField;
    tPedido2Suspenso: TBooleanField;
    tPedido2Impresso: TBooleanField;
    tPedidoItemCancelado: TBooleanField;
    tTipoCobranca: TTable;
    tHistorico: TTable;
    dsTipoCobranca: TDataSource;
    dsHistorico: TDataSource;
    tTipoCobrancaCodigo: TIntegerField;
    tTipoCobrancaNome: TStringField;
    tHistoricoCodigo: TIntegerField;
    tPedidoPesoBruto: TFloatField;
    tPedidoPesoLiquido: TFloatField;
    tPedidoItemlkPesoBruto: TFloatField;
    tPedidoItemlkPesoLiquido: TFloatField;
    tNotaFiscal: TTable;
    dsNotaFiscal: TDataSource;
    tNotaFiscalNumNota: TIntegerField;
    tNotaFiscalDtEmissao: TDateField;
    tNotaFiscalCodNatOper: TSmallintField;
    tNotaFiscalCodCli: TIntegerField;
    tNotaFiscalCondPgto: TStringField;
    tNotaFiscalCodVendedor: TIntegerField;
    tNotaFiscalCodVenda: TSmallintField;
    tNotaFiscalBaseIcms: TFloatField;
    tNotaFiscalVlrIcms: TFloatField;
    tNotaFiscalVlrIpi: TFloatField;
    tNotaFiscalVlrTotalNota: TFloatField;
    tNotaFiscalVlrTotalItens: TFloatField;
    tNotaFiscalPercDesc: TFloatField;
    tNotaFiscalVlrTotalDesc: TFloatField;
    tNotaFiscalVlrFrete: TFloatField;
    tNotaFiscalVlrSeguro: TFloatField;
    tNotaFiscalOutrasDesp: TFloatField;
    tNotaFiscalQtd: TIntegerField;
    tNotaFiscalEspecie: TStringField;
    tNotaFiscalMarca: TStringField;
    tNotaFiscalNumero: TStringField;
    tNotaFiscalPesoBruto: TFloatField;
    tNotaFiscalPesoLiquido: TFloatField;
    tNotaFiscalPlaca: TStringField;
    tNotaFiscalUFPlaca: TStringField;
    tNotaFiscalEmitDest: TStringField;
    tNotaFiscalCodTransp: TIntegerField;
    tNotaFiscalObs: TMemoField;
    tNotaFiscalSaidaEntrada: TStringField;
    tNotaFiscalDuplImp: TBooleanField;
    tNotaFiscalCancelada: TBooleanField;
    tNotaFiscalDtSaidaEnt: TDateField;
    tNotaFiscalHoraSaida: TTimeField;
    tNotaFiscalTipoCobr: TStringField;
    tNotaFiscalBcoCobr: TIntegerField;
    tNotaFiscalImpressa: TBooleanField;
    tNotaFiscalLocalEntrega: TBooleanField;
    tNotaFiscalInss: TBooleanField;
    tNotaFiscalIrf: TBooleanField;
    tNotaFiscalVlrInss: TFloatField;
    tNotaFiscalVlrIrf: TFloatField;
    tNotaFiscalCustoPerc: TFloatField;
    tNotaFiscalCustoFinanc: TFloatField;
    tNotaFiscalEntrada: TFloatField;
    tNotaFiscalPercComissao: TFloatField;
    tNotaFiscalDtEntr: TDateField;
    tNotaFiscalIcmsIpi: TBooleanField;
    tNotaFiscalPlanoContas: TIntegerField;
    tCReceberParc: TTable;
    dsCReceberParc: TDataSource;
    tCReceberParcNumCReceber: TIntegerField;
    tCReceberParcParcCReceber: TIntegerField;
    tCReceberParcVlrParcCReceber: TFloatField;
    tCReceberParcDtVencCReceber: TDateField;
    tCReceberParcQuitParcCReceber: TBooleanField;
    tCReceberParcJurosParcCReceber: TFloatField;
    tCReceberParcDtPagParcCReceber: TDateField;
    tCReceberParcCodCli: TIntegerField;
    tCReceberParcNumNota: TIntegerField;
    tCReceberParcDesconto: TFloatField;
    tCReceberParcPgtoParcial: TFloatField;
    tCReceberParcRestParcela: TFloatField;
    tCReceberParcContaDupl: TSmallintField;
    tCReceberParcSelecionado: TBooleanField;
    tCReceberParcCodVendedor: TIntegerField;
    tCReceberParcBaixada: TBooleanField;
    tCReceberParcPercComissao: TFloatField;
    tCReceberParcVlrComissao: TFloatField;
    tCReceberParcPlanoContas: TIntegerField;
    tIndexador: TTable;
    dsIndexador: TDataSource;
    tIndexadorData: TDateField;
    tIndexadorTaxa: TFloatField;
    tUF: TTable;
    dsUF: TDataSource;
    tUFSigla: TStringField;
    tUFPercentual: TFloatField;
    tNotaFiscalItens: TTable;
    dsNotaFiscalItens: TDataSource;
    tNotaFiscalItensNumNota: TIntegerField;
    tNotaFiscalItensItem: TSmallintField;
    tNotaFiscalItensCodProduto: TIntegerField;
    tNotaFiscalItensQtd: TFloatField;
    tNotaFiscalItensIcms: TFloatField;
    tNotaFiscalItensIpi: TFloatField;
    tNotaFiscalItensSitTrib: TSmallintField;
    tNotaFiscalItensVlrUnit: TFloatField;
    tNotaFiscalItensVlrTotal: TFloatField;
    tNotaFiscalItensDesconto: TFloatField;
    tNotaFiscalItensVlrDesconto: TFloatField;
    tNotaFiscalItensBaseIcms: TFloatField;
    tNotaFiscalItensVlrIcms: TFloatField;
    tNotaFiscalItensVlrIpi: TFloatField;
    tNotaFiscalItensNatOper: TSmallintField;
    tNotaFiscalItensIcmsIpi: TBooleanField;
    tNotaFiscalParc: TTable;
    dsNotaFiscalParc: TDataSource;
    tNotaFiscalParcParcela: TSmallintField;
    tNotaFiscalParcDtVenc: TDateField;
    tNotaFiscalParcVlrVenc: TFloatField;
    tParametros: TTable;
    dsParametros: TDataSource;
    tContas: TTable;
    dsContas: TDataSource;
    tContasCodConta: TIntegerField;
    tContasNomeConta: TStringField;
    tContasSaldoConta: TFloatField;
    tContasTipoConta: TStringField;
    tMovimentos: TTable;
    dsMovimentos: TDataSource;
    tMovimentosCodConta: TIntegerField;
    tMovimentosNumMovimento: TAutoIncField;
    tMovimentosNumCReceber: TIntegerField;
    tMovimentosNumCPagar: TIntegerField;
    tMovimentosNumPedVenda: TIntegerField;
    tMovimentosDtMovimento: TDateField;
    tMovimentosVlrMovDebito: TFloatField;
    tMovimentosVlrMovCredito: TFloatField;
    tMovimentosHistorico: TStringField;
    tMovimentosNumChequePag: TIntegerField;
    tMovimentosPlanoContas: TIntegerField;
    tMovimentosNumNota: TIntegerField;
    tMovimentosCodCli: TIntegerField;
    tMovimentosCodForn: TIntegerField;
    tMovimentosNumNotaEnt: TIntegerField;
    tMovimentosSaldoCliente: TFloatField;
    tMovimentosSaldoFornecedor: TFloatField;
    tMovimentosSaldoPlanoContas: TFloatField;
    tMovimentosSaldoConta: TFloatField;
    tCReceber: TTable;
    dsCReceber: TDataSource;
    tCReceberNumCReceber: TIntegerField;
    tCReceberNumNota: TIntegerField;
    tCReceberQuitado: TBooleanField;
    tCReceberCodCli: TIntegerField;
    tCReceberTipoDoc: TStringField;
    tCReceberDtGerado: TDateField;
    tCReceberHistorico: TStringField;
    tPlanoContas: TTable;
    dsPlanoContas: TDataSource;
    tPlanoContasCodigo: TIntegerField;
    tPlanoContasDescricao: TStringField;
    tCPagar: TTable;
    dsCPagar: TDataSource;
    tCPagarParc: TTable;
    dsCPagarParc: TDataSource;
    tCPagarNumCPagar: TIntegerField;
    tCPagarNumNotaEnt: TIntegerField;
    tCPagarCodForn: TIntegerField;
    tCPagarQuitado: TBooleanField;
    tCPagarTipoDoc: TStringField;
    tCPagarDtGerado: TDateField;
    tCPagarHistorico: TStringField;
    tCondPgtoCusto: TFloatField;
    tCondPgtoEntrada: TBooleanField;
    tPedido2PesoBruto: TFloatField;
    tPedido2PesoLiquido: TFloatField;
    tPedido2Selecionado: TBooleanField;
    tPedidoSelecionado: TBooleanField;
    tPedido2Copiado: TBooleanField;
    tPedidoCopiado: TBooleanField;
    tNotaFiscallkUf: TStringField;
    tNotaFiscallkNomeCli: TStringField;
    tNotaFiscallkDescNatOper: TStringField;
    tNotaFiscallkCgcCli: TStringField;
    tNotaFiscallkEndCli: TStringField;
    tNotaFiscallkBairroCli: TStringField;
    tNotaFiscallkTelCli: TStringField;
    tNotaFiscallkInscCli: TStringField;
    tNotaFiscallkNomeTransp: TStringField;
    tNotaFiscallkCgcTransp: TStringField;
    tNotaFiscallkEndTransp: TStringField;
    tNotaFiscallkInscTransp: TStringField;
    tCPagarlkNomeForn: TStringField;
    tCReceberlkNomeCli: TStringField;
    tClienteEndEntrega: TStringField;
    tClienteBairroEntrega: TStringField;
    tClienteCidEntrega: TStringField;
    tClienteUfEntrega: TStringField;
    tClienteCgcCpfEntrega: TStringField;
    tClienteInscEntrega: TStringField;
    tNotaFiscallkEndEntrega: TStringField;
    tNotaFiscallkBairroEntrega: TStringField;
    tNotaFiscallkUfEntrega: TStringField;
    tNEntradaParc: TTable;
    dsNEntradaParc: TDataSource;
    tNEntradaParcCodForn: TIntegerField;
    tNEntradaParcNumNEntr: TIntegerField;
    tNEntradaParcParcela: TSmallintField;
    tNEntradaParcDtVenc: TDateField;
    tNEntradaParcVlrVenc: TFloatField;
    tNEntradaParcBanco: TStringField;
    tNEntradaParcCheque: TStringField;
    tNEntrada: TTable;
    dsNEntrada: TDataSource;
    tNEntradaNumNEntr: TIntegerField;
    tNEntradaCodForn: TIntegerField;
    tNEntradaSerie: TStringField;
    tNEntradaNumOC: TIntegerField;
    tNEntradaCondPgto: TStringField;
    tNEntradaDtEmissaoNEntr: TDateField;
    tNEntradaDtEntrada: TDateField;
    tNEntradaVlrTotalNEntr: TFloatField;
    tNEntradaBaseIcms: TFloatField;
    tNEntradaVlrIcms: TFloatField;
    tNEntradaVlrIpi: TFloatField;
    tNEntradaCodNatOper: TSmallintField;
    tNEntradaIcmsIpi: TBooleanField;
    tNEntradaPlanoContas: TIntegerField;
    tNEntradaItensMobra: TTable;
    dsNEntradaItensMobra: TDataSource;
    tNEntradaItensMobraCodForn: TIntegerField;
    tNEntradaItensMobraNumNEntr: TIntegerField;
    tNEntradaItensMobraItem: TSmallintField;
    tNEntradaItensMobraCodigo: TSmallintField;
    tNEntradaItensMobraDescricao: TStringField;
    tNEntradaItensMobraQtd: TFloatField;
    tNEntradaItensMobraAliquota: TFloatField;
    tNEntradaItensMobraVlrUnit: TFloatField;
    tNEntradaItensMobraVlrTotal: TFloatField;
    tNEntradaItensMobraVlrIssqn: TFloatField;
    tNEntradaItensMobraInss: TFloatField;
    tNEntradaItensMobraIrf: TFloatField;
    tNEntradaItens: TTable;
    dsNEntradaItens: TDataSource;
    tNEntradaItensCodForn: TIntegerField;
    tNEntradaItensNumNEntr: TIntegerField;
    tNEntradaItensItem: TSmallintField;
    tNEntradaItensQtd: TFloatField;
    tNEntradaItensVlrUnit: TFloatField;
    tNEntradaItensVlrTotalItens: TFloatField;
    tNEntradaItensIcms: TFloatField;
    tNEntradaItensIpi: TFloatField;
    tNEntradaItensDesc: TFloatField;
    tNEntradaItensVlrDesc: TFloatField;
    tNEntradaItensVlrIpi: TFloatField;
    tNEntradaItensVlrIcms: TFloatField;
    tNEntradaItensBaseIcms: TFloatField;
    tNEntradaItensSitTrib: TSmallintField;
    tNEntradaItensIcmsIpi: TBooleanField;
    tNEntradalkNomeForn: TStringField;
    tNEntradalkUf: TStringField;
    tProdutoAliqIcms: TFloatField;
    tProdutoAliqIPI: TFloatField;
    tNotaFiscalItensCodCor: TIntegerField;
    tNotaFiscalItenslkNomeCor: TStringField;
    tNotaFiscalPrazoPgto: TIntegerField;
    tPedidoItemQtdParesFat: TFloatField;
    tPedidoItemQtdParesRest: TFloatField;
    tPedidoItemCopiado: TBooleanField;
    tPedidoItemSelecionado: TBooleanField;
    tNotaFiscalItensNumPedido: TIntegerField;
    tPedidoItemQtdParesCanc: TFloatField;
    tNotaFiscallkPessoa: TStringField;
    tCReceberParcHist: TTable;
    dsCReceberParcHist: TDataSource;
    tCReceberParcHistNumCReceber: TIntegerField;
    tCReceberParcHistParcCReceber: TIntegerField;
    tCReceberParcHistItem: TIntegerField;
    tCReceberParcHistCodHistorico: TIntegerField;
    tCReceberParcHistDtHistorico: TDateField;
    tFornecedoreslkCondPgto: TStringField;
    tPedidolkRedespacho: TStringField;
    tClienteEndPgto: TStringField;
    tClienteBairroPgto: TStringField;
    tClienteCidPgto: TStringField;
    tClienteUfPgto: TStringField;
    tClienteFantasia: TStringField;
    tClienteDtCadastro: TDateField;
    tNotaFiscallkEndPgto: TStringField;
    tNotaFiscallkBairroPgto: TStringField;
    tNotaFiscallkUfPgto: TStringField;
    tNotaFiscalSituacao: TIntegerField;
    tProdutoMatCodCorProd: TIntegerField;
    tImpressora: TTable;
    tImpressoraCodigo: TIntegerField;
    tImpressoraNome: TStringField;
    tImpressoraEndereco: TStringField;
    dsImpressora: TDataSource;
    tNatOperacaoIpi: TBooleanField;
    tNatOperacaoIcms: TBooleanField;
    tNatOperacao2Ipi: TBooleanField;
    tNatOperacao2Icms: TBooleanField;
    tOrdemCompralkFornecedor: TStringField;
    tOrdemCompralkFone: TStringField;
    tOrdemCompralkEnd: TStringField;
    tOrdemCompralkCep: TStringField;
    tOrdemCompralkBairro: TStringField;
    tOrdemCompralkCidade: TStringField;
    tOrdemCompralkEstado: TStringField;
    tVendedorEndereco: TStringField;
    tVendedorBairro: TStringField;
    tVendedorCidade: TStringField;
    tVendedorEstado: TStringField;
    tVendedorCep: TStringField;
    tVendedorFone: TStringField;
    tVendedorFax: TStringField;
    tVendedorPessoa: TStringField;
    tVendedorCgcCpf: TStringField;
    tVendedorInscEst: TStringField;
    tPedidoObs: TMemoField;
    tNotaFiscalItenslkPesoBruto: TFloatField;
    tNotaFiscalItenslkPesoLiquido: TFloatField;
    tPedidolkPrazoVista: TStringField;
    tNotaFiscalItensItemPedido: TIntegerField;
    tNotaFiscalDescDupl: TFloatField;
    tPedidoItemVlrDesconto: TFloatField;
    tNotaFiscalItensClasFiscal: TStringField;
    tVendedor2Endereco: TStringField;
    tVendedor2Bairro: TStringField;
    tVendedor2Cidade: TStringField;
    tVendedor2Estado: TStringField;
    tVendedor2Cep: TStringField;
    tVendedor2Fone: TStringField;
    tVendedor2Fax: TStringField;
    tVendedor2Pessoa: TStringField;
    tVendedor2CgcCpf: TStringField;
    tVendedor2InscEst: TStringField;
    tNotaFiscallkNomeVendedor: TStringField;
    tClienteCodVendedor: TIntegerField;
    tCReceberParcTitPortador: TStringField;
    tCReceberParcCodTipoCobranca: TIntegerField;
    tCReceberParcDespesas: TFloatField;
    tCReceberParcAbatimentos: TFloatField;
    tNotaFiscalItensDescricao: TStringField;
    tHistoricoNome: TStringField;
    tCReceberParcHistHistorico: TStringField;
    tCReceberlkTipoAprovacao: TStringField;
    tCReceberParcclDiasAtraso: TIntegerField;
    tCReceberlkDuplImp: TBooleanField;
    tContasCodBanco: TStringField;
    tCReceberParcCodConta: TIntegerField;
    tNatOperacaoLei: TMemoField;
    tCReceberParclkCodBanco: TStringField;
    tCReceberParcPgCartorio: TBooleanField;
    tNotaFiscalItensUnidade: TStringField;
    tClienteObsCtas: TMemoField;
    tCReceberParcDiasAtraso: TFloatField;
    tJuros: TTable;
    dsJuros: TDataSource;
    tJurosAno: TIntegerField;
    tJurosMes: TIntegerField;
    tJurosJuro: TFloatField;
    tCReceberParcLetraCambio: TBooleanField;
    tRegioes: TTable;
    dsRegioes: TDataSource;
    tRegioesCodigo: TIntegerField;
    tRegioesNome: TStringField;
    tClienteLojas: TIntegerField;
    tVendedorRegioes: TIntegerField;
    tNEntradaParcNroDuplicata: TIntegerField;
    tCPagarNroDuplicata: TIntegerField;
    tNEntradaItensCodMaterial: TIntegerField;
    tNEntradaItenslkNomeMaterial: TStringField;
    tNEntradaNroDuplicata: TIntegerField;
    tNEntradaItensGrade: TTable;
    dsNEntradaItensGrade: TDataSource;
    tNEntradaItensGradeCodForn: TIntegerField;
    tNEntradaItensGradeNumNEntr: TIntegerField;
    tNEntradaItensGradeItem: TIntegerField;
    tNEntradaItensGradeCodGrade: TIntegerField;
    tNEntradaItensGradePosicao: TIntegerField;
    tNEntradaItensGradeQtd: TFloatField;
    tNEntradaItensGradeVlrUnitario: TFloatField;
    tNEntradaItensGradeVlrTotal: TFloatField;
    tNEntradaItensCodCor: TIntegerField;
    tNEntradaItenslkCor: TStringField;
    tVendedorTipoComissao: TStringField;
    tVendedorPercImpRenda: TFloatField;
    tParametrosIcmsIpi: TBooleanField;
    tParametrosVlrLimImpRenda: TFloatField;
    tNotaFiscallkTipoAprovCli: TStringField;
    tCReceberParcAgencia: TStringField;
    tNotaFiscalNumNotaOrigem: TIntegerField;
    tNotaFiscalNumNotaDevol: TIntegerField;
    tPedidoItemSitTrib: TSmallintField;
    tNatOperacaoUsada: TStringField;
    tExtComissao: TTable;
    dsExtComissao: TDataSource;
    tExtComissaoNroLancamento: TIntegerField;
    tExtComissaoCodVendedor: TIntegerField;
    tExtComissaoDtReferencia: TDateField;
    tExtComissaoNroDoc: TIntegerField;
    tExtComissaoParcDoc: TIntegerField;
    tExtComissaoCodCliente: TIntegerField;
    tExtComissaoFuncao: TStringField;
    tExtComissaoVlrBase: TFloatField;
    tExtComissaoPercDescDupl: TFloatField;
    tExtComissaoPercComissao: TFloatField;
    tExtComissaoVlrComissao: TFloatField;
    tExtComissaoTipo: TStringField;
    tExtComissaoSuspensa: TBooleanField;
    tNotaFiscalNroLancExtComissao: TIntegerField;
    tNotaFiscallkTipoComissao: TStringField;
    tProdutoNomeExp: TStringField;
    tPedido2Obs: TMemoField;
    tVendedorSelecionado: TBooleanField;
    tVendedor2Regioes: TIntegerField;
    tVendedor2TipoComissao: TStringField;
    tVendedor2PercImpRenda: TFloatField;
    tVendedor2Selecionado: TBooleanField;
    tVendedor2: TTable;
    tClienteSelecionado: TBooleanField;
    tPedidoQtdParesFat: TFloatField;
    tPedidoQtdParesRest: TFloatField;
    tPedido2QtdParesCanc: TFloatField;
    tPedido2QtdParesFat: TFloatField;
    tPedido2QtdParesRest: TFloatField;
    tPedidoNota: TTable;
    dsPedidoNota: TDataSource;
    tPedidoNotaPedido: TIntegerField;
    tPedidoNotaItem: TIntegerField;
    tPedidoNotaItemNota: TIntegerField;
    tPedidoNotaDtNota: TDateField;
    tPedidoNotaQtdPares: TIntegerField;
    tPedidoNotaNumNota: TIntegerField;
    tImpressoraVisualizar: TBooleanField;
    tImpressoraPrograma: TStringField;
    tNotaFiscalNumPedido: TIntegerField;
    tNotaFiscalTipoNota: TStringField;
    tVendedorContato: TStringField;
    tCReceberParcHistDtUltPgto: TDateField;
    tCReceberParcHistVlrUltPgto: TFloatField;
    tCReceberParcHistVlrUltJuros: TFloatField;
    tCReceberParcHistVlrUltDescontos: TFloatField;
    tCReceberParcHistVlrUltDespesas: TFloatField;
    tCReceberParcHistVlrUltAbatimentos: TFloatField;
    tCReceberParcHistPgto: TBooleanField;
    tCReceberParclkTipoCobranca: TStringField;
    tPedidoItemQtdFatMan: TFloatField;
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoQtdFatAut: TFloatField;
    tPedidoQtdFatMan: TFloatField;
    tPedido2QtdFatAut: TFloatField;
    tPedido2QtdFatMan: TFloatField;
    tCReceberParcNroLancExtComissao: TIntegerField;
    tCReceberParclkTipoComissao: TStringField;
    tNotaFiscalDescricaoDesc: TStringField;
    tPedidoNotaNroLancExtComissao: TIntegerField;
    tNotaFiscalSuspensa: TBooleanField;
    tNotaFiscalExtComDif: TIntegerField;
    tPedidoPedCliDif: TStringField;
    tPedido2PedCliDif: TStringField;
    tCReceberParcJurosPagos: TFloatField;
    tNotaFiscallkCodNatOper: TIntegerField;
    tNotaFiscalItensComissaoMod: TFloatField;
    tNotaFiscalItensCodComissao: TIntegerField;
    tPedidoNotaNroLancExtComissaoMod: TIntegerField;
    tPedidoItemlkUnidade: TStringField;
    tCReceberParclkVendedor: TStringField;
    tFornecedoresFantasia: TStringField;
    tProdutoDescMaterial: TStringField;
    tNEntradaOutrasDesp: TFloatField;
    tNEntradaTotalParcelas: TIntegerField;
    tNEntradaItensUnidade: TStringField;
    tCReceberParcHistJurosPagos: TFloatField;
    tPedidoImpRotulo: TBooleanField;
    tNEntradaCodNatOper2: TIntegerField;
    tNEntradaItensMobraCodNatOper: TIntegerField;
    tCPagarParcHist: TTable;
    tCPagarParcHistNumCPagar: TIntegerField;
    tCPagarParcHistParcCPagar: TIntegerField;
    tCPagarParcHistItem: TIntegerField;
    tCPagarParcHistCodHistorico: TIntegerField;
    tCPagarParcHistDtHistorico: TDateField;
    tCPagarParcHistHistorico: TStringField;
    tCPagarParcHistDtUltPgto: TDateField;
    tCPagarParcHistVlrUltPgto: TFloatField;
    tCPagarParcHistVlrUltJuros: TFloatField;
    tCPagarParcHistVlrUltDescontos: TFloatField;
    tCPagarParcHistVlrUltDespesas: TFloatField;
    tCPagarParcHistVlrUltAbatimentos: TFloatField;
    tCPagarParcHistPgto: TBooleanField;
    tCPagarParcHistJurosPagos: TFloatField;
    dsCPagarParcHist: TDataSource;
    tNEntradaObsPagamento: TMemoField;
    tCPagarParcNumCPagar: TIntegerField;
    tCPagarParcParcCPagar: TIntegerField;
    tCPagarParcDtVencCPagar: TDateField;
    tCPagarParcVlrParcCPagar: TFloatField;
    tCPagarParcQuitParcCPagar: TBooleanField;
    tCPagarParcDtPagParcCPagar: TDateField;
    tCPagarParcJurosParcCPagar: TFloatField;
    tCPagarParcCodForn: TIntegerField;
    tCPagarParcNumNotaEnt: TIntegerField;
    tCPagarParcDesconto: TFloatField;
    tCPagarParcPgtoParcial: TFloatField;
    tCPagarParcRestParcela: TFloatField;
    tCPagarParcBanco: TStringField;
    tCPagarParcPlanoContas: TIntegerField;
    tCPagarParcNroDuplicata: TIntegerField;
    tCPagarParcDespesas: TFloatField;
    tCPagarParcAbatimentos: TFloatField;
    tCPagarParcCodConta: TIntegerField;
    tCPagarParcDiasAtraso: TFloatField;
    tCPagarParcCodTipoCobranca: TIntegerField;
    tCPagarParcJurosPagos: TFloatField;
    tCPagarParclkCodBanco: TStringField;
    tCPagarParclkNomeBanco: TStringField;
    tCPagarParcclDiasAtraso: TIntegerField;
    tFornecedores2: TTable;
    tFornecedores2CodForn: TIntegerField;
    tFornecedores2NomeForn: TStringField;
    tFornecedores2Fantasia: TStringField;
    tCPagarParclkFornecedor: TStringField;
    tFornecedoresFornecedorOutros: TStringField;
    tHistoricoTipo: TStringField;
    tNEntradaParcCodBco: TIntegerField;
    tNEntradaParclkBco: TStringField;
    tCPagarParcHistNumMov: TIntegerField;
    tCPagarParcHistNumMovJuros: TIntegerField;
    tCReceberParcHistNumMov: TIntegerField;
    tCReceberParcHistNumMovJuros: TIntegerField;
    tNotaFiscalDescTransf: TMemoField;
    tOrdemCompralkCondsPgto: TStringField;
    tCPagarParclkFantasia: TStringField;
    tNEntradaNroFatura: TIntegerField;
    tNEntradaDtFatura: TDateField;
    tCPagarNroFatura: TIntegerField;
    tCPagarParcNroFatura: TIntegerField;
    tOrdemCompraItemCodGrade: TIntegerField;
    tNEntradaItensCodGrade: TIntegerField;
    tOrdemCompraNota: TTable;
    dsOrdemCompraNota: TDataSource;
    tOrdemCompraNotaCodigo: TIntegerField;
    tOrdemCompraNotaItem: TIntegerField;
    tOrdemCompraNotaNumNota: TIntegerField;
    tOrdemCompraNotaCodFornecedor: TIntegerField;
    tOrdemCompraNotaItemNota: TIntegerField;
    tOrdemCompraNotaDtNota: TDateField;
    tOrdemCompraNotaQtdPares: TFloatField;
    tOrdemCompraNotaGrade: TTable;
    tOrdemCompraNotaGradeCodigo: TIntegerField;
    tOrdemCompraNotaGradeItem: TIntegerField;
    tOrdemCompraNotaGradeNumNota: TIntegerField;
    tOrdemCompraNotaGradeCodFornecedor: TIntegerField;
    tOrdemCompraNotaGradeItemNota: TIntegerField;
    tOrdemCompraNotaGradeCodGrade: TIntegerField;
    tOrdemCompraNotaGradePosicao: TIntegerField;
    tOrdemCompraNotaGradeQtdPares: TFloatField;
    dsOrdemCompraNotaGrade: TDataSource;
    tOrdemCompraItemQtdEntregue: TFloatField;
    tOrdemCompraItemQtdRestante: TFloatField;
    tOrdemCompraEntregue: TBooleanField;
    tOrdemCompraItemGradeQtdEntregue: TFloatField;
    tOrdemCompraItemGradeQtdRestante: TFloatField;
    tNEntradaItensNumOC: TIntegerField;
    tNEntradaItensItemOC: TIntegerField;
    tCReceberParclkFantasia: TStringField;
    tOrdemCompraItemUnidade: TStringField;
    tPedidoImpCalcLote: TBooleanField;
    tCReceberCancelado: TBooleanField;
    tCReceberParcCancelado: TBooleanField;
    tMaterialGradeNumTamMaterial: TStringField;
    tNotaFiscalExportacao: TBooleanField;
    tClienteCaixaPostal: TStringField;
    tVendedorCaixaPostal: TStringField;
    tClienteRg: TStringField;
    tCReceberParcTitProtestado: TBooleanField;
    tPedidoObsRotulo: TMemoField;
    tPedidoItemlkReferencia: TStringField;
    tNotaFiscalItenslkReferencia: TStringField;
    tNotaFiscalItenslkReferencia2: TStringField;
    tPedidoQtdParesCanc: TFloatField;
    tNotaFiscalObsAux: TMemoField;
    tObsAux: TTable;
    tObsAuxCodigo: TIntegerField;
    tObsAuxDescricao: TMemoField;
    dsObsAux: TDataSource;
    tObsAux2: TTable;
    tObsAux2Codigo: TIntegerField;
    tObsAuxNome: TStringField;
    tUsuarioUsuario: TStringField;
    tUsuarioSenha: TStringField;
    tUsuarioAdministrador: TBooleanField;
    tUsuarioClientes: TBooleanField;
    tUsuarioFornecedores: TBooleanField;
    tUsuarioGrupos: TBooleanField;
    tUsuarioMaterial: TBooleanField;
    tUsuarioGrade: TBooleanField;
    tUsuarioCor: TBooleanField;
    tUsuarioCondPgto: TBooleanField;
    tUsuarioTransp: TBooleanField;
    tUsuarioOrdemCompra: TBooleanField;
    tUsuarioProduto: TBooleanField;
    tUsuarioSetor: TBooleanField;
    tUsuarioMaoDeObra: TBooleanField;
    tUsuarioVendedor: TBooleanField;
    tUsuarioClasFiscal: TBooleanField;
    tUsuarioParametro: TBooleanField;
    tUsuarioUf: TBooleanField;
    tUsuarioComissao: TBooleanField;
    tUsuarioPedido: TBooleanField;
    tUsuarioLote: TBooleanField;
    tUsuarioNotaEnt: TBooleanField;
    tUsuarioMovto: TBooleanField;
    tUsuarioNotaFiscal: TBooleanField;
    tUsuarioCPagar: TBooleanField;
    tUsuarioCReceber: TBooleanField;
    tUsuarioRelCli: TBooleanField;
    tUsuarioRelForn: TBooleanField;
    tUsuarioRelBoleto: TBooleanField;
    tUsuarioRelProdutos: TBooleanField;
    tUsuarioRelVendas: TBooleanField;
    tUsuarioSitTrib: TBooleanField;
    tUsuarioSubGrupo: TBooleanField;
    tUsuarioRelVendasNatOper: TBooleanField;
    tUsuarioLctoPagar: TBooleanField;
    tUsuarioNatOper: TBooleanField;
    tUsuarioHistoricos: TBooleanField;
    tUsuarioImpressoras: TBooleanField;
    tUsuarioObsAux: TBooleanField;
    tUsuarioLojas: TBooleanField;
    tUsuarioRegioesVendas: TBooleanField;
    tUsuarioRelVendedores: TBooleanField;
    tUsuarioRelEtiqCli: TBooleanField;
    tUsuarioRelEtiqVend: TBooleanField;
    tUsuarioRelEtiqForn: TBooleanField;
    tUsuarioRelEstMat: TBooleanField;
    tUsuarioBaixaPedidos: TBooleanField;
    tUsuarioConsultaLote: TBooleanField;
    tUsuarioRelCalcMatLote: TBooleanField;
    tUsuarioRelPlanejamento: TBooleanField;
    tUsuarioRelPedNFat: TBooleanField;
    tUsuarioRotulos: TBooleanField;
    tUsuarioRelVendasVendCli: TBooleanField;
    tUsuarioRelVendasVendRef: TBooleanField;
    tUsuarioConsFat: TBooleanField;
    tUsuarioRelNEmitVend: TBooleanField;
    tUsuarioLancComisVend: TBooleanField;
    tUsuarioRelExtrComisVend: TBooleanField;
    tUsuarioLancCReceber: TBooleanField;
    tUsuarioTiposCobr: TBooleanField;
    tUsuarioRelCReceber: TBooleanField;
    tUsuarioRelCRecCli: TBooleanField;
    tUsuarioFaturas: TBooleanField;
    tUsuarioRelCPagar: TBooleanField;
    tUsuarioRelNEntrNatOper: TBooleanField;
    tUsuarioRelCPagForn: TBooleanField;
    tUsuarioRelPgtoJuros: TBooleanField;
    tUsuarioContas: TBooleanField;
    tUsuarioEntrMov: TBooleanField;
    tUsuarioJuros: TBooleanField;
    tUsuarioPlanoCtas: TBooleanField;
    tUsuarioRelCtas: TBooleanField;
    tUsuarioAltUsuario: TStringField;
    tUsuarioAltClientes: TBooleanField;
    tUsuarioAltFornecedores: TBooleanField;
    tUsuarioAltGrupos: TBooleanField;
    tUsuarioAltGrade: TBooleanField;
    tUsuarioAltMaterial: TBooleanField;
    tUsuarioAltCor: TBooleanField;
    tUsuarioAltCondPgto: TBooleanField;
    tUsuarioAltTransp: TBooleanField;
    tUsuarioAltOrdemCompra: TBooleanField;
    tUsuarioAltProduto: TBooleanField;
    tUsuarioAltSetor: TBooleanField;
    tUsuarioAltMaoDeObra: TBooleanField;
    tUsuarioAltVendedor: TBooleanField;
    tUsuarioAltClasFiscal: TBooleanField;
    tUsuarioAltUf: TBooleanField;
    tUsuarioAltPedido: TBooleanField;
    tUsuarioAltSitTrib: TBooleanField;
    tUsuarioAltSubGrupo: TBooleanField;
    tUsuarioAltNatOper: TBooleanField;
    tUsuarioAltHistoricos: TBooleanField;
    tUsuarioAltImpressoras: TBooleanField;
    tUsuarioAltObsAux: TBooleanField;
    tUsuarioAltLojas: TBooleanField;
    tUsuarioAltRegioesVendas: TBooleanField;
    tUsuarioAltTiposCobr: TBooleanField;
    tUsuarioAltContas: TBooleanField;
    tUsuarioAltJuros: TBooleanField;
    tUsuarioAltPlanoCtas: TBooleanField;
    tUsuarioExcUsuario: TStringField;
    tUsuarioExcClientes: TBooleanField;
    tUsuarioExcFornecedores: TBooleanField;
    tUsuarioExcGrupos: TBooleanField;
    tUsuarioExcGrade: TBooleanField;
    tUsuarioExcMaterial: TBooleanField;
    tUsuarioExcCor: TBooleanField;
    tUsuarioExcCondPgto: TBooleanField;
    tUsuarioExcTransp: TBooleanField;
    tUsuarioExcOrdemCompra: TBooleanField;
    tUsuarioExcProduto: TBooleanField;
    tUsuarioExcSetor: TBooleanField;
    tUsuarioExcMaoDeObra: TBooleanField;
    tUsuarioExcVendedor: TBooleanField;
    tUsuarioExcClasFiscal: TBooleanField;
    tUsuarioExcUf: TBooleanField;
    tUsuarioExcPedido: TBooleanField;
    tUsuarioExcSitTrib: TBooleanField;
    tUsuarioExcSubGrupo: TBooleanField;
    tUsuarioExcNatOper: TBooleanField;
    tUsuarioExcHistoricos: TBooleanField;
    tUsuarioExcImpressoras: TBooleanField;
    tUsuarioExcObsAux: TBooleanField;
    tUsuarioExcLojas: TBooleanField;
    tUsuarioExcRegioesVendas: TBooleanField;
    tUsuarioExcTiposCobr: TBooleanField;
    tUsuarioExcContas: TBooleanField;
    tUsuarioExcJuros: TBooleanField;
    tUsuarioExcPlanoCtas: TBooleanField;
    tUsuarioInsUsuario: TStringField;
    tUsuarioInsClientes: TBooleanField;
    tUsuarioInsFornecedores: TBooleanField;
    tUsuarioInsGrupos: TBooleanField;
    tUsuarioInsGrade: TBooleanField;
    tUsuarioInsMaterial: TBooleanField;
    tUsuarioInsCor: TBooleanField;
    tUsuarioInsCondPgto: TBooleanField;
    tUsuarioInsTransp: TBooleanField;
    tUsuarioInsOrdemCompra: TBooleanField;
    tUsuarioInsProduto: TBooleanField;
    tUsuarioInsSetor: TBooleanField;
    tUsuarioInsMaoDeObra: TBooleanField;
    tUsuarioInsVendedor: TBooleanField;
    tUsuarioInsClasFiscal: TBooleanField;
    tUsuarioInsUf: TBooleanField;
    tUsuarioInsPedido: TBooleanField;
    tUsuarioInsSitTrib: TBooleanField;
    tUsuarioInsSubGrupo: TBooleanField;
    tUsuarioInsNatOper: TBooleanField;
    tUsuarioInsHistoricos: TBooleanField;
    tUsuarioInsImpressoras: TBooleanField;
    tUsuarioInsObsAux: TBooleanField;
    tUsuarioInsLojas: TBooleanField;
    tUsuarioInsRegioesVendas: TBooleanField;
    tUsuarioInsTiposCobr: TBooleanField;
    tUsuarioInsContas: TBooleanField;
    tUsuarioInsJuros: TBooleanField;
    tUsuarioInsPlanoCtas: TBooleanField;
    tUsuarioIndexador: TBooleanField;
    tUsuarioAltIndexador: TBooleanField;
    tUsuarioExcIndexador: TBooleanField;
    tUsuarioInsIndexador: TBooleanField;
    tUsuarioCPagarAltera: TBooleanField;
    tUsuarioCPagarPag: TBooleanField;
    tUsuarioEstPgtoPagar: TBooleanField;
    tUsuarioCReceberAltera: TBooleanField;
    tUsuarioCReceberPag: TBooleanField;
    tUsuarioEstPgtoRec: TBooleanField;
    tCPagarParcDtRecto: TDateField;
    tCReceberParcDtGerado: TDateField;
    tClienteCep: TStringField;
    tClienteCepEntrega: TStringField;
    tClienteCepPgto: TStringField;
    tPedidolkCep: TStringField;
    tNotaFiscallkCepCli: TStringField;
    tNotaFiscallkCepEntrega: TStringField;
    tNotaFiscallkCepPgto: TStringField;
    tUsuarioInsAtelier: TBooleanField;
    tUsuarioExcAtelier: TBooleanField;
    tUsuarioAltAtelier: TBooleanField;
    tUsuarioAtelier: TBooleanField;
    tProdutoVlrAtelier: TFloatField;
    tUsuarioContrAtelier: TBooleanField;
    tSetorAtelier: TBooleanField;
    tUsuarioMovAtelier: TBooleanField;
    tUsuarioMovTalao: TBooleanField;
    tUsuarioAltMovAtelier: TBooleanField;
    tUsuarioExcMovAtelier: TBooleanField;
    tUsuarioInsMovAtelier: TBooleanField;
    tPedidoLoteExp: TBooleanField;
    tUsuarioInsRequisicao: TBooleanField;
    tUsuarioExcRequisicao: TBooleanField;
    tUsuarioAltRequisicao: TBooleanField;
    tUsuarioRequisicao: TBooleanField;
    tAtividade: TTable;
    tAtividadeCodigo: TIntegerField;
    tAtividadeNome: TStringField;
    dsAtividade: TDataSource;
    tAtividade2: TTable;
    tAtividade2Codigo: TIntegerField;
    tAtividade2Nome: TStringField;
    tUsuarioInsAtividade: TBooleanField;
    tUsuarioExcAtividade: TBooleanField;
    tUsuarioAltAtividade: TBooleanField;
    tUsuarioAtividade: TBooleanField;
    tFornecAtiv: TTable;
    tFornecAtivCodForn: TIntegerField;
    tFornecAtivItem: TIntegerField;
    tFornecAtivCodAtiv: TIntegerField;
    dsFornecAtiv: TDataSource;
    tFornecAtiv2: TTable;
    tFornecAtiv2CodForn: TIntegerField;
    tFornecAtiv2Item: TIntegerField;
    tFornecAtiv2CodAtiv: TIntegerField;
    tFornecAtivlkAtividade: TStringField;
    tPedidoDolar: TBooleanField;
    tUsuarioConsFornecAtiv: TBooleanField;
    tGradeItemlk: TTable;
    tGradeItemlkCodGrade: TIntegerField;
    tGradeItemlkPosicao: TIntegerField;
    tGradeItemlkTamanho: TStringField;
    tPedidoInvoice: TStringField;
    tPedidoGradelkTamanho: TStringField;
    tPedidoItemlkQParTalao: TFloatField;
    tProdutoNomeModelo: TStringField;
    tPedidoPOCliente: TStringField;
    tProdutoFotoJpeg: TBlobField;
    tPedidoCarimbo: TStringField;
    tUsuarioExcTalao: TBooleanField;
    tProdutoMatclQtdPr: TFloatField;
    tUsuarioCustoSetor: TBooleanField;
    tNEntradaItensQtdPacote: TFloatField;
    tUsuarioRelMatMinimo: TBooleanField;
    tOrdemCompra2: TTable;
    tOrdemCompra2Codigo: TIntegerField;
    tOrdemCompra2CodFornecedor: TIntegerField;
    tOrdemCompra2CodCondPgto: TIntegerField;
    tOrdemCompra2CodTransp: TIntegerField;
    tOrdemCompra2DtEmissao: TDateField;
    tOrdemCompra2Obs: TMemoField;
    tOrdemCompra2VlrTotal: TFloatField;
    tOrdemCompra2Entregue: TBooleanField;
    tOrdemCompraItem2: TTable;
    tOrdemCompraItem2Codigo: TIntegerField;
    tOrdemCompraItem2Item: TIntegerField;
    tOrdemCompraItem2CodMaterial: TIntegerField;
    tOrdemCompraItem2CodCor: TIntegerField;
    tPedidoItemInvoice: TStringField;
    tUsuarioConsEstoqueMat: TBooleanField;
    tPedidoItemLoteGer: TBooleanField;
    tUsuarioExcluirTalao: TBooleanField;
    tUsuarioRelHistMaterial: TBooleanField;
    tOrdemCompralkNomeTransp: TStringField;
    tOrdemCompralkEndTransp: TStringField;
    tOrdemCompralkBairroTransp: TStringField;
    tOrdemCompralkCepTransp: TStringField;
    tOrdemCompralkUfTransp: TStringField;
    tOrdemCompralkFoneTransp: TStringField;
    tSetorMetaDia: TIntegerField;
    tUsuarioRelMetasProd: TBooleanField;
    tCReceberParclkBanco: TStringField;
    tPedidoQtdParesRep: TFloatField;
    tPedido2QtdParesRep: TFloatField;
    tPedidoItemReposicao: TBooleanField;
    tPedidoVlrReposicao: TFloatField;
    tPedidoItem2: TTable;
    tPedidoItem2Pedido: TIntegerField;
    tPedidoItem2Item: TIntegerField;
    tPedidoItem2Reposicao: TBooleanField;
    tParametrosNroItensNota: TIntegerField;
    tEmpresaLinha1: TStringField;
    tEmpresaLinha2: TStringField;
    tParametrosPercIssqn: TFloatField;
    tParametrosMaoDeObra: TBooleanField;
    tNotaFiscalPercIssqn: TFloatField;
    tNotaFiscalVlrMObra: TFloatField;
    tNotaFiscalVlrIssqn: TFloatField;
    tUsuarioConsMovTalaoMI: TBooleanField;
    tUsuarioPedidoEsp: TBooleanField;
    tUsuarioAltPedidoEsp: TBooleanField;
    tUsuarioExcPedidoEsp: TBooleanField;
    tUsuarioInsPedidoEsp: TBooleanField;
    tCReceberParcTipoDoc: TStringField;
    tNotaFiscalGrade: TTable;
    dsNotaFiscalGrade: TDataSource;
    tNotaFiscalGradeItem: TIntegerField;
    tNotaFiscalGradeCodGrade: TIntegerField;
    tNotaFiscalGradePosicao: TIntegerField;
    tNotaFiscalGradeQtd: TFloatField;
    tNotaFiscalGradeVlrUnitario: TFloatField;
    tNotaFiscalGradeVlrTotal: TFloatField;
    tNotaFiscalItensCodGrade: TIntegerField;
    tNotaFiscalNumNotaDevFor: TIntegerField;
    tNotaFiscalCodForn: TIntegerField;
    tNEntradaDevolvida: TBooleanField;
    tNotaFiscallkNomeFornecedor: TStringField;
    tCPagarParcCodAtelier: TIntegerField;
    tNEntradaCodAtelier: TIntegerField;
    tCReceberDuplicataImp: TBooleanField;
    tCReceberVlrTotal: TFloatField;
    tCReceberlkNomeCliente: TStringField;
    tCReceberParclkNomeCliente: TStringField;
    tCReceberParclkEndereco: TStringField;
    tCReceberParclkBairro: TStringField;
    tCReceberParclkCep: TStringField;
    tCReceberParclkEstado: TStringField;
    tCReceberParclkEndPgto: TStringField;
    tCReceberParclkUfPgto: TStringField;
    tCReceberParclkCepPgto: TStringField;
    tCReceberParclkCgcCpf: TStringField;
    tPedidoStock: TStringField;
    tNatOperacaoTipoFat: TStringField;
    tNotaFiscallkTipoFat: TStringField;
    tProdutoObs: TMemoField;
    tProdutoMatImpTalao: TStringField;
    tPedidoMaterialImpTalao: TStringField;
    tPedidoMercado: TStringField;
    tMaterialGradeNumCodGradeMat: TIntegerField;
    tMaterialGradeNumPosicaoMat: TIntegerField;
    tNotaFiscallkUfTransp: TStringField;
    tCidade: TTable;
    tCidadeCodigo: TIntegerField;
    tCidadeNome: TStringField;
    tCidadeEstado: TStringField;
    tCidadePrefixo: TStringField;
    tCidadeCep: TStringField;
    tClienteCodCidade: TIntegerField;
    tFornecedoresCodCidade: TIntegerField;
    tTranspCodCidade: TIntegerField;
    tUsuarioCidade: TBooleanField;
    tUsuarioAltCidade: TBooleanField;
    tUsuarioExcCidade: TBooleanField;
    tUsuarioInsCidade: TBooleanField;
    dsCidade: TDataSource;
    tClienteCodCidadeE: TIntegerField;
    tClienteCodCidadeP: TIntegerField;
    tClientelkCidade: TStringField;
    tPedidolkCidade: TStringField;
    tClientelkCidadeE: TStringField;
    tNotaFiscallkCidade: TStringField;
    tNotaFiscallkCidEntrega: TStringField;
    tNotaFiscallkCidPgto: TStringField;
    tFornecedoreslkCidade: TStringField;
    tTransplkCidade: TStringField;
    tOrdemCompralkCidTransp: TStringField;
    tNotaFiscallkCidadeTransp: TStringField;
    tTransportadoraCid: TTable;
    tTransportadoraCidCodigo: TIntegerField;
    tTransportadoraCidItem: TIntegerField;
    tTransportadoraCidCodCidade: TIntegerField;
    tTransportadoraCidEstado: TStringField;
    tTransportadoraCidlkCidade: TStringField;
    dsTranspostadoraCid: TDataSource;
    tPedidoItemlkDescMaterial: TStringField;
    tUsuarioOperAtelier: TBooleanField;
    tUsuarioAltOperAtelier: TBooleanField;
    tUsuarioExcOperAtelier: TBooleanField;
    tUsuarioInsOperAtelier: TBooleanField;
    tNotaFiscalItenslkDescMaterial: TStringField;
    tPedidoItem2ObsLote: TStringField;
    tGradeItemMarcarTam: TStringField;
    tGradeItemlkMarcarTam: TStringField;
    tPedidoGradelkMarcarTam: TStringField;
    tProdutoEndEtiq: TStringField;
    tPedidoItemlkEndEtiq: TStringField;
    tDctoEst: TTable;
    tDctoEstNumDcto: TIntegerField;
    tDctoEstData: TDateField;
    tDctoEstUsuario: TStringField;
    tDctoEstTipo: TStringField;
    dsDctoEst: TDataSource;
    tDctoEstItem: TTable;
    tDctoEstItemNumDcto: TIntegerField;
    tDctoEstItemItem: TIntegerField;
    tDctoEstItemCodMaterial: TIntegerField;
    tDctoEstItemCodCor: TIntegerField;
    tDctoEstItemCodGrade: TIntegerField;
    tDctoEstItemUnidade: TStringField;
    tDctoEstItemQtd: TFloatField;
    dsDctoEstItem: TDataSource;
    tDctoEstGrade: TTable;
    tDctoEstGradeNumDcto: TIntegerField;
    tDctoEstGradeItem: TIntegerField;
    tDctoEstGradeCodGrade: TIntegerField;
    tDctoEstGradePosicao: TIntegerField;
    tDctoEstGradeQtd: TFloatField;
    tUsuarioDctoEst: TBooleanField;
    tUsuarioAltDctoEst: TBooleanField;
    tUsuarioExcDctoEst: TBooleanField;
    tUsuarioInsDctoEst: TBooleanField;
    tDctoEstTotal: TFloatField;
    tDctoEstItemVlrUnit: TFloatField;
    tDctoEstItemVlrTotal: TFloatField;
    tDctoEstItemlkMaterial: TStringField;
    tDctoEstItemlkCor: TStringField;
    tCReceberParcHistJurosCalc: TFloatField;
    tParametrosTempoEtiq: TIntegerField;
    tUsuarioAgenda: TBooleanField;
    tNatOperacaoGeraDuplicata: TBooleanField;
    tNotaFiscallkGeraDuplicata: TBooleanField;
    tUsuarioCopiaDuplicata: TBooleanField;
    tGradeCodLetra: TStringField;
    tGradeLargura: TStringField;
    tGradeItemQtdPar: TIntegerField;
    tGradeItemlkQtdPar: TIntegerField;
    tPedidoItemlkCodLetra: TStringField;
    tPedidoItemlkLargura: TStringField;
    tGradeTipoDig: TStringField;
    tGradeQtdParTotal: TIntegerField;
    tPedidoItemlkTipoDig: TStringField;
    tNEntradaItenslkLargura: TStringField;
    tNEntradaItensGradelkTamanho: TStringField;
    tNotaFiscalItenslkLargura: TStringField;
    tNotaFiscalGradelkTamanho: TStringField;
    tDctoEstItemlkLargura: TStringField;
    tDctoEstGradelkTamanho: TStringField;
    tOrdemCompraItemlkLargura: TStringField;
    tParametrosPercC200: TFloatField;
    tProdutoMatUnidade: TStringField;
    tEstoqueMatMov: TTable;
    dsEstoqueMatMov: TDataSource;
    tEstoqueMatMovGrade: TTable;
    dsEstoqueMatMovGrade: TDataSource;
    tEstoqueMatMovNumMov: TIntegerField;
    tEstoqueMatMovCodMaterial: TIntegerField;
    tEstoqueMatMovCodCor: TIntegerField;
    tEstoqueMatMovLargura: TStringField;
    tEstoqueMatMovDtMov: TDateField;
    tEstoqueMatMovES: TStringField;
    tEstoqueMatMovTipoMov: TStringField;
    tEstoqueMatMovNumNota: TIntegerField;
    tEstoqueMatMovCodCliForn: TIntegerField;
    tEstoqueMatMovVlrUnitario: TFloatField;
    tEstoqueMatMovQtd: TFloatField;
    tEstoqueMatMovPercIcms: TFloatField;
    tEstoqueMatMovPercIpi: TFloatField;
    tEstoqueMatMovVlrDesconto: TFloatField;
    tNEntradaItensNumMovEst: TIntegerField;
    tDctoEstItemNumMovEst: TIntegerField;
    tEstoqueMatMovGradeNumMov: TIntegerField;
    tEstoqueMatMovGradeTamanho: TStringField;
    tEstoqueMatMovGradeQtd: TFloatField;
    tCReceberParcVlrDevolucao: TFloatField;
    tCReceberParcHistVlrDevolucao: TFloatField;
    tCReceberParcHistDevolucao: TBooleanField;
    tCPagarParcVlrDevolucao: TFloatField;
    tCPagarParcHistVlrDevolucao: TFloatField;
    tCPagarParcHistDevolucao: TBooleanField;
    tClientelkCidadeP: TStringField;
    tCReceberParclkInscrEst: TStringField;
    tEstoqueMatMovlkNomeMaterial: TStringField;
    tEstoqueMatMovlkCor: TStringField;
    tEstoqueMatMovUnidade: TStringField;
    tNotaFiscalItensNumMovEst: TIntegerField;
    tOutros: TTable;
    tOutrosCodigo: TIntegerField;
    tOutrosNome: TStringField;
    tOutrosContato: TStringField;
    tOutrosTelefone1: TStringField;
    tOutrosTelefone2: TStringField;
    tOutrosFax: TStringField;
    tOutrosEmail: TStringField;
    dsOutros: TDataSource;
    tUsuarioRelMetasProdRef: TBooleanField;
    tUsuarioRelBalancoEst: TBooleanField;
    tUsuarioRelNEntrada: TBooleanField;
    tUsuarioRelOC: TBooleanField;
    tOrdemCompraItem2Qtd: TFloatField;
    tOrdemCompraItem2VlrUnitario: TFloatField;
    tOrdemCompraItem2AliqIPI: TFloatField;
    tOrdemCompraItem2VlrIPI: TFloatField;
    tOrdemCompraItem2DtEntrega: TDateField;
    tOrdemCompraItem2VlrTotal: TFloatField;
    tOrdemCompraItem2CodGrade: TIntegerField;
    tOrdemCompraItem2QtdEntregue: TFloatField;
    tOrdemCompraItem2QtdRestante: TFloatField;
    tOrdemCompraItem2Unidade: TStringField;
    tProdutoConsumo: TTable;
    dsProdutoConsumo: TDataSource;
    tProdutoConsumoItem: TTable;
    dsProdutoConsumoItem: TDataSource;
    tProdutoConsumoItemCodProduto: TIntegerField;
    tProdutoConsumoItemCodCorProduto: TIntegerField;
    tProdutoConsumoItemItemMaterial: TIntegerField;
    tProdutoConsumoItemCodGrade: TIntegerField;
    tProdutoConsumoItemPosicao: TIntegerField;
    tProdutoConsumoItemConsumo: TFloatField;
    tProdutoConsumoItemlkTamanho: TStringField;
    tProdutoConsumoCodProduto: TIntegerField;
    tProdutoConsumoCodCorProduto: TIntegerField;
    tProdutoConsumoItemMaterial: TIntegerField;
    tProdutoConsumoCodGrade: TIntegerField;
    tProdutoConsumoConsumo: TFloatField;
    tProdutoConsumolkNomeGrade: TStringField;
    tProdutoConsumolkLargura: TStringField;
    tProdutoMatConsumo: TStringField;
    tPedidoConsumo: TTable;
    dsPedidoConsumo: TDataSource;
    tPedidoMaterialTipoConsumo: TStringField;
    tPedidoConsumoPedido: TIntegerField;
    tPedidoConsumoItemPed: TIntegerField;
    tPedidoConsumoOrdem: TIntegerField;
    tPedidoConsumoCodGrade: TIntegerField;
    tPedidoConsumoPosicao: TIntegerField;
    tPedidoConsumoConsumo: TFloatField;
    tPedidoConsumolkTamanho: TStringField;
    tFuncionario: TTable;
    tFuncionarioCodigo: TIntegerField;
    tFuncionarioNome: TStringField;
    tFuncionarioEndereco: TStringField;
    tFuncionarioCodCidade: TIntegerField;
    tFuncionarioBairro: TStringField;
    tFuncionarioCep: TStringField;
    tFuncionarioFone: TStringField;
    tFuncionarioDtAdmissao: TDateField;
    tFuncionarioCPF: TStringField;
    tFuncionarioRG: TStringField;
    tFuncionarioCTPS: TIntegerField;
    tFuncionarioSerie: TStringField;
    tFuncionarioPIS: TStringField;
    tFuncionarioDtNascimento: TDateField;
    tFuncionarioHrSemanais: TFloatField;
    tFuncionarioTipoPgto: TStringField;
    tFuncionarioVlrSalario: TFloatField;
    tFuncionarioDtDemissao: TDateField;
    tFuncionarioHorario1: TStringField;
    tFuncionarioHorario2: TStringField;
    tFuncionarioPercInsalubridade: TFloatField;
    tFuncionarioPercPericulosidade: TFloatField;
    dsFuncionario: TDataSource;
    tUsuarioFuncionario: TBooleanField;
    tUsuarioAltFuncionario: TBooleanField;
    tUsuarioExcFuncionario: TBooleanField;
    tUsuarioInsFuncionario: TBooleanField;
    tFerias: TTable;
    tFeriasCodFuncionario: TIntegerField;
    tFeriasItem: TIntegerField;
    tFeriasDtInicial: TDateField;
    tFeriasDtFinal: TDateField;
    dsFerias: TDataSource;
    tFuncionarioUf: TStringField;
    tFuncionarioObs: TMemoField;
    tSalario: TTable;
    tSalarioCodFuncionario: TIntegerField;
    tSalarioItem: TIntegerField;
    tSalarioData: TDateField;
    tSalarioMotivo: TStringField;
    tSalarioValor: TFloatField;
    dsSalario: TDataSource;
    tGradeItemQtdNav: TFloatField;
    tGradeItemLargura: TFloatField;
    tGradeItemAltura: TFloatField;
    tGradeItemlkQtdNav: TFloatField;
    tGradeItemlkLargura: TFloatField;
    tGradeItemlkAltura: TFloatField;
    tUsuarioProgramacao: TBooleanField;
    tUsuarioAltProgramacao: TBooleanField;
    tUsuarioExcProgramacao: TBooleanField;
    tUsuarioInsProgramacao: TBooleanField;
    tPedidoItem2QtdParesRest: TFloatField;
    tPedidoNumProgramacao: TIntegerField;
    tPedidoItemObsLote: TStringField;
    tPedidoItem2QtdParesFat: TFloatField;
    tUsuarioRelEmbDiario: TBooleanField;
    tPedidoGradeQtdParesRest: TFloatField;
    tPedidoGradeQtdParesFat: TFloatField;
    tPedidoGradeQtdParesAut: TFloatField;
    tPedidoGradeQtdParesMan: TFloatField;
    tUsuarioExtratoCom: TBooleanField;
    tCReceberParcHistNroLancExtComissao: TIntegerField;
    tPedidoItemDtEmbarque: TDateField;
    tTabPreco: TTable;
    dsTabPreco: TDataSource;
    tTabPrecoCodCliente: TIntegerField;
    tTabPrecoCodProduto: TIntegerField;
    tTabPrecoCodCor: TIntegerField;
    tTabPrecoPreco: TFloatField;
    tTabPrecolkReferencia: TStringField;
    tTabPrecolkDescMaterial: TStringField;
    tTabPrecolkNomeCor: TStringField;
    tUsuarioTabPreco: TBooleanField;
    tUsuarioExcTabPreco: TBooleanField;
    tUsuarioInsTabPreco: TBooleanField;
    tPedidoItemNumOS: TStringField;
    tPedidoItem2NumOS: TStringField;
    tNotaFiscalItenslkNumOS: TStringField;
    tSitTributariaCodSit: TStringField;
    tPedidoItemlkSitTributaria: TStringField;
    tNotaFiscalItenslkSitTributaria: TStringField;
    tNotaFiscalPercTransf: TFloatField;
    tUsuarioContrFaturamento: TBooleanField;
    tTabPrecolkNomeProd: TStringField;
    tClientePercTransf: TFloatField;
    tClienteCodCondPgto: TIntegerField;
    tPedidoItemlkNomeProduto: TStringField;
    tFuncFaltas: TTable;
    tFuncFaltasCodFuncionario: TIntegerField;
    tFuncFaltasData: TDateField;
    tFuncFaltasDescricao: TStringField;
    dsFuncFaltas: TDataSource;
    tFuncionarioEstCivil: TStringField;
    tFuncionarioEscolaridade: TStringField;
    tFuncionarioFuncao: TStringField;
    tClientelkCondPgto: TStringField;
    tClienteDtNascContato: TDateField;
    tClienteNomeResp: TStringField;
    tAgeContato: TTable;
    dsAgeContato: TDataSource;
    tAgeContatoNumMov: TIntegerField;
    tAgeContatoData: TDateField;
    tAgeContatoHora: TTimeField;
    tAgeContatoCodCliente: TIntegerField;
    tAgeContatoResponsavel: TStringField;
    tAgeContatoObs: TMemoField;
    tAgeContatolkNomeCliente: TStringField;
    tUsuarioAgeContato: TBooleanField;
    tUsuarioAltAgeContato: TBooleanField;
    tUsuarioExcAgeContato: TBooleanField;
    tUsuarioInsAgeContato: TBooleanField;
    tUsuarioHistPedido: TBooleanField;
    tNatOperacaoRelFat: TBooleanField;
    tNotaFiscalVlrTotalDupl: TFloatField;
    tNotaFiscalItensGeraDupl: TBooleanField;
    tNotaFiscalItenslkCodNatOper: TStringField;
    tNotaFiscalItenslkDescricaoNatOper: TStringField;
    tProdutoCli: TTable;
    dsProdutoCli: TDataSource;
    tProdutoCliCodProduto: TIntegerField;
    tProdutoCliCodCliente: TIntegerField;
    tProdutoCliCodProdCli: TStringField;
    tProdutoClilkNomeCliente: TStringField;
    tProdutoCliCodCor: TIntegerField;
    tUsuarioRecPedido: TBooleanField;
    dsPedidoItem2: TDataSource;
    tPedidoItem2CodProduto: TIntegerField;
    tPedidoItem2CodCor: TIntegerField;
    tPedidoItem2CodGrade: TIntegerField;
    tPedidoItem2QtdPares: TFloatField;
    tPedidoItem2Preco: TFloatField;
    tPedidoItem2VlrTotal: TFloatField;
    tPedidoItem2Cancelado: TBooleanField;
    tPedidoItem2Copiado: TBooleanField;
    tPedidoItem2Selecionado: TBooleanField;
    tPedidoItem2QtdParesCanc: TFloatField;
    tPedidoItem2VlrDesconto: TFloatField;
    tPedidoItem2SitTrib: TSmallintField;
    tPedidoItem2QtdFatAut: TFloatField;
    tPedidoItem2QtdFatMan: TFloatField;
    tPedidoItem2Invoice: TStringField;
    tPedidoItem2LoteGer: TBooleanField;
    tPedidoItem2DtEmbarque: TDateField;
    tUsuarioRelCalcMatPed: TBooleanField;
    tParametrosCodNatVenda: TIntegerField;
    tParametrosCodNatVendaF: TIntegerField;
    tParametrosCodNatBenef: TIntegerField;
    tUsuarioCia: TBooleanField;
    tUsuarioAltCia: TBooleanField;
    tUsuarioExcCia: TBooleanField;
    tUsuarioInsCia: TBooleanField;
    tTipoCobrancalk: TTable;
    tTipoCobrancalkCodigo: TIntegerField;
    tTipoCobrancalkNome: TStringField;
    tNotaFiscalParcCodTipoCobr: TIntegerField;
    tNotaFiscalParclkTipoCobr: TStringField;
    tNotaFiscalItensMaterial: TBooleanField;
    tNatOperacaoSomaMercNF: TBooleanField;
    tNatOperacao2Lei: TMemoField;
    tNatOperacao2Usada: TStringField;
    tNatOperacao2TipoFat: TStringField;
    tNatOperacao2GeraDuplicata: TBooleanField;
    tNatOperacao2RelFat: TBooleanField;
    tNatOperacao2SomaMercNF: TBooleanField;
    tEmpresaNomeResp: TStringField;
    tEmpresaEndResp: TStringField;
    tEmpresaBaiResp: TStringField;
    tEmpresaCepResp: TStringField;
    tEmpresaPFone: TStringField;
    tEmpresaNFone: TStringField;
    tEmpresaConvenio: TStringField;
    tEmpresaNumRuaResp: TIntegerField;
    tNEntradalkCGC: TStringField;
    tNEntradalkInscEstadual: TStringField;
    tNEntradalkCodNatOper: TStringField;
    tClienteContatoModelagem: TStringField;
    tUsuarioRelCia: TBooleanField;
    tPedidoItemCodCia: TIntegerField;
    tTipoCobrancaDescontado: TBooleanField;
    tNEntradaItenslkCodSitTrib: TStringField;
    tNEntradaDevolucao: TBooleanField;
    tNEntradaItensMatProd: TStringField;
    tNEntradaItensSomaEstoque: TBooleanField;
    tNEntradaItensNomeMaterial: TStringField;
    tNEntradaItensReferencia: TStringField;
    tUsuarioGeraSintegra: TBooleanField;
    tNEntradaModelo: TIntegerField;
    tNEntradalkGeraDupl: TBooleanField;
    tNEntradalkGeraDupl2: TBooleanField;
    tNEntradaItensMobralkGeraDupl: TBooleanField;
    tNEntradaItensMobralkCodNatOper: TStringField;
    tPedidoCia: TIntegerField;
    tCheque: TTable;
    dsCheque: TDataSource;
    tChequeCodConta: TIntegerField;
    tChequeNumCheque: TIntegerField;
    tChequeDtEmissao: TDateField;
    tChequeVlrTotal: TFloatField;
    tChequeNominal: TStringField;
    tChequeDtEntrada: TDateField;
    tChequeDtPrevista: TDateField;
    tChequeAutomatico: TBooleanField;
    tUsuarioCheque: TBooleanField;
    tUsuarioAltCheque: TBooleanField;
    tUsuarioExcCheque: TBooleanField;
    tUsuarioInsCheque: TBooleanField;
    tCPagarParcHistNumCheque: TIntegerField;
    tCPagarParcHistDtPrevCheque: TDateField;
    tChequelkConta: TStringField;
    tNotaFiscalVlrTransf: TFloatField;
    tUsuarioConsHistMat: TBooleanField;
    tNotaFiscalItensEstoque: TBooleanField;
    tUsuarioCobrBcoSafra: TBooleanField;
    tCReceberParcArqGerado: TBooleanField;
    tPedidoItemDtReprogramacao: TDateField;
    tCReceberParcTransferencia: TBooleanField;
    tNEntradaItensCodNatOper: TIntegerField;
    tNEntradaItenslkCodNatOper: TStringField;
    tUsuarioVlrIcms: TBooleanField;
    tFornecedoresCustoFixo: TBooleanField;
    tUsuarioRelContFornecedores: TBooleanField;
    tNotaFiscalItensNumNotaDevForn: TIntegerField;
    tNotaFiscalItensCodFornDev: TIntegerField;
    tNotaFiscalItensItemDev: TIntegerField;
    tUsuarioGeraNotaEdi: TBooleanField;
    tCReceberParcNumTitBanco: TStringField;
    tClienteContatoCliente: TStringField;
    tClienteImpItemNotaPorTam: TBooleanField;
    tArqEDI: TTable;
    dsArqEDI: TDataSource;
    tArqEDICodCli: TIntegerField;
    tArqEDINumMov: TIntegerField;
    tArqEDINumNota: TIntegerField;
    tArqEDIlkNomeCliente: TStringField;
    tArqEDIData: TDateField;
    tParametrosEnderecoNotaEDI: TStringField;
    RLPreviewSetup1: TRLPreviewSetup;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    tUFCodSitTrib: TIntegerField;
    tUsuarioBaixaEstoque: TBooleanField;
    tPedidoItemReprogramacao: TBooleanField;
    tPedidoItemDtBaixa: TDateField;
    tPedidoItemHrBaixa: TTimeField;
    tUsuarioBaixaProducao: TBooleanField;
    tOrcamento: TTable;
    dsOrcamento: TDataSource;
    tOrcamentoItens: TTable;
    dsOrcamentoItens: TDataSource;
    tUsuarioOrcamento: TBooleanField;
    tUsuarioAltOrcamento: TBooleanField;
    tUsuarioExcOrcamento: TBooleanField;
    tUsuarioInsOrcamento: TBooleanField;
    tOrcamentoNumOrcamento: TIntegerField;
    tOrcamentoData: TDateField;
    tOrcamentoCodCliente: TIntegerField;
    tOrcamentoNomeCliente: TStringField;
    tOrcamentoNomeContato: TStringField;
    tOrcamentoNomeCia: TStringField;
    tOrcamentoQtdDiasValidade: TIntegerField;
    tOrcamentoObs: TMemoField;
    tOrcamentoPrazoPagto: TStringField;
    tOrcamentoDtAprovado: TDateField;
    tOrcamentoVlrTotal: TFloatField;
    tOrcamentoItensNumOrcamento: TIntegerField;
    tOrcamentoItensItem: TIntegerField;
    tOrcamentoItensNomeProduto: TStringField;
    tOrcamentoItensVlrUnitario: TFloatField;
    tOrcamentoItensComMatriz: TBooleanField;
    tOrcamentoItensQtd: TFloatField;
    tOrcamentoItensVlrTotal: TFloatField;
    tParametrosNumSeqEtiqMista: TIntegerField;
    tEstoqueMatMovQtd2: TFloatField;
    tEstoqueMatMovGradeQtd2: TFloatField;
    tUsuarioRelCReceberSem: TBooleanField;
    tUsuarioRelCPagarSem: TBooleanField;
    tEmpresaNumCodBarra: TStringField;
    tUsuarioAltNotaEnt: TBooleanField;
    tUsuarioExcNotaEnt: TBooleanField;
    tUsuarioInsNotaEnt: TBooleanField;
    tNotaFiscalItensNumOS: TStringField;
    tNEntradaItensDtBaixa: TDateField;
    tNEntradaItensHrBaixa: TTimeField;
    tNEntradaItensNumMovEstBaixa: TIntegerField;
    tPedidoItemFabrica: TStringField;
    tPedidoItem2Fabrica: TStringField;
    tNotaFiscalItenslkFabrica: TStringField;
    tNotaFiscalItensCodBarraRotulo: TStringField;
    tProdutoReferencia: TStringField;
    tNotaFiscalItensReferencia: TStringField;
    tOrcamentoItensReferencia: TStringField;
    tProdutoReferencia2: TStringField;
    tProdutoLancaCor: TBooleanField;
    tProdutoPrecoGrade: TBooleanField;
    tProdutoVlrVenda: TFloatField;
    tGrupoReferencia: TStringField;
    tProdutoProdMat: TStringField;
    tProdutoPrecoCusto: TFloatField;
    tProdutoPosseMat: TStringField;
    tProdutoEstoque: TBooleanField;
    tProdutoDtAlteracao: TDateField;
    tProdutoMaterialOutros: TStringField;
    tProdutoPrecoCor: TBooleanField;
    tProdutoCodFornecedor: TIntegerField;
    tProdutoEstMinimo: TFloatField;
    tProdutoCorPrCusto: TFloatField;
    tOrdemCompraItemlkReferencia: TStringField;
    tDctoEstItemlkReferencia: TStringField;
    tPedidoItemlkClasFiscal: TStringField;
    tProduto2: TTable;
    tProduto2Codigo: TIntegerField;
    tProduto2CodGrupo: TIntegerField;
    tProduto2CodSubGrupo: TIntegerField;
    tProduto2Referencia: TStringField;
    tProduto2Nome: TStringField;
    tProduto2Unidade: TStringField;
    tProduto2CodClasFiscal: TStringField;
    tProduto2CodSitTrib: TIntegerField;
    tProduto2LancaGrade: TBooleanField;
    tProduto2CodGrade: TIntegerField;
    tProduto2QParTalao: TFloatField;
    tProduto2PesoLiquido: TFloatField;
    tProduto2PesoBruto: TFloatField;
    tProduto2Inativo: TBooleanField;
    tProduto2AliqIcms: TFloatField;
    tProduto2AliqIPI: TFloatField;
    tProduto2NomeExp: TStringField;
    tProduto2DescMaterial: TStringField;
    tProduto2Referencia2: TStringField;
    tProduto2VlrAtelier: TFloatField;
    tProduto2NomeModelo: TStringField;
    tProduto2FotoJpeg: TBlobField;
    tProduto2Obs: TMemoField;
    tProduto2EndEtiq: TStringField;
    tProduto2LancaCor: TBooleanField;
    tProduto2PrecoGrade: TBooleanField;
    tProduto2VlrVenda: TFloatField;
    tProduto2ProdMat: TStringField;
    tProduto2PrecoCusto: TFloatField;
    tProduto2PosseMat: TStringField;
    tProduto2Estoque: TBooleanField;
    tProduto2DtAlteracao: TDateField;
    tProduto2MaterialOutros: TStringField;
    tProduto2PrecoCor: TBooleanField;
    tProduto2CodFornecedor: TIntegerField;
    tProduto2EstMinimo: TFloatField;
    tProdutoEstMaximo: TFloatField;
    tParametrosNroCobranca: TIntegerField;
    tParametrosNroLetraCambio: TIntegerField;
    tParametrosCliEstoque: TIntegerField;
    tPedidoItemNumTalao: TIntegerField;
    tTalao: TTable;
    dsTalao: TDataSource;
    tTalaoGrade: TTable;
    dsTalaoGrade: TDataSource;
    tTalaoTalao: TIntegerField;
    tTalaoCodProduto: TIntegerField;
    tTalaoCodCor: TIntegerField;
    tTalaoCodGrade: TIntegerField;
    tTalaoQuantidade: TFloatField;
    tTalaoPedido: TIntegerField;
    tTalaoItemPedido: TIntegerField;
    tTalaoPedCliDif: TStringField;
    tTalaoCodCliente: TIntegerField;
    tTalaoGradeTalao: TIntegerField;
    tTalaoGradeCodGrade: TIntegerField;
    tTalaoGradePosicao: TIntegerField;
    tTalaoGradeQuantidade: TFloatField;
    tTalaoGradeQtdProduzida: TFloatField;
    tTalaoGradeQtdRestante: TFloatField;
    tTalaolkNomeCliente: TStringField;
    tTalaolkReferencia: TStringField;
    tTalaolkNomeCor: TStringField;
    tTalaolkDescMaterial: TStringField;
    tTalaolkNomeProduto: TStringField;
    tTalaolkDtEmbarque: TDateField;
    tProdutoCliCodGrade: TIntegerField;
    tProdutoCliPosicao: TIntegerField;
    tProdutoClilkTamanho: TStringField;
    tProdutoClilkNomeGrade: TStringField;
    tNotaFiscalItenslkPercSitTributaria: TFloatField;
    tPedidoItemQtdLote: TFloatField;
    tPedidoItemCodProdutoCli: TStringField;
    tPedidoItemProdCliPorTamanho: TBooleanField;
    tPedidoGradeCodProdutoCli: TStringField;
    tSetorFinal: TBooleanField;
    tTalaoProduzido: TBooleanField;
    tTalaoNumMovEst: TIntegerField;
    tProjecaoEst: TTable;
    tProjecaoEstAno: TIntegerField;
    tProjecaoEstProjecao1: TFloatField;
    tProjecaoEstProjecao2: TFloatField;
    tProjecaoEstProjecao3: TFloatField;
    tProjecaoEstProjecao4: TFloatField;
    tProjecaoEstProjecao5: TFloatField;
    tProjecaoEstProjecao6: TFloatField;
    tProjecaoEstProjecao7: TFloatField;
    tProjecaoEstProjecao8: TFloatField;
    tProjecaoEstProjecao9: TFloatField;
    tProjecaoEstProjecao10: TFloatField;
    tProjecaoEstProjecao11: TFloatField;
    tProjecaoEstProjecao12: TFloatField;
    dsProjecaoEst: TDataSource;
    tProjecaoEstclTotal: TFloatField;
    tProjecaoEstCodProduto: TIntegerField;
    tProjecaoEstlkReferencia: TStringField;
    tProjecaoEstlkNomeProduto: TStringField;
    tClienteCodBancoBoleto: TIntegerField;
    tContasInstrucao1: TStringField;
    tContasInstrucao2: TStringField;
    tContasInstrucao3: TStringField;
    tContasInstrucao4: TStringField;
    tContasEspecie: TStringField;
    tContasLocalPagamento: TStringField;
    tContasQtdLinhasInst: TIntegerField;
    tTalaoDtBaixa: TDateField;
    tBanrisul: TTable;
    dsBanrisul: TDataSource;
    tBanrisulCodCedente: TStringField;
    tBanrisulMensagem: TStringField;
    tBanrisulCarteira: TStringField;
    tBanrisulOcorrencia: TStringField;
    tBanrisulTipoDoc: TStringField;
    tBanrisulAceite: TStringField;
    tBanrisulInstrucao1: TStringField;
    tBanrisulInstrucao2: TStringField;
    tBanrisulCodMora: TStringField;
    tBanrisulJuros: TFloatField;
    tBanrisulTaxaMulta: TFloatField;
    tBanrisulDiasMulta: TIntegerField;
    tBanrisulDiasProtesto: TIntegerField;
    tBanrisulCaminho: TStringField;
    tBanrisulNome: TStringField;
    tBanrisulExtensao: TStringField;
    tVale: TTable;
    dsVale: TDataSource;
    tValeItens: TTable;
    dsValeItens: TDataSource;
    tValeNumVale: TIntegerField;
    tValeDtEmissao: TDateField;
    tValeCodCliente: TIntegerField;
    tValeVlrTotal: TFloatField;
    tValeFaturado: TBooleanField;
    tValeItensNumVale: TIntegerField;
    tValeItensItem: TIntegerField;
    tValeItensCodProduto: TIntegerField;
    tValeItensCodCor: TIntegerField;
    tValeItensQtd: TFloatField;
    tValeItensUnidade: TStringField;
    tValeItensVlrUnitario: TFloatField;
    tValeItensVlrTotal: TFloatField;
    tValeItensCodSitTrib: TIntegerField;
    tValeItensAliqIcms: TFloatField;
    tValeItensAliqIPI: TFloatField;
    tValeItensNumPedido: TIntegerField;
    tValeItensItemPedido: TIntegerField;
    tValeItenslkNomeProduto: TStringField;
    tValeItenslkNomeCor: TStringField;
    tValelkNomeCliente: TStringField;
    tValelkUF: TStringField;
    tValeItensNumMovEst: TIntegerField;
    tValeItenslkReferencia: TStringField;
    tPedidoNotaTipo: TStringField;
    tUsuarioVale: TBooleanField;
    tUsuarioRelVale: TBooleanField;
    tUsuarioAltVale: TBooleanField;
    tUsuarioExcVale: TBooleanField;
    tUsuarioInsVale: TBooleanField;
    tNotaFiscalVale: TTable;
    dsNotaFiscalVale: TDataSource;
    tValeSelecionado: TBooleanField;
    tNotaFiscalItensVale: TBooleanField;
    tValeNumNota: TIntegerField;
    tTalaoQtdProduzida: TFloatField;
    tPedidoEstoque: TBooleanField;
    tParametrosPrecoAutomatico: TBooleanField;
    tPedidoItemGerarTalao: TBooleanField;
    tPedidoItem2NumTalao: TIntegerField;
    tNotaFiscalItensObs: TStringField;
    tPedidoItemObs: TStringField;
    tCartaCorrecaoIt: TTable;
    dsCartaCorrecaoIt: TDataSource;
    tCartaCorrecao: TTable;
    tCartaCorrecaoNumMovimento: TIntegerField;
    tCartaCorrecaoCodCliente: TIntegerField;
    tCartaCorrecaoDataEmissao: TDateField;
    tCartaCorrecaoDescricao: TStringField;
    tCartaCorrecaolkCGC: TStringField;
    tCartaCorrecaolkEndereco: TStringField;
    tCartaCorrecaolkBairro: TStringField;
    tCartaCorrecaolkCidade: TStringField;
    tCartaCorrecaolkUF: TStringField;
    tCartaCorrecaolkInscEst: TStringField;
    tCartaCorrecaolkNome: TStringField;
    dsCartaCorrecao: TDataSource;
    tCartaCorrecaoItNumMovimento: TIntegerField;
    tCartaCorrecaoItCodigo: TIntegerField;
    tCartaCorrecaoItCodCorrecao: TIntegerField;
    tCartaCorrecaoItCorrecao: TMemoField;
    tIrregularidade: TTable;
    dsIrregularidade: TDataSource;
    tIrregularidadeCodigo: TIntegerField;
    tIrregularidadeNome: TStringField;
    tValeItenslkNumOS: TStringField;
    tOrdemCompraItemObs: TStringField;
    tTalaoCancelado: TBooleanField;
    tTalaoMotivoCancelado: TStringField;
    tTalaoDtCancelado: TDateField;
    tTalaoDtGerado: TDateField;
    tTalaolkObsItem: TStringField;
    tTalaoImprimir: TBooleanField;
    tTalaoHor: TTable;
    tTalaoHorNumTalao: TIntegerField;
    tTalaoHorData: TDateField;
    tTalaoHorCodFuncionario: TIntegerField;
    tTalaoHorHrEntrada1: TTimeField;
    tTalaoHorHrSaida1: TTimeField;
    tTalaoHorHrEntrada2: TTimeField;
    tTalaoHorHrSaida2: TTimeField;
    tTalaoHorHrEntrada3: TTimeField;
    tTalaoHorHrSaida3: TTimeField;
    dsTalaoHor: TDataSource;
    tTalaoHorlkNomeFuncionario: TStringField;
    tEstoqueMatMovlkCodGrupo: TIntegerField;
    tSitTributariaHistorico: TMemoField;
    tOrcamentoFone: TStringField;
    tOrcamentoEmail: TStringField;
    tOrdemCompralkEmail: TStringField;
    tCPagarCodAtelier: TIntegerField;
    tCPagarParcHistNominal: TBooleanField;
    tUsuarioRelVendasCli: TBooleanField;
    tClienteFornecedor: TBooleanField;
    tTalaoHist: TTable;
    tTalaoHistTalao: TIntegerField;
    tTalaoHistItem: TIntegerField;
    tTalaoHistQtdProduzida: TFloatField;
    tTalaoHistNumMovEst: TIntegerField;
    dsTalaoHist: TDataSource;
    tTalaoHistDtBaixa: TDateField;
    tProdutoSetor: TTable;
    tProdutoSetorCodProduto: TIntegerField;
    tProdutoSetorItem: TIntegerField;
    tProdutoSetorCodSetor: TIntegerField;
    tProdutoSetorTempo: TIntegerField;
    tProdutoSetorTempoRegMaquina: TIntegerField;
    dsProdutoSetor: TDataSource;
    tProdutoSetorlkNomeSetor: TStringField;
    tParametrosSetor: TTable;
    tParametrosSetorOrdem: TIntegerField;
    tParametrosSetorCodSetor: TIntegerField;
    tParametrosSetorlkNomeSetor: TStringField;
    dsParametrosSetor: TDataSource;
    tPedidoPedidoCliente: TStringField;
    tPedido2PedidoCliente: TStringField;
    tPedido2ImpRotulo: TBooleanField;
    tPedido2ImpCalcLote: TBooleanField;
    tPedido2ObsRotulo: TMemoField;
    tPedido2Stock: TStringField;
    tPedido2LoteExp: TBooleanField;
    tPedido2Dolar: TBooleanField;
    tPedido2POCliente: TStringField;
    tPedido2Invoice: TStringField;
    tPedido2Carimbo: TStringField;
    tPedido2VlrReposicao: TFloatField;
    tPedido2Mercado: TStringField;
    tPedido2NumProgramacao: TIntegerField;
    tPedido2Cia: TIntegerField;
    tPedido2Estoque: TBooleanField;
    tNotaFiscalItenslkPedidoCliente: TStringField;
    tNotaFiscalItensNumOC: TStringField;
    tTalaoPedidoCliente: TStringField;
    tTalaoHorCodSetor: TIntegerField;
    tTalaoHorlkNomeSetor: TStringField;
    tParametrosDadosAdicionais1: TStringField;
    tParametrosDadosAdicionais2: TStringField;
    tParametrosDadosAdicionais3: TStringField;
    tNatOperacaoLei1: TStringField;
    tNatOperacaoLei2: TStringField;
    tNatOperacaoLei3: TStringField;
    tSitTributariaHistorico1: TStringField;
    tSitTributariaHistorico2: TStringField;
    tSitTributariaHistorico3: TStringField;
    tObsAuxDescricao1: TStringField;
    tObsAuxDescricao2: TStringField;
    tObsAuxDescricao3: TStringField;
    tNotaFiscalTBObs: TTable;
    tNotaFiscalTBObsCodObs: TIntegerField;
    tNotaFiscalTBObsItem: TIntegerField;
    tNotaFiscalTBObsNomeOBS: TStringField;
    tNotaFiscalTBObsDescricao1: TStringField;
    tNotaFiscalTBObsDescricao2: TStringField;
    tNotaFiscalTBObsDescricao3: TStringField;
    dsNotaFiscalTBObs: TDataSource;
    tNEntradaNumNFRetorno: TStringField;
    tTalaoEncerrado: TBooleanField;
    tUsuarioRelHorasFuncionarios: TBooleanField;
    tUsuarioRelHorasProdutos: TBooleanField;
    tNotaFiscalNDevolvida: TTable;
    tNotaFiscalNDevolvidaNumNota: TIntegerField;
    tNotaFiscalNDevolvidaItem: TIntegerField;
    tNotaFiscalNDevolvidaCodFornecedor: TIntegerField;
    tNotaFiscalNDevolvidaNumNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaItemNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaQtd: TFloatField;
    dsNotaFiscalNDevolvida: TDataSource;
    tNEntradaItensQtdDevolvida: TFloatField;
    tNEntradaItensQtdRestante: TFloatField;
    tNotaFiscalNDevolvidalkNomeFornecedor: TStringField;
    tUsuarioConsNotasBeneficiamento: TBooleanField;
    tNatOperacaoMaoObra: TBooleanField;
    tFuncionarioNomeConjuge: TStringField;
    tCliente2: TTable;
    tCliente2Codigo: TIntegerField;
    tCliente2Nome: TStringField;
    tCliente2Endereco: TStringField;
    tCliente2Bairro: TStringField;
    tCliente2Cidade: TStringField;
    tCliente2Uf: TStringField;
    tCliente2Cep: TStringField;
    tCliente2Telefone: TStringField;
    tCliente2Telefone2: TStringField;
    tCliente2Fax: TStringField;
    tCliente2Pessoa: TStringField;
    tCliente2CgcCpf: TStringField;
    tCliente2InscrEst: TStringField;
    tCliente2Contato: TStringField;
    tCliente2EndEntrega: TStringField;
    tCliente2BairroEntrega: TStringField;
    tCliente2CidEntrega: TStringField;
    tCliente2CepEntrega: TStringField;
    tCliente2UfEntrega: TStringField;
    tCliente2CgcCpfEntrega: TStringField;
    tCliente2InscEntrega: TStringField;
    tCliente2EndPgto: TStringField;
    tCliente2BairroPgto: TStringField;
    tCliente2CidPgto: TStringField;
    tCliente2CepPgto: TStringField;
    tCliente2UfPgto: TStringField;
    tCliente2Fantasia: TStringField;
    tCliente2DtCadastro: TDateField;
    tCliente2CodVendedor: TIntegerField;
    tCliente2Selecionado: TBooleanField;
    tCliente2CaixaPostal: TStringField;
    tCliente2Rg: TStringField;
    tCliente2CodCidade: TIntegerField;
    tCliente2CodCidadeE: TIntegerField;
    tCliente2CodCidadeP: TIntegerField;
    tCliente2Email: TStringField;
    tCliente2CodCondPgto: TIntegerField;
    tCliente2DtNascContato: TDateField;
    tCliente2NomeResp: TStringField;
    tCliente2ContatoCliente: TStringField;
    tCliente2ContatoModelagem: TStringField;
    tCliente2ImpItemNotaPorTam: TBooleanField;
    tCliente2Fornecedor: TBooleanField;
    tExtComissaolkCliente: TStringField;
    tMotivo: TTable;
    tMotivoCodigo: TIntegerField;
    tMotivoNome: TStringField;
    dsMotivo: TDataSource;
    tUsuarioMotivo: TBooleanField;
    tUsuarioAltMotivo: TBooleanField;
    tUsuarioInsMotivo: TBooleanField;
    tUsuarioExcMotivo: TBooleanField;
    tValeItensFaturado: TBooleanField;
    tValeItensQtdRestante: TFloatField;
    tValeItensQtdFaturada: TFloatField;
    tNotaFiscalValeItemNota: TIntegerField;
    tNotaFiscalValeNumVale: TIntegerField;
    tNotaFiscalValeItemVale: TIntegerField;
    tNotaFiscalValeQtd: TFloatField;
    tEquipEpi: TTable;
    tEquipEpiCodigo: TIntegerField;
    tEquipEpiNome: TStringField;
    tEquipEpiQtdMes: TIntegerField;
    dsEquipEpi: TDataSource;
    tUsuarioEquipEpi: TBooleanField;
    tUsuarioAltEquipEpi: TBooleanField;
    tUsuarioExcEquipEpi: TBooleanField;
    tUsuarioInsEquipEpi: TBooleanField;
    tFuncionarioEPI: TTable;
    tFuncionarioEPICodFuncionario: TIntegerField;
    tFuncionarioEPICodEpi: TIntegerField;
    tFuncionarioEPIQtd: TIntegerField;
    dsFuncionarioEPI: TDataSource;
    tFuncionarioEPIlkNomeEPI: TStringField;
    tFuncionarioEPIData: TDateField;
    tOrcamentoItensDtEntrega: TDateField;
    tMovAtelier: TTable;
    tMovAtelierItens: TTable;
    dsMovAtelier: TDataSource;
    dsMovAtelierItens: TDataSource;
    tMovAtelierNumMov: TIntegerField;
    tMovAtelierCodCliente: TIntegerField;
    tMovAtelierDtEmissao: TDateField;
    tMovAtelierItensNumMov: TIntegerField;
    tMovAtelierItensItem: TIntegerField;
    tMovAtelierItensTalao: TIntegerField;
    tMovAtelierItensCodProduto: TIntegerField;
    tMovAtelierItensCodCor: TIntegerField;
    tMovAtelierItensQtd: TFloatField;
    tMovAtelierItensQtdDevolvida: TFloatField;
    tMovAtelierItensQtdRestante: TFloatField;
    tMovAtelierVlrTotal: TFloatField;
    tMovAtelierItensVlrUnitario: TFloatField;
    tMovAtelierItensVlrTotal: TFloatField;
    tMovAtelierItenslkReferencia: TStringField;
    tMovAtelierItenslkNomeProduto: TStringField;
    tMovAtelierItensDtBaixa: TDateField;
    tMovAtelierBaixado: TBooleanField;
    tUsuarioConsMovAtelier: TBooleanField;
    tClienteLiberacao: TStringField;
    tUsuarioConsCPagarCReceber: TBooleanField;
    tPedidoNotaNumMovEst: TIntegerField;
    tValeItensNumOC: TStringField;
    tValeItensNumOS: TStringField;
    tParametrosSenhaExc: TStringField;
    tUsuarioRelOrcamento: TBooleanField;
    tOrcamentoMotivoNaoAprov: TMemoField;
    tOrcamentoAprovado: TStringField;
    tNatOperacaoControlarRetorno: TBooleanField;
    tNotaFiscalItensQtdRestante: TFloatField;
    tNotaFiscalItensQtdDevolvida: TFloatField;
    tNEntradaNDevolvida: TTable;
    dsNEntradaNDevolvida: TDataSource;
    tNEntradaNDevolvidaCodForn: TIntegerField;
    tNEntradaNDevolvidaNumNEntr: TIntegerField;
    tNEntradaNDevolvidaItem: TIntegerField;
    tNEntradaNDevolvidaNumNotaSaida: TIntegerField;
    tNEntradaNDevolvidaItemNotaSaida: TIntegerField;
    tNEntradaNDevolvidaQtd: TFloatField;
    tNEntradaNDevolvidaDtEmissao: TDateField;
    tNEntradaNDevolvidaDtEntrada: TDateField;
    tNEntradaItensDevolucao: TBooleanField;
    tPedidoLog: TTable;
    dsPedidoLog: TDataSource;
    tPedidoLogNumMov: TIntegerField;
    tPedidoLogPedido: TIntegerField;
    tPedidoLogItemPedido: TIntegerField;
    tPedidoLogNumTalao: TIntegerField;
    tPedidoLogQtdTalao: TFloatField;
    tPedidoLogDtAlteracao: TDateField;
    tPedidoLogHrAlteracao: TTimeField;
    tPedidoLogUsuario: TStringField;
    tPedidoLogCodProduto: TIntegerField;
    tPedidoLogCodCor: TIntegerField;
    tPedidoLogTipo: TStringField;
    tGrupoCliente: TTable;
    dsGrupoCliente: TDataSource;
    tGrupoClienteCodigo: TIntegerField;
    tGrupoClienteNome: TStringField;
    tUsuarioHistFaturamento: TBooleanField;
    tUsuarioGrupoCliente: TBooleanField;
    tUsuarioAltGrupoCliente: TBooleanField;
    tUsuarioExcGrupoCliente: TBooleanField;
    tUsuarioInsGrupoCliente: TBooleanField;
    tClienteCodGrupo: TIntegerField;
    tClienteHomePage: TStringField;
    tClienteEmail: TStringField;
    tGrupoCliente2: TTable;
    tGrupoCliente2Codigo: TIntegerField;
    tGrupoCliente2Nome: TStringField;
    tClientelkNomeGrupo: TStringField;
    tFuncionarioNumMatricula: TIntegerField;
    tPedidoCanc: TTable;
    dsPedidoCanc: TDataSource;
    tPedidoCancPedido: TIntegerField;
    tPedidoCancItemPed: TIntegerField;
    tPedidoCancItem: TIntegerField;
    tPedidoCancData: TDateField;
    tPedidoCancMotivo: TStringField;
    tPedidoCancQtd: TFloatField;
    tPedidoCancNumLote: TIntegerField;
    tPedidoCancUsuario: TStringField;
    tPedidoCancDtUsuario: TDateField;
    tPedidoCancHrUsuario: TTimeField;
    tParametrosCaminhoGrids: TStringField;
    tPedidoItemUnidade: TStringField;
    tChequeCPagar: TTable;
    tChequeCPagarCodConta: TIntegerField;
    tChequeCPagarNumCheque: TIntegerField;
    tChequeCPagarNumCPagar: TIntegerField;
    tChequeCPagarParcela: TIntegerField;
    tChequeCPagarNumNota: TIntegerField;
    tChequeCPagarCodFornecedor: TIntegerField;
    tChequeCPagarValor: TFloatField;
    tChequeCPagarVlrJuros: TFloatField;
    tChequeCPagarVlrDesconto: TFloatField;
    dsChequeCPagar: TDataSource;
    tPlanoContasItens: TTable;
    dsPlanoContasItens: TDataSource;
    tPlanoContasItensCodPlano: TIntegerField;
    tPlanoContasItensCodItem: TIntegerField;
    tPlanoContasItensNome: TStringField;
    tMovimentosCodPlanoContasItens: TIntegerField;
    tCReceberParcCodPlanoContasItens: TIntegerField;
    tCPagarParcCodPlanoContasItens: TIntegerField;
    tParametrosControlarJurosParam: TBooleanField;
    tParametrosPercJuros: TFloatField;
    tCReceberParcHistCodConta: TIntegerField;
    tCPagarParcHistCodConta: TIntegerField;
    tFeriado: TTable;
    tFeriadoData: TDateField;
    tFeriadoDescricao: TStringField;
    tUsuarioFeriado: TBooleanField;
    tUsuarioAltFeriado: TBooleanField;
    tUsuarioExcFeriado: TBooleanField;
    tUsuarioInsFeriado: TBooleanField;
    tTipoCobrancaDeposito: TBooleanField;
    tTipoCobrancaGeraBoleto: TBooleanField;
    tTipoCobrancaQtdDias: TIntegerField;
    tCReceberParcCodBancoBoleto: TIntegerField;
    tCReceberParcNumCarteira: TStringField;
    tCReceberParcDtVencimento2: TDateField;
    tEstoqueMatMovTamanho: TStringField;
    tCPagarParcDtGerado: TDateField;
    tContasAgencia: TStringField;
    tContasDigConta: TStringField;
    tContasNumConta: TStringField;
    tContasCodCedente: TStringField;
    tNotaFiscalFilial: TIntegerField;
    tChequeCPagarlkNomeFornecedor: TStringField;
    tClienteCodTipoCobranca: TIntegerField;
    tNotaFiscalParcCodConta: TIntegerField;
    tContas2: TTable;
    tContas2CodConta: TIntegerField;
    tContas2NomeConta: TStringField;
    tNotaFiscalParclkNomeConta: TStringField;
    tNotaFiscalParclkDeposito: TBooleanField;
    tCPagarParc2: TTable;
    tCPagarParc2NumCPagar: TIntegerField;
    tCPagarParc2ParcCPagar: TIntegerField;
    tCPagarParc2DtVencCPagar: TDateField;
    tCPagarParc2NroDuplicata: TIntegerField;
    tChequeCPagarlkNroDuplicata: TIntegerField;
    tChequeCPagarlkDtVencimento: TDateField;
    tTalaoImpressoData: TDateField;
    tTalaoImpressoHora: TTimeField;
    tTalaoImpressoUsuario: TStringField;
    tTalaoProcesso: TStringField;
    tUsuarioCadastroParadas: TBooleanField;
    tUsuarioCadastroDefeitos: TBooleanField;
    tUsuarioAltCadastroParadas: TBooleanField;
    tUsuarioAltCadastroDefeitos: TBooleanField;
    tUsuarioExcCadastroParadas: TBooleanField;
    tUsuarioExcCadastroDefeitos: TBooleanField;
    tUsuarioInsCadastroParadas: TBooleanField;
    tUsuarioInsCadastroDefeitos: TBooleanField;
    tUsuarioTalao: TBooleanField;
    tUsuarioInsTalao: TBooleanField;
    tPedidoItemTalaoNovo: TBooleanField;
    tProdutoDiametro: TStringField;
    tProdutoComprimento: TStringField;
    tProdutoRosca: TStringField;
    tProdutoCabeca: TStringField;
    tUsuarioTalaoCancelar: TBooleanField;
    tProdutoEndFotoTalao: TStringField;
    tCidadeCodMunicipio: TStringField;
    tPais: TTable;
    dsPais: TDataSource;
    tCSTIPI: TTable;
    dsCSTIPI: TDataSource;
    tCSTIPICodigo: TStringField;
    tCSTIPINome: TStringField;
    tPaisID: TIntegerField;
    tPaisPais: TStringField;
    tPaisCodPais: TStringField;
    tNotaFiscalNumSeq: TIntegerField;
    tNotaFiscalNFeRecibo: TStringField;
    tNotaFiscalNFeProtocolo: TStringField;
    tNotaFiscalNFeChaveAcesso: TStringField;
    tNotaFiscalNFeProtocoloCancelada: TStringField;
    tNotaFiscalSerie: TStringField;
    tNotaFiscalNFeCodBarraCont: TStringField;
    tNotaFiscalVlrPis: TFloatField;
    tNotaFiscalVlrCofins: TFloatField;
    tNotaFiscalVlrTaxaCiscomex: TFloatField;
    tNotaFiscalVlrOutros: TFloatField;
    tNotaFiscalVlrImpImportacao: TFloatField;
    tNotaFiscalICMSVlrSubst: TFloatField;
    tNotaFiscalICMSBaseSubst: TFloatField;
    tNotaFiscalGradeFilial: TIntegerField;
    tNotaFiscalGradeNumSeq: TIntegerField;
    tNotaFiscalItensFilial: TIntegerField;
    tNotaFiscalItensNumSeq: TIntegerField;
    tNotaFiscalItensCodCSTIPI: TStringField;
    tNotaFiscalItensObsComplementar: TStringField;
    tNotaFiscalItensAliqPis: TFloatField;
    tNotaFiscalItensAliqCofins: TFloatField;
    tNotaFiscalItensVlrPis: TFloatField;
    tNotaFiscalItensVlrCofins: TFloatField;
    tNotaFiscalItensSerie: TStringField;
    tNotaFiscalNDevolvidaFilial: TIntegerField;
    tNotaFiscalNDevolvidaNumSeq: TIntegerField;
    tNotaFiscalParcFilial: TIntegerField;
    tNotaFiscalParcNumSeq: TIntegerField;
    tNotaFiscalTBObsFilial: TIntegerField;
    tNotaFiscalTBObsNumSeq: TIntegerField;
    tNotaFiscalValeFilial: TIntegerField;
    tNotaFiscalValeNumSeq: TIntegerField;
    tFilial: TTable;
    dsFilial: TDataSource;
    tFilialCodigo: TIntegerField;
    tFilialEmpresa: TStringField;
    tFilialEndereco: TStringField;
    tFilialBairro: TStringField;
    tFilialCep: TStringField;
    tFilialCidade: TStringField;
    tFilialEstado: TStringField;
    tFilialTel: TStringField;
    tFilialTel2: TStringField;
    tFilialFax: TStringField;
    tFilialCNPJ: TStringField;
    tFilialInscr: TStringField;
    tFilialSimples: TBooleanField;
    tFilialEmail: TStringField;
    tFilialSimplesGaucho: TBooleanField;
    tFilialImpSimplesGaucho: TBooleanField;
    tFilialEndLogo: TStringField;
    tFilialNomeInterno: TStringField;
    tFilialCalculaIPI: TBooleanField;
    tFilialInativo: TBooleanField;
    tFilialCodCidade: TIntegerField;
    tFilialInscMunicipal: TStringField;
    tFilialCNAE: TStringField;
    tFilialNumEnd: TStringField;
    tFilialHomePage: TStringField;
    tFilialUsarICMSimples: TBooleanField;
    tParametrosVersaoEmissaoNFe: TStringField;
    tParametrosSerieNormal: TStringField;
    tParametrosSerieContingencia: TStringField;
    tParametrosLocalServidorNFe: TStringField;
    tParametrosControlaNFe: TBooleanField;
    tParametrosEndSalvarXMLNFe: TStringField;
    tParametrosEmailResponsavelSistema: TStringField;
    tParametrosNFeProducao: TBooleanField;
    tParametrosUsarOutlook: TBooleanField;
    tUFIDPais: TIntegerField;
    tUFCodUF: TStringField;
    tClienteEmailNFe: TStringField;
    tClienteNumEnd: TStringField;
    tClienteNumEndEntrega: TStringField;
    tClienteCodCSTIPI: TStringField;
    tClienteComplEndereco: TStringField;
    tFornecedoresNumEnd: TStringField;
    tProdutoCodCSTIPI: TStringField;
    tNatOperacaoCodCSTIPI: TStringField;
    tCReceberFilial: TIntegerField;
    tCReceberNumSeqNota: TIntegerField;
    tCReceberSerie: TStringField;
    tCReceberParcFilial: TIntegerField;
    tCReceberParcNumSeqNota: TIntegerField;
    tCReceberParcSerie: TStringField;
    tCReceberParcHistFilial: TIntegerField;
    tValeNumSeqNota: TIntegerField;
    tValeFilial: TIntegerField;
    tEstoqueMatMovNumSeqNota: TIntegerField;
    tEstoqueMatMovSerie: TStringField;
    tExtComissaoNumSeqNota: TIntegerField;
    tExtComissaoSerie: TStringField;
    tExtComissaoFilial: TIntegerField;
    tNotaFiscalMotivoCanc: TStringField;
    tNotaFiscalUsuario: TStringField;
    tNotaFiscalDtCad: TDateField;
    tNotaFiscalHrCad: TTimeField;
    tClienteIPISuspenso: TBooleanField;
    tClienteDtValidadeIpi: TDateField;
    tClienteCodObsIpi: TIntegerField;
    tParametrosObsSimples: TMemoField;
    tNotaFiscalPercIcmsSimples: TFloatField;
    tNotaFiscalVlrIcmsSimples: TFloatField;
    tParametrosImpRefNota: TBooleanField;
    tProdutoComplemento: TStringField;
    tFornecedores2CGC: TStringField;
    tNotaFiscalNDevolvidalkCGCFornecedor: TStringField;
    tNotaFiscallkImpItemNotaPorTamanho: TBooleanField;
    tNotaFiscalRef: TTable;
    dsNotaFiscalRef: TDataSource;
    tNotaFiscalRefFilial: TIntegerField;
    tNotaFiscalRefNumSeq: TIntegerField;
    tNotaFiscalRefItem: TIntegerField;
    tNotaFiscalRefNumSeqRef: TIntegerField;
    tNotaFiscalRefNumNotaRef: TIntegerField;
    tNotaFiscalRefSerieRef: TStringField;
    tNotaFiscalRefCodUFEmitenteRef: TStringField;
    tNotaFiscalRefAnoEmissaoRef: TIntegerField;
    tNotaFiscalRefMesEmissaoRef: TIntegerField;
    tNotaFiscalRefCNPJEmitenteRef: TStringField;
    tNotaFiscalRefModeloRef: TStringField;
    tNotaFiscalRefNFeChaveAcessoRef: TStringField;
    tNotaFiscalRefCodFornecedor: TIntegerField;
    tCReceberParcRem: TTable;
    tCReceberParcRemFilial: TIntegerField;
    tCReceberParcRemNumCReceber: TIntegerField;
    tCReceberParcRemParcCReceber: TIntegerField;
    tCReceberParcRemItemHist: TIntegerField;
    tCReceberParcRemItemRem: TIntegerField;
    tCReceberParcRemCodConta: TIntegerField;
    tCReceberParcRemInstrucao: TStringField;
    tCReceberParcRemCampoAlterado: TStringField;
    tCReceberParcRemEspDoc: TStringField;
    tCReceberParcRemCodAceite: TStringField;
    tCReceberParcRemInstProtesto: TStringField;
    tCReceberParcRemDiasProtesto: TIntegerField;
    tCReceberParcRemTaxaMulta: TFloatField;
    tCReceberParcRemTipoJuros: TStringField;
    tCReceberParcRemVlrJuros: TFloatField;
    tCReceberParcRemTipoDesconto: TStringField;
    tCReceberParcRemVlrDesconto: TFloatField;
    tCReceberParcRemDtLimiteDesconto: TStringField;
    tCReceberParcRemVlrDescAntecipacao: TFloatField;
    tCReceberParcRemVlrAbatimento: TFloatField;
    tCReceberParcRemAvalista: TStringField;
    tCReceberParcRemCnpjAvalista: TStringField;
    tCReceberParcRemDtVecto: TStringField;
    tCReceberParcRemCodCedente: TStringField;
    tCReceberParcRemCepAvalista: TStringField;
    tCReceberParcRemEndAvalista: TStringField;
    tCReceberParcRemCidAvalista: TStringField;
    tCReceberParcRemUFAvalista: TStringField;
    tCReceberParcRemImpBoleto: TStringField;
    tCReceberParcRemInstrCobranca1: TStringField;
    tCReceberParcRemInstrCobranca2: TStringField;
    tCReceberParcRemNumCarteira: TStringField;
    tCReceberParcRemBairroAvalista: TStringField;
    tCReceberParcRemEmail: TStringField;
    tCReceberParcRemBoletoPorEmail: TBooleanField;
    tCReceberParcRemNumTitBanco: TStringField;
    dsCReceberParcRem: TDataSource;
    tCReceberParcCodVendedor2: TIntegerField;
    tCReceberParcPercComissao2: TFloatField;
    tNotaFiscalCodVendedor2: TIntegerField;
    tNotaFiscalPercComissao2: TFloatField;
    tCReceberParcComissaoItem: TBooleanField;
    tCReceberParcExportacao: TBooleanField;
    tCReceberBoletoImp: TBooleanField;
    tParametrosCodBancoTransfIcms: TIntegerField;
    tParametrosCodTipoCobrancaTransfIcms: TIntegerField;
    tUsuarioFilial: TBooleanField;
    tUsuarioAltFilial: TBooleanField;
    tUsuarioExcFilial: TBooleanField;
    tUsuarioInsFilial: TBooleanField;
    RxDBFilter1: TRxDBFilter;
    tNEntradaNDevolvidaFilial: TIntegerField;
    tNEntradaNDevolvidaNumSeqNotaSaida: TIntegerField;
    tCReceberParcVlrComissaoRestante: TFloatField;
    tCReceberParcHistTipo: TStringField;
    tMovimentosFilial: TIntegerField;
    tMovimentosParcela: TIntegerField;
    tFilial2: TTable;
    tFilial2Codigo: TIntegerField;
    tFilial2Empresa: TStringField;
    tFilial2Endereco: TStringField;
    tFilial2Bairro: TStringField;
    tFilial2Cep: TStringField;
    tFilial2Cidade: TStringField;
    tFilial2Estado: TStringField;
    tFilial2Tel: TStringField;
    tFilial2Tel2: TStringField;
    tFilial2Fax: TStringField;
    tFilial2CNPJ: TStringField;
    tFilial2Inscr: TStringField;
    tFilial2Simples: TBooleanField;
    tFilial2Email: TStringField;
    tFilial2SimplesGaucho: TBooleanField;
    tFilial2ImpSimplesGaucho: TBooleanField;
    tFilial2EndLogo: TStringField;
    tFilial2NomeInterno: TStringField;
    tFilial2CalculaIPI: TBooleanField;
    tFilial2Inativo: TBooleanField;
    tFilial2CodCidade: TIntegerField;
    tFilial2InscMunicipal: TStringField;
    tFilial2CNAE: TStringField;
    tFilial2NumEnd: TStringField;
    tFilial2HomePage: TStringField;
    tFilial2UsarICMSimples: TBooleanField;
    tPedidoNotaNumSeqNota: TIntegerField;
    tPedidoNotaFilialNota: TIntegerField;
    tCliente2Liberacao: TStringField;
    tCliente2CodGrupo: TIntegerField;
    tCliente2CodTipoCobranca: TIntegerField;
    tCliente2NumEnd: TStringField;
    tCliente2NumEndEntrega: TStringField;
    tCliente2CodCSTIPI: TStringField;
    tCliente2ComplEndereco: TStringField;
    tNotaFiscallkNumEndCli: TStringField;
    tNotaFiscallkNumEndEntregaCli: TStringField;
    tCliente2lkCidade: TStringField;
    tCliente2lkCidadeE: TStringField;
    tCliente2lkCidadeP: TStringField;
    tCReceberParclkCidade: TStringField;
    tCReceberParclkCidadeE: TStringField;
    tCReceberParclkNumEnd: TStringField;
    tCReceberParclkNumEndEntrega: TStringField;
    tCReceberParclkCidPgto: TStringField;
    tUFIcmsInterno: TFloatField;
    tNatOperacaoCodSitTrib: TIntegerField;
    tNotaFiscalTipoNotaNFeRef: TStringField;
    tCReceberParcCodCartaoCredito: TIntegerField;
    tCReceberParcCodBancoCheque: TIntegerField;
    tCReceberParcNumCartaoCredito: TStringField;
    tCReceberParcValidadeCartao: TStringField;
    tCReceberParcTipoCondicao: TStringField;
    tCReceberParcNumAutorizacaoCartao: TStringField;
    tCReceberParcNumCheque: TIntegerField;
    tOrcamentoItensPrazoEntrega: TStringField;
    tParametrosEndSalvarPDFNFe: TStringField;
    tTranspEmailNFe: TStringField;
    tParametrosQtdLinhasIniciaisDupl: TIntegerField;
    tParametrosQtdLinhasIniciaisBoleto: TIntegerField;
    tFuncionarioMostrarNaProducao: TBooleanField;
    tTranspFantasia: TStringField;
    tTranspPessoa: TStringField;
    tTranspUFPlaca: TStringField;
    tTranspPlaca: TStringField;
    tTranspHomePage: TStringField;
    tTranspEmail: TStringField;
    tTranspCliente: TBooleanField;
    tTransp2: TTable;
    tTransp2Codigo: TIntegerField;
    tTransp2Nome: TStringField;
    tTransp2Endereco: TStringField;
    tTransp2Bairro: TStringField;
    tTransp2Cidade: TStringField;
    tTransp2Cep: TStringField;
    tTransp2UF: TStringField;
    tTransp2Fone: TStringField;
    tTransp2Fax: TStringField;
    tTransp2CNPJ: TStringField;
    tTransp2Inscricao: TStringField;
    tTransp2Contato: TStringField;
    tTransp2Obs: TMemoField;
    tTransp2CodCidade: TIntegerField;
    tTransp2EmailNFe: TStringField;
    tTransp2Fantasia: TStringField;
    tTransp2Pessoa: TStringField;
    tTransp2UFPlaca: TStringField;
    tTransp2Placa: TStringField;
    tTransp2HomePage: TStringField;
    tTransp2Email: TStringField;
    tTransp2Cliente: TBooleanField;
    tNotaFiscallkPessoaTransp: TStringField;
    tParametrosGeraComissaoDevol: TBooleanField;
    tParametrosHrEnt1: TTimeField;
    tParametrosHrSai1: TTimeField;
    tParametrosHrEnt2: TTimeField;
    tParametrosHrSai2: TTimeField;
    tPedidoItem2DtReprogramacao: TDateField;
    tProdutolkGrupo: TStringField;
    tProdutolkSitTributaria: TFloatField;
    tProdutolkNomeGrade: TStringField;
    tProdutolkCodSitTrib: TStringField;
    tParametrosTipoDoLogoNFe: TStringField;
    tParametrosSomarNoProdFrete: TBooleanField;
    tParametrosVersaoNFe: TStringField;
    tParametrosQtdHorasCancNFe: TIntegerField;
    tParametrosImp2ObsSimples: TBooleanField;
    tParametrosPisCofinsSomarOutrasDesp: TBooleanField;
    tParametrosEnviarNotasBenefNaNFe: TBooleanField;
    tParametrosAplicarDescontoNoIPI: TBooleanField;
    tParametrosAplicarDescontoNoICMS: TBooleanField;
    tParametrosSomarNoProdOutrasDesp: TBooleanField;
    tParametrosSomarNoProdSeguro: TBooleanField;
    tParametrosAjusteLogoNFeAutomatico: TBooleanField;
    tFilialCodRegimeTrib: TIntegerField;
    tFilialCodPis: TStringField;
    tFilialCodCofins: TStringField;
    tFilialTipoPis: TStringField;
    tFilialTipoCofins: TStringField;
    tFilialPercCofins: TFloatField;
    tFilialPercPis: TFloatField;
    tFilialCodSitTrib: TIntegerField;
    tFilialCodCSTIPI: TStringField;
    tFilialDtEstoque: TDateField;
    tFilialEmailNfe: TStringField;
    tNotaFiscalVersaoNFe: TStringField;
    tNotaFiscalFinalidade: TStringField;
    tNotaFiscalDtContingencia: TDateField;
    tNotaFiscalHrContingencia: TTimeField;
    tNotaFiscalMotivoContingencia: TStringField;
    tNotaFiscalIdentVersaoEmissao: TStringField;
    tNotaFiscalCodRegimeTrib: TIntegerField;
    tNotaFiscalRNTC: TStringField;
    tNotaFiscalIdentifVagaoBalsa: TStringField;
    tNotaFiscalTipoIdentifVagaoBalsa: TStringField;
    tNotaFiscalUFEmbExp: TStringField;
    tNotaFiscalLocalEmbExp: TStringField;
    tNotaFiscalVlrDuplicataOutros: TFloatField;
    tNotaFiscalPisCofinsSomarOutrasDesp: TBooleanField;
    tNotaFiscalTipoDesconto: TStringField;
    tNotaFiscalGeraDupl_PisCofins: TBooleanField;
    tNotaFiscalGeraDupl_OutrosValores: TBooleanField;
    tNotaFiscalGeraDupl_Frete: TBooleanField;
    tNotaFiscalGeraDupl_Seguro: TBooleanField;
    tNotaFiscalAliqICMS_PisCofins: TFloatField;
    tNotaFiscalAliqICMS_OutrosValores: TFloatField;
    tNotaFiscalAliqICMS_Frete: TFloatField;
    tNotaFiscalPercDescontoOrig: TFloatField;
    tNotaFiscalBaseIcmsSimples: TFloatField;
    tNotaFiscalBaseIcmsOutros: TFloatField;
    tNotaFiscalVlrIcmsOutros: TFloatField;
    tClienteComplEnderecoEntrega: TStringField;
    tClienteCodSitTribSimples: TIntegerField;
    tClienteUsaIcmsSimples: TBooleanField;
    tClienteDDDFone1: TIntegerField;
    tClienteDDDFone2: TIntegerField;
    tClienteDDDFax: TIntegerField;
    tNotaFiscalItensOrigemProd: TStringField;
    tNotaFiscalItensSomaVlrTotalProd: TBooleanField;
    tNotaFiscalItensVlrFrete: TFloatField;
    tNotaFiscalItensVlrOutrasDespesas: TFloatField;
    tNotaFiscalItensVlrSeguro: TFloatField;
    tNotaFiscalItensVlrIcmsFrete: TFloatField;
    tNotaFiscalItensVlrIcmsOutrasDespesas: TFloatField;
    tNotaFiscalItensVlrDescontoRateio: TFloatField;
    tNotaFiscalItensCodPis: TStringField;
    tNotaFiscalItensCodCofins: TStringField;
    tNotaFiscalItensTipoPis: TStringField;
    tNotaFiscalItensTipoCofins: TStringField;
    tNotaFiscalItensBaseIcmsSimples: TFloatField;
    tNotaFiscalItensVlrIcmsSimples: TFloatField;
    tNatOperacaoIcmsSimples: TBooleanField;
    tNatOperacaoCodSitTribSimples: TIntegerField;
    tNatOperacaoCodCSTIPISimples: TStringField;
    tNatOperacaoCodPisSimples: TStringField;
    tNatOperacaoCodCofinsSimples: TStringField;
    tNatOperacaoTipoPisSimples: TStringField;
    tNatOperacaoTipoCofins: TStringField;
    tNatOperacaoPercPis: TFloatField;
    tNatOperacaoPercCofins: TFloatField;
    tNatOperacaoPercPisSimples: TFloatField;
    tNatOperacaoPercCofinsSimples: TFloatField;
    tNatOperacaoTipoEmpresa: TStringField;
    tNatOperacaoCopiarNotaTriangular: TBooleanField;
    tNatOperacaoDeduzirFat: TBooleanField;
    tNatOperacaoCodPis: TStringField;
    tNatOperacaoCodCofins: TStringField;
    tNatOperacaoTipoPis: TStringField;
    tNatOperacaoDescInterna: TStringField;
    tNatOperacaoCalcComissao: TBooleanField;
    tParametrosTipoComissao: TStringField;
    tClienteIPI: TFloatField;
    tProdutoOrigemProd: TStringField;
    tUsuarioRegimeTrib: TBooleanField;
    tUsuarioCSOSN: TBooleanField;
    tUsuarioTabPis: TBooleanField;
    tUsuarioTabCofins: TBooleanField;
    tUsuarioNFeInutilizar: TBooleanField;
    tUsuarioPercSimples: TBooleanField;
    tUsuarioAltRegimeTrib: TBooleanField;
    tUsuarioAltCSOSN: TBooleanField;
    tUsuarioAltTabPis: TBooleanField;
    tUsuarioAltTabCofins: TBooleanField;
    tUsuarioAltNFeInutilizar: TBooleanField;
    tUsuarioAltImposto: TBooleanField;
    tUsuarioAltPercSimples: TBooleanField;
    tUsuarioExcRegimeTrib: TBooleanField;
    tUsuarioExcCSOSN: TBooleanField;
    tUsuarioExcTabPis: TBooleanField;
    tUsuarioExcTabCofins: TBooleanField;
    tUsuarioExcNFeInutilizar: TBooleanField;
    tUsuarioExcImposto: TBooleanField;
    tUsuarioExcPercSimples: TBooleanField;
    tUsuarioInsRegimeTrib: TBooleanField;
    tUsuarioInsCSOSN: TBooleanField;
    tUsuarioInsTabPis: TBooleanField;
    tUsuarioInsTabCofins: TBooleanField;
    tUsuarioInsNFeInutilizar: TBooleanField;
    tUsuarioInsImposto: TBooleanField;
    tUsuarioInsPercSimples: TBooleanField;
    tClasFiscalTipo: TStringField;
    tClasFiscalNome: TStringField;
    tNotaFiscalItensPercComissao: TFloatField;
    tNotaFiscalRefTipo: TStringField;
    tNotaFiscalNDevolvidaModelo: TStringField;
    tNotaFiscalNDevolvidaSerie: TStringField;
    tNotaFiscalNDevolvidaNFeChaveAcessoNEntrada: TStringField;
    tNotaFiscalNDevolvidaDtEmissao: TDateField;
    tNotaFiscalNDevolvidaUFFornecedor: TStringField;
    tNotaFiscalTBObsDadosAdicionais: TMemoField;
    tClienteTipoFrete: TStringField;
    tSitTributariaTipo: TStringField;
    tSitTributariaNome: TStringField;
    tPercSimples: TTable;
    tPercSimplesFilial: TIntegerField;
    tPercSimplesAno: TIntegerField;
    tPercSimplesMes: TIntegerField;
    tPercSimplesPercentual: TFloatField;
    dsPercSimples: TDataSource;
    tPedidoItem2Obs: TStringField;
    tNatOperacaoSubstTrib: TBooleanField;
    tNatOperacaoMVA: TBooleanField;
    tNotaFiscalItensIcmsBaseSubst: TFloatField;
    tNotaFiscalItensIcmsVlrSubst: TFloatField;
    tClasFiscalVmaInterno: TFloatField;
    tClasFiscalVmaInterestadual: TFloatField;
    tNotaFiscalTipoEnvioNF: TStringField;
    tClienteIdPais: TIntegerField;
    qPais: TQuery;
    qPaisID: TIntegerField;
    qPaisPais: TStringField;
    qPaisCodPais: TStringField;
    dsqPais: TDataSource;
    tNEntradaItensSerie: TStringField;
    tNEntradaParcSerie: TStringField;
    tNEntradaItensGradeSerie: TStringField;
    tNEntradaItensMobraSerie: TStringField;
    tNEntradaNDevolvidaSerie: TStringField;
    tFornecedoresIDPais: TIntegerField;
    tTranspIDPais: TIntegerField;
    tNatOperacaoGeraEstoque: TBooleanField;
    tCliente2DDDFone1: TIntegerField;
    tPedidolkDDDFone1: TIntegerField;
    tUsuarioEncerrarContaPeriodo: TBooleanField;
    tMovimentosDtUsuario: TDateField;
    tMovimentosHrUsuario: TTimeField;
    tMovimentosUsuario: TStringField;
    tContasFilial: TIntegerField;
    tContasDtEncerramento: TDateField;
    tContasCNAB: TStringField;
    tContasDescNota: TStringField;
    tCorPantone: TStringField;
    tOutrosCodCidade: TIntegerField;
    tOutrosEndereco: TStringField;
    tOutrosCep: TStringField;
    tOutrosUF: TStringField;
    tOutrosNumDoc: TStringField;
    tOutrosPessoa: TStringField;
    tOutrosHomePage: TStringField;
    tOutrosObs: TMemoField;
    tOutrosBairro: TStringField;
    tOutrosFantasia: TStringField;
    tCSTIPIGeraIPI: TBooleanField;
    tPedidoSolicitante: TStringField;
    tFornecedoresDDDFone1: TIntegerField;
    tFornecedoresDDDFone2: TIntegerField;
    tFornecedoresDDDFax: TIntegerField;
    tNotaFiscalVoltouNota: TBooleanField;
    tExtCartao: TTable;
    tExtCartaoNumMov: TIntegerField;
    tExtCartaoCodCartao: TIntegerField;
    tExtCartaoNumCartao: TStringField;
    tExtCartaoValidadeCartao: TStringField;
    tExtCartaoNumAutorizacao: TStringField;
    tExtCartaoDtMov: TDateField;
    tExtCartaoFuncao: TStringField;
    tExtCartaoCodCliente: TIntegerField;
    tExtCartaoValor: TFloatField;
    tExtCartaoDtEmissao: TDateField;
    tExtCartaoObs: TStringField;
    tExtCartaoTipoDoc: TStringField;
    tExtCartaoNumNota: TIntegerField;
    tExtCartaoNumSeqNota: TIntegerField;
    tExtCartaoFilial: TIntegerField;
    tExtCartaoDtPagamento: TDateField;
    tExtCartaoVlrPagamento: TFloatField;
    tExtCartaoPago: TBooleanField;
    tExtCartaoVlrPendente: TFloatField;
    tExtCartaoDtVencimento: TDateField;
    tExtCartaoCodLoja: TIntegerField;
    tExtCartaoCodConta: TIntegerField;
    tExtCartaoNumMovFin: TIntegerField;
    tExtCartaoPlanoContas: TIntegerField;
    tExtCartaoCodPlanoContasItens: TIntegerField;
    tExtCartaoNumCReceber: TIntegerField;
    tExtCartaoParcela: TIntegerField;
    tCartaoCredito: TTable;
    tCartaoCreditoCodigo: TIntegerField;
    tCartaoCreditoNome: TStringField;
    tExtCartaolkCartaoCredito: TStringField;
    tContasConvenioLider: TStringField;
    tContasCodTipoCobranca: TIntegerField;
    tNotaFiscalVlrAduaneira: TFloatField;
    tNotaFiscalItensVlrImportacao: TFloatField;
    tNotaFiscalItensVlrAduaneira: TFloatField;
    tParametrosUsaGrupoFilial: TBooleanField;
    tFilialDep: TTable;
    dsFilialDep: TDataSource;
    tFilialDepCodFilial: TIntegerField;
    tFilialDepCodFilialDep: TIntegerField;
    tParametrosMostrarVale: TBooleanField;
    tValeGeraCobranca: TBooleanField;
    tCReceberParclkPessoa: TStringField;
    tParametrosImpReciboRec: TBooleanField;
    tNotaFiscalNFeDenegada: TBooleanField;
    tNotaFiscalNFeMotivoDenegada: TStringField;
    tUsuarioNFeEmail: TBooleanField;
    tUsuarioAltNFeEmail: TBooleanField;
    tUsuarioExcNFeEmail: TBooleanField;
    tUsuarioInsNFeEmail: TBooleanField;
    tClienteEmailNFe2: TStringField;
    tClienteCgcCpfPgto: TStringField;
    tClienteInscPgto: TStringField;
    tClientePessoaEntrega: TStringField;
    tClientePessoaPgto: TStringField;
    tCReceberParcDescontoDe: TStringField;
    tCReceberParcDescontoAte: TStringField;
    tPlanoContasInativo: TBooleanField;
    RLPDFFilter1: TRLPDFFilter;
    tNatOperacaoGerar_Tributo: TStringField;
    tNatOperacaoTipo_Ind_Ven: TStringField;
    tFilialPerc_Trib_NTS_Ind: TFloatField;
    tFilialPerc_Trib_NTS_Ven: TFloatField;
    tFilialPerc_Trib_NTS_Ind_Exp: TFloatField;
    tFilialPerc_Trib_NTS_Ven_Exp: TFloatField;
    tNotaFiscalVlr_Tributo: TFloatField;
    tNotaFiscalItensVlr_Tributo: TFloatField;
    tParametrosLei_Transp_Imp_Item: TStringField;
    tParametrosLei_Transp_Texto_Item: TStringField;
    tParametrosLei_Transp_Perc_Adic: TStringField;
    tParametrosTipo_Lei_Transp: TStringField;
    tProdutoNCM_Ex: TStringField;
    tNotaFiscalCodNatOper2: TSmallintField;
    tNotaFiscalCodNatOper3: TSmallintField;
    tNotaFiscalVLR_TRIBUTOS_ESTADUAL: TFloatField;
    tNotaFiscalVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    tNotaFiscalFONTE_TRIBUTOS: TStringField;
    tNotaFiscalVERSAO_TRIBUTOS: TStringField;
    tNotaFiscalVLR_TRIBUTOS_FEDERAL: TFloatField;
    tNotaFiscalTipo_Consumidor: TIntegerField;
    tNotaFiscalItensPerc_Tributo_Federal: TFloatField;
    tNotaFiscalItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    tNotaFiscalItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    tNotaFiscalItensVLR_TRIBUTOS_ESTADUAL: TFloatField;
    tNotaFiscalItensVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    tNotaFiscalItensVERSAO_TRIBUTO: TStringField;
    tNotaFiscalItensFONTE_TRIBUTO: TStringField;
    tNotaFiscalItensVLR_TRIBUTOS_FEDERAL: TFloatField;
    tParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField;
    tParametrosIMP_TIPO_TRIBUTOS: TStringField;
    tParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField;
    tParametrosIMP_PERC_TRIB_ITENS: TStringField;
    tParametrosLei_Transp_Calcular: TStringField;
    tParametrosTipo_Arredondamento: TStringField;
    tClienteTipo_Consumidor: TIntegerField;
    tParametrosUSA_DANFE_FLEXDOCS: TStringField;
    tParametrosUSA_ICMSOPERACAO_CST51: TStringField;
    tParametrosUSA_DESONERACAO: TStringField;
    tNotaFiscalTIPO_DESTINO_OPERACAO: TIntegerField;
    tNotaFiscalTIPO_ATENDIMENTO: TIntegerField;
    tNotaFiscalVLR_ICMSDESONERADO: TFloatField;
    tNotaFiscalLOCALDESPEXPORTACAO: TStringField;
    tNotaFiscalItensVLR_ICMSDESONERADO: TFloatField;
    tNotaFiscalItensCOD_DESONERACAO: TIntegerField;
    tNotaFiscalItensVLR_ICMSOPERACAO: TFloatField;
    tNotaFiscalItensITEM_CLIENTE: TIntegerField;
    tClienteTIPO_CONTRIBUINTE: TIntegerField;
    tFornecedoresTIPO_CONTRIBUINTE: TIntegerField;
    tNotaFiscalRefCTECHAVEACESSO_REF: TStringField;
    tFornecedoresPessoa: TStringField;
    tFilial_Download: TTable;
    tFilial_DownloadCodFilial: TIntegerField;
    tFilial_DownloadItem: TIntegerField;
    tFilial_DownloadPessoa: TStringField;
    tFilial_DownloadCNPJ_CPF: TStringField;
    dsFilial_Download: TDataSource;
    tFornecedoresTIPO_CONSUMIDOR: TIntegerField;
    tNotaFiscalRefTipo2: TStringField;
    tNotaFiscalRefDescTipo: TStringField;
    tNotaFiscalRefCupomNumECF: TIntegerField;
    tNotaFiscalRefCupomNumCOO: TIntegerField;
    tNotaFiscalRefCupomModelo: TStringField;
    tNotaFiscalRefIE: TStringField;
    tFilialDtInventarioMat: TDateField;
    tFilialDtInventarioProd: TDateField;
    tFilialObsSimples: TMemoField;
    tNotaFiscalItensPERC_DIFERIMENTO: TFloatField;
    tSitTributariaPerc_Diferimento: TFloatField;
    tNatOperacaoCALCULAR_ICMS_DIFERIDO: TBooleanField;
    tNatOperacao2CALCULAR_ICMS_DIFERIDO: TBooleanField;
    tNotaFiscalItenslkCALCULAR_ICMS_DIFERIDO: TBooleanField;
    tNotaFiscalItensVLR_ICMSDIFERIDO: TFloatField;
    tProdutoID_EnqIPI: TIntegerField;
    tNatOperacaoID_EnqIPI: TIntegerField;
    tFilialID_EnqIPI: TIntegerField;
    tUFPERC_CP: TFloatField;
    tNotaFiscalVLR_ICMS_FCP: TFloatField;
    tNotaFiscalVLR_ICMS_UF_DEST: TFloatField;
    tNotaFiscalVLR_ICMS_UF_REMET: TFloatField;
    tNotaFiscalHrEmissao: TTimeField;
    tNotaFiscalItensID_ENQIPI: TIntegerField;
    tNotaFiscalItensPERC_ICMS_FCP: TFloatField;
    tNotaFiscalItensPERC_ICMS_UF_DEST: TFloatField;
    tNotaFiscalItensPERC_ICMS_PARTILHA: TFloatField;
    tNotaFiscalItensVLR_ICMS_FCP: TFloatField;
    tNotaFiscalItensVLR_ICMS_UF_DEST: TFloatField;
    tNotaFiscalItensVLR_ICMS_UF_REMET: TFloatField;
    tTipoCobrancaCod_Imp_Fiscal: TStringField;
    tNotaFiscalCodTipoCobr: TIntegerField;
    tNotaFiscalItensSoma_Automatico_Imp: TBooleanField;
    tNotaFiscalItensPerc_Importacao: TFloatField;
    tTipoCobrancaMostrarNoCupom: TBooleanField;
    tTipoCobrancaCartaoCredito: TBooleanField;
    tTipoCobrancaDinheiro: TBooleanField;
    tTipoCobrancaCheque: TBooleanField;
    tNotaFiscalItensUNIDADE_TRIB: TStringField;
    tNotaFiscalItensQTD_TRIB: TFloatField;
    tNotaFiscalItensVLR_UNITARIO_TRIB: TFloatField;
    procedure tGrupoAfterPost(DataSet: TDataSet);
    procedure tFornecedoresAfterPost(DataSet: TDataSet);
    procedure tGradeAfterPost(DataSet: TDataSet);
    procedure tGradeItemAfterPost(DataSet: TDataSet);
    procedure tCorAfterPost(DataSet: TDataSet);
    procedure tGradeItemBeforePost(DataSet: TDataSet);
    procedure tCondPgtoAfterPost(DataSet: TDataSet);
    procedure tCondPgtoItemAfterPost(DataSet: TDataSet);
    procedure tCondPgtoItemBeforePost(DataSet: TDataSet);
    procedure tTranspAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraItemAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraItemGradeAfterPost(DataSet: TDataSet);
    procedure tClasFiscalAfterPost(DataSet: TDataSet);
    procedure tSitTributariaAfterPost(DataSet: TDataSet);
    procedure tProdutoAfterPost(DataSet: TDataSet);
    procedure tProdutoCorAfterPost(DataSet: TDataSet);
    procedure tMaterialGradeNumAfterPost(DataSet: TDataSet);
    procedure tProdutoMatAfterPost(DataSet: TDataSet);
    procedure tPedidoAfterPost(DataSet: TDataSet);
    procedure tPedidoDescontoAfterPost(DataSet: TDataSet);
    procedure tPedidoGradeAfterPost(DataSet: TDataSet);
    procedure tPedidoItemAfterPost(DataSet: TDataSet);
    procedure tPedidoMaterialAfterPost(DataSet: TDataSet);
    procedure tClienteAfterPost(DataSet: TDataSet);
    procedure tPedidoDescontoAfterInsert(DataSet: TDataSet);
    procedure tPedidoDescontoBeforePost(DataSet: TDataSet);
    procedure tUsuarioAfterPost(DataSet: TDataSet);
    procedure tUsuarioAltAfterPost(DataSet: TDataSet);
    procedure tUsuarioExcAfterPost(DataSet: TDataSet);
    procedure tUsuarioInsAfterPost(DataSet: TDataSet);
    procedure tEmpresaAfterPost(DataSet: TDataSet);
    procedure tNatOperacaoAfterPost(DataSet: TDataSet);
    procedure tVendedorAfterPost(DataSet: TDataSet);
    procedure tSetorAfterPost(DataSet: TDataSet);
    procedure tTipoCobrancaAfterPost(DataSet: TDataSet);
    procedure tHistoricoAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalAfterPost(DataSet: TDataSet);
    procedure tCReceberParcAfterPost(DataSet: TDataSet);
    procedure tIndexadorAfterPost(DataSet: TDataSet);
    procedure tUFAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalItensAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalParcAfterPost(DataSet: TDataSet);
    procedure tParametrosAfterPost(DataSet: TDataSet);
    procedure tContasAfterPost(DataSet: TDataSet);
    procedure tMovimentosAfterPost(DataSet: TDataSet);
    procedure tCReceberAfterPost(DataSet: TDataSet);
    procedure tPlanoContasAfterPost(DataSet: TDataSet);
    procedure tCPagarAfterPost(DataSet: TDataSet);
    procedure tCPagarParcAfterPost(DataSet: TDataSet);
    procedure tNEntradaParcAfterPost(DataSet: TDataSet);
    procedure tNEntradaAfterPost(DataSet: TDataSet);
    procedure tNEntradaItensMobraAfterPost(DataSet: TDataSet);
    procedure tNEntradaItensAfterPost(DataSet: TDataSet);
    procedure tNEntradaParcBeforePost(DataSet: TDataSet);
    procedure tCReceberParcHistAfterPost(DataSet: TDataSet);
    procedure tImpressoraAfterPost(DataSet: TDataSet);
    procedure tCReceberParcCalcFields(DataSet: TDataSet);
    procedure tJurosAfterPost(DataSet: TDataSet);
    procedure tRegioesAfterPost(DataSet: TDataSet);
    procedure tPedidoNotaAfterPost(DataSet: TDataSet);
    procedure tCPagarParcCalcFields(DataSet: TDataSet);
    procedure tOrdemCompraNotaAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraNotaGradeAfterPost(DataSet: TDataSet);
    procedure tObsAuxAfterPost(DataSet: TDataSet);
    procedure tAtividadeAfterPost(DataSet: TDataSet);
    procedure tFornecAtivAfterPost(DataSet: TDataSet);
    procedure tProdutoMatCalcFields(DataSet: TDataSet);
    procedure tNotaFiscalGradeAfterPost(DataSet: TDataSet);
    procedure tCidadeAfterPost(DataSet: TDataSet);
    procedure tTransportadoraCidAfterPost(DataSet: TDataSet);
    procedure tDctoEstAfterPost(DataSet: TDataSet);
    procedure tDctoEstItemAfterPost(DataSet: TDataSet);
    procedure tDctoEstGradeAfterPost(DataSet: TDataSet);
    procedure tEstoqueMatMovAfterPost(DataSet: TDataSet);
    procedure tEstoqueMatMovGradeAfterPost(DataSet: TDataSet);
    procedure tOutrosAfterPost(DataSet: TDataSet);
    procedure tProdutoConsumoAfterPost(DataSet: TDataSet);
    procedure tProdutoConsumoItemAfterPost(DataSet: TDataSet);
    procedure tPedidoConsumoAfterPost(DataSet: TDataSet);
    procedure tFuncionarioAfterPost(DataSet: TDataSet);
    procedure tFeriasAfterPost(DataSet: TDataSet);
    procedure tSalarioAfterPost(DataSet: TDataSet);
    procedure tTabPrecoAfterPost(DataSet: TDataSet);
    procedure tFuncFaltasAfterPost(DataSet: TDataSet);
    procedure tAgeContatoAfterPost(DataSet: TDataSet);
    procedure tProdutoCliAfterPost(DataSet: TDataSet);
    procedure tSitTributariaNewRecord(DataSet: TDataSet);
    procedure tOrcamentoAfterPost(DataSet: TDataSet);
    procedure tOrcamentoItensAfterPost(DataSet: TDataSet);
    procedure tNEntradaItensNewRecord(DataSet: TDataSet);
    procedure tPedidoItemNewRecord(DataSet: TDataSet);
    procedure tTalaoAfterPost(DataSet: TDataSet);
    procedure tTalaoGradeAfterPost(DataSet: TDataSet);
    procedure tProjecaoEstAfterPost(DataSet: TDataSet);
    procedure tProjecaoEstCalcFields(DataSet: TDataSet);
    procedure tBanrisulAfterPost(DataSet: TDataSet);
    procedure tValeAfterPost(DataSet: TDataSet);
    procedure tValeItensAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalValeAfterPost(DataSet: TDataSet);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure tTalaoNewRecord(DataSet: TDataSet);
    procedure tTalaoHorAfterPost(DataSet: TDataSet);
    procedure tClienteNewRecord(DataSet: TDataSet);
    procedure tTalaoHistAfterPost(DataSet: TDataSet);
    procedure tProdutoSetorAfterPost(DataSet: TDataSet);
    procedure tParametrosSetorAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalNDevolvidaAfterPost(DataSet: TDataSet);
    procedure tNatOperacaoNewRecord(DataSet: TDataSet);
    procedure tMotivoAfterPost(DataSet: TDataSet);
    procedure tValeNewRecord(DataSet: TDataSet);
    procedure tValeItensNewRecord(DataSet: TDataSet);
    procedure tNotaFiscalItensNewRecord(DataSet: TDataSet);
    procedure tEquipEpiAfterPost(DataSet: TDataSet);
    procedure tEquipEpiNewRecord(DataSet: TDataSet);
    procedure tFuncionarioEPIAfterPost(DataSet: TDataSet);
    procedure tFuncionarioEPINewRecord(DataSet: TDataSet);
    procedure tMovAtelierAfterPost(DataSet: TDataSet);
    procedure tMovAtelierItensAfterPost(DataSet: TDataSet);
    procedure tMovAtelierItensNewRecord(DataSet: TDataSet);
    procedure tMovAtelierNewRecord(DataSet: TDataSet);
    procedure tOrcamentoAfterInsert(DataSet: TDataSet);
    procedure tNEntradaNDevolvidaAfterPost(DataSet: TDataSet);
    procedure tPedidoLogAfterPost(DataSet: TDataSet);
    procedure tPedidoLogNewRecord(DataSet: TDataSet);
    procedure tCPagarParcHistAfterPost(DataSet: TDataSet);
    procedure tGrupoClienteAfterPost(DataSet: TDataSet);
    procedure tCReceberParcNewRecord(DataSet: TDataSet);
    procedure tNotaFiscalNewRecord(DataSet: TDataSet);
    procedure tChequeAfterPost(DataSet: TDataSet);
    procedure tChequeCPagarAfterPost(DataSet: TDataSet);
    procedure tPlanoContasItensAfterPost(DataSet: TDataSet);
    procedure tCReceberParcBeforePost(DataSet: TDataSet);
    procedure tFeriadoAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tPaisAfterPost(DataSet: TDataSet);
    procedure tCSTIPIAfterPost(DataSet: TDataSet);
    procedure tFilialAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalRefAfterPost(DataSet: TDataSet);
    procedure tCReceberParcRemAfterPost(DataSet: TDataSet);
    procedure tExtComissaoAfterPost(DataSet: TDataSet);
    procedure tExtComissaoNewRecord(DataSet: TDataSet);
    procedure tProdutoNewRecord(DataSet: TDataSet);
    procedure tFornecedoresNewRecord(DataSet: TDataSet);
    procedure tTranspNewRecord(DataSet: TDataSet);
    procedure tMovimentosNewRecord(DataSet: TDataSet);
    procedure tFilialDepAfterPost(DataSet: TDataSet);
    procedure tFilial_DownloadAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FDataSetError: TrsDataSetError;

    vDataVectoCalc: TDate;
    procedure Calcula_DtVencimento2;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);


  public
    { Public declarations }
    vSenhaControle: string;
    procedure Mostra_Menu;
    procedure Login;
    procedure GravaGrid(Grid: TSMDBGrid; Form: string);
    procedure LeGrid(Grid: TSMDBGrid; Form: string);
    procedure Grava_DtVencimento2;

    procedure GravaEnt_tCReceberParcHist(Tipo : String); //ENT = Entrada   CAN = Cancelado

  end;

var
  DM1: TDM1;
  vNumPedido, vItemPedido: Integer;
  vCodClasFiscalPos, vFormulario: string;
  vCodClientePos : Integer;  

implementation

uses UGrade, UMaterial, UCondPgto, UOrdemCompra, UPedido, UPedidoDesconto, UNotaEntrada, UBaixaItOC, UMenuP, ULogin;

{$R *.DFM}

procedure Tdm1.GravaEnt_tCReceberParcHist(Tipo : String);
var
  vNumAux : Integer;
begin
  DM1.tCReceberParcHist.Refresh;
  DM1.tCReceberParcHist.Last;
  vNumAux := DM1.tCReceberParcHistItem.AsInteger;
  if DM1.tCReceberParcHist.Locate('Tipo',Tipo,[loCaseInsensitive]) then
    DM1.tCReceberParcHist.Edit
  else
    begin
      DM1.tCReceberParcHist.Insert;
      Dm1.tCReceberParcHistFilial.AsInteger       := Dm1.tCReceberParcFilial.AsInteger;
      DM1.tCReceberParcHistNumCReceber.AsInteger  := DM1.tCReceberParcNumCReceber.AsInteger;
      DM1.tCReceberParcHistParcCReceber.AsInteger := DM1.tCReceberParcParcCReceber.AsInteger;
      DM1.tCReceberParcHistItem.AsInteger         := vNumAux + 1;
    end;
  DM1.tCReceberParcHistCodHistorico.AsCurrency := 0;
  if Tipo = 'ENT' then
    DM1.tCReceberParcHistHistorico.AsString := 'ENTRADA DO TITULO'
  else
    DM1.tCReceberParcHistHistorico.AsString := 'TITULO CANCELADO';
  DM1.tCReceberParcHistTipo.AsString        := Tipo;
  DM1.tCReceberParcHistDtUltPgto.AsDateTime := DM1.tCReceberParcDtGerado.AsDateTime;
  //DM1.tCReceberParcHistVlrUltPgto.AsFloat := DM1.tCReceberParcVlrParcCReceber.AsFloat;
  DM1.tCReceberParcHist.Post;
end;

procedure TDM1.Calcula_DtVencimento2;
var
  vDataAux: TDate;
begin
  vDataAux := 0;
  while vDataAux <> vDataVectoCalc do
  begin
    vDataAux := vDataVectoCalc;
    if (DayOfWeek(vDataVectoCalc) = 1) then //Domingo
      vDataVectoCalc := vDataVectoCalc + 1
    else
      if (DayOfWeek(vDataVectoCalc) = 7) then //Sabado
        vDataVectoCalc := vDataVectoCalc + 2;
    if ((DayOfTheMonth(vDataVectoCalc) = 25) and (MonthOf(vDataVectoCalc) = 12)) or
      ((DayOfTheMonth(vDataVectoCalc) = 01) and (MonthOf(vDataVectoCalc) = 01)) or
      ((DayOfTheMonth(vDataVectoCalc) = 07) and (MonthOf(vDataVectoCalc) = 09)) or
      ((DayOfTheMonth(vDataVectoCalc) = 12) and (MonthOf(vDataVectoCalc) = 10)) or
      ((DayOfTheMonth(vDataVectoCalc) = 02) and (MonthOf(vDataVectoCalc) = 11)) or
      ((DayOfTheMonth(vDataVectoCalc) = 01) and (MonthOf(vDataVectoCalc) = 05)) or
      ((DayOfTheMonth(vDataVectoCalc) = 21) and (MonthOf(vDataVectoCalc) = 04)) then
      vDataVectoCalc := vDataVectoCalc + 1;
    if DM1.tFeriado.Locate('Data', vDataVectoCalc, [loCaseInsensitive]) then
      vDataVectoCalc := vDataVectoCalc + 1;
  end;
end;

procedure TDM1.Grava_DtVencimento2;
var
  vQtdDias: Integer;
  i: Integer;
begin
  if not DM1.tFeriado.Active then
    DM1.tFeriado.Open;
  vDataVectoCalc := DM1.tCReceberParcDtVencCReceber.AsDateTime;
  Calcula_DtVencimento2;
  vQtdDias := 1;
  if DM1.tCReceberParcCodTipoCobranca.AsInteger > 0 then
    if DM1.tTipoCobranca.Locate('Codigo', DM1.tCReceberParcCodTipoCobranca.AsInteger, [loCaseInsensitive]) then
      vQtdDias := DM1.tTipoCobrancaQtdDias.AsInteger;
  for i := 1 to vQtdDias do
  begin
    vDataVectoCalc := vDataVectoCalc + 1;
    Calcula_DtVencimento2;
  end;
  DM1.tCReceberParcDtVencimento2.AsDateTime := vDataVectoCalc;
end;

procedure TDM1.Login;
begin
  fLogin := TfLogin.Create(Self);
  fLogin.ShowModal;
end;

procedure TDM1.Mostra_Menu;
begin
// Manutenção
  fMenuP.N9Funcionrios1.Visible := tUsuarioFuncionario.AsBoolean;
  fMenuP.N1AgendaTelefnica1.Visible := tUsuarioAgenda.AsBoolean;
  fMenuP.ClassificaoFiscal2.Visible := tUsuarioClasFiscal.AsBoolean;
  fMenuP.Clientes3.Visible := tUsuarioClientes.AsBoolean;
  fMenuP.Cor2.Visible := tUsuarioCor.AsBoolean;
  fMenuP.CondiesdePagamento1.Visible := tUsuarioCondPgto.AsBoolean;
  fMenuP.EstadoseAlqotas2.Visible := tUsuarioUf.AsBoolean;
  fMenuP.Grades1.Visible := tUsuarioGrade.AsBoolean;
  fMenuP.Grupo2.Visible := tUsuarioGrupos.AsBoolean;
  fMenuP.N2Histricos2.Visible := tUsuarioHistoricos.AsBoolean;
  fMenuP.Impressoras2.Visible := tUsuarioImpressoras.AsBoolean;
  fMenuP.NaturezadeOperao2.Visible := tUsuarioNatOper.AsBoolean;
  fMenuP.ObsAuxiliar1.Visible := tUsuarioObsAux.AsBoolean;
  fMenuP.Parametros1.Visible := tUsuarioParametro.AsBoolean;
  fMenuP.RegiesdeVendas2.Visible := tUsuarioRegioesVendas.AsBoolean;
  fMenuP.SituaoTributria2.Visible := tUsuarioSitTrib.AsBoolean;
  fMenuP.Transportadoras2.Visible := tUsuarioTransp.AsBoolean;
  fMenuP.Clientes4.Visible := tUsuarioRelCli.AsBoolean;
  fMenuP.Vendedores4.Visible := tUsuarioRelVendedores.AsBoolean;
  fMenuP.EtiquetasClientes1.Visible := tUsuarioRelEtiqCli.AsBoolean;
  fMenuP.EtiquetasVendedores1.Visible := tUsuarioRelEtiqVend.AsBoolean;
  fMenuP.N5EtiquetasFornecedores1.Visible := tUsuarioRelEtiqForn.AsBoolean; //Botão
  fMenuP.N2Cidades2.Visible := tUsuarioCidade.AsBoolean;
  fMenuP.NTabeladePreo1.Visible := tUsuarioTabPreco.AsBoolean;
  fMenuP.OAgendadeContatos1.Visible := tUsuarioAgeContato.AsBoolean;
  fMenuP.Motivo1.Visible := tUsuarioMotivo.AsBoolean;
  fMenuP.EPI1.Visible := tUsuarioEquipEpi.AsBoolean;
  fMenuP.GrupoCliente1.Visible := tUsuarioGrupoCliente.AsBoolean;
  fMenuP.Feriado1.Visible := tUsuarioFeriado.AsBoolean;
  fMenuP.Filial1.Visible  := tUsuarioFilial.AsBoolean;
  if not (tUsuarioRelCli.AsBoolean) and not (tUsuarioRelVendedores.AsBoolean) and
    not (tUsuarioRelEtiqCli.AsBoolean) and not (tUsuarioRelEtiqForn.AsBoolean) and
    not (tUsuarioRelEtiqVend.AsBoolean) then
    fMenuP.Relatrios6.Visible := False
  else
    fMenuP.Relatrios6.Visible := True;
  if not (tUsuarioClasFiscal.AsBoolean) and not (tUsuarioClientes.AsBoolean) and
    not (tUsuarioCor.AsBoolean) and not (tUsuarioCondPgto.AsBoolean) and
    not (tUsuarioUf.AsBoolean) and not (tUsuarioGrade.AsBoolean) and
    not (tUsuarioGrupos.AsBoolean) and not (tUsuarioHistoricos.AsBoolean) and
    not (tUsuarioImpressoras.AsBoolean) and not (tUsuarioNatOper.AsBoolean) and
    not (tUsuarioObsAux.AsBoolean) and not (tUsuarioParametro.AsBoolean) and
    not (tUsuarioLojas.AsBoolean) and not (tUsuarioRegioesVendas.AsBoolean) and
    not (tUsuarioSubGrupo.AsBoolean) and not (tUsuarioSitTrib.AsBoolean) and
    not (tUsuarioTransp.AsBoolean) and not (tUsuarioRelCli.AsBoolean) and
    not (tUsuarioRelVendedores.AsBoolean) and not (tUsuarioRelEtiqCli.AsBoolean) and
    not (tUsuarioRelEtiqVend.AsBoolean) and not (tUsuarioRelEtiqForn.AsBoolean) and
    not (tUsuarioAtelier.AsBoolean) and not (tUsuarioMaoDeObra.AsBoolean) and
    not (tUsuarioOperAtelier.AsBoolean) and not (tUsuarioCidade.AsBoolean) and
    not (tUsuarioAgenda.AsBoolean) and not (tUsuarioFuncionario.AsBoolean) and
    not (tUsuarioTabPreco.AsBoolean) and not (tUsuarioAgeContato.AsBoolean) and
    not (tUsuarioCia.AsBoolean) and not (tUsuarioMotivo.AsBoolean) and
    not (tUsuarioEquipEpi.AsBoolean) and not (tUsuarioGrupoCliente.AsBoolean) and
    not (tUsuarioFilial.AsBoolean) then
    fMenuP.RxSpeedButton1.Visible := False
  else
    fMenuP.RxSpeedButton1.Visible := True;
//Compras
  fMenuP.N9OrdensdeCompra1.Visible := tUsuarioRelOC.AsBoolean;
  fMenuP.N1Atividades2.Visible := tUsuarioAtividade.AsBoolean;
  fMenuP.N3ConsultadeEstoquedeMateriais2.Visible := tUsuarioConsEstoqueMat.AsBoolean;
  fMenuP.N3ConsultadeFornecpAtividade2.Visible := tUsuarioConsFornecAtiv.AsBoolean;
  fMenuP.Fornecedores3.Visible := tUsuarioFornecedores.AsBoolean;
  fMenuP.Materiais3.Visible := tUsuarioMaterial.AsBoolean;
  fMenuP.N3NotadeCompra1.Visible := tUsuarioNotaEnt.AsBoolean;
  fMenuP.OrdemdeCompra2.Visible := tUsuarioOrdemCompra.AsBoolean;
  fMenuP.Fornecedores4.Visible := tUsuarioRelForn.AsBoolean;
  fMenuP.Materiais4.Visible := tUsuarioRelProdutos.AsBoolean;
  fMenuP.N4MateriaisAbaixodoMnimo2.Visible := tUsuarioRelMatMinimo.AsBoolean;
  fMenuP.N5HistricodoMaterial1.Visible := tUsuarioRelHistMaterial.AsBoolean;
  fMenuP.N3CustoporSetor1.Visible := tUsuarioCustoSetor.AsBoolean;
  fMenuP.DctodeEntradaeSadadoEstoque1.Visible := tUsuarioDctoEst.AsBoolean;
  fMenuP.N7NotadeEntrada1.Visible := tUsuarioRelNEntrada.AsBoolean;
  fMenuP.N8BalancodoEstoque1.Visible := tUsuarioRelBalancoEst.AsBoolean;
  fMenuP.N4ConsultaHistricoMaterial1.Visible := tUsuarioConsHistMat.AsBoolean;
  fMenuP.ConsultaNotasdeBeneficiamento1.Visible := tUsuarioConsNotasBeneficiamento.AsBoolean;
  fMenuP.ConsultaNotadeEntradaporProduto1.Visible := tUsuarioNotaEnt.AsBoolean;
  if not (tUsuarioRelForn.AsBoolean) and not (tUsuarioRelProdutos.AsBoolean) and
    not (tUsuarioRelEstMat.AsBoolean) and not (tUsuarioRelMatMinimo.AsBoolean) and
    not (tUsuarioCustoSetor.AsBoolean) and not (tUsuarioRelNEntrada.AsBoolean) and
    not (tUsuarioRelBalancoEst.AsBoolean) and not (tUsuarioRelHistMaterial.AsBoolean) and
    not (tUsuarioRelOC.AsBoolean) and not (tUsuarioConsHistMat.AsBoolean) and
    not (tUsuarioConsNotasBeneficiamento.AsBoolean) then
  begin
    fMenuP.Relatrios7.Visible := False;
  end
  else
    fMenuP.Relatrios7.Visible := True;
  if not (tUsuarioFornecedores.AsBoolean) and not (tUsuarioMaterial.AsBoolean) and
    not (tUsuarioNotaEnt.AsBoolean) and not (tUsuarioOrdemCompra.AsBoolean) and
    not (tUsuarioRelForn.AsBoolean) and
    not (tUsuarioRelProdutos.AsBoolean) and not (tUsuarioRelEstMat.AsBoolean) and
    not (tUsuarioRequisicao.AsBoolean) and not (tUsuarioAtividade.AsBoolean) and
    not (tUsuarioConsFornecAtiv.AsBoolean) and not (tUsuarioRelMatMinimo.AsBoolean) and
    not (tUsuarioConsEstoqueMat.AsBoolean) and not (tUsuarioBaixaEstoque.AsBoolean) and
    not (tUsuarioCustoSetor.AsBoolean) and not (tUsuarioDctoEst.AsBoolean) and
    not (tUsuarioRelBalancoEst.AsBoolean) and not (tUsuarioRelNEntrada.AsBoolean) and
    not (tUsuarioRelHistMaterial.AsBoolean) and not (tUsuarioRelOC.AsBoolean) and
    not (tUsuarioConsNotasBeneficiamento.AsBoolean) then
    fMenuP.RxSpeedButton2.Visible := False
  else
    fMenuP.RxSpeedButton2.Visible := True;
// PCP
  fMenuP.N2EmbarqueDirio1.Visible := tUsuarioRelEmbDiario.AsBoolean;
  fMenuP.BaixaPedidos1.Visible := tUsuarioBaixaPedidos.AsBoolean;
  fMenuP.Pedido2.Visible := tUsuarioPedido.AsBoolean;
  fMenuP.ProdutosFichaTcnica1.Visible := tUsuarioProduto.AsBoolean;
  fMenuP.Setor2.Visible := tUsuarioSetor.AsBoolean;
  fMenuP.ClculodeMateriaispLotes1.Visible := tUsuarioRelCalcMatLote.AsBoolean;
  fMenuP.Pedidosnofaturados1.Visible := tUsuarioRelPedNFat.AsBoolean;
  fMenuP.Rtulos2.Visible := tUsuarioRotulos.AsBoolean;
  fMenuP.N0MetasProduzidos1.Visible := tUsuarioRelMetasProd.AsBoolean;
  fMenuP.PedidoEspecial1.Visible := tUsuarioPedidoEsp.AsBoolean;
  fMenuP.N5HistricodePedidos1.Visible := tUsuarioHistPedido.AsBoolean;
  fMenuP.N0RecebimentodePedidos1.Visible := tUsuarioRecPedido.AsBoolean;
  fMenuP.BaixaTalo1.Visible := tUsuarioBaixaProducao.AsBoolean;
  fMenuP.BaixaTaloHorrios1.Visible := tUsuarioBaixaProducao.AsBoolean;
  fMenuP.COramento1.Visible := tUsuarioOrcamento.AsBoolean;
  fMenuP.otaldeHorasPorFuncionrioTalo1.Visible := tUsuarioRelHorasFuncionarios.AsBoolean;
  fMenuP.otaldeHorasPorProdutosTalo1.Visible := tUsuarioRelHorasProdutos.AsBoolean;
  fMenuP.MovimentoRetificaModeObra1.Visible := tUsuarioMovAtelier.AsBoolean;
  fMenuP.ConsultaMovimentoRetificaModeObra1.Visible := tUsuarioConsMovAtelier.AsBoolean;
  fMenuP.BaixaPedidoPorItem1.Visible := tUsuarioBaixaPedidos.AsBoolean;
  fMenuP.BaixaProduo1.Visible        := tUsuarioBaixaProducao.AsBoolean;
  fMenuP.GerarTalo1.Visible          := tUsuarioTalao.AsBoolean;
  if not (tUsuarioRelCalcMatLote.AsBoolean) and not (tUsuarioRelMetasProd.AsBoolean) and
    not (tUsuarioRelPedNFat.AsBoolean) and
    not (tUsuarioRotulos.AsBoolean) and not (tUsuarioRelVendasVendRef.AsBoolean) and
    not (tUsuarioRelVendas.AsBoolean) and not (tUsuarioRelVendasVendCli.AsBoolean) and
    not (tUsuarioRelEmbDiario.AsBoolean) and not (tUsuarioRelMetasProdRef.AsBoolean) and
    not (tUsuarioRelHorasFuncionarios.AsBoolean) and not (tUsuarioRelHorasProdutos.AsBoolean) then
    fMenuP.Relatrios8.Visible := False
  else
    fMenuP.Relatrios8.Visible := True;     
  if not (tUsuarioBaixaPedidos.AsBoolean)        and not (tUsuarioConsultaLote.AsBoolean) and
    not (tUsuarioLote.AsBoolean)                 and not (tUsuarioPedidoEsp.AsBoolean) and
    not (tUsuarioPedido.AsBoolean)               and not (tUsuarioProduto.AsBoolean) and
    not (tUsuarioRelCalcMatLote.AsBoolean)       and not (tUsuarioProgramacao.AsBoolean) and
    not (tUsuarioRelPedNFat.AsBoolean)           and not (tUsuarioRotulos.AsBoolean) and
    not (tUsuarioRelVendas.AsBoolean)            and not (tUsuarioRelEmbDiario.AsBoolean) and
    not (tUsuarioRelVendasVendCli.AsBoolean)     and not (tUsuarioRelVendasVendRef.AsBoolean) and
    not (tUsuarioRelMetasProd.AsBoolean)         and
    not (tUsuarioConsMovTalaoMI.AsBoolean)       and not (tUsuarioSetor.AsBoolean) and
    not (tUsuarioRelMetasProdRef.AsBoolean)      and not (tUsuarioHistPedido.AsBoolean) and
    not (tUsuarioRecPedido.AsBoolean)            and not (tUsuarioCobrBcoSafra.AsBoolean) and
    not (tUsuarioRelHorasFuncionarios.AsBoolean) and not (tUsuarioRelHorasProdutos.AsBoolean) and
    not (tUsuarioOrcamento.AsBoolean)            and not (tUsuarioMovAtelier.AsBoolean) and
    not (tUsuarioConsMovAtelier.AsBoolean)       and not(tUsuarioTalao.AsBoolean) then
    fMenuP.RxSpeedButton3.Visible := False
  else
    fMenuP.RxSpeedButton3.Visible := True;

  fMenuP.Orcamento1.Visible := tUsuarioRelOrcamento.AsBoolean;

// Faturamento
  fMenuP.N1ControledeFaturamento1.Visible             := tUsuarioContrFaturamento.AsBoolean;
  fMenuP.NotasFiscais2.Visible                        := tUsuarioNotaFiscal.AsBoolean;
  fMenuP.Notasemitidaspornaturezadeoperao1.Visible    := tUsuarioRelVendasNatOper.AsBoolean; //Botão
  fMenuP.N3GeraSintegra1.Visible                      := tUsuarioGeraSintegra.AsBoolean;
  fMenuP.N5GeraNotaEDI1.Visible                       := tUsuarioGeraNotaEdi.AsBoolean;
  fMenuP.Vale1.Visible                                := tUsuarioVale.AsBoolean;
  fMenuP.Vale3.Visible                                := tUsuarioRelVale.AsBoolean;
  fMenuP.VendasporCliente1.Visible                    := tUsuarioRelVendasCli.AsBoolean;
  fMenuP.HistricodoFaturamento1.Visible               := tUsuarioHistFaturamento.AsBoolean;
  fMenuP.CadastrodeItensdeAjusteComplementar1.Visible := tUsuarioMaterial.AsBoolean;
  fMenuP.VoltarNotaqdodevolvida1.Visible              := tUsuarioNotaFiscal.AsBoolean;
  fMenuP.ConsultarNotasCanceladasDenegadas1.Visible   := tUsuarioNotaFiscal.AsBoolean;
  fMenuP.NFeEmailsAdicionais1.Visible                 := tUsuarioNFeEmail.AsBoolean;
  if not (tUsuarioRelNEmitVend.AsBoolean) and not (tUsuarioRelVendasNatOper.AsBoolean) and
    not (tUsuarioContrFaturamento.AsBoolean) and not (tUsuarioRelVale.AsBoolean) then
    fMenuP.Relatrios11.Visible := False
  else
    fMenuP.Relatrios11.Visible := True;
  if not(tUsuarioConsFat.AsBoolean)         and not(tUsuarioNotaFiscal.AsBoolean)       and
    not(tUsuarioRelNEmitVend.AsBoolean)     and not(tUsuarioRelVendasNatOper.AsBoolean) and
    not(tUsuarioContrFaturamento.AsBoolean) and not(tUsuarioVlrIcms.AsBoolean)          and
    not(tUsuarioGeraNotaEdi.AsBoolean)      and not(tUsuarioVale.AsBoolean)             and
    not(tUsuarioRelVale.AsBoolean)          and not(tUsuarioRelVendasCli.AsBoolean)     and
    not(tUsuarioHistFaturamento.AsBoolean)  and not(tUsuarioNFeEmail.AsBoolean)         then
    fMenuP.RxSpeedButton4.Visible := False
  else
    fMenuP.RxSpeedButton4.Visible := True;
// Comissão
  fMenuP.ExtratodeVendedoresNotas1.Visible := tUsuarioExtratoCom.AsBoolean;
  fMenuP.LanamentodeComisses1.Visible := tUsuarioLancComisVend.AsBoolean;
  fMenuP.N1Vendedor1.Visible := tUsuarioVendedor.AsBoolean;
  fMenuP.ExtratodeComisso1.Visible := tUsuarioRelExtrComisVend.AsBoolean;
  if not tUsuarioRelExtrComisVend.AsBoolean then
    fMenuP.Relatrios13.Visible := False
  else
    fMenuP.Relatrios13.Visible := True;
  if not (tUsuarioComissao.AsBoolean) and not (tUsuarioExtratoCom.AsBoolean) and
    not (tUsuarioLancComisVend.AsBoolean) and not (tUsuarioVendedor.AsBoolean) and
    not (tUsuarioRelExtrComisVend.AsBoolean) then
    fMenuP.RxSpeedButton8.Visible := False
  else
    fMenuP.RxSpeedButton8.Visible := True;
// Contas a Receber
  //fMenuP.ContasaReceber3.Visible        := tUsuarioCReceber.AsBoolean;
  fMenuP.ContasReceberNovo1.Visible := tUsuarioCReceber.AsBoolean;
  fMenuP.LancaCtasaReceber1.Visible := tUsuarioLancCReceber.AsBoolean;
  fMenuP.TipodeCobranas1.Visible := tUsuarioTiposCobr.AsBoolean;
  fMenuP.Duplicatas2.Visible := tUsuarioRelBoleto.AsBoolean;
  fMenuP.N5ContasaReeber1.Visible := tUsuarioRelCReceber.AsBoolean;
  fMenuP.N6AReceberporCliente1.Visible := tUsuarioRelCRecCli.AsBoolean;
  fMenuP.N1CpiasdeDuplicatas1.Visible := tUsuarioCopiaDuplicata.AsBoolean;
  fMenuP.N3ContasaReceberporSemana1.Visible := tUsuarioRelCReceberSem.AsBoolean;
  fMenuP.ConsultaContasaReceber1.Visible    := tUsuarioCReceber.AsBoolean;
  if not (tUsuarioRelBoleto.AsBoolean) and
    not (tUsuarioRelCReceber.AsBoolean) and not (tUsuarioRelCRecCli.AsBoolean) and
    not (tUsuarioCopiaDuplicata.AsBoolean) and not (tUsuarioRelCReceberSem.AsBoolean) then
    fMenuP.Relatrios9.Visible := False
  else
    fMenuP.Relatrios9.Visible := True;
  if not (tUsuarioCReceber.AsBoolean) and not (tUsuarioLancCReceber.AsBoolean) and
    not (tUsuarioTiposCobr.AsBoolean) and not (tUsuarioRelBoleto.AsBoolean) and
    not (tUsuarioRelCReceber.AsBoolean) and not (tUsuarioRelCRecCli.AsBoolean) and
    not (tUsuarioCopiaDuplicata.AsBoolean) and not (tUsuarioRelCReceberSem.AsBoolean) then
    fMenuP.RxSpeedButton5.Visible := False
  else
    fMenuP.RxSpeedButton5.Visible := True;
// Contas a Pagar
  //fMenuP.ContasaPagar3.Visible               := tUsuarioCPagar.AsBoolean;
  fMenuP.ContasaPagarNovo1.Visible           := tUsuarioCPagar.AsBoolean;
  fMenuP.ConsultaPagamentosDevolues1.Visible := tUsuarioCPagar.AsBoolean;
  fMenuP.LanaCtasaPagar1.Visible := tUsuarioLctoPagar.AsBoolean;
  fMenuP.N1ContasPagar1.Visible := tUsuarioRelCPagar.AsBoolean;
  fMenuP.N2NotasporNaturezadeOperao1.Visible := tUsuarioRelNEntrNatOper.AsBoolean;
  fMenuP.N3APagarporFornecedores1.Visible := tUsuarioRelCPagForn.AsBoolean;
  fMenuP.N4PagamentodeJuros2.Visible := tUsuarioRelPgtoJuros.AsBoolean; //Botão
  fMenuP.N5ControleFornecedores1.Visible := tUsuarioRelContFornecedores.AsBoolean;
  fMenuP.N3ContasaPagarporSemana1.Visible := tUsuarioRelCPagarSem.AsBoolean;
  if not (tUsuarioRelCPagar.AsBoolean) and not (tUsuarioRelNEntrNatOper.AsBoolean) and
    not (tUsuarioRelCPagForn.AsBoolean) and not (tUsuarioRelPgtoJuros.AsBoolean) and
    not (tUsuarioRelContFornecedores.AsBoolean) and not (tUsuarioRelCPagarSem.AsBoolean) then
    fMenuP.N4Relatrios1.Visible := False
  else
    fMenuP.N4Relatrios1.Visible := True;
  if not (tUsuarioCPagar.AsBoolean) and not (tUsuarioLctoPagar.AsBoolean) and
    not (tUsuarioFaturas.AsBoolean) and not (tUsuarioRelCPagar.AsBoolean) and
    not (tUsuarioRelNEntrNatOper.AsBoolean) and not (tUsuarioRelCPagForn.AsBoolean) and
    not (tUsuarioRelPgtoJuros.AsBoolean) and not (tUsuarioRelContFornecedores.AsBoolean) and
    not (tUsuarioRelCPagarSem.AsBoolean) then
    fMenuP.RxSpeedButton6.Visible := False
  else
    fMenuP.RxSpeedButton6.Visible := True;
// Financeiro
  fMenuP.Contas3.Visible := tUsuarioContas.AsBoolean;
  fMenuP.N3Indexador2.Visible := tUsuarioIndexador.AsBoolean;
  fMenuP.Juros1.Visible := tUsuarioJuros.AsBoolean;
  fMenuP.Movimentos2.Visible := tUsuarioMovto.AsBoolean;
  fMenuP.PlanodeContas2.Visible := tUsuarioPlanoCtas.AsBoolean;
  fMenuP.Contas4.Visible := tUsuarioRelCtas.AsBoolean; //Botão
  fMenuP.N7Cheque1.Visible := tUsuarioCheque.AsBoolean;
  fMenuP.ConsultaReceberPagar1.Visible := tUsuarioConsCPagarCReceber.AsBoolean;
  if not (tUsuarioRelCtas.AsBoolean) then
    fMenuP.Relatrios10.Visible := False
  else
    fMenuP.Relatrios10.Visible := True;
  if not (tUsuarioContas.AsBoolean) and not (tUsuarioEntrMov.AsBoolean) and
    not (tUsuarioJuros.AsBoolean) and not (tUsuarioMovto.AsBoolean) and
    not (tUsuarioPlanoCtas.AsBoolean) and not (tUsuarioRelCtas.AsBoolean) and
    not (tUsuarioIndexador.AsBoolean) and not (tUsuarioCheque.AsBoolean) and
    not (tUsuarioConsCPagarCReceber.AsBoolean) then
    fMenuP.RxSpeedButton7.Visible := False
  else
    fMenuP.RxSpeedButton7.Visible := True;
  fMenuP.Sair1.Visible := tUsuarioAdministrador.AsBoolean;
end;

procedure TDM1.tGrupoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGrupo.Handle);
end;

procedure TDM1.tFornecedoresAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFornecedores.Handle);
end;

procedure TDM1.tGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGrade.Handle);
end;

procedure TDM1.tGradeItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGradeItem.Handle);
end;

procedure TDM1.tCorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCor.Handle);
end;

procedure TDM1.tGradeItemBeforePost(DataSet: TDataSet);
begin
  if tGradeItem.State in [dsInsert] then
  begin
    fGrade.tGradeItemIns.Refresh;
    fGrade.tGradeItemIns.Last;
    tGradeItemPosicao.AsInteger := fGrade.tGradeItemInsPosicao.AsInteger + 1;
  end;
end;

procedure TDM1.tCondPgtoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCondPgto.Handle);
end;

procedure TDM1.tCondPgtoItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCondPgtoItem.Handle);
end;

procedure TDM1.tCondPgtoItemBeforePost(DataSet: TDataSet);
begin
  if tCondPgtoItem.State in [dsInsert] then
  begin
    fCondPgto.tCondPgtoItemIns.Refresh;
    fCondPgto.tCondPgtoItemIns.Last;
    tCondPgtoItemItem.AsInteger := fCondPgto.tCondPgtoItemInsItem.AsInteger + 1;
  end;
end;

procedure TDM1.tTranspAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTransp.Handle);
end;

procedure TDM1.tOrdemCompraAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompra.Handle);
end;

procedure TDM1.tOrdemCompraItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraItem.Handle);
end;

procedure TDM1.tOrdemCompraItemGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraItemGrade.Handle);
end;

procedure TDM1.tClasFiscalAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tClasFiscal.Handle);
end;

procedure TDM1.tSitTributariaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSitTributaria.Handle);
end;

procedure TDM1.tProdutoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProduto.Handle);
end;

procedure TDM1.tProdutoCorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoCor.Handle);
end;

procedure TDM1.tMaterialGradeNumAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMaterialGradeNum.Handle);
end;

procedure TDM1.tProdutoMatAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoMat.Handle);
end;

procedure TDM1.tPedidoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedido.Handle);
end;

procedure TDM1.tPedidoDescontoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoDesconto.Handle);
end;

procedure TDM1.tPedidoGradeAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoGrade.Handle);
end;

procedure TDM1.tPedidoItemAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoItem.Handle);
end;

procedure TDM1.tPedidoMaterialAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoMaterial.Handle);
end;

procedure TDM1.tClienteAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCliente.Handle);
end;

procedure TDM1.tPedidoDescontoAfterInsert(DataSet: TDataSet);
begin
  fPedido.tPedidoDescontoIns.Refresh;
  fPedido.tPedidoDescontoIns.Last;
  tPedidoDescontoItem.AsInteger := fPedido.tPedidoDescontoInsItem.AsInteger + 1;
end;

procedure TDM1.tPedidoDescontoBeforePost(DataSet: TDataSet);
begin
  if (tPedidoDescontoPercDesconto.AsFloat = 0) or (tPedidoDescontoPercDesconto.AsString = '') then
    fPedidoDesconto.BitBtn1.SetFocus;
end;

procedure TDM1.tUsuarioAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuario.Handle);
end;

procedure TDM1.tUsuarioAltAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioAlt.Handle)
end;

procedure TDM1.tUsuarioExcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioExc.Handle)
end;

procedure TDM1.tUsuarioInsAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioIns.Handle)
end;

procedure TDM1.tEmpresaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEmpresa.Handle)
end;

procedure TDM1.tNatOperacaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNatOperacao.Handle)
end;

procedure TDM1.tVendedorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tVendedor.Handle)
end;

procedure TDM1.tSetorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSetor.Handle);
end;

procedure TDM1.tTipoCobrancaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTipoCobranca.Handle);
end;

procedure TDM1.tHistoricoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tHistorico.Handle);
end;

procedure TDM1.tNotaFiscalAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscal.Handle);
end;

procedure TDM1.tCReceberParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCReceberParc.Handle);
end;

procedure TDM1.tIndexadorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tIndexador.Handle);
end;

procedure TDM1.tUFAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUF.Handle);
end;

procedure TDM1.tNotaFiscalItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalItens.Handle);
end;

procedure TDM1.tNotaFiscalParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalParc.Handle);
end;

procedure TDM1.tParametrosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tParametros.Handle);
end;

procedure TDM1.tContasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tContas.Handle);
end;

procedure TDM1.tMovimentosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovimentos.Handle);
end;

procedure TDM1.tCReceberAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCReceber.Handle);
end;

procedure TDM1.tPlanoContasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPlanoContas.Handle);
end;

procedure TDM1.tCPagarAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCPagar.Handle);
end;

procedure TDM1.tCPagarParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCPagarParc.Handle);
end;

procedure TDM1.tNEntradaParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaParc.Handle);
end;

procedure TDM1.tNEntradaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntrada.Handle);
end;

procedure TDM1.tNEntradaItensMobraAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaItensMObra.Handle);
end;

procedure TDM1.tNEntradaItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaItens.Handle);
end;

procedure TDM1.tNEntradaParcBeforePost(DataSet: TDataSet);
begin
  if tNEntradaParcNroDuplicata.AsInteger = 0 then
    tNEntradaParcNroDuplicata.AsInteger := tNEntradaParcNumNEntr.AsInteger;
  if tNEntradaParc.State = dsInsert then
    fNotaEntrada.Verifica_Parcelas;
end;

procedure TDM1.tCReceberParcHistAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCReceberParcHist.Handle);
end;

procedure TDM1.tImpressoraAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tImpressora.Handle);
end;

procedure TDM1.tCReceberParcCalcFields(DataSet: TDataSet);
begin
  if not tCReceberParcQuitParcCReceber.AsBoolean then
  begin
    tCReceberParcclDiasAtraso.AsFloat := Date - tCReceberParcDtVencCReceber.AsDateTime;
    if tCReceberParcclDiasAtraso.AsFloat <= 0 then
      tCReceberParcclDiasAtraso.AsFloat := 0;
  end
  else
  begin
    tCReceberParcclDiasAtraso.AsFloat := tCReceberParcDtPagParcCReceber.AsDateTime - tCReceberParcDtVencCReceber.AsDateTime;
    if tCReceberParcclDiasAtraso.AsFloat <= 0 then
      tCReceberParcclDiasAtraso.AsFloat := 0;
  end;
end;

procedure TDM1.tJurosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tJuros.Handle);
end;

procedure TDM1.tRegioesAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tRegioes.Handle);
end;

procedure TDM1.tPedidoNotaAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoNota.Handle);
end;

procedure TDM1.tCPagarParcCalcFields(DataSet: TDataSet);
begin
  if not tCPagarParcQuitParcCPagar.AsBoolean then
  begin
    tCPagarParcclDiasAtraso.AsFloat := Date - tCPagarParcDtVencCPagar.AsDateTime;
    if tCPagarParcclDiasAtraso.AsFloat <= 0 then
      tCPagarParcclDiasAtraso.AsFloat := 0;
  end
  else
  begin
    tCPagarParcclDiasAtraso.AsFloat := tCPagarParcDtPagParcCPagar.AsDateTime - tCPagarParcDtVencCPagar.AsDateTime;
    if tCPagarParcclDiasAtraso.AsFloat <= 0 then
      tCPagarParcclDiasAtraso.AsFloat := 0;
  end;
end;

procedure TDM1.tOrdemCompraNotaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraNota.Handle);
end;

procedure TDM1.tOrdemCompraNotaGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraNotaGrade.Handle);
end;

procedure TDM1.tObsAuxAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tObsAux.Handle);
end;

procedure TDM1.tAtividadeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAtividade.Handle);
end;

procedure TDM1.tFornecAtivAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFornecAtiv.Handle);
end;

procedure TDM1.tProdutoMatCalcFields(DataSet: TDataSet);
begin
  if tProdutoMatQtd.AsFloat > 0 then
    tProdutoMatclQtdPr.AsFloat := 1 / tProdutoMatQtd.AsFloat;
end;

procedure TDM1.tNotaFiscalGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalGrade.Handle);
end;

procedure TDM1.tCidadeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCidade.Handle);
end;

procedure TDM1.tTransportadoraCidAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTransportadoraCid.Handle);
end;

procedure TDM1.tDctoEstAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tDctoEst.Handle);
end;

procedure TDM1.tDctoEstItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tDctoEstItem.Handle);
end;

procedure TDM1.tDctoEstGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tDctoEstGrade.Handle);
end;

procedure TDM1.tEstoqueMatMovAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEstoqueMatMov.Handle);
end;

procedure TDM1.tEstoqueMatMovGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEstoqueMatMovGrade.Handle);
end;

procedure TDM1.tOutrosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOutros.Handle);
end;

procedure TDM1.tProdutoConsumoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoConsumo.Handle);
end;

procedure TDM1.tProdutoConsumoItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoConsumoItem.Handle);
end;

procedure TDM1.tPedidoConsumoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoConsumo.Handle);
end;

procedure TDM1.tFuncionarioAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFuncionario.Handle);
end;

procedure TDM1.tFeriasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFerias.Handle);
end;

procedure TDM1.tSalarioAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSalario.Handle);
end;

procedure TDM1.tTabPrecoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTabPreco.Handle);
end;

procedure TDM1.tFuncFaltasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFuncFaltas.Handle);
end;

procedure TDM1.tAgeContatoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAgeContato.Handle);
end;

procedure TDM1.tProdutoCliAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoCli.Handle);
end;

procedure TDM1.tSitTributariaNewRecord(DataSet: TDataSet);
begin
  tSitTributariaSitTributaria.AsFloat := 0;
end;

procedure TDM1.tOrcamentoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrcamento.Handle);
end;

procedure TDM1.tOrcamentoItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrcamentoItens.Handle);
end;

procedure TDM1.tNEntradaItensNewRecord(DataSet: TDataSet);
begin
  DM1.tNEntradaItensNumMovEstBaixa.AsInteger := 0;
  DM1.tNEntradaItensQtdDevolvida.AsFloat := 0;
end;

procedure TDM1.tPedidoItemNewRecord(DataSet: TDataSet);
begin
  DM1.tPedidoItemNumTalao.AsInteger := 0;
  DM1.tPedidoItemCancelado.AsBoolean := False;
  DM1.tPedidoItemCopiado.AsBoolean := False;
  DM1.tPedidoItemGerarTalao.AsBoolean := False;
end;

procedure TDM1.tTalaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTalao.Handle);
end;

procedure TDM1.tTalaoGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTalaoGrade.Handle);
end;

procedure TDM1.tProjecaoEstAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProjecaoEst.Handle);
end;

procedure TDM1.tProjecaoEstCalcFields(DataSet: TDataSet);
begin
  DM1.tProjecaoEstclTotal.AsFloat := DM1.tProjecaoEstProjecao1.AsFloat +
    DM1.tProjecaoEstProjecao2.AsFloat +
    DM1.tProjecaoEstProjecao3.AsFloat +
    DM1.tProjecaoEstProjecao4.AsFloat +
    DM1.tProjecaoEstProjecao5.AsFloat +
    DM1.tProjecaoEstProjecao6.AsFloat +
    DM1.tProjecaoEstProjecao7.AsFloat +
    DM1.tProjecaoEstProjecao8.AsFloat +
    DM1.tProjecaoEstProjecao9.AsFloat +
    DM1.tProjecaoEstProjecao10.AsFloat +
    DM1.tProjecaoEstProjecao11.AsFloat +
    DM1.tProjecaoEstProjecao12.AsFloat;
end;

procedure TDM1.tBanrisulAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tBanrisul.Handle);
end;

procedure TDM1.tValeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tVale.Handle);
end;

procedure TDM1.tValeItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tValeItens.Handle);
end;

procedure TDM1.tNotaFiscalValeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalVale.Handle);
end;

procedure TDM1.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TDM1.tTalaoNewRecord(DataSet: TDataSet);
begin
  DM1.tTalaoProduzido.AsBoolean := False;
  DM1.tTalaoCancelado.AsBoolean := False;
  DM1.tTalaoImprimir.AsBoolean := False;
  DM1.tTalaoQtdProduzida.AsInteger := 0;
  DM1.tTalaoEncerrado.AsBoolean := False;
end;

procedure TDM1.tTalaoHorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTalaoHor.Handle);
end;

procedure TDM1.tClienteNewRecord(DataSet: TDataSet);
begin
  DM1.tClienteFornecedor.AsBoolean := False;
  DM1.tClienteLiberacao.AsString   := 'N';
  DM1.tClienteIdPais.AsInteger     := 1;
end;

procedure TDM1.tTalaoHistAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTalaoHist.Handle);
end;

procedure TDM1.tProdutoSetorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoSetor.Handle);
end;

procedure TDM1.tParametrosSetorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tParametrosSetor.Handle);
end;

procedure TDM1.tNotaFiscalNDevolvidaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalNDevolvida.Handle);
end;

procedure TDM1.tNatOperacaoNewRecord(DataSet: TDataSet);
begin
  DM1.tNatOperacaoMaoObra.AsBoolean := False;
  DM1.tNatOperacaoControlarRetorno.AsBoolean := False;
end;

procedure TDM1.tMotivoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMotivo.Handle);
end;

procedure TDM1.tValeNewRecord(DataSet: TDataSet);
begin
  tValeFaturado.AsBoolean := False;
end;

procedure TDM1.tValeItensNewRecord(DataSet: TDataSet);
begin
  tValeItensQtd.AsFloat := 0;
  tValeItensQtdFaturada.AsFloat := 0;
  tValeItensQtdRestante.AsFloat := 0;
  tValeItensFaturado.AsBoolean := False;
end;

procedure TDM1.tNotaFiscalItensNewRecord(DataSet: TDataSet);
begin
  tNotaFiscalItensVale.AsBoolean := False;
end;

procedure TDM1.tEquipEpiAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEquipEpi.Handle);
end;

procedure TDM1.tEquipEpiNewRecord(DataSet: TDataSet);
begin
  tEquipEpiQtdMes.AsInteger := 0;
end;

procedure TDM1.tFuncionarioEPIAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFuncionarioEPI.Handle);
end;

procedure TDM1.tFuncionarioEPINewRecord(DataSet: TDataSet);
begin
  tFuncionarioEPIQtd.AsInteger := 0;
end;

procedure TDM1.tMovAtelierAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovAtelier.Handle);
end;

procedure TDM1.tMovAtelierItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovAtelierItens.Handle);
end;

procedure TDM1.tMovAtelierItensNewRecord(DataSet: TDataSet);
begin
  tMovAtelierItensQtd.AsFloat := 0;
  tMovAtelierItensQtdDevolvida.AsFloat := 0;
  tMovAtelierItensQtdRestante.AsFloat := 0;
  tMovAtelierItensVlrUnitario.AsFloat := 0;
  tMovAtelierItensVlrTotal.AsFloat := 0;
end;

procedure TDM1.tMovAtelierNewRecord(DataSet: TDataSet);
begin
  tMovAtelierVlrTotal.AsFloat := 0;
  tMovAtelierBaixado.AsBoolean := False;
end;

procedure TDM1.tOrcamentoAfterInsert(DataSet: TDataSet);
begin
  tOrcamentoAprovado.AsString := 'P';
end;

procedure TDM1.tNEntradaNDevolvidaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaNDevolvida.Handle);
end;

procedure TDM1.tPedidoLogAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoLog.Handle);
end;

procedure TDM1.tPedidoLogNewRecord(DataSet: TDataSet);
begin
  tPedidoLogUsuario.AsString := DM1.tUsuarioUsuario.AsString;
  tPedidoLogDtAlteracao.AsDateTime := Date;
  tPedidoLogHrAlteracao.AsDateTime := Now;
end;

procedure TDM1.tCPagarParcHistAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCPagarParcHist.Handle);
end;

procedure TDM1.tGrupoClienteAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGrupoCliente.Handle);
end;

procedure TDM1.tCReceberParcNewRecord(DataSet: TDataSet);
begin
  tCReceberParcCodVendedor.AsInteger := 0;
  tCReceberParcPercComissao.AsFloat := 0;
end;

procedure TDM1.tNotaFiscalNewRecord(DataSet: TDataSet);
begin
  DM1.tNotaFiscalTipoNota.AsString     := '1';
  DM1.tNotaFiscalVoltouNota.AsBoolean  := False;
  DM1.tNotaFiscalCancelada.AsBoolean   := False;
  DM1.tNotaFiscalNFeDenegada.AsBoolean := False;
end;

procedure TDM1.GravaGrid(Grid: TSMDBGrid; Form: string);
var
  caminho: string;
begin
  caminho := DM1.tParametrosCaminhoGrids.AsString;
  if not DirectoryExists(caminho) then
    CreateDirectory(PAnsiChar(caminho), nil);
  Grid.Columns.SaveToFile(Caminho + '\' + Form + '_' + Grid.Name + '_' + DM1.tUsuarioUsuario.AsString + '.txt');
end;

procedure TDM1.LeGrid(Grid: TSMDBGrid; Form: string);
var
  caminho: string;
begin
  caminho := DM1.tParametrosCaminhoGrids.AsString;
  if fileExists(Caminho + '\' + Form + '_' + Grid.Name + '_' + DM1.tUsuarioUsuario.AsString + '.txt') then
    Grid.Columns.LoadFromFile(Caminho + '\' + Form + '_' + Grid.Name + '_' + DM1.tUsuarioUsuario.AsString + '.txt');
end;

procedure TDM1.tChequeAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCheque.Handle);
end;

procedure TDM1.tChequeCPagarAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tChequeCPagar.Handle);
end;

procedure TDM1.tPlanoContasItensAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPlanoContasItens.Handle);
end;

procedure TDM1.tCReceberParcBeforePost(DataSet: TDataSet);
begin
  Grava_DtVencimento2;
end;

procedure TDM1.tFeriadoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tFeriado.Handle);
end;

procedure TDM1.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
  contaAberto: Integer;
begin
  contaAberto := 0;
  FDataSetError := TrsDataSetError.Create;
  FDataSetError.CreateError(Self);

  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;

  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TTable) then
    begin
      if TTable(Components[i]).Active then
        inc(contaAberto);
      SetLength(aIndices, 0);
      vIndices := TTable(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TTable(Self.Components[i]), TTable(Self.Components[i]).TableName, aIndices);
    end;
  end;
//  ShowMessage('Tabelas abertas: ' + IntToStr(contaAberto));
end;

procedure TDM1.DataModuleDestroy(Sender: TObject);
begin
  FDataSetError.Free;
end;

procedure TDM1.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := tUsuarioUsuario.AsString;
end;

procedure TDM1.tPaisAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPais.Handle);
end;

procedure TDM1.tCSTIPIAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCSTIPI.Handle);
end;

procedure TDM1.tFilialAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tFilial.Handle);
end;

procedure TDM1.tNotaFiscalRefAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tNotaFiscalRef.Handle);
end;

procedure TDM1.tCReceberParcRemAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCReceberParcRem.Handle);
end;

procedure TDM1.tExtComissaoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tExtComissao.Handle);
end;

procedure TDM1.tExtComissaoNewRecord(DataSet: TDataSet);
begin
  tExtComissaoFilial.AsInteger := 1;
end;

procedure TDM1.tProdutoNewRecord(DataSet: TDataSet);
begin
  tProdutoInativo.AsBoolean   := False;
  tProdutoOrigemProd.AsString := '0';
end;

procedure TDM1.tFornecedoresNewRecord(DataSet: TDataSet);
begin
  DM1.tFornecedoresIDPais.AsInteger := 1;
  DM1.tFornecedoresTipo_Consumidor.AsInteger := 0;
end;

procedure TDM1.tTranspNewRecord(DataSet: TDataSet);
begin
  DM1.tTranspIDPais.AsInteger := 1;
end;

procedure TDM1.tMovimentosNewRecord(DataSet: TDataSet);
begin
  tMovimentosDtUsuario.AsDateTime := Date;
  tMovimentosHrUsuario.AsDateTime := Now;
  tMovimentosUsuario.AsString     := tUsuarioUsuario.AsString;
end;

procedure TDM1.tFilialDepAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tFilialDep.Handle);
end;

procedure TDM1.tFilial_DownloadAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tFilial_Download.Handle);
end;

end.

