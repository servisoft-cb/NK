unit URecPedidoAzaleia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask, ToolEdit, Db, DBTables, MemTable, Grids, Variants,
  DBGrids, RXDBCtrl, RxLookup, ExtCtrls, rsDBUtils;

type
  TfRecPedidoAzaleia = class(TForm)
    Label5: TLabel;
    mPedidoNao: TMemoryTable;
    dsPedidoNao: TDataSource;
    mPedidoGer: TMemoryTable;
    mPedidoGerNumOS: TStringField;
    mPedidoGerReferencia: TStringField;
    mPedidoGerNomeCor: TStringField;
    mPedidoGerQtdPares: TFloatField;
    dsPedidoGer: TDataSource;
    tPedido2: TTable;
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
    tPedido2PesoBruto: TFloatField;
    tPedido2PesoLiquido: TFloatField;
    tPedido2Selecionado: TBooleanField;
    tPedido2Copiado: TBooleanField;
    tPedido2Obs: TMemoField;
    tPedido2QtdParesCanc: TFloatField;
    tPedido2QtdParesFat: TFloatField;
    tPedido2QtdParesRest: TFloatField;
    tPedido2QtdFatAut: TFloatField;
    tPedido2QtdFatMan: TFloatField;
    tPedido2PedCliDif: TStringField;
    tPedido2ImpRotulo: TBooleanField;
    tPedido2ImpCalcLote: TBooleanField;
    tPedido2ObsRotulo: TMemoField;
    tPedido2Stock: TStringField;
    tPedido2LoteExp: TBooleanField;
    tPedido2Dolar: TBooleanField;
    tPedido2POCliente: TStringField;
    tPedido2Invoice: TStringField;
    tPedido2Carimbo: TStringField;
    tPedido2QtdParesRep: TFloatField;
    tPedido2VlrReposicao: TFloatField;
    tPedido2Mercado: TStringField;
    tPedido2NumProgramacao: TIntegerField;
    tProdutoCli2: TTable;
    tProdutoCli2CodProduto: TIntegerField;
    tProdutoCli2CodCliente: TIntegerField;
    tProdutoCli2CodProdCli: TStringField;
    tProdutoCli2CodCor: TIntegerField;
    GroupBox1: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    GroupBox2: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    Panel1: TPanel;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    FilenameEdit1: TFilenameEdit;
    tAuxRecPed: TTable;
    dsAuxRecPed: TDataSource;
    tAuxRecPedCodCliente: TIntegerField;
    tAuxRecPedCodVendedor: TIntegerField;
    tAuxRecPedPercComissao: TFloatField;
    tAuxRecPedCodCondPagto: TIntegerField;
    tAuxRecPedTipoOperacao: TStringField;
    tAuxRecGrade: TTable;
    dsAuxRecGrade: TDataSource;
    tAuxRecGradeTamanho: TStringField;
    tAuxRecGradeQtdPares: TFloatField;
    mPedidoNaoMotivo: TStringField;
    tAuxRecPedlkUF: TStringField;
    tAuxRecPedObs: TStringField;
    tAuxRecItem: TTable;
    dsAuxRecItem: TDataSource;
    tAuxRecItemNumOS: TStringField;
    tAuxRecItemDtEntrega: TDateField;
    tAuxRecItemCodProduto: TIntegerField;
    tAuxRecItemCodCor: TIntegerField;
    tAuxRecItemQtdPares: TFloatField;
    tAuxRecItemVlrUnitario: TFloatField;
    tAuxRecItemItem: TIntegerField;
    tAuxRecGradeItem: TIntegerField;
    tAuxRecPedCodTransportadora: TIntegerField;
    tAuxRecGradeCodGrade: TIntegerField;
    tAuxRecGradePosicao: TIntegerField;
    tProdutoCli2CodGrade: TIntegerField;
    tProdutoCli2Posicao: TIntegerField;
    tProdutoCli2lkTamanho: TStringField;
    tAuxRecPedCifFob: TStringField;
    tAuxRecItemQtdLote: TFloatField;
    tAuxRecItemCodProdutoCli: TStringField;
    tAuxRecGradeCodProdutoCli: TStringField;
    tAuxRecItemProdCliPorTamanho: TBooleanField;
    tAuxRecPedNumPedido: TStringField;
    tAuxRecGradeNumPedido: TStringField;
    tAuxRecItemNumPedido: TStringField;
    mPedidoGerPedidoCliente: TStringField;
    mPedidoNaoPedidoCliente: TStringField;
    tPedido2PedidoCliente: TStringField;
    tPedido2Cia: TIntegerField;
    tPedido2Estoque: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Limpa_Tabelas;
    procedure GravaPedidos_Gerados;
    procedure GravaPedidos_NaoGerados;
    procedure Verifica_Arquivo;
    procedure Verifica_Tipo1;
    procedure Verifica_Tipo3;
    procedure Le_Auxiliar;
    procedure Grava_AuxPed;
    procedure Grava_AuxItem;

  public
    { Public declarations }
  end;

var
  fRecPedidoAzaleia: TfRecPedidoAzaleia;
    F        : TextFile;
    vNumOS, Registro, vMotivo : String;
    vNumPedido : Integer;
    vNumPedidoCli : String;
    vCodProdCli : String[15];
    vCodProdEmp, vCodCorEmp : Integer;
    vTamanho    : String[3];
    vCgc : String[18];
    vErro : Boolean;
    vItem : Integer;
    vIncluirItem : Boolean;

implementation

uses UDM1, UDM2;

{$R *.DFM}

procedure TfRecPedidoAzaleia.GravaPedidos_Gerados;
begin
  mPedidoGer.Insert;
  mPedidoGerPedidoCliente.AsString := DM1.tPedidoPedidoCliente.AsString;
  mPedidoGerNumOS.AsString         := '';
  mPedidoGerReferencia.AsString    := DM1.tPedidoItemlkReferencia.AsString;
  mPedidoGerNomeCor.AsString       := DM1.tPedidoItemlkCor.AsString;
  mPedidoGerQtdPares.AsFloat       := DM1.tPedidoItemQtdPares.AsFloat;
  mPedidoGer.Post;
end;

procedure TfRecPedidoAzaleia.GravaPedidos_NaoGerados;
begin
  if not mPedidoNao.Locate('PedidoCliente',vNumPedidoCli,[loCaseInsensitive]) then
    begin
      mPedidoNao.Insert;
      mPedidoNaoPedidoCliente.AsString := vNumPedidoCli;
      mPedidoNaoMotivo.AsString        := vMotivo;
      mPedidoNao.Post;
    end;
  vErro := True;
end;

procedure TfRecPedidoAzaleia.Le_Auxiliar;
var
  vUltPedido, vUltItem : Integer;
  vCodSitTrib : Integer;
begin
  DM1.tPedido.Last;
  vUltPedido := DM1.tPedidoPedido.AsInteger;
  vNumPedido := 0;

  tAuxRecPed.First;
  while not tAuxRecPed.Eof do
    begin
      if tAuxRecPedTipoOperacao.AsString = '1' then
        begin
          inc(vUltPedido);
          DM1.tPedido.Insert;
          DM1.tPedidoPedido.AsInteger      := vUltPedido;
          DM1.tPedidoDtEmissao.AsDateTime  := Date;
          DM1.tPedidoCodCliente.AsInteger  := tAuxRecPedCodCliente.AsInteger;
          vCodSitTrib := 0;
          DM1.tCliente.IndexFieldNames := 'Codigo';
          DM1.tCliente.SetKey;
          DM1.tClienteCodigo.AsInteger := DM1.tPedidoCodCliente.AsInteger;
          if DM1.tCliente.GotoKey then
            begin
              DM1.tUF.SetKey;
              DM1.tUFSigla.AsString := DM1.tClienteUf.AsString;
              if DM1.tUF.GotoKey then
                vCodSitTrib := DM1.tUFCodSitTrib.AsInteger;
            end;
          DM1.tPedidoCodCondPgto.AsInteger := tAuxRecPedCodCondPagto.AsInteger;
          DM1.tPedidoTipoFrete.AsString    := tAuxRecPedCifFob.AsString;
          if tAuxRecPedlkUF.AsString = DM1.tEmpresaEstado.AsString then
            DM1.tPedidoCodNatOper.AsInteger  := DM1.tParametrosCodNatVenda.AsInteger
          else
            DM1.tPedidoCodNatOper.AsInteger  := DM1.tParametrosCodNatVendaF.AsInteger;
          DM1.tPedidoCodVendedor.AsInteger := tAuxRecPedCodVendedor.AsInteger;
          DM1.tPedidoPercComissao.AsFloat  := tAuxRecPedPercComissao.AsFloat;
          DM1.tPedidoQtdPares.AsFloat      := 0;
          DM1.tPedidoSituacao.AsString     := '1';
          DM1.tPedidoGerarLote.AsString    := '2';
          DM1.tPedidoVlrDesconto.AsFloat   := 0;
          DM1.tPedidoSelecionado.AsBoolean := False;
          DM1.tPedidoCopiado.AsBoolean     := False;
          DM1.tPedidoCancelado.AsBoolean   := False;
          DM1.tPedidoLoteExp.AsBoolean     := False;
          DM1.tPedidoSuspenso.AsBoolean    := False;
          DM1.tPedidoImpresso.AsBoolean    := False;
          DM1.tPedidoImpRotulo.AsBoolean   := False;
          DM1.tPedidoImpCalcLote.AsBoolean := False;
          DM1.tPedidoDolar.AsBoolean       := False;
          DM1.tPedidoPedidoCliente.AsString := tAuxRecPedNumPedido.AsString;
          DM1.tPedidoObs.AsString          := tAuxRecPedObs.AsString;
          DM1.tPedido.Post;
          vUltItem := 0;
          tAuxRecItem.First;
          while not tAuxRecItem.Eof do
            begin
              tAuxRecGrade.First;
              inc(vUltItem);
              DM1.tPedidoItem.Insert;
              DM1.tPedidoItemPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
              DM1.tPedidoItemItem.AsInteger        := vUltItem;
              DM1.tPedidoItemCodProduto.AsInteger  := tAuxRecItemCodProduto.AsInteger;
              DM1.tPedidoItemCodCor.AsInteger      := tAuxRecItemCodCor.AsInteger;
              if tAuxRecGrade.RecordCount > 0 then
                DM1.tPedidoItemCodGrade.AsInteger    := tAuxRecGradeCodGrade.AsInteger
              else
                DM1.tPedidoItemCodGrade.AsInteger    := 0;
              DM1.tPedidoItemQtdPares.AsFloat      := tAuxRecItemQtdPares.AsFloat;
              DM1.tPedidoItemQtdParesRest.AsFloat  := DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoItemQtdFatAut.AsFloat     := 0;
              DM1.tPedidoItemQtdFatMan.AsFloat     := 0;
              DM1.tPedidoItemQtdParesCanc.AsFloat  := 0;
              DM1.tPedidoItemQtdParesFat.AsFloat   := 0;
              DM1.tPedidoItemPreco.AsFloat         := tAuxRecItemVlrUnitario.AsFloat;
              DM1.tPedidoItemQtdLote.AsFloat       := tAuxRecItemQtdLote.AsFloat;
              //*** Le a tabela de Preços para ver se o preço que o cliente mandou esta igual
              //ao preço da tabela
              DM1.tTabPreco.SetKey;
              DM1.tTabPrecoCodCliente.AsInteger := DM1.tPedidoCodCliente.AsInteger;
              DM1.tTabPrecoCodProduto.AsInteger := DM1.tPedidoItemCodProduto.AsInteger;
              DM1.tTabPrecoCodCor.AsInteger     := DM1.tPedidoItemCodCor.AsInteger;
              if DM1.tTabPreco.GotoKey then
                begin
                  if DM1.tTabPrecoPreco.AsFloat < tAuxRecItemVlrUnitario.AsFloat then
                    begin
                      ShowMessage('Preço da tabela esta menor que o preço que o cliente mandou o Pedido = ' + DM1.tPedidoPedidoCliente.AsString);
                      DM1.tPedidoItemPreco.AsFloat         := DM1.tTabPrecoPreco.AsFloat;
                    end
                  else
                  if DM1.tTabPrecoPreco.AsFloat > tAuxRecItemVlrUnitario.AsFloat then
                    begin
                      ShowMessage('Preço da tabela esta maior que o preço que o cliente mandou o Pedido = ' + DM1.tPedidoPedidoCliente.AsString);
                      DM1.tPedidoItemPreco.AsFloat         := DM1.tTabPrecoPreco.AsFloat;
                    end;
                end;
              DM1.tPedidoItemVlrTotal.AsFloat      := tAuxRecItemQtdPares.AsFloat * DM1.tPedidoItemPreco.AsFloat;
              DM1.tPedidoItemCancelado.AsBoolean   := False;
              DM1.tPedidoItemCopiado.AsBoolean     := False;
              DM1.tPedidoItemSelecionado.AsBoolean := False;
              DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]);
              if vCodSitTrib > 0 then
                DM1.tPedidoItemSitTrib.AsInteger     := vCodSitTrib
              else
                DM1.tPedidoItemSitTrib.AsInteger     := DM1.tProdutoCodSitTrib.AsInteger;
              DM1.tPedidoItemLoteGer.AsBoolean     := False;
              DM1.tPedidoItemReposicao.AsBoolean   := False;
              DM1.tPedidoItemNumOS.AsString        := '';
              DM1.tPedidoItemDtEmbarque.AsDateTime := tAuxRecItemDtEntrega.AsDateTime;
              DM1.tPedidoItemDtReprogramacao.AsDateTime  := tAuxRecItemDtEntrega.AsDateTime;
              DM1.tPedidoItemProdCliPorTamanho.AsBoolean := tAuxRecItemProdCliPorTamanho.AsBoolean;
              DM1.tPedidoItemCodProdutoCli.AsString      := tAuxRecItemCodProdutoCli.AsString;
              DM1.tPedidoItemGerarTalao.AsBoolean        := False;
              DM1.tPedidoItemReprogramacao.AsBoolean     := False;
              DM1.tPedidoItem.Post;

              GravaPedidos_Gerados;

              if DM1.tPedidoItemCodGrade.AsInteger > 0 then
                begin
                  tAuxRecGrade.First;
                  while not tAuxRecGrade.Eof do
                    begin
                      DM1.tPedidoGrade.Insert;
                      DM1.tPedidoGradePedido.AsInteger       := DM1.tPedidoPedido.AsInteger;
                      DM1.tPedidoGradeItemPed.AsInteger      := DM1.tPedidoItemItem.AsInteger;
                      DM1.tPedidoGradeCodGrade.AsInteger     := DM1.tPedidoItemCodGrade.AsInteger;
                      DM1.tPedidoGradePosicao.AsInteger      := tAuxRecGradePosicao.AsInteger;
                      DM1.tPedidoGradeQtd.AsFloat            := tAuxRecGradeQtdPares.AsFloat;
                      DM1.tPedidoGradeQtdParesRest.AsFloat   := DM1.tPedidoGradeQtd.AsFloat;
                      DM1.tPedidoGradeCodProdutoCli.AsString := tAuxRecGradeCodProdutoCli.AsString;
                      DM1.tPedidoGrade.Post;
                      tAuxRecGrade.Next;
                    end;

                  DM1.tGrade.IndexFieldNames := 'Codigo';
                  DM1.tGrade.SetKey;
                  DM1.tGradeCodigo.AsInteger := DM1.tPedidoItemCodGrade.AsInteger;
                  if DM1.tGrade.GotoKey then
                    begin
                      DM1.tGradeItem.First;
                      while not DM1.tGradeItem.Eof do
                        begin
                          DM1.tPedidoGrade.IndexFieldNames   := 'Pedido;ItemPed;CodGrade;Posicao';
                          DM1.tPedidoGrade.SetKey;
                          DM1.tPedidoGradePedido.AsInteger   := DM1.tPedidoItemPedido.AsInteger;
                          DM1.tPedidoGradeItemPed.AsInteger  := DM1.tPedidoItemItem.AsInteger;
                          DM1.tPedidoGradeCodGrade.AsInteger := DM1.tGradeCodigo.AsInteger;
                          DM1.tPedidoGradePosicao.AsInteger  := DM1.tGradeItemPosicao.AsInteger;
                          if not DM1.tPedidoGrade.GotoKey then
                            begin
                              DM1.tPedidoGrade.Insert;
                              DM1.tPedidoGradePedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
                              DM1.tPedidoGradeItemPed.AsInteger    := DM1.tPedidoItemItem.AsInteger;
                              DM1.tPedidoGradeCodGrade.AsInteger   := DM1.tGradeCodigo.AsInteger;
                              DM1.tPedidoGradePosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
                              DM1.tPedidoGradeQtd.AsFloat          := 0;
                              DM1.tPedidoGradeQtdParesRest.AsFloat := 0;
                              DM1.tPedidoGradeQtdParesAut.AsFloat  := 0;
                              DM1.tPedidoGradeQtdParesFat.AsFloat  := 0;
                              DM1.tPedidoGradeQtdParesMan.AsFloat  := 0;
                              DM1.tPedidoGradeVlrUnitario.AsFloat  := 0;
                              DM1.tPedidoGradeVlrTotal.AsFloat     := 0;
                              DM1.tPedidoGrade.Post;
                            end;
                          DM1.tGradeItem.Next;
                        end;
                    end;
                end;
              //*** Valores do pedido
              DM1.tPedido.Edit;
              DM1.tPedidoPesoBruto.AsFloat     := DM1.tPedidoPesoBruto.AsFloat + (DM1.tProdutoPesoBruto.AsFloat *
                                                  DM1.tPedidoItemQtdPares.AsFloat);
              DM1.tPedidoPesoLiquido.AsFloat   := DM1.tPedidoPesoLiquido.AsFloat + (DM1.tProdutoPesoLiquido.AsFloat *
                                                  DM1.tPedidoItemQtdPares.AsFloat);
              DM1.tPedidoQtdPares.AsFloat      := DM1.tPedidoQtdPares.AsFloat + DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoQtdParesRest.AsFloat  := DM1.tPedidoQtdPares.AsFloat;
              DM1.tPedidoVlrMercadoria.AsFloat := DM1.tPedidoVlrMercadoria.AsFloat + DM1.tPedidoItemVlrTotal.AsFloat;
              DM1.tPedidoVlrTotal.AsFloat      := DM1.tPedidoVlrMercadoria.AsFloat;
              if DM1.tPedidoDtIniEmbarque.AsDateTime < 1 then
                DM1.tPedidoDtIniEmbarque.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime
              else
              if DM1.tPedidoDtIniEmbarque.AsDateTime > DM1.tPedidoItemDtEmbarque.AsDateTime then
                DM1.tPedidoDtIniEmbarque.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
              if DM1.tPedidoDtFinEmbarque.AsDateTime < DM1.tPedidoItemDtEmbarque.AsDateTime then
                DM1.tPedidoDtFinEmbarque.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
              DM1.tPedido.Post;
              //**************

              tAuxRecItem.Next;
            end;
        end;
      tAuxRecPed.Next;
    end;
end;

procedure TfRecPedidoAzaleia.Verifica_Arquivo;
begin
  AssignFile(F,FilenameEdit1.Text);
  Reset(F);
  while not Eof(F) do
    begin
      ReadLn(F,Registro);
      if Copy(Registro,1,1) = '1' then
        begin
          vErro := False;
          vNumPedidoCli := Copy(Registro,17,8);
          Verifica_Tipo1;                      
        end
      else
      if (not vErro) and (Copy(Registro,1,1) = '3') then
        Verifica_Tipo3;
    end;
  CloseFile(F);
end;

procedure TfRecPedidoAzaleia.Verifica_Tipo1;
begin
  //Verifica o cnpj do cliente
  vCgc := Copy(Registro,3,2) + '.' + Copy(Registro,5,3) + '.' + Copy(Registro,8,3) +
          '/' + Copy(Registro,11,4) + '-' + Copy(Registro,15,2);
  if not DM1.tCliente.Locate('CgcCpf',vCGC,[loCaseInsensitive]) then
    begin
      vMotivo := 'Cnpj do cliente não cadastrado  ' + vCGC;
      GravaPedidos_NaoGerados;
    end;

  //Verifica o cnpj da empresa
  if not vErro then
    begin
      vCgc := Copy(Registro,35,2) + '.' + Copy(Registro,37,3) + '.' + Copy(Registro,40,3) +
              '/' + Copy(Registro,43,4) + '-' + Copy(Registro,47,2);
      if DM1.tEmpresaCgc.AsString <> vCgc then
        begin
          vMotivo := 'Cnpj da empresa não confere com o do fornecedor!';
          GravaPedidos_NaoGerados;
        end;
    end;
  //Verifica se o pedido já foi incluso
  if not vErro then
    begin
      tPedido2.SetKey;
      tPedido2PedidoCliente.AsString := Copy(Registro,17,8);
      if tPedido2.GotoKey then
        begin
          vMotivo := 'Pedido já foi gerado';
          GravaPedidos_NaoGerados;
        end;
    end;
  //Verifica se a transportadora esta cadastrada
  if not vErro then
    begin
      if (Copy(Registro,52,14) <> '00000000000000') and (Copy(Registro,52,14) <> '              ') then
        begin                     
          vCgc := Copy(Registro,52,2) + '.' + Copy(Registro,54,3) + '.' + Copy(Registro,57,3) +
                  '/' + Copy(Registro,60,4) + '-' + Copy(Registro,64,2);
          if not DM1.tTransp.Locate('CNPJ',vCGC,[loCaseInsensitive]) then
            begin
              vMotivo := 'CNPJ da transportadora  ' + vCGC + '  não cadastrado!';
              GravaPedidos_NaoGerados;
            end;
        end;
    end;
end;

procedure TfRecPedidoAzaleia.Verifica_Tipo3;
var
  vAux : String;
begin
  vAux := Trim(Copy(Registro,5,15));
  //Verifica se o produto do cliente esta cadastrado
  if not tProdutoCli2.Locate('CodCliente;CodProdCli',VarArrayOf([DM1.tClienteCodigo.AsInteger,vAux]),[locaseinsensitive]) then
    begin
      vMotivo := 'Produto do cliente não cadastrado!';
      GravaPedidos_NaoGerados;
    end;
end;

procedure TfRecPedidoAzaleia.Limpa_Tabelas;
begin
  tAuxRecPed.First;
  while not tAuxRecPed.Eof do
    begin
      tAuxRecItem.First;
      while not tAuxRecItem.Eof do
        begin
          tAuxRecGrade.First;
          while not tAuxRecGrade.Eof do
            tAuxRecGrade.Delete;
          tAuxRecItem.Delete;
        end;
      tAuxRecPed.Delete;
    end;
  mPedidoNao.EmptyTable;
  mPedidoGer.EmptyTable;
end;

procedure TfRecPedidoAzaleia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Limpa_Tabelas;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfRecPedidoAzaleia.Grava_AuxPed;
begin
  tAuxRecPed.SetKey;
  tAuxRecPedNumPedido.AsString := vNumPedidoCli;
  if not tAuxRecPed.GotoKey then
    begin
      tAuxRecPed.Insert;
      tAuxRecPedNumPedido.AsString := vNumPedidoCli;
      vCgc := Copy(Registro,3,2) + '.' + Copy(Registro,5,3) + '.' + Copy(Registro,8,3) +
              '/' + Copy(Registro,11,4) + '-' + Copy(Registro,15,2);
      DM1.tCliente.Locate('CgcCpf',vCGC,[loCaseInsensitive]);
      tAuxRecPedCodCliente.AsInteger  := DM1.tClienteCodigo.AsInteger;
      tAuxRecPedCodVendedor.AsInteger := DM1.tClienteCodVendedor.AsInteger;
      DM1.tVendedor.SetKey;
      DM1.tVendedorCodigo.AsInteger := DM1.tClienteCodVendedor.AsInteger;
      if DM1.tVendedor.GotoKey then
        tAuxRecPedPercComissao.AsFloat := DM1.tVendedorPercComissao.AsFloat;
      if (Copy(Registro,52,14) <> '00000000000000') and (Copy(Registro,52,14) <> '              ') then
        begin
          vCgc := Copy(Registro,52,2) + '.' + Copy(Registro,54,3) + '.' + Copy(Registro,57,3) +
                  '/' + Copy(Registro,60,4) + '-' + Copy(Registro,64,2);
          DM1.tTransp.Locate('CNPJ',vCGC,[loCaseInsensitive]);
          tAuxRecPedCodTransportadora.AsInteger := DM1.tTranspCodigo.AsInteger;
        end
      else
        tAuxRecPedCodTransportadora.AsInteger := 0;
      tAuxRecPedCodCondPagto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
      tAuxRecPedTipoOperacao.AsString  := Copy(Registro,2,1);
      if Copy(Registro,49,3) = 'CIF' then
        tAuxRecPedCifFob.AsString := 'C'
      else
        tAuxRecPedCifFob.AsString := 'F';
      tAuxRecPedObs.AsString           := Copy(Registro,67,500);
      tAuxRecPed.Post;
      vItem := 0;
    end;
end;

procedure TfRecPedidoAzaleia.Grava_AuxItem;
var
  vQtd : String;
  vAux : String;
begin
  vQtd := Copy(Registro,83,11) + ',' + Copy(Registro,95,3);
  vAux := Trim(Copy(Registro,5,15));
  tProdutoCli2.Locate('CodCliente;CodProdCli',VarArrayOf([DM1.tClienteCodigo.AsInteger,vAux]),[locaseinsensitive]);
  if tAuxRecItem.Locate('NumPedido;CodProduto;CodCor',VarArrayOf([vNumPedidoCli,tProdutoCli2CodProduto.AsInteger,tProdutoCli2CodCor.AsInteger]),[locaseinsensitive]) then
    vIncluirItem := False
  else
    vIncluirItem := True;
  if vIncluirItem then
    begin
      inc(vItem);
      tAuxRecItem.Insert;
      tAuxRecItemNumPedido.AsString   := vNumPedidoCli;
      tAuxRecItemItem.AsInteger       := vItem;
      tAuxRecItemNumOS.AsString       := '';
      tAuxRecItemDtEntrega.AsString   := Copy(Registro,134,2) + '/' + Copy(Registro,132,2) + '/' + Copy(Registro,128,4);
      tAuxRecItemCodProduto.AsInteger := tProdutoCli2CodProduto.AsInteger;
      tAuxRecItemCodCor.AsInteger     := tProdutoCli2CodCor.AsInteger;
      tAuxRecItemQtdPares.AsFloat     := StrToFloat(vQtd);
      tAuxRecItemVlrUnitario.AsString := Copy(Registro,113,8) + ',' + Copy(Registro,122,6);
      tAuxRecItemQtdLote.AsString     := Copy(Registro,98,11) + ',' + Copy(Registro,110,3);
      if tProdutoCli2Posicao.AsInteger > 0 then
        begin
          tAuxRecItemProdCliPorTamanho.AsBoolean := True;
          tAuxRecItemCodProdutoCli.AsString      := '';
        end
      else
        begin
          tAuxRecItemProdCliPorTamanho.AsBoolean := False;
          tAuxRecItemCodProdutoCli.AsString      := vAux;
        end;
      tAuxRecItem.Post;
    end
  else
    begin
      tAuxRecItem.Edit;
      tAuxRecItemQtdPares.AsFloat := tAuxRecItemQtdPares.AsFloat + StrToFloat(vQtd);
      tAuxRecItem.Post;
    end;

  //*** Grade
  if tProdutoCli2lkTamanho.AsString <> '' then
    begin
      tAuxRecGrade.SetKey;
      tAuxRecGradeNumPedido.AsString := vNumPedidoCli;
      tAuxRecGradeItem.AsInteger     := tAuxRecItemItem.AsInteger;
      tAuxRecGradeTamanho.AsString   := tProdutoCli2lkTamanho.AsString;
      if tAuxRecGrade.GotoKey then
        begin
          tAuxRecGrade.Edit;
          tAuxRecGradeQtdPares.AsFloat := tAuxRecGradeQtdPares.AsFloat + StrToFloat(vQtd);
          tAuxRecGrade.Post;
        end
      else
        begin
          tAuxRecGrade.Insert;
          tAuxRecGradeNumPedido.AsString := vNumPedidoCli;
          tAuxRecGradeItem.AsInteger     := tAuxRecItemItem.AsInteger;
          tAuxRecGradeTamanho.AsString   := tProdutoCli2lkTamanho.AsString;
          tAuxRecGradeCodGrade.AsInteger := tProdutoCli2CodGrade.AsInteger;
          tAuxRecGradePosicao.AsInteger  := tProdutoCli2Posicao.AsInteger;
          tAuxRecGradeQtdPares.AsFloat   := StrToFloat(vQtd);
          if tProdutoCli2Posicao.AsInteger > 0 then
            tAuxRecGradeCodProdutoCli.AsString := vAux
          else
            tAuxRecGradeCodProdutoCli.AsString := '';
          tAuxRecGrade.Post;
        end;
    end;
end;

procedure TfRecPedidoAzaleia.BitBtn8Click(Sender: TObject);
begin
  if FilenameEdit1.Text <> '' then
    begin
      Limpa_Tabelas;
      DM1.tProduto.IndexFieldNames  := 'Codigo';
      DM1.tCliente.IndexFieldNames  := 'Codigo';
      DM1.tVendedor.IndexFieldNames := 'Codigo';
      DM1.tPedido.IndexFieldNames   := 'Pedido';
      DM1.tEmpresa.First;

      vNumPedido := 0;
      vNumOS     := '';
      vItem      := 0;

      Verifica_Arquivo;

      AssignFile(F,FilenameEdit1.Text);
      Reset(F);
      while not Eof(F) do
        begin
          ReadLn(F,Registro);
          if Copy(Registro,1,1) = '1' then
            begin
              vNumPedidoCli := Copy(Registro,17,8);
              vErro := False;
              if mPedidoNao.Locate('PedidoCliente',Copy(Registro,17,8),[loCaseInsensitive]) then
                vErro := True;
            end;
          if not vErro then
            begin
              if Copy(Registro,1,1) = '1' then
                Grava_AuxPed
              else
              if Copy(Registro,1,1) = '3' then
                Grava_AuxItem;
            end;
        end;
      CloseFile(F);
      Le_Auxiliar;
    end;
end;

procedure TfRecPedidoAzaleia.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfRecPedidoAzaleia.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tCliente,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedido,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoItem,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tTabPreco,Name);
  oDBUtils.ActiveDataSet(True,dm1.tGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tGradeItem,Name);
  oDBUtils.ActiveDataSet(True,dm1.tTransp,Name);
  oDBUtils.ActiveDataSet(True,dm1.tVendedor,Name);

  DM1.tUF.Open;
end;

end.
