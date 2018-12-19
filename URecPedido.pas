unit URecPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask, ToolEdit, Db, DBTables, MemTable, Grids, Variants,
  DBGrids, RXDBCtrl, RxLookup, ExtCtrls, rsDBUtils;

type
  TfRecPedido = class(TForm)
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
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tAuxRecItemItem: TIntegerField;
    tAuxRecGradeItem: TIntegerField;
    tAuxRecPedNumPedido: TStringField;
    tAuxRecPedCodTransportadora: TIntegerField;
    tAuxRecPedCifFob: TStringField;
    tAuxRecGradeNumPedido: TStringField;
    tAuxRecGradeCodGrade: TIntegerField;
    tAuxRecGradePosicao: TIntegerField;
    tAuxRecGradeCodProdutoCli: TStringField;
    tAuxRecItemNumPedido: TStringField;
    tAuxRecItemQtdLote: TFloatField;
    tAuxRecItemCodProdutoCli: TStringField;
    tAuxRecItemProdCliPorTamanho: TBooleanField;
    mPedidoNaoPedidoCliente: TStringField;
    mPedidoGerPedidoCliente: TStringField;
    tPedido2PedidoCliente: TStringField;
    tPedido2Cia: TIntegerField;
    tPedido2Estoque: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    vCodGrade : Integer;
    { Private declarations }
    procedure Limpa_Tabelas;
    procedure GravaPedidos_NaoGerados;
    procedure Verifica_Arquivo;
    procedure Monta_CodProduto;
    procedure Le_Auxiliar;
    procedure GravaPedidos_Gerados;
  public
    { Public declarations }
  end;

var
  fRecPedido: TfRecPedido;
    F        : TextFile;
    vNumOS, Registro, vMotivo : String;
    vNumPedido : String;
    vNumPedidoCli : String;
    vCodProdCli : String[15];
    vCodProdEmp, vCodCorEmp : Integer;
    vTamanho    : String[3];
    vCgc : String[18];

implementation

uses UDM1, UDM2;

{$R *.DFM}

procedure TfRecPedido.GravaPedidos_Gerados;
begin
  mPedidoGer.Insert;
  mPedidoGerPedidoCliente.AsString := DM1.tPedidoPedidoCliente.AsString;
  mPedidoGerNumOS.AsString         := DM1.tPedidoItemNumOS.AsString;
  mPedidoGerReferencia.AsString    := DM1.tPedidoItemlkReferencia.AsString;
  mPedidoGerNomeCor.AsString       := DM1.tPedidoItemlkCor.AsString;
  mPedidoGerQtdPares.AsFloat       := DM1.tPedidoItemQtdPares.AsFloat;
  mPedidoGer.Post;
end;

procedure TfRecPedido.Le_Auxiliar;
var
  vUltPedido, vUltItem : Integer;
begin                           
  DM1.tPedido.Last;
  vUltPedido := DM1.tPedidoPedido.AsInteger;
  vNumPedido := '';

  tAuxRecPed.First;
  while not tAuxRecPed.Eof do
    begin
      if tAuxRecPedTipoOperacao.AsString = 'V' then
        begin
          inc(vUltPedido);
          DM1.tPedido.Insert;
          DM1.tPedidoPedido.AsInteger      := vUltPedido;
          DM1.tPedidoDtEmissao.AsDateTime  := Date;
          DM1.tPedidoCodCliente.AsInteger  := tAuxRecPedCodCliente.AsInteger;
          DM1.tPedidoCodCondPgto.AsInteger := tAuxRecPedCodCondPagto.AsInteger;
          DM1.tPedidoTipoFrete.AsString    := 'F';
          if (copy(Registro,41,1) = 'V') and (tAuxRecPedlkUF.AsString = DM1.tEmpresaEstado.AsString) then
            DM1.tPedidoCodNatOper.AsInteger  := DM1.tParametrosCodNatVenda.AsInteger
          else
          if (copy(Registro,41,1) = 'V') then
            DM1.tPedidoCodNatOper.AsInteger  := DM1.tParametrosCodNatVendaF.AsInteger
          else
          if (copy(Registro,41,1) = 'B') then
            DM1.tPedidoCodNatOper.AsInteger  := DM1.tParametrosCodNatBenef.AsInteger;
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
          DM1.tPedidoObs.AsString           := tAuxRecPedObs.AsString;
          DM1.tPedido.Post;
          vUltItem := 0;
          tAuxRecItem.First;
          while not tAuxRecItem.Eof do
            begin
              inc(vUltItem);
              DM1.tPedidoItem.Insert;
              DM1.tPedidoItemPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
              DM1.tPedidoItemItem.AsInteger        := vUltItem;
              if RxDBLookupCombo1.Text <> '' then
                Dm1.tPedidoItemCodCia.AsInteger      := RxDBLookupCombo1.KeyValue;
              DM1.tPedidoItemCodProduto.AsInteger  := tAuxRecItemCodProduto.AsInteger;
              DM1.tPedidoItemCodCor.AsInteger      := tAuxRecItemCodCor.AsInteger;
              DM1.tPedidoItemCodGrade.AsInteger    := vCodGrade;
              DM1.tPedidoItemQtdPares.AsFloat      := tAuxRecItemQtdPares.AsFloat;
              DM1.tPedidoItemQtdParesRest.AsFloat  := DM1.tPedidoItemQtdPares.AsFloat;
              DM1.tPedidoItemQtdFatAut.AsFloat     := 0;
              DM1.tPedidoItemQtdFatMan.AsFloat     := 0;
              DM1.tPedidoItemQtdParesCanc.AsFloat  := 0;
              DM1.tPedidoItemQtdParesFat.AsFloat   := 0;
              DM1.tPedidoItemPreco.AsFloat         := tAuxRecItemVlrUnitario.AsFloat;
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
                      ShowMessage('Preço da tabela esta menor que o preço que o cliente mandou - Pedido = ' + DM1.tPedidoPedidoCliente.AsString + '  Os = ' + DM1.tPedidoItemNumOS.AsString);
                      DM1.tPedidoItemPreco.AsFloat         := DM1.tTabPrecoPreco.AsFloat;
                    end
                  else
                  if DM1.tTabPrecoPreco.AsFloat > tAuxRecItemVlrUnitario.AsFloat then
                    begin
                      ShowMessage('Preço da tabela esta maior que o preço que o cliente mandou - Pedido = ' + DM1.tPedidoPedidoCliente.AsString + '  Os = ' + DM1.tPedidoItemNumOS.AsString);
                      DM1.tPedidoItemPreco.AsFloat         := DM1.tTabPrecoPreco.AsFloat;
                    end;
                end;

              DM1.tPedidoItemVlrTotal.AsFloat      := tAuxRecItemQtdPares.AsFloat * DM1.tPedidoItemPreco.AsFloat;
              DM1.tPedidoItemCancelado.AsBoolean   := False;
              DM1.tPedidoItemCopiado.AsBoolean     := False;
              DM1.tPedidoItemSelecionado.AsBoolean := False;
              DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]);
              DM1.tPedidoItemSitTrib.AsInteger     := DM1.tProdutoCodSitTrib.AsInteger;
              DM1.tPedidoItemLoteGer.AsBoolean     := False;
              DM1.tPedidoItemReposicao.AsBoolean   := False;
              DM1.tPedidoItemNumOS.AsString        := tAuxRecItemNumOS.AsString;
              DM1.tPedidoItemDtEmbarque.AsDateTime := tAuxRecItemDtEntrega.AsDateTime;
              DM1.tPedidoItemDtReprogramacao.AsDateTime := tAuxRecItemDtEntrega.AsDateTime;
              DM1.tPedidoItemGerarTalao.AsBoolean  := False;
              DM1.tPedidoItem.Post;

              GravaPedidos_Gerados;

              tAuxRecGrade.First;
              while not tAuxRecGrade.Eof do
                begin
                  DM1.tPedidoGrade.Insert;
                  DM1.tPedidoGradePedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
                  DM1.tPedidoGradeItemPed.AsInteger    := DM1.tPedidoItemItem.AsInteger;
                  DM1.tPedidoGradeCodGrade.AsInteger   := DM1.tPedidoItemCodGrade.AsInteger;
                  //if DM1.tGradeItemlk.Locate('CodGrade;Tamanho',VarArrayOf([DM1.tPedidoItemCodGrade.AsInteger,tAuxRecGradeTamanho.AsString]),[locaseinsensitive]) then
                  //  DM1.tPedidoGradePosicao.AsInteger := DM1.tGradeItemlkPosicao.AsInteger;
                  if DM1.tGradeItemlk.Locate('CodGrade;Tamanho',VarArrayOf([vCodGrade,tAuxRecGradeTamanho.AsString]),[locaseinsensitive]) then
                    DM1.tPedidoGradePosicao.AsInteger := DM1.tGradeItemlkPosicao.AsInteger;
                  DM1.tPedidoGradeQtd.AsFloat          := tAuxRecGradeQtdPares.AsFloat;
                  DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtd.AsFloat;
                  DM1.tPedidoGrade.Post;
                  tAuxRecGrade.Next;
                end;
// gera tamanhos cfe. a grade!
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

procedure TfRecPedido.Monta_CodProduto;
var                        
  vAchou : Boolean;
  texto2 : String;
  i : Integer;
begin
  vTamanho    := '';
  vCodProdCli := '';
  vAchou   := False;
  texto2   := Copy(Registro,56,15);
  for i := 1 to 15 do
    begin
      if (Copy(texto2,i,1) = '-') or (Copy(texto2,i,1) = ' ') or (Copy(texto2,i,1) = 'M')then
        vAchou := True;
      if (Copy(texto2,i,1) <> '-') and (Copy(texto2,i,1) <> ' ') and (Copy(texto2,i,1) <> 'M') then
        begin
          if (vAchou) and (Copy(texto2,i,1) <> ' ') then
            vTamanho := vTamanho + Copy(texto2,i,1)
          else
          if (vAchou = False) and (Copy(texto2,i,1) <> ' ') then
            vCodProdCli := vCodProdCli + Copy(texto2,i,1);
        end;
    end;
  if (Length(vTamanho) = 1) or ((Length(vTamanho) > 1) and ((copy(vtamanho,2,1) = 'x') or (copy(vtamanho,2,1) = 'X'))) then
    begin
      vCodGrade := 1;
      vTamanho := '0'+vTamanho;
    end
  else
    vCodGrade := 2;
end;

procedure TfRecPedido.Verifica_Arquivo;
begin
  vNumPedido    := '';
  AssignFile(F,FilenameEdit1.Text);
  Reset(F);
  while not Eof(F) do
    begin
      ReadLn(F,Registro);
      vNumPedidoCli := Trim(Copy(Registro,15,10));
      Monta_CodProduto;
      if vTamanho = '0' then
        begin
          vMotivo := 'Não foi informado o tamanho da grade';
          GravaPedidos_NaoGerados;
        end
      else
        begin
          vCgc := Copy(Registro,199,2) + '.' + Copy(Registro,201,3) + '.' + Copy(Registro,204,3) +
                  '/' + Copy(Registro,207,4) + '-' + Copy(Registro,211,2);
          if DM1.tEmpresaCgc.AsString <> vCgc then
            begin
              vMotivo := 'CNPJ do fornecedor diferente do CNPJ da ' + DM1.tEmpresaEmpresa.AsString;
              GravaPedidos_NaoGerados;
            end
          else
            begin
              vCgc := Copy(Registro,1,2) + '.' + Copy(Registro,3,3) + '.' + Copy(Registro,6,3) +
                      '/' + Copy(Registro,9,4) + '-' + Copy(Registro,13,2);
              if not DM1.tCliente.Locate('CgcCpf',vCgc,[loCaseInsensitive]) then
                begin
                  vMotivo := 'Cliente com o CNPJ ' + vCgc + ' não esta cadastrado';
                  GravaPedidos_NaoGerados;
                end
              else
              //if vNumPedido <> StrToInt(Copy(Registro,15,10)) then
              if vNumPedido <> vNumPedidoCli then
                begin                                 
                  tPedido2.SetKey;
                  tPedido2PedidoCliente.AsString := vNumPedidoCli;
                  if tPedido2.GotoKey then
                    begin
                      vMotivo := 'Ordem de compra já foi gerada';
                      GravaPedidos_NaoGerados;
                    end;
                end;
            end;
        end;
      vNumPedido := vNumPedidoCli;
    end;
  CloseFile(F);
end;

procedure TfRecPedido.GravaPedidos_NaoGerados;
begin
  //if not mPedidoNao.Locate('PedidoCliente',StrToInt(Copy(Registro,15,10)),[loCaseInsensitive]) then
  if not mPedidoNao.Locate('PedidoCliente',vNumPedidoCli,[loCaseInsensitive]) then
    begin
      mPedidoNao.Insert;
      mPedidoNaoPedidoCliente.AsString := vNumPedidoCli;
      mPedidoNaoMotivo.AsString        := vMotivo;
      mPedidoNao.Post;
    end;                   
end;

procedure TfRecPedido.Limpa_Tabelas;
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

procedure TfRecPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Limpa_Tabelas;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfRecPedido.BitBtn8Click(Sender: TObject);
var
  vQtd : String;
  i : Integer;
  vItem : Integer;
  vIncluirItem : Boolean;
begin         
  if FilenameEdit1.Text <> '' then
    begin
      vCodGrade := 0;
      Limpa_Tabelas;
      DM1.tProduto.IndexFieldNames  := 'Codigo';
      DM1.tCliente.IndexFieldNames  := 'Codigo';
      DM1.tVendedor.IndexFieldNames := 'Codigo';
      DM1.tPedido.IndexFieldNames   := 'Pedido';
      DM1.tEmpresa.First;

      Verifica_Arquivo;

      //*** Grava a tabela auxiliar
      vNumPedido := '';
      vNumOS     := '';
      vItem      := 0;
      
      AssignFile(F,FilenameEdit1.Text);
      Reset(F);
      while not Eof(F) do
        begin
          ReadLn(F,Registro);
          vNumPedidoCli := Trim(Copy(Registro,15,10));
          if not mPedidoNao.Locate('PedidoCliente',vNumPedidoCli,[loCaseInsensitive]) then
            begin
              //*** Procura o Cliente
              vCgc := Copy(Registro,1,2) + '.' + Copy(Registro,3,3) + '.' + Copy(Registro,6,3) +
                      '/' + Copy(Registro,9,4) + '-' + Copy(Registro,13,2);
              DM1.tCliente.Locate('CgcCpf',vCgc,[loCaseInsensitive]);
              //*** Monta o número da OS
              vNumOS := '';
              if copy(Registro,213,8) = 'P.Prod.:' then
                vNumOS := Trim(copy(Registro,222,6))
              else
                begin
                  for i := 119 to 138 do
                    begin
                      if (copy(Registro,i,1) <> 'O') and (copy(Registro,i,1) <> 'S') and (copy(Registro,i,1) <> ' ') then
                        vNumOS := vNumOS + copy(Registro,i,1);
                    end;
                end;
              //*** Pedido
              vQtd := Copy(Registro,71,6) + ',' + Copy(Registro,77,3);
              tAuxRecPed.SetKey;
              //tAuxRecPedNumPedido.AsString := Copy(Registro,15,10);
              tAuxRecPedNumPedido.AsString := vNumPedidoCli;
              if not tAuxRecPed.GotoKey then
                begin
                  tAuxRecPed.Insert;
                  //tAuxRecPedNumPedido.AsString   := Copy(Registro,15,10);
                  tAuxRecPedNumPedido.AsString    := vNumPedidoCli;
                  tAuxRecPedCodCliente.AsInteger  := DM1.tClienteCodigo.AsInteger;
                  tAuxRecPedCodVendedor.AsInteger := DM1.tClienteCodVendedor.AsInteger;
                  DM1.tVendedor.SetKey;
                  DM1.tVendedorCodigo.AsInteger := DM1.tClienteCodVendedor.AsInteger;
                  if DM1.tVendedor.GotoKey then
                    tAuxRecPedPercComissao.AsFloat := DM1.tVendedorPercComissao.AsFloat;
                  tAuxRecPedCodCondPagto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
                  tAuxRecPedTipoOperacao.AsString  := Copy(Registro,41,1);
                  tAuxRecPedObs.AsString           := Copy(Registro,139,60);
                  tAuxRecPed.Post;
                  vItem := 0;
                end;

              //*** item
              Monta_CodProduto;
              vCodProdEmp := 0;
              vCodCorEmp  := 0;
              if tProdutoCli2.Locate('CodCliente;CodProdCli',VarArrayOf([tAuxRecPedCodCliente.AsInteger,vCodProdCli]),[locaseinsensitive]) then
                begin
                  vCodProdEmp := tProdutoCli2CodProduto.AsInteger;
                  vCodCorEmp  := tProdutoCli2CodCor.AsInteger;
                end;
              if tAuxRecItem.Locate('NumPedido;CodProduto;CodCor;NumOS',VarArrayOf([tAuxRecPedNumPedido.AsString,vCodProdEmp,vCodCorEmp,vNumOS]),[locaseinsensitive]) then
                begin
                  if tAuxRecItemNumOS.AsString <> vNumOS then
                    vIncluirItem := True
                  else
                    vIncluirItem := False;
                end
              else
                vIncluirItem := True;
              if vIncluirItem then
                begin
                  inc(vItem);
                  tAuxRecItem.Insert;
                  tAuxRecItemNumPedido.AsString  := tAuxRecPedNumPedido.AsString;
                  tAuxRecItemItem.AsInteger      := vItem;
                  tAuxRecItemNumOS.AsString      := vNumOS;
                  tAuxRecItemDtEntrega.AsString  := Copy(Registro,48,2) + '/' + Copy(Registro,46,2) + '/' + Copy(Registro,42,4);
                  tAuxRecItemCodProduto.AsInteger := vCodProdEmp;
                  tAuxRecItemCodCor.AsInteger     := vCodCorEmp;
                  tAuxRecItemQtdPares.AsFloat     := StrToFloat(vQtd);
                  tAuxRecItemVlrUnitario.AsString := Copy(Registro,86,12) + ',' + Copy(Registro,98,2);
                  tAuxRecItem.Post;
                end
              else
                begin
                  tAuxRecItem.Edit;
                  tAuxRecItemQtdPares.AsFloat := tAuxRecItemQtdPares.AsFloat + StrToFloat(vQtd);
                  tAuxRecItem.Post;
                end;

              //*** Grade
              tAuxRecGrade.SetKey;
              tAuxRecGradeNumPedido.AsString := tAuxRecPedNumPedido.AsString;
              tAuxRecGradeItem.AsInteger     := tAuxRecItemItem.AsInteger;
              tAuxRecGradeTamanho.AsString   := vTamanho;
              if tAuxRecGrade.GotoKey then
                begin
                  tAuxRecGrade.Edit;
                  tAuxRecGradeQtdPares.AsFloat := tAuxRecGradeQtdPares.AsFloat + StrToFloat(vQtd);
                  tAuxRecGrade.Post;
                end
              else
                begin
                  tAuxRecGrade.Insert;
                  tAuxRecGradeNumPedido.AsString := tAuxRecPedNumPedido.AsString;
                  tAuxRecGradeItem.AsInteger     := tAuxRecItemItem.AsInteger;
                  tAuxRecGradeTamanho.AsString   := vTamanho;
                  tAuxRecGradeQtdPares.AsFloat   := StrToFloat(vQtd);
                  tAuxRecGrade.Post;
                end;
            end;
        end;
      CloseFile(F);
      Le_Auxiliar;
    end;
  RxDBLookupCombo1.ClearValue;  
end;

procedure TfRecPedido.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfRecPedido.FormCreate(Sender: TObject);
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
