unit UMenuP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Menus, StdCtrls, DBCtrls, ExtCtrls, Db, DBTables, DBIProcs,
  Buttons, Grids, DBGrids, SpeedBar, RXCtrls, MemTable, jpeg, midasLib, RLConsts;

type
  TfMenuP = class(TForm)
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Bevel1: TBevel;
    RxSpeedButton1: TRxSpeedButton;
    RxSpeedButton2: TRxSpeedButton;
    RxSpeedButton3: TRxSpeedButton;
    RxSpeedButton4: TRxSpeedButton;
    RxSpeedButton5: TRxSpeedButton;
    RxSpeedButton6: TRxSpeedButton;
    RxSpeedButton7: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Grupo2: TMenuItem;
    Clientes3: TMenuItem;
    Grades1: TMenuItem;
    Cor2: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    Impressoras2: TMenuItem;
    Transportadoras2: TMenuItem;
    ClassificaoFiscal2: TMenuItem;
    SituaoTributria2: TMenuItem;
    NaturezadeOperao2: TMenuItem;
    EstadoseAlqotas2: TMenuItem;
    Relatrios6: TMenuItem;
    Clientes4: TMenuItem;
    Vendedores4: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fornecedores3: TMenuItem;
    Materiais3: TMenuItem;
    OrdemdeCompra2: TMenuItem;
    Relatrios7: TMenuItem;
    Fornecedores4: TMenuItem;
    Materiais4: TMenuItem;
    PopupMenu3: TPopupMenu;
    Pedido2: TMenuItem;
    Setor2: TMenuItem;
    ProdutosFichaTcnica1: TMenuItem;
    Relatrios8: TMenuItem;
    ClculodeMateriaispLotes1: TMenuItem;
    Rtulos2: TMenuItem;
    PopupMenu4: TPopupMenu;
    NotasFiscais2: TMenuItem;
    PopupMenu5: TPopupMenu;
    LancaCtasaReceber1: TMenuItem;
    TipodeCobranas1: TMenuItem;
    Relatrios9: TMenuItem;
    Duplicatas2: TMenuItem;
    PopupMenu6: TPopupMenu;
    LanaCtasaPagar1: TMenuItem;
    PopupMenu7: TPopupMenu;
    RxSpeedButton9: TRxSpeedButton;
    Contas3: TMenuItem;
    PlanodeContas2: TMenuItem;
    Movimentos2: TMenuItem;
    Relatrios10: TMenuItem;
    Contas4: TMenuItem;
    Relatrios11: TMenuItem;
    Juros1: TMenuItem;
    Notasemitidaspornaturezadeoperao1: TMenuItem;
    RegiesdeVendas2: TMenuItem;
    tEmpresa: TTable;
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
    Parametros1: TMenuItem;
    Pedidosnofaturados1: TMenuItem;
    BaixaPedidos1: TMenuItem;
    EtiquetasClientes1: TMenuItem;
    EtiquetasVendedores1: TMenuItem;
    RxSpeedButton8: TRxSpeedButton;
    PopupMenu8: TPopupMenu;
    N1Vendedor1: TMenuItem;
    LanamentodeComisses1: TMenuItem;
    Relatrios13: TMenuItem;
    ExtratodeComisso1: TMenuItem;
    ExtratodeVendedoresNotas1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N16: TMenuItem;
    N21: TMenuItem;
    N4Relatrios1: TMenuItem;
    N1ContasPagar1: TMenuItem;
    N2Histricos2: TMenuItem;
    N2NotasporNaturezadeOperao1: TMenuItem;
    N5ContasaReeber1: TMenuItem;
    N6AReceberporCliente1: TMenuItem;
    N3APagarporFornecedores1: TMenuItem;
    N4PagamentodeJuros2: TMenuItem;
    N5EtiquetasFornecedores1: TMenuItem;
    RxLabel2: TRxLabel;
    ObsAuxiliar1: TMenuItem;
    ALogin1: TMenuItem;
    N3NotadeCompra1: TMenuItem;
    N1Atividades2: TMenuItem;
    N3Indexador2: TMenuItem;
    N3ConsultadeFornecpAtividade2: TMenuItem;
    N4MateriaisAbaixodoMnimo2: TMenuItem;
    N3ConsultadeEstoquedeMateriais2: TMenuItem;
    N5HistricodoMaterial1: TMenuItem;
    N0MetasProduzidos1: TMenuItem;
    N3CustoporSetor1: TMenuItem;
    PedidoEspecial1: TMenuItem;
    N7NotadeEntrada1: TMenuItem;
    N2Cidades2: TMenuItem;
    DctodeEntradaeSadadoEstoque1: TMenuItem;
    N1AgendaTelefnica1: TMenuItem;
    N1CpiasdeDuplicatas1: TMenuItem;
    N8BalancodoEstoque1: TMenuItem;
    N9OrdensdeCompra1: TMenuItem;
    N9Funcionrios1: TMenuItem;
    N2EmbarqueDirio1: TMenuItem;
    N8Programao1: TMenuItem;
    NTabeladePreo1: TMenuItem;
    N1ControledeFaturamento1: TMenuItem;
    OAgendadeContatos1: TMenuItem;
    N5HistricodePedidos1: TMenuItem;
    N0RecebimentodePedidos1: TMenuItem;
    N1: TMenuItem;
    N3GeraSintegra1: TMenuItem;
    N7Cheque1: TMenuItem;
    N2Cheques1: TMenuItem;
    N4ConsultaHistricoMaterial1: TMenuItem;
    N5ControleFornecedores1: TMenuItem;
    N5GeraNotaEDI1: TMenuItem;
    COramento1: TMenuItem;
    N3ContasaReceberporSemana1: TMenuItem;
    N3ContasaPagarporSemana1: TMenuItem;
    N5ConsultaPedPendente1: TMenuItem;
    N8Produtos1: TMenuItem;
    BaixaTalo1: TMenuItem;
    GeraNotaEDIAzalia1: TMenuItem;
    RecebimentodePedidosdaAzalia1: TMenuItem;
    ProjeoEstoqueProduto1: TMenuItem;
    Vale1: TMenuItem;
    Vale3: TMenuItem;
    CartadeCorreo1: TMenuItem;
    VendasporPerodo1: TMenuItem;
    Talo1: TMenuItem;
    BaixaTaloHorrios1: TMenuItem;
    StaticText1: TStaticText;
    PrevisodeComisso1: TMenuItem;
    VendasporCliente1: TMenuItem;
    ClientesInativos1: TMenuItem;
    RxLabel1: TRxLabel;
    otaldeHorasPorFuncionrioTalo1: TMenuItem;
    otaldeHorasPorProdutosTalo1: TMenuItem;
    ConsultaNotasdeBeneficiamento1: TMenuItem;
    ConsultaNotadeEntradaporProduto1: TMenuItem;
    BitBtn1: TBitBtn;
    Acumuladoporproduto1: TMenuItem;
    PedidosemcarteiraQtde1: TMenuItem;
    PedidosemcarteiraValor1: TMenuItem;
    Motivo1: TMenuItem;
    EPI1: TMenuItem;
    N17: TMenuItem;
    MovimentoRetificaModeObra1: TMenuItem;
    ConsultaMovimentoRetificaModeObra1: TMenuItem;
    ConsultaReceberPagar1: TMenuItem;
    Orcamento1: TMenuItem;
    NotasFiscaisEmbalagem1: TMenuItem;
    N19: TMenuItem;
    ConsultaLogdoItemdoPedido1: TMenuItem;
    BaixaPedidoPorItem1: TMenuItem;
    N23: TMenuItem;
    HistricodoFaturamento1: TMenuItem;
    GrupoCliente1: TMenuItem;
    ConsultadePedidos1: TMenuItem;
    ContasReceberNovo1: TMenuItem;
    ContasaPagarNovo1: TMenuItem;
    Feriado1: TMenuItem;
    Image1: TImage;
    BaixaProduo1: TMenuItem;
    CadastrodeParadas1: TMenuItem;
    CadastrodeDefeitos1: TMenuItem;
    N2: TMenuItem;
    CadastrodeHorrios1: TMenuItem;
    ConsultaContasaReceber1: TMenuItem;
    Filial1: TMenuItem;
    ConsultaFuncionariosTempos1: TMenuItem;
    PopupMenu9: TPopupMenu;
    GerarTalo1: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem55: TMenuItem;
    ConsultaRpidadeTalo1: TMenuItem;
    CadastrodeItensdeAjusteComplementar1: TMenuItem;
    N9: TMenuItem;
    CadastrodeTributos1: TMenuItem;
    CdigodeSituaodaOperaonoSimplesNacionalCSOSN1: TMenuItem;
    OrigemMercadoria1: TMenuItem;
    PercentualSimples21: TMenuItem;
    RegimeTributrio1: TMenuItem;
    abelaCofins1: TMenuItem;
    objectabelaPis1TMenuItem1: TMenuItem;
    InutilizarNumeraodeNota1: TMenuItem;
    BitBtn2: TBitBtn;
    N10: TMenuItem;
    ConsultaPagamentosDevolues1: TMenuItem;
    BitBtn3: TBitBtn;
    VoltarNotaqdodevolvida1: TMenuItem;
    ConsultarNotasCanceladasDenegadas1: TMenuItem;
    N11: TMenuItem;
    NFeEmailsAdicionais1: TMenuItem;
    ConsultaPedidoTalo1: TMenuItem;
    abelaIBPT1: TMenuItem;
    btnGerarEstoque: TBitBtn;
    btnGerarItensNota: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grupo1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Grade1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure CondiodePagamento1Click(Sender: TObject);
    procedure Impressoras1Click(Sender: TObject);
    procedure Transportadoras1Click(Sender: TObject);
    procedure ClassificaoFiscal1Click(Sender: TObject);
    procedure SituaoTributria1Click(Sender: TObject);
    procedure NaturezadeOperao1Click(Sender: TObject);
    procedure EstadoseAlqotas1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Vendedores2Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Materiais1Click(Sender: TObject);
    procedure OrdemdeCompra1Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure Materiais2Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure ProdutoFichaTcnica1Click(Sender: TObject);
    procedure Rtulos1Click(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure LanaCtasaReceber1Click(Sender: TObject);
    procedure TipodeCobrana1Click(Sender: TObject);
    procedure Histricos1Click(Sender: TObject);
    procedure Duplicatas1Click(Sender: TObject);
    procedure NotasdeEntrada1Click(Sender: TObject);
    procedure fLanaContasaPagar1Click(Sender: TObject);
    procedure Contas1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure Contas2Click(Sender: TObject);
    procedure Grupo2Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure Grades1Click(Sender: TObject);
    procedure Cor2Click(Sender: TObject);
    procedure CondiesdePagamento1Click(Sender: TObject);
    procedure Impressoras2Click(Sender: TObject);
    procedure Transportadoras2Click(Sender: TObject);
    procedure ClassificaoFiscal2Click(Sender: TObject);
    procedure SituaoTributria2Click(Sender: TObject);
    procedure NaturezadeOperao2Click(Sender: TObject);
    procedure EstadoseAlqotas2Click(Sender: TObject);
    procedure Clientes4Click(Sender: TObject);
    procedure Vendedores4Click(Sender: TObject);
    procedure Fornecedores3Click(Sender: TObject);
    procedure Materiais3Click(Sender: TObject);
    procedure OrdemdeCompra2Click(Sender: TObject);
    procedure Fornecedores4Click(Sender: TObject);
    procedure Materiais4Click(Sender: TObject);
    procedure Pedido2Click(Sender: TObject);
    procedure Setor2Click(Sender: TObject);
    procedure ProdutosFichaTcnica1Click(Sender: TObject);
    procedure ClculodeMateriaispLotes1Click(Sender: TObject);
    procedure Rtulos2Click(Sender: TObject);
    procedure NotasFiscais2Click(Sender: TObject);
    procedure LancaCtasaReceber1Click(Sender: TObject);
    procedure TipodeCobranas1Click(Sender: TObject);
    procedure Histricos2Click(Sender: TObject);
    procedure Duplicatas2Click(Sender: TObject);
    procedure LanaCtasaPagar1Click(Sender: TObject);
    procedure Contas3Click(Sender: TObject);
    procedure PlanodeContas2Click(Sender: TObject);
    procedure Movimentos2Click(Sender: TObject);
    procedure Contas4Click(Sender: TObject);
    procedure Juros1Click(Sender: TObject);
    procedure Juros2Click(Sender: TObject);
    procedure Notasemitidaspornaturezadeoperao1Click(Sender: TObject);
    procedure RegiesdeVendas1Click(Sender: TObject);
    procedure RegiesdeVendas2Click(Sender: TObject);
    procedure tEmpresaAfterPost(DataSet: TDataSet);
    procedure Parametros1Click(Sender: TObject);
    procedure Pedidosnofaturados1Click(Sender: TObject);
    procedure BaixaPedidos1Click(Sender: TObject);
    procedure BaixaPedidos2Click(Sender: TObject);
    procedure EtiquetasClientes1Click(Sender: TObject);
    procedure EtiquetasClientes2Click(Sender: TObject);
    procedure EtiquetasVendedores1Click(Sender: TObject);
    procedure EtiquetasVendedores2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure Pedidosnofaturados2Click(Sender: TObject);
    procedure N2ExtratodeComisses2Click(Sender: TObject);
    procedure N1Vendedor1Click(Sender: TObject);
    procedure N1Vendedor2Click(Sender: TObject);
    procedure LanamentodeComisses1Click(Sender: TObject);
    procedure LanamentodeComisso1Click(Sender: TObject);
    procedure ExtratodeComisso2Click(Sender: TObject);
    procedure ExtratodeComisso1Click(Sender: TObject);
    procedure ExtratodeVendedoresNotas1Click(Sender: TObject);
    procedure N1ContasPagar1Click(Sender: TObject);
    procedure N1ContasPagar2Click(Sender: TObject);
    procedure N2Histricos1Click(Sender: TObject);
    procedure N2Histricos2Click(Sender: TObject);
    procedure N2NotasporNaturezadeOperao1Click(Sender: TObject);
    procedure N5ContasaReeber1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure N6AReceberporCliente1Click(Sender: TObject);
    procedure N3APagarporFornecedores1Click(Sender: TObject);
    procedure N4PagamentodeJuros1Click(Sender: TObject);
    procedure N5EtiquetasFornecedores1Click(Sender: TObject);
    procedure ObsAuxiliar1Click(Sender: TObject);
    procedure N3NotadeCompra1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ALogin1Click(Sender: TObject);
    procedure N1Atividades1Click(Sender: TObject);
    procedure N3Indexador1Click(Sender: TObject);
    procedure N3ConsultadeFornecpAtividade1Click(Sender: TObject);
    procedure N4MateriaisAbaixodoMnimo1Click(Sender: TObject);
    procedure N3ConsultadeEstoquedeMateriais1Click(Sender: TObject);
    procedure N5HistricodoMaterial1Click(Sender: TObject);
    procedure N3CustoporSetor1Click(Sender: TObject);
    procedure N7NotadeEntrada1Click(Sender: TObject);
    procedure N2Cidades1Click(Sender: TObject);
    procedure DctodeEntradaeSadadoEstoque1Click(Sender: TObject);
    procedure N1AgendaTelefnica1Click(Sender: TObject);
    procedure N1CpiasdeDuplicatas1Click(Sender: TObject);
    procedure N8BalancodoEstoque1Click(Sender: TObject);
    procedure N9OrdensdeCompra1Click(Sender: TObject);
    procedure N9Funcionrios1Click(Sender: TObject);
    procedure N2EmbarqueDirio1Click(Sender: TObject);
    procedure N8Programao1Click(Sender: TObject);
    procedure NTabeladePreo1Click(Sender: TObject);
    procedure N1ControledeFaturamento1Click(Sender: TObject);
    procedure OAgendadeContatos1Click(Sender: TObject);
    procedure N5HistricodePedidos1Click(Sender: TObject);
    procedure N0RecebimentodePedidos1Click(Sender: TObject);
    procedure N3GeraSintegra1Click(Sender: TObject);
    procedure N7Cheque1Click(Sender: TObject);
    procedure N2Cheques1Click(Sender: TObject);
    procedure N4ConsultaHistricoMaterial1Click(Sender: TObject);
    procedure N5ControleFornecedores1Click(Sender: TObject);
    procedure N5GeraNotaEDI1Click(Sender: TObject);
    procedure COramento1Click(Sender: TObject);
    procedure N3ContasaReceberporSemana1Click(Sender: TObject);
    procedure N3ContasaPagarporSemana1Click(Sender: TObject);
    procedure N5ConsultaPedPendente1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N8Produtos1Click(Sender: TObject);
    procedure BaixaTalo1Click(Sender: TObject);
    procedure GeraNotaEDIAzalia1Click(Sender: TObject);
    procedure RecebimentodePedidosdaAzalia1Click(Sender: TObject);
    procedure ProjeoEstoqueProduto1Click(Sender: TObject);
    procedure Vale1Click(Sender: TObject);
    procedure Vale3Click(Sender: TObject);
    procedure CartadeCorreo1Click(Sender: TObject);
    procedure VendasporPerodo1Click(Sender: TObject);
    procedure Talo1Click(Sender: TObject);
    procedure BaixaTaloHorrios1Click(Sender: TObject);
    procedure PrevisodeComisso1Click(Sender: TObject);
    procedure VendasporCliente1Click(Sender: TObject);
    procedure ClientesInativos1Click(Sender: TObject);
    procedure otaldeHorasPorFuncionrioTalo1Click(Sender: TObject);
    procedure otaldeHorasPorProdutosTalo1Click(Sender: TObject);
    procedure ConsultaNotasdeBeneficiamento1Click(Sender: TObject);
    procedure ConsultaNotadeEntradaporProduto1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Acumuladoporproduto1Click(Sender: TObject);
    procedure PedidosemcarteiraQtde1Click(Sender: TObject);
    procedure PedidosemcarteiraValor1Click(Sender: TObject);
    procedure Motivo1Click(Sender: TObject);
    procedure EPI1Click(Sender: TObject);
    procedure MovimentoRetificaModeObra1Click(Sender: TObject);
    procedure ConsultaMovimentoRetificaModeObra1Click(Sender: TObject);
    procedure ConsultaReceberPagar1Click(Sender: TObject);
    procedure Orcamento1Click(Sender: TObject);
    procedure NotasFiscaisEmbalagem1Click(Sender: TObject);
    procedure ConsultaLogdoItemdoPedido1Click(Sender: TObject);
    procedure BaixaPedidoPorItem1Click(Sender: TObject);
    procedure HistricodoFaturamento1Click(Sender: TObject);
    procedure GrupoCliente1Click(Sender: TObject);
    procedure ConsultadePedidos1Click(Sender: TObject);
    procedure ContasReceberNovo1Click(Sender: TObject);
    procedure ContasaPagarNovo1Click(Sender: TObject);
    procedure Feriado1Click(Sender: TObject);
    procedure BaixaProduo1Click(Sender: TObject);
    procedure CadastrodeDefeitos1Click(Sender: TObject);
    procedure CadastrodeParadas1Click(Sender: TObject);
    procedure GerarTalo1Click(Sender: TObject);
    procedure BaixaProduo2Click(Sender: TObject);
    procedure ConsultaTalo1Click(Sender: TObject);
    procedure ConsultaSituaoSetor1Click(Sender: TObject);
    procedure CadastrodeHorrios1Click(Sender: TObject);
    procedure BaixaProduoTED1Click(Sender: TObject);
    procedure ConsultaContasaReceber1Click(Sender: TObject);
    procedure Filial1Click(Sender: TObject);
    procedure ConsultaFuncionariosTempos1Click(Sender: TObject);
    procedure ConsultaTalaoSetor1Click(Sender: TObject);
    procedure ConsultaSituacaoFuncionrio1Click(Sender: TObject);
    procedure ConsultaQuebras1Click(Sender: TObject);
    procedure Produtividade1Click(Sender: TObject);
    procedure Consultarpidadetalo1Click(Sender: TObject);
    procedure CadastrodeItensdeAjusteComplementar1Click(Sender: TObject);
    procedure CdigodeSituaodaOperaonoSimplesNacionalCSOSN1Click(
      Sender: TObject);
    procedure OrigemMercadoria1Click(Sender: TObject);
    procedure InutilizarNumeraodeNota1Click(Sender: TObject);
    procedure PercentualSimples21Click(Sender: TObject);
    procedure abelaCofins1Click(Sender: TObject);
    procedure objectabelaPis1TMenuItem1Click(Sender: TObject);
    procedure RegimeTributrio1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ConsultaPagamentosDevolues1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure VoltarNotaqdodevolvida1Click(Sender: TObject);
    procedure ConsultarNotasCanceladasDenegadas1Click(Sender: TObject);
    procedure NFeEmailsAdicionais1Click(Sender: TObject);
    procedure ConsultaPedidoTalo1Click(Sender: TObject);
    procedure abelaIBPT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuP: TfMenuP;
  Auto : String[15];

implementation

uses UGrupos, UFornecedores, UMaterial, UGrade, UCor, UCondPgto,
  UTransp, UOrdemCompra, UEmpresa, UClasFiscal, USitTributaria, UProduto,
  UPrevMaterial, UVendedor, UNatOperacao, UPedido, UCliente,
  UPrevRelClientes, URelFornecedores, UPrevFornecedores, UPrevVendedores,
  USetor, UTipoCobranca, UHistorico, UEmissaoNotaFiscal, UUf, UContas,
  UPlanoContas, UPrevContas, 
  ULancaCPagar, ULancaCReceber, UNotaEntrada, USobre,
  UPrevDuplicatas, UPrevRelRotulos, UImpressora, URelClientes,
  UJuros, URegioes, USenha, UParametros,
  UPrevPedidosNaoFat, UBaixaPedido, UEtiqCliente, UEtiqVendedor,
  UDM1, UAutorizacao, ULancComissao, UPrevExtComissao2,
  UPrevRelCPagar, UPrevNComprasNatOpe, UPrevRelCReceber, UPrevRecCli,
  UPrevPagForn, UPrevPgtoJuros, UEtiqFornecedor, UObsAux, UUsuarios, UAcesso,
  UAtividade, UIndexador, UConsFornecAtiv,
  UPrevCustoSetor, UPrevMatMinimo, UConsEstoqueMat, UPrevRelHistMaterial,
  UPrevNotaEntrada,
  UPrevCalcMaterialLote, UCidade, UDctoEst, UAgendaTelef, UCopiaDuplicata,
  UPrevBalancoEst, UPrevRelOC, UFuncionario, UPrevEmbDiario, UConsComissao,
  UPrevProgramacao, UTabPreco, UPrevContrFat, UAgeContato, UHistPedido,
  URecPedido, UGeraSintegra, UCheques, UPrevCheque,
  UConsHistMat, UPrevContFornecedores, UGeraNotaEdi,
  UOrcamento, UPrevCReceberSem, UPrevCPagarSem, UConsPedPendFat, UBaixaTalao,
  UGeraNotaEdiAzaleia, URecPedidoAzaleia, UProjecaoEst, 
  UVale, UPrevVale, UCartaCorrecao, UPrevVendasPeriodo,
  UPrevTalaoMov, UTalaoHor, UConsHistCliente, URelPrevComissao,
  UPrevPrevComissao, UPrevCliCompra, UPrevCliNCompra,
  UPrevHorasFuncionarios, UPrevHorasProdutos, UConsNotaBeneficiamento,
  UConsNotaEntradaProd, UVerificaEstoque, UPrevAcumuladoFat,
  UPrevPedCarteira, UPrevPedCarteiraVlr, UMotivo, UEquipEpi, UMovAtelier,
  uConsMovAtelierDet, UConsCPagarCReceber, uPrevOrcamento,
  UConsNotaFiscalBeneficiamento, UConsPedidoLog, UBaixaPedido2, UHistGeral,
  UGrupoCliente, UConsPedidoBR, UContasReceber2, UContasPagar2, UFeriado,
  UMovimentos2, UGerarTalao, UDefeito, UParadas,
  UConsTalaoFB, UConsSetorMov, UBaixaProducaoTED, UHorarioProd,
  UBaixaProducaoPC, UPrevNotasNatOpe2, UConsCReceber, UFilial,
  uConsFuncionarioTalao, uConsFuncionarioTempo, UConsTalaoSetor,
  UConsFuncionarioMov, uConsQuebrasMov, UConsProdutividade, uTalaoCRapida,
  UOutrosServicosNota, UOrigemProd, UNFeInutilizacao, UTabCofins, UTabPis,
  USitTributariaSimples, UPercSimples, URegimeTrib, UVerificarPedVale,
  UConsContasPagar, UVerificaContasRecPag, UVoltaNotaFIscal,
  UConsNotaCancelada, UNFeEmailC, UConsPedidoTalao, UTabIBPTC;

{$R *.DFM}

procedure TfMenuP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfMenuP.Grupo1Click(Sender: TObject);
begin
  fGrupos := TfGrupos.Create(Self);
  fGrupos.ShowModal;
end;

procedure TfMenuP.Clientes1Click(Sender: TObject);
begin
  fCliente := TfCliente.Create(self);
  fCliente.ShowModal;
end;

procedure TfMenuP.Grade1Click(Sender: TObject);
begin
  fGrade := TfGrade.Create(self);
  fGrade.ShowModal;
end;

procedure TfMenuP.Cor1Click(Sender: TObject);
begin
  fCor := TfCor.Create(Self);
  fCor.ShowModal;
end;

procedure TfMenuP.CondiodePagamento1Click(Sender: TObject);
begin
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
end;

procedure TfMenuP.Impressoras1Click(Sender: TObject);
begin
  fImpressora := TfImpressora.Create(Self);
  fImpressora.ShowModal;
end;

procedure TfMenuP.Transportadoras1Click(Sender: TObject);
begin
  fTransp := TfTransp.Create(Self);
  fTransp.ShowModal;
end;

procedure TfMenuP.ClassificaoFiscal1Click(Sender: TObject);
begin
  fClasFiscal := TfClasFiscal.Create(Self);
  fClasFiscal.ShowModal;
end;

procedure TfMenuP.SituaoTributria1Click(Sender: TObject);
begin
  fSitTributaria := TfSitTributaria.Create(Self);
  fSitTributaria.ShowModal;
end;

procedure TfMenuP.NaturezadeOperao1Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
end;

procedure TfMenuP.EstadoseAlqotas1Click(Sender: TObject);
begin
  fUf := TfUf.Create(Self);
  fUf.ShowModal;
end;

procedure TfMenuP.Clientes2Click(Sender: TObject);
begin
  fPrevRelClientes := TfPrevRelClientes.Create(Self);
  fPrevRelClientes.ShowModal;
end;

procedure TfMenuP.Vendedores2Click(Sender: TObject);
begin
  fPrevVendedores := TfPrevVendedores.Create(Self);
  fPrevVendedores.ShowModal;
end;

procedure TfMenuP.Fornecedores1Click(Sender: TObject);
begin
  fFornecedores := TfFornecedores.Create(Self);
  fFornecedores.ShowModal;
end;

procedure TfMenuP.Materiais1Click(Sender: TObject);
begin
  fMaterial := TfMaterial.Create(Self);
  fMaterial.ShowModal;
end;

procedure TfMenuP.OrdemdeCompra1Click(Sender: TObject);
begin
  fOrdemCompra := TfOrdemCompra.Create(Self);
  fOrdemCompra.ShowModal;
end;

procedure TfMenuP.Fornecedores2Click(Sender: TObject);
begin
  fPrevFornecedores := TfPrevFornecedores.Create(Self);
  fPrevFornecedores.ShowModal;
end;

procedure TfMenuP.Materiais2Click(Sender: TObject);
begin
  fPrevMaterial := TfPrevMaterial.Create(Self);
  fPrevMaterial.ShowModal;
end;

procedure TfMenuP.Pedido1Click(Sender: TObject);
begin
  fPedido := TfPedido.Create(Self);
  fPedido.ShowModal;
end;

procedure TfMenuP.Setor1Click(Sender: TObject);
begin
  fSetor := TfSetor.Create(Self);
  fSetor.ShowModal;
end;

procedure TfMenuP.ProdutoFichaTcnica1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
end;

procedure TfMenuP.Rtulos1Click(Sender: TObject);
begin
  fPrevRelRotulos := TfPrevRelRotulos.Create(Self);
  fPrevRelRotulos.ShowModal;
end;

procedure TfMenuP.NotasFiscais1Click(Sender: TObject);
begin
  fEmissaoNotaFiscal := TfEmissaoNotaFiscal.Create(Self);
  fEmissaoNotaFiscal.ShowModal;
end;

procedure TfMenuP.LanaCtasaReceber1Click(Sender: TObject);
begin
  fLancaCReceber := TfLancaCReceber.Create(Self);
  fLancaCReceber.ShowModal;
end;

procedure TfMenuP.TipodeCobrana1Click(Sender: TObject);
begin
  fTipoCobranca := TfTipoCobranca.Create(Self);
  fTipoCobranca.ShowModal;
end;

procedure TfMenuP.Histricos1Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.Duplicatas1Click(Sender: TObject);
begin
  fPrevDuplicatas := TfPrevDuplicatas.Create(Self);
  fPrevDuplicatas.ShowModal;
end;

procedure TfMenuP.NotasdeEntrada1Click(Sender: TObject);
begin
  fNotaEntrada := TfNotaEntrada.Create(Self);
  fNotaEntrada.ShowModal;
end;

procedure TfMenuP.fLanaContasaPagar1Click(Sender: TObject);
begin
  fLancaCPagar := TfLancaCPagar.Create(Self);
  fLancaCPagar.ShowModal;
end;

procedure TfMenuP.Contas1Click(Sender: TObject);
begin
  fContas := TfContas.Create(Self);
  fContas.ShowModal;
end;

procedure TfMenuP.PlanodeContas1Click(Sender: TObject);
begin
  fPlanoContas := TfPlanoContas.Create(Self);
  fPlanoContas.ShowModal;
end;

procedure TfMenuP.Contas2Click(Sender: TObject);
begin
  fPrevContas := TfPrevContas.Create(Self);
  fPrevContas.ShowModal;
end;

procedure TfMenuP.Grupo2Click(Sender: TObject);
begin
  fGrupos := TfGrupos.Create(Self);
  fGrupos.ShowModal;
end;

procedure TfMenuP.Clientes3Click(Sender: TObject);
begin
  fCliente := TfCliente.Create(Self);
  fCliente.ShowModal;
end;

procedure TfMenuP.Grades1Click(Sender: TObject);
begin
  fGrade := TfGrade.Create(Self);
  fGrade.ShowModal;
end;

procedure TfMenuP.Cor2Click(Sender: TObject);
begin
  fCor := TfCor.Create(Self);
  fCor.ShowModal;
end;

procedure TfMenuP.CondiesdePagamento1Click(Sender: TObject);
begin
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
end;

procedure TfMenuP.Impressoras2Click(Sender: TObject);
begin
  fImpressora := TfImpressora.Create(Self);
  fIMpressora.ShowModal;
end;

procedure TfMenuP.Transportadoras2Click(Sender: TObject);
begin
  fTransp := TfTransp.Create(Self);
  fTransp.ShowModal;
end;

procedure TfMenuP.ClassificaoFiscal2Click(Sender: TObject);
begin
  fClasFiscal := TfClasFiscal.Create(Self);
  fClasFiscal.ShowModal;
end;

procedure TfMenuP.SituaoTributria2Click(Sender: TObject);
begin
  fSitTributaria := TfSitTributaria.Create(Self);
  fSitTributaria.ShowModal;
end;

procedure TfMenuP.NaturezadeOperao2Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
end;

procedure TfMenuP.EstadoseAlqotas2Click(Sender: TObject);
begin
  fUf := TfUf.Create(Self);
  fUf.ShowModal;
end;

procedure TfMenuP.Clientes4Click(Sender: TObject);
begin
  fPrevRelClientes := TfPrevRelClientes.Create(Self);
  fPrevRelClientes.ShowModal;
end;

procedure TfMenuP.Vendedores4Click(Sender: TObject);
begin
  fPrevVendedores := TfPrevVendedores.Create(Self);
  fPrevVendedores.ShowModal;
end;

procedure TfMenuP.Fornecedores3Click(Sender: TObject);
begin
  fFornecedores := TfFornecedores.Create(Self);
  fFornecedores.ShowModal;
end;

procedure TfMenuP.Materiais3Click(Sender: TObject);
begin
  fMaterial := TfMaterial.Create(Self);
  fMaterial.ShowModal;
end;

procedure TfMenuP.OrdemdeCompra2Click(Sender: TObject);
begin
  fOrdemCompra := TfOrdemCompra.Create(Self);
  fOrdemCompra.ShowModal;
end;

procedure TfMenuP.Fornecedores4Click(Sender: TObject);
begin
  fPrevFornecedores := TfPrevFornecedores.Create(Self);
  fPrevFornecedores.ShowModal;
end;

procedure TfMenuP.Materiais4Click(Sender: TObject);
begin
  fPrevMaterial := TfPrevMaterial.Create(Self);
  fPrevMaterial.ShowModal;
end;

procedure TfMenuP.Pedido2Click(Sender: TObject);
begin
  fPedido := TfPedido.Create(Self);
  fPedido.ShowModal;
end;

procedure TfMenuP.Setor2Click(Sender: TObject);
begin
  fSetor := TfSetor.Create(Self);
  fSetor.ShowModal;
end;
                            
procedure TfMenuP.ProdutosFichaTcnica1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
end;

procedure TfMenuP.ClculodeMateriaispLotes1Click(Sender: TObject);
begin
  fPrevCalcMaterialLote := TfPrevCalcMaterialLote.Create(Self);
  fPrevCalcMaterialLote.ShowModal;
end;

procedure TfMenuP.Rtulos2Click(Sender: TObject);
begin
  fPrevRelRotulos := TfPrevRelRotulos.Create(Self);
  fPrevRelRotulos.ShowModal;
end;

procedure TfMenuP.NotasFiscais2Click(Sender: TObject);
begin
	screen.cursor := crHourGlass;
  fEmissaoNotaFiscal := TfEmissaoNotaFiscal.Create(Self);
  fEmissaoNotaFiscal.ShowModal;
end;

procedure TfMenuP.LancaCtasaReceber1Click(Sender: TObject);
begin
  fLancaCReceber := TfLancaCReceber.Create(Self);
  fLancaCReceber.ShowModal;
end;

procedure TfMenuP.TipodeCobranas1Click(Sender: TObject);
begin
  fTipoCobranca := TfTipoCobranca.Create(Self);
  fTipoCobranca.ShowModal;
end;

procedure TfMenuP.Histricos2Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.Duplicatas2Click(Sender: TObject);
begin
  fPrevDuplicatas := TfPrevDuplicatas.Create(Self);
  fPrevDuplicatas.ShowModal;
end;

procedure TfMenuP.LanaCtasaPagar1Click(Sender: TObject);
begin
  fLancaCPagar := TfLancaCPagar.Create(Self);
  fLancaCPagar.ShowModal;
end;

procedure TfMenuP.Contas3Click(Sender: TObject);
begin
  fContas := TfContas.Create(Self);
  fContas.ShowModal;
end;

procedure TfMenuP.PlanodeContas2Click(Sender: TObject);
begin
  fPlanoContas := TfPlanoContas.Create(Self);
  fPlanoContas.ShowModal;
end;

procedure TfMenuP.Movimentos2Click(Sender: TObject);
begin
  fMovimentos2 := TfMovimentos2.Create(Self);
  fMovimentos2.ShowModal;
end;

procedure TfMenuP.Contas4Click(Sender: TObject);
begin
  fPrevContas := TfPrevContas.Create(Self);
  fPrevContas.ShowModal;
end;

procedure TfMenuP.Juros1Click(Sender: TObject);
begin
  fJuros := TfJuros.Create(Self);
  fJuros.ShowModal;
end;

procedure TfMenuP.Juros2Click(Sender: TObject);
begin
  fJuros := TfJuros.Create(Self);
  fJuros.ShowModal;
end;

procedure TfMenuP.Notasemitidaspornaturezadeoperao1Click(Sender: TObject);
begin
  fPrevNotasNatOpe2 := TfPrevNotasNatOpe2.Create(Self);
  fPrevNotasNatOpe2.ShowModal;
end;

procedure TfMenuP.RegiesdeVendas1Click(Sender: TObject);
begin
  fRegioes := TfRegioes.Create(Self);
  fRegioes.ShowModal;
end;

procedure TfMenuP.RegiesdeVendas2Click(Sender: TObject);
begin
  fRegioes := TfRegioes.Create(Self);
  fRegioes.ShowModal;
end;

procedure TfMenuP.tEmpresaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEmpresa.Handle);
end;

procedure TfMenuP.Parametros1Click(Sender: TObject);
begin
  fParametros := TfParametros.Create(Self);
  fParametros.ShowModal;
end;

procedure TfMenuP.Pedidosnofaturados1Click(Sender: TObject);
begin
  fPrevPedidosNaoFat := TfPrevPedidosNaoFat.Create(Self);
  fPrevPedidosNaoFat.ShowModal;
end;

procedure TfMenuP.BaixaPedidos1Click(Sender: TObject);
begin
  fBaixaPedido := TfBaixaPedido.Create(Self);
  fBaixaPedido.ShowModal;
end;

procedure TfMenuP.BaixaPedidos2Click(Sender: TObject);
begin
  fBaixaPedido := TfBaixaPedido.Create(Self);
  fBaixaPedido.ShowModal;
end;

procedure TfMenuP.EtiquetasClientes1Click(Sender: TObject);
begin
  fEtiqCliente := TfEtiqCliente.Create(self);
  fEtiqCliente.ShowModal;
end;

procedure TfMenuP.EtiquetasClientes2Click(Sender: TObject);
begin
  fEtiqCliente := TfEtiqCliente.Create(Self);
  fEtiqCliente.ShowModal;
end;

procedure TfMenuP.EtiquetasVendedores1Click(Sender: TObject);
begin
  fEtiqVendedor := TfEtiqVendedor.Create(Self);
  fEtiqVendedor.ShowModal;
end;

procedure TfMenuP.EtiquetasVendedores2Click(Sender: TObject);
begin
  fEtiqVendedor := TfEtiqVendedor.Create(Self);
  fEtiqVendedor.ShowModal;
end;

procedure TfMenuP.FormShow(Sender: TObject);
var
  vLinha2 : String;
begin
  DM1.tEmpresa.open;
  DM1.tUsuario.open;
  DM1.tImpressora.open;
  DM1.tParametros.open;
  DM1.tUsuarioAlt.open;
  DM1.tUsuarioExc.open;
  DM1.tUsuarioIns.open;
  vLinha2 := DM1.tEmpresaLinha2.AsString;
  RxLabel1.Caption := DM1.tEmpresaLinha1.AsString;
  RxLabel2.Caption := DM1.tEmpresaLinha2.AsString;
  fAcesso := TfAcesso.Create(Self);
  fAcesso.Caption := '  Senha de Acesso  -  ' + DateToStr(Date);
  if DM1.tEmpresaData.AsDateTime <= (Date - 10) then
    begin
      DM1.tEmpresa.Edit;
      DM1.tEmpresaData.AsDateTime := (Date - 10);
      DM1.tEmpresa.Post;
    end
  else
    begin
      ShowMessage('A data do sistema foi alterada!'+#13+#13+
                  'Entre com a senha de liberação '+#13+
                  ' e a data correta do sistema !');
      fAutorizacao := TfAutorizacao.Create(Self);
      fAutorizacao.ShowModal;
    end;
  fAcesso.ShowModal;
end;

procedure TfMenuP.Parmetros1Click(Sender: TObject);
begin
  fParametros :=TfParametros.Create(Self);
  fParametros.ShowModal;
end;

procedure TfMenuP.Pedidosnofaturados2Click(Sender: TObject);
begin
  fPrevPedidosNaoFat := TfPrevPedidosNaoFat.Create(Self);
  fPrevPedidosNaoFat.ShowModal;
end;

procedure TfMenuP.N2ExtratodeComisses2Click(Sender: TObject);
begin
  fPrevExtComissao2 := TfPrevExtComissao2.Create(Self);
  fPrevExtComissao2.ShowModal;
end;

procedure TfMenuP.N1Vendedor1Click(Sender: TObject);
begin
  fVendedor := TfVendedor.Create(Self);
  fVendedor.ShowModal;
end;

procedure TfMenuP.N1Vendedor2Click(Sender: TObject);
begin
  fVendedor := TfVendedor.Create(Self);
  fVendedor.ShowModal;
end;

procedure TfMenuP.LanamentodeComisses1Click(Sender: TObject);
begin
  fLancComissao := TfLancComissao.Create(Self);
  fLancComissao.ShowModal;
end;

procedure TfMenuP.LanamentodeComisso1Click(Sender: TObject);
begin
  fLancComissao := TfLancComissao.Create(Self);
  fLancComissao.ShowModal;
end;

procedure TfMenuP.ExtratodeComisso2Click(Sender: TObject);
begin
  fPrevExtComissao2 := TfPrevExtComissao2.Create(Self);
  fPrevExtComissao2.ShowModal;
end;

procedure TfMenuP.ExtratodeComisso1Click(Sender: TObject);
begin
  fPrevExtComissao2 := TfPrevExtComissao2.Create(Self);
  fPrevExtComissao2.ShowModal;
end;

procedure TfMenuP.ExtratodeVendedoresNotas1Click(Sender: TObject);
begin
  fConsComissao := TfConsComissao.Create(Self);
  fConsComissao.ShowModal;
end;

procedure TfMenuP.N1ContasPagar1Click(Sender: TObject);
begin
  fPrevRelCPagar := TfPrevRelCPagar.Create(Self);
  fPrevRelCPagar.ShowModal;
end;

procedure TfMenuP.N1ContasPagar2Click(Sender: TObject);
begin
  fPrevRelCPagar := TfPrevRelCPagar.Create(Self);
  fPrevRelCPagar.ShowModal;
end;

procedure TfMenuP.N2Histricos1Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.N2Histricos2Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.N2NotasporNaturezadeOperao1Click(Sender: TObject);
begin
  fPrevNComprasNatOpe := TfPrevNComprasNatOpe.Create(Self);
  fPrevNComprasNatOpe.ShowModal;
end;

procedure TfMenuP.N5ContasaReeber1Click(Sender: TObject);
begin
  fPrevRelCReceber := TfPrevRelCReceber.Create(Self);
  fPrevRelCReceber.ShowModal;
end;

procedure TfMenuP.Sobre1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Self);
  fSobre.ShowModal;
end;

procedure TfMenuP.N6AReceberporCliente1Click(Sender: TObject);
begin
  fPrevRecCli := TfPrevRecCli.Create(Self);
  fPrevRecCli.ShowModal;
end;

procedure TfMenuP.N3APagarporFornecedores1Click(Sender: TObject);
begin
  fPrevPagForn := TfPrevPagForn.Create(Self);
  fPrevPagForn.ShowModal;
end;

procedure TfMenuP.N4PagamentodeJuros1Click(Sender: TObject);
begin
  fPrevPgtoJuros := TfPrevPgtoJuros.Create(Self);
  fPrevPgtoJuros.ShowModal;
end;

procedure TfMenuP.N5EtiquetasFornecedores1Click(Sender: TObject);
begin
  fEtiqFornecedor := TfEtiqFornecedor.Create(Self);
  fEtiqFornecedor.ShowModal;
end;

procedure TfMenuP.ObsAuxiliar1Click(Sender: TObject);
begin
  fObsAux := TfObsAux.Create(Self);
  fObsAux.ShowModal;
end;

procedure TfMenuP.N3NotadeCompra1Click(Sender: TObject);
begin
  fNotaEntrada := TfNotaEntrada.Create(Self);
  fNotaEntrada.ShowModal;
end;

procedure TfMenuP.Sair1Click(Sender: TObject);
begin
  fUsuarios := TfUsuarios.Create(Self);
  fUsuarios.ShowModal;
end;

procedure TfMenuP.ALogin1Click(Sender: TObject);
begin
  DM1.Login;
end;

procedure TfMenuP.N1Atividades1Click(Sender: TObject);
begin
  fAtividade := TfAtividade.Create(Self);
  fAtividade.ShowModal;
end;

procedure TfMenuP.N3Indexador1Click(Sender: TObject);
begin
  fIndexador := TfIndexador.Create(Self);
  fIndexador.ShowModal;
end;

procedure TfMenuP.N3ConsultadeFornecpAtividade1Click(Sender: TObject);
begin
  fConsFornecAtiv := TfConsFornecAtiv.Create(Self);
  fConsFornecAtiv.ShowModal;
end;

procedure TfMenuP.N4MateriaisAbaixodoMnimo1Click(Sender: TObject);
begin
  fPrevMatMinimo := TfPrevMatMinimo.Create(Self);
  fPrevMatMinimo.ShowModal;
end;

procedure TfMenuP.N3ConsultadeEstoquedeMateriais1Click(Sender: TObject);
begin
  fConsEstoqueMat := TfConsEStoqueMat.Create(Self);
  fConsEstoqueMat.ShowModal;
end;

procedure TfMenuP.N5HistricodoMaterial1Click(Sender: TObject);
begin
  fPrevRelHistMaterial := TfPrevRelHistMaterial.Create(Self);
  fPrevRelHistMaterial.ShowModal;
end;

procedure TfMenuP.N3CustoporSetor1Click(Sender: TObject);
begin
  fPrevCustoSetor := TfPrevCustoSetor.Create(Self);
  fPrevCustoSetor.ShowModal;
end;

procedure TfMenuP.N7NotadeEntrada1Click(Sender: TObject);
begin
  fPrevNotaEntrada := TfPrevNotaEntrada.Create(Self);
  fPrevNotaEntrada.ShowModal;
end;

procedure TfMenuP.N2Cidades1Click(Sender: TObject);
begin
  fCidade := TfCidade.Create(Self);
  fCidade.ShowModal;
end;

procedure TfMenuP.DctodeEntradaeSadadoEstoque1Click(Sender: TObject);
begin
  fDctoEst := TfDctoEst.Create(Self);
  fDctoEst.ShowModal;
end;

procedure TfMenuP.N1AgendaTelefnica1Click(Sender: TObject);
begin
  fAgendaTelef := TfAgendaTelef.Create(Self);
  fAgendaTelef.ShowModal;
end;

procedure TfMenuP.N1CpiasdeDuplicatas1Click(Sender: TObject);
begin
  fCopiaDuplicata := TfCopiaDuplicata.Create(Self);
  fCopiaDuplicata.ShowModal;
end;

procedure TfMenuP.N8BalancodoEstoque1Click(Sender: TObject);
begin
  fPrevBalancoEst := TfPrevBalancoEst.Create(Self);
  fPrevBalancoEst.ShowModal;
end;

procedure TfMenuP.N9OrdensdeCompra1Click(Sender: TObject);
begin
  fPrevRelOC := TfPrevRelOC.Create(Self);
  fPrevRelOC.ShowModal;
end;

procedure TfMenuP.N9Funcionrios1Click(Sender: TObject);
begin
  fFuncionario := TfFuncionario.Create(Self);
  fFuncionario.ShowModal;
end;

procedure TfMenuP.N2EmbarqueDirio1Click(Sender: TObject);
begin
  fPrevEmbDiario := TfPrevEmbDiario.Create(Self);
  fPrevEmbDiario.ShowModal;
end;

procedure TfMenuP.N8Programao1Click(Sender: TObject);
begin
  fPrevProgramacao := TfPrevProgramacao.Create(Self);
  fPrevProgramacao.ShowModal;
end;

procedure TfMenuP.NTabeladePreo1Click(Sender: TObject);
begin
  fTabPreco := TfTabPreco.Create(Self);
  fTabPreco.ShowModal;
end;       

procedure TfMenuP.N1ControledeFaturamento1Click(Sender: TObject);
begin
  fPrevContrFat := TfPrevContrFat.Create(Self);
  fPrevContrFat.ShowModal;
end;

procedure TfMenuP.OAgendadeContatos1Click(Sender: TObject);
begin
  fAgeContato := TfAgeContato.Create(Self);
  fAgeContato.ShowModal;
end;

procedure TfMenuP.N5HistricodePedidos1Click(Sender: TObject);
begin
  fHistPedido := TfHistPedido.Create(Self);
  fHistPedido.ShowModal;
end;

procedure TfMenuP.N0RecebimentodePedidos1Click(Sender: TObject);
begin
  fRecPedido := TfRecPedido.Create(Self);
  fRecPedido.ShowModal;
end;

procedure TfMenuP.N3GeraSintegra1Click(Sender: TObject);
begin
  fGeraSintegra := TfGeraSintegra.Create(Self);
  fGeraSintegra.ShowModal;
end;

procedure TfMenuP.N7Cheque1Click(Sender: TObject);
begin
  fCheques := TfCheques.Create(Self);
  fCheques.ShowModal;
end;

procedure TfMenuP.N2Cheques1Click(Sender: TObject);
begin
  fPrevCheque := TfPrevCheque.Create(Self);
  fPrevCheque.ShowModal;
end;

procedure TfMenuP.N4ConsultaHistricoMaterial1Click(Sender: TObject);
begin
  fConsHistMat := TfConsHistMat.Create(Self);
  fConsHistMat.ShowModal;
end;

procedure TfMenuP.N5ControleFornecedores1Click(Sender: TObject);
begin
  fPrevContFornecedores := TfPrevContFornecedores.Create(Self);
  fPrevContFornecedores.ShowModal;
end;

procedure TfMenuP.N5GeraNotaEDI1Click(Sender: TObject);
begin
  fGeraNotaEdi := TfGeraNotaEdi.Create(Self);
  fGeraNotaEdi.ShowModal;
end;

procedure TfMenuP.COramento1Click(Sender: TObject);
begin
  fOrcamento := TfOrcamento.Create(Self);
  fOrcamento.ShowModal;
end;

procedure TfMenuP.N3ContasaReceberporSemana1Click(Sender: TObject);
begin
  fPrevCReceberSem := TfPrevCReceberSem.Create(Self);
  fPrevCReceberSem.ShowModal;
end;

procedure TfMenuP.N3ContasaPagarporSemana1Click(Sender: TObject);
begin
  fPrevCPagarSem := TfPrevCPagarSem.Create(Self);
  fPrevCPagarSem.ShowModal;
end;

procedure TfMenuP.N5ConsultaPedPendente1Click(Sender: TObject);
begin
  fConsPedPendFat := TfConsPedPendFat.Create(Self);
  fConsPedPendFat.ShowModal;
end;

procedure TfMenuP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F8)  then
    begin
      fConsPedPendFat := TfConsPedPendFat.Create(Self);
      fConsPedPendFat.ShowModal;
    end;
  if (Key = Vk_F3)  then
    begin
      fConsHistCliente := TfConsHistCliente.Create(Self);
      fConsHistCliente.ShowModal;
    end;
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    BitBtn1.Enabled := not(BitBtn1.Enabled);
    BitBtn2.Visible := not(BitBtn2.Visible);
    BitBtn3.Visible := not(BitBtn3.Visible);
    btnGerarEstoque.Visible   := not(btnGerarEstoque.Visible);
    btnGerarItensNota.Visible := not(btnGerarItensNota.Visible);
  end;
end;

procedure TfMenuP.N8Produtos1Click(Sender: TObject);
begin
  fPrevMaterial := TfPrevMaterial.Create(Self);
  fPrevMaterial.ShowModal;
end;

procedure TfMenuP.BaixaTalo1Click(Sender: TObject);
begin
  fBaixaTalao := TfBaixaTalao.Create(Self);
  fBaixaTalao.ShowModal;
end;

procedure TfMenuP.GeraNotaEDIAzalia1Click(Sender: TObject);
begin
  fGeraNotaEdiAzaleia := TfGeraNotaEdiAzaleia.Create(Self);
  fGeraNotaEdiAzaleia.ShowModal;
end;

procedure TfMenuP.RecebimentodePedidosdaAzalia1Click(Sender: TObject);
begin
  fRecPedidoAzaleia := TfRecPedidoAzaleia.Create(Self);
  fRecPedidoAzaleia.ShowModal;
end;

procedure TfMenuP.ProjeoEstoqueProduto1Click(Sender: TObject);
begin
  fProjecaoEst := TfProjecaoEst.Create(Self);
  fProjecaoEst.ShowModal;
end;

procedure TfMenuP.Vale1Click(Sender: TObject);
begin
  fVale := TfVale.Create(Self);
  fVale.ShowModal;
end;

procedure TfMenuP.Vale3Click(Sender: TObject);
begin
  fPrevVale := TfPrevVale.Create(Self);
  fPrevVale.ShowModal;
end;

procedure TfMenuP.CartadeCorreo1Click(Sender: TObject);
begin
  fCartaCorrecao := TfCartaCorrecao.Create(Self);
  fCartaCorrecao.ShowModal;
end;

procedure TfMenuP.VendasporPerodo1Click(Sender: TObject);
begin
  fPrevVendasPeriodo := TfPrevVendasPeriodo.Create(Self);
  fPrevVendasPeriodo.ShowModal;
end;

procedure TfMenuP.Talo1Click(Sender: TObject);
begin
  fPrevTalaoMov := TfPrevTalaoMov.Create(Self);
  fPrevTalaoMov.ShowModal;
end;

procedure TfMenuP.BaixaTaloHorrios1Click(Sender: TObject);
begin
  fTalaoHor := TfTalaoHor.Create(Self);
  fTalaoHor.ShowModal;
end;

procedure TfMenuP.PrevisodeComisso1Click(Sender: TObject);
begin
  fPrevPrevComissao := TfPrevPrevComissao.Create(Self);
  fPrevPrevComissao.ShowModal;
end;

procedure TfMenuP.VendasporCliente1Click(Sender: TObject);
begin
  fPrevCliCompra := TfPrevCliCompra.Create(Self);
  fPrevCliCompra.ShowModal;
end;

procedure TfMenuP.ClientesInativos1Click(Sender: TObject);
begin
  fPrevCliNCompra := TfPrevCliNCompra.Create(Self);
  fPrevCliNCompra.ShowModal;
end;

procedure TfMenuP.otaldeHorasPorFuncionrioTalo1Click(Sender: TObject);
begin
  fPrevHorasFuncionarios := TfPrevHorasFuncionarios.Create(Self);
  fPrevHorasFuncionarios.ShowModal;
end;

procedure TfMenuP.otaldeHorasPorProdutosTalo1Click(Sender: TObject);
begin
  fPrevHorasProdutos := TfPrevHorasProdutos.Create(Self);
  fPrevHorasProdutos.ShowModal;
end;

procedure TfMenuP.ConsultaNotasdeBeneficiamento1Click(Sender: TObject);
begin
  fConsNotaBeneficiamento := TfConsNotaBeneficiamento.Create(Self);
  fConsNotaBeneficiamento.ShowModal;
end;

procedure TfMenuP.ConsultaNotadeEntradaporProduto1Click(Sender: TObject);
begin
  fConsNotaEntradaProd := TfConsNotaEntradaProd.Create(Self);
  fConsNotaEntradaProd.ShowModal;
end;

procedure TfMenuP.BitBtn1Click(Sender: TObject);
begin
  fVerificaEstoque := TfVerificaEstoque.Create(Self);
  fVerificaEstoque.ShowModal;
end;

procedure TfMenuP.Acumuladoporproduto1Click(Sender: TObject);
begin
  fPrevAcumuladoFat := TfPrevAcumuladoFat.Create(Self);
  fPrevAcumuladoFat.ShowModal;
end;

procedure TfMenuP.PedidosemcarteiraQtde1Click(Sender: TObject);
begin
  fPrevPedCarteira := TfPrevPedCarteira.Create(Self);
  fPrevPedCarteira.ShowModal;
end;

procedure TfMenuP.PedidosemcarteiraValor1Click(Sender: TObject);
begin
  fPrevPedCarteiraVlr := TfPrevPedCarteiraVlr.Create(Self);
  fPrevPedCarteiraVlr.ShowModal;
end;

procedure TfMenuP.Motivo1Click(Sender: TObject);
begin
  fMotivo := TfMotivo.Create(Self);
  fMotivo.ShowModal;
end;

procedure TfMenuP.EPI1Click(Sender: TObject);
begin
  fEquipEPI := TfEquipEPI.Create(Self);
  fEquipEPI.ShowModal;
end;

procedure TfMenuP.MovimentoRetificaModeObra1Click(Sender: TObject);
begin
  fMovAtelier := TfMovAtelier.Create(Self);
  fMovAtelier.ShowModal;
end;

procedure TfMenuP.ConsultaMovimentoRetificaModeObra1Click(Sender: TObject);
begin
  fConsMovAtelierDet := TfConsMovAtelierDet.Create(Self);
  fConsMovAtelierDet.ShowModal;
end;

procedure TfMenuP.ConsultaReceberPagar1Click(Sender: TObject);
begin
  fConsCPagarCReceber := TfConsCPagarCReceber.Create(Self);
  fConsCPagarCReceber.ShowModal;
end;

procedure TfMenuP.Orcamento1Click(Sender: TObject);
begin
  fPrevOrcamento := TfPrevOrcamento.Create(Self);
  try
    fPrevOrcamento.ShowModal;
  finally
    FreeAndNil(fPrevOrcamento);
  end;
end;

procedure TfMenuP.NotasFiscaisEmbalagem1Click(Sender: TObject);
begin
  fConsNotaFiscalBeneficiamento := TfConsNotaFiscalBeneficiamento.Create(Self);
  fConsNotaFiscalBeneficiamento.ShowModal;
end;

procedure TfMenuP.ConsultaLogdoItemdoPedido1Click(Sender: TObject);
begin
  fConsPedidoLog := TfConsPedidoLog.Create(Self);
  fConsPedidoLog.ShowModal;
end;

procedure TfMenuP.BaixaPedidoPorItem1Click(Sender: TObject);
begin
  fBaixaPedido2 := TfBaixaPedido2.Create(Self);
  fBaixaPedido2.ShowModal;
end;

procedure TfMenuP.HistricodoFaturamento1Click(Sender: TObject);
begin
  fHistGeral := TfHistGeral.Create(Self);
  fHistGeral.ShowModal;
end;

procedure TfMenuP.GrupoCliente1Click(Sender: TObject);
begin
  fGrupoCliente := TfGrupoCliente.Create(Self);
  fGrupoCliente.ShowModal;
end;

procedure TfMenuP.ConsultadePedidos1Click(Sender: TObject);
begin
  fConsPedidoBr := TfConsPedidoBR.Create(Self);
  fConsPedidoBr.ShowModal;
end;

procedure TfMenuP.ContasReceberNovo1Click(Sender: TObject);
begin
  fContasReceber2 := TfContasReceber2.Create(Self);
  fContasReceber2.ShowModal;
end;

procedure TfMenuP.ContasaPagarNovo1Click(Sender: TObject);
begin
  fContasPagar2 := TfContasPagar2.Create(Self);
  fContasPagar2.ShowModal;
end;

procedure TfMenuP.Feriado1Click(Sender: TObject);
begin
  fFeriado := TfFeriado.Create(Self);
  fFeriado.ShowModal;
end;

procedure TfMenuP.BaixaProduo1Click(Sender: TObject);
begin
  fBaixaProducaoPC := TfBaixaProducaoPC.Create(Self);
  fBaixaProducaoPC.ShowModal;
end;

procedure TfMenuP.CadastrodeDefeitos1Click(Sender: TObject);
begin
  fDefeito := TfDefeito.Create(Self);
  fDefeito.ShowModal;
end;

procedure TfMenuP.CadastrodeParadas1Click(Sender: TObject);
begin
  fParadas := TfParadas.Create(Self);
  fParadas.ShowModal;
end;

procedure TfMenuP.GerarTalo1Click(Sender: TObject);
begin
  fGerarTalao := TfGerarTalao.Create(Self);
  fGerarTalao.ShowModal;
end;

procedure TfMenuP.BaixaProduo2Click(Sender: TObject);
begin
  fBaixaProducaoPC := TfBaixaProducaoPC.Create(Self);
  fBaixaProducaoPC.ShowModal;
end;

procedure TfMenuP.ConsultaTalo1Click(Sender: TObject);
begin
  fConsTalaoFB := TfConsTalaoFB.Create(Self);
  fConsTalaoFB.ShowModal;
end;

procedure TfMenuP.ConsultaSituaoSetor1Click(Sender: TObject);
begin
  fConsSetorMov := TfConsSetorMov.Create(Self);
  fConsSetorMov.ShowModal;
end;

procedure TfMenuP.CadastrodeHorrios1Click(Sender: TObject);
begin
  fHorarioProd := TfHorarioProd.Create(Self);
  fHorarioProd.ShowModal;
end;

procedure TfMenuP.BaixaProduoTED1Click(Sender: TObject);
begin
  fBaixaProducaoTed := TfBaixaProducaoTed.Create(Self);
  fBaixaProducaoTed.ShowModal;
end;

procedure TfMenuP.ConsultaContasaReceber1Click(Sender: TObject);
begin
  fConsCReceber := TfConsCReceber.Create(Self);
  fConsCReceber.ShowModal;
end;

procedure TfMenuP.Filial1Click(Sender: TObject);
begin
  fFilial := TfFilial.Create(Self);
  fFilial.ShowModal;
end;

procedure TfMenuP.ConsultaFuncionariosTempos1Click(Sender: TObject);
begin
  fConsFuncionarioTempo := TfConsFuncionarioTempo.Create(Self);
  fConsFuncionarioTempo.ShowModal;
end;

procedure TfMenuP.ConsultaTalaoSetor1Click(Sender: TObject);
begin
  fConsTalaoSetor := TfConsTalaoSetor.Create(Self);
  fConsTalaoSetor.ShowModal;
end;

procedure TfMenuP.ConsultaSituacaoFuncionrio1Click(Sender: TObject);
begin
  fConsFuncionarioMov := TfConsFuncionarioMov.Create(Self);
  fConsFuncionarioMov.ShowModal;
end;

procedure TfMenuP.ConsultaQuebras1Click(Sender: TObject);
begin
  fConsQuebrasMov := TfConsQuebrasMov.Create(Self);
  fConsQuebrasMov.ShowModal;
end;

procedure TfMenuP.Produtividade1Click(Sender: TObject);
begin
  fConsProdutividade := TfConsProdutividade.Create(Self);
  fConsProdutividade.ShowModal;
end;

procedure TfMenuP.Consultarpidadetalo1Click(Sender: TObject);
begin
  fTalaoCRapida := TfTalaoCRapida.Create(Self);
  fTalaoCRapida.ShowModal;
end;

procedure TfMenuP.CadastrodeItensdeAjusteComplementar1Click(
  Sender: TObject);
begin
  fOutrosServicosNota := TfOutrosServicosNota.Create(Self);
  fOutrosServicosNota.ShowModal;
end;

procedure TfMenuP.CdigodeSituaodaOperaonoSimplesNacionalCSOSN1Click(
  Sender: TObject);
begin
  fSitTributariaSimples := TfSitTributariaSimples.Create(Self);
  fSitTributariaSimples.ShowModal;
end;

procedure TfMenuP.OrigemMercadoria1Click(Sender: TObject);
begin
  fOrigemProd := TfOrigemProd.Create(Self);
  fOrigemProd.ShowModal;
end;

procedure TfMenuP.InutilizarNumeraodeNota1Click(Sender: TObject);
begin
  fNFeInutilizacao := TfNFeInutilizacao.Create(Self);
  fNFeInutilizacao.ShowModal;
end;

procedure TfMenuP.PercentualSimples21Click(Sender: TObject);
begin
  fPercSimples := TfPercSimples.Create(Self);
  fPercSimples.ShowModal;
end;

procedure TfMenuP.abelaCofins1Click(Sender: TObject);
begin
  fTabCofins := TfTabCofins.Create(Self);
  fTabCofins.ShowModal;
end;

procedure TfMenuP.objectabelaPis1TMenuItem1Click(Sender: TObject);
begin
  fTabPis := TfTabPis.Create(Self);
  fTabPis.ShowModal;
end;

procedure TfMenuP.RegimeTributrio1Click(Sender: TObject);
begin
  fRegimeTrib := TfRegimeTrib.Create(Self);
  fRegimeTrib.ShowModal;
end;

procedure TfMenuP.BitBtn2Click(Sender: TObject);
begin
  fVerificarPedVale := TfVerificarPedVale.Create(Self);
  fVerificarPedVale.ShowModal;
end;

procedure TfMenuP.ConsultaPagamentosDevolues1Click(Sender: TObject);
begin
  fConsContasPagar := TfConsContasPagar.Create(Self);
  fConsContasPagar.ShowModal;
end;

procedure TfMenuP.BitBtn3Click(Sender: TObject);
begin
  fVerificaContasRecPag := TfVerificaContasRecPag.Create(Self);
  fVerificaContasRecPag.ShowModal;
end;

procedure TfMenuP.VoltarNotaqdodevolvida1Click(Sender: TObject);
begin
  fVoltaNotaFiscal := TfVoltaNotaFiscal.Create(Self);
  fVoltaNotaFiscal.ShowModal;
end;

procedure TfMenuP.ConsultarNotasCanceladasDenegadas1Click(Sender: TObject);
begin
  fConsNotaCancelada := TfConsNotaCancelada.Create(Self);
  fConsNotaCancelada.ShowModal;
end;

procedure TfMenuP.NFeEmailsAdicionais1Click(Sender: TObject);
begin
  fNFeEmailC := TfNFeEmailC.Create(Self);
  fNFeEmailC.ShowModal;
end;

procedure TfMenuP.ConsultaPedidoTalo1Click(Sender: TObject);
begin
  fConsPedidoTalao := TfConsPedidoTalao.Create(Self);
  fConsPedidoTalao.ShowModal;
end;

procedure TfMenuP.abelaIBPT1Click(Sender: TObject);
begin
  fTabIBPTC := TfTabIBPTC.Create(Self);
  fTabIBPTC.ShowModal;
end;

initialization
  //RLConsts.SetVersion(3,72,'B');

end.
