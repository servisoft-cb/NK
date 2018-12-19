unit UNFeDados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB, DateUtils,
  Mask, DBTables, QRCTRLS, ToolEdit, ComCtrls, JPEG, UDm1, UDm2, SqlExpr, dbXPress;

  procedure Monta_mItensNFe;
  procedure Procura_ProdCliente;
  procedure Monta_mDadosAdicionaisNFe;
  procedure Grava_DadosAdicionaisNFe(DadosAdi: String; Tipo: Integer);
  procedure Grava_mAuxDadosNFe(Tipo, Codigo: String);
  procedure Monta_mParcelaNFe;
  //NFe 2.00
  procedure Le_tNotaFiscalNDevolvida;
  procedure Le_tNotaFiscalRef;

  procedure Gera_NFe;

  Function Monta_Texto(Campo: String; Tamanho: Integer): String;

var
  vTextoNumNotaNfe: String;
  vCodProdutoNfe: String;
  vTextoDetNFe: String;

implementation

uses Variants, uNFe, UDMNotaFiscal, uUtil_NFe, UDMTabEnqIPI;

//NFe 2.00
procedure Le_tNotaFiscalRef;
var
  vItemAux : Integer;
  vUFAux : String;
  vObsAux : String;
begin
  vObsAux := '';
  DM1.tNotaFiscalRef.First;
  while not DM1.tNotaFiscalRef.Eof do
    begin
      if not fNFe.mNotaDevolvidaNFe.Locate('CodForn;NumNota;Modelo;Serie',VarArrayOf([DM1.tNotaFiscalRefCodFornecedor.AsInteger,
                                DM1.tNotaFiscalRefNumNotaRef.AsInteger,DM1.tNotaFiscalRefModeloRef.AsString,DM1.tNotaFiscalRefSerieRef.AsString]),[locaseinsensitive]) then

      begin
        vUFAux := '';
        fNFe.mNotaDevolvidaNFe.Last;
        vitemAux := fNFe.mNotaDevolvidaNFeItem.AsInteger;
        fNFe.mNotaDevolvidaNFe.Insert;
        fNFe.mNotaDevolvidaNFeTipo.AsString     := DM1.tNotaFiscalRefTipo.AsString;
        fNFe.mNotaDevolvidaNFeItem.AsInteger    := vItemAux + 1;
        fNFe.mNotaDevolvidaNFeModelo.AsString   := DM1.tNotaFiscalRefModeloRef.AsString;
        fNFe.mNotaDevolvidaNFeNumNota.AsInteger := DM1.tNotaFiscalRefNumNotaRef.AsInteger;
        fNFe.mNotaDevolvidaNFeCodForn.AsInteger := DM1.tNotaFiscalRefCodFornecedor.AsInteger;
        fNFe.mNotaDevolvidaNFeNomeForn.AsString := '';
        fNFe.mNotaDevolvidaNFeCNPJ.AsString     := DM1.tNotaFiscalRefCNPJEmitenteRef.AsString;
        vUFAux := DM1.tNotaFiscalRefCodUFEmitenteRef.AsString;
        if DM1.tUF.FindKey([DM1.tNotaFiscalRefCodUFEmitenteRef.AsString]) then
          vUFAux := DM1.tUFCodUF.AsString;
        fNFe.mNotaDevolvidaNFeCodUF.AsString := vUFAux;

        fNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString := DM1.tNotaFiscalRefNFeChaveAcessoRef.AsString;

//        fNFe.mNotaDevolvidaNFeCupomNumECF.AsInteger := DM1.tNotaFiscalRefCupomNumECF.AsInteger;
//        fNFe.mNotaDevolvidaNFeCupomNumCOO.AsInteger := DM1.tNotaFiscalRefCupomNumCOO.AsInteger;
//        fNFe.mNotaDevolvidaNFeCupomModelo.AsString  := DM1.tNotaFiscalRefCupomModelo.AsString;
        fNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger  := DM1.tNotaFiscalRefAnoEmissaoRef.AsInteger;
        fNFe.mNotaDevolvidaNFeMesEmissao.AsInteger  := DM1.tNotaFiscalRefMesEmissaoRef.AsInteger;
        fNFe.mNotaDevolvidaNFeSerie.AsString        := DM1.tNotaFiscalRefSerieRef.AsString;

        fNFe.mNotaDevolvidaNFe.Post;
      end;

      if vObsAux <> '' then
        vObsAux := vObsAux + ' ';
      if DM1.tNotaFiscalRefTipo.AsString = '13' then
        vObsAux := vObsAux + '(NF-e referenciada ' + DM1.tNotaFiscalRefNFeChaveAcessoRef.AsString + ')'
      else
      if DM1.tNotaFiscalRefTipo.AsString = '14' then
      begin
        vObsAux := vObsAux + '(NF referenciada Mes/Ano: ' + DM1.tNotaFiscalRefMesEmissaoRef.AsString + '/' + DM1.tNotaFiscalRefAnoEmissaoRef.AsString
                   + ', Modelo ' + DM1.tNotaFiscalRefModeloRef.AsString + ', Serie ' + DM1.tNotaFiscalRefSerieRef.AsString
                   + ', Nº ' + DM1.tNotaFiscalRefNumNotaRef.AsString + ', CNPJ: ' + DM1.tNotaFiscalRefCNPJEmitenteRef.AsString
                   + ', UF: ' + DM1.tNotaFiscalRefCodUFEmitenteRef.AsString + ')';
      end;
//      else
//        vObsAux := vObsAux + '(Cupom Fiscal Modelo: ' + DM1.tNotaFiscalRefCupomModelo.AsString
//                   + ', Nº ECF: ' + DM1.tNotaFiscalRefCupomNumECF.AsString + ', Nº COO: ' + DM1.tNotaFiscalRefCupomNumCOO.AsString + ')';

      DM1.tNotaFiscalRef.Next;
    end;

  Grava_DadosAdicionaisNFe(vObsAux,0);

end;

//NFe 2.00
procedure Le_tNotaFiscalNDevolvida;
var
  vItemAux : Integer;
  vAnoAux, vMesAux : Word;
begin
  DM1.tNotaFiscalNDevolvida.First;
  while not DM1.tNotaFiscalNDevolvida.Eof do
    begin
      if not fNFe.mNotaDevolvidaNFe.Locate('CodForn;NumNota;Modelo;Serie',VarArrayOf([DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger,
                                DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger,DM1.tNotaFiscalNDevolvidaModelo.AsString,DM1.tNotaFiscalNDevolvidaSerie.AsString]),[locaseinsensitive]) then
      begin
        fNFe.mNotaDevolvidaNFe.Last;
        vitemAux := fNFe.mNotaDevolvidaNFeItem.AsInteger;
        fNFe.mNotaDevolvidaNFe.Insert;
        fNFe.mNotaDevolvidaNFeItem.AsInteger  := vItemAux + 1;
        if DM1.tNotaFiscalNDevolvidaNFeChaveAcessoNEntrada.AsString <> '' then
        begin
          fNFe.mNotaDevolvidaNFeTipo.AsString := '13';
          fNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString := DM1.tNotaFiscalNDevolvidaNFeChaveAcessoNEntrada.AsString;
        end
        else
        begin
          fNFe.mNotaDevolvidaNFeTipo.AsString        := '14';
          fNFe.mNotaDevolvidaNFeModelo.AsString      := DM1.tNotaFiscalNDevolvidaModelo.AsString;
          fNFe.mNotaDevolvidaNFeNumNota.AsInteger    := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
          fNFe.mNotaDevolvidaNFeCodForn.AsInteger    := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
          fNFe.mNotaDevolvidaNFeNomeForn.AsString    := DM1.tNotaFiscalNDevolvidalkNomeFornecedor.AsString;
          fNFe.mNotaDevolvidaNFeCNPJ.AsString        := DM1.tNotaFiscalNDevolvidalkCgcFornecedor.AsString;
          vAnoAux := YearOf(DM1.tNotaFiscalNDevolvidaDtEmissao.AsDateTime);
          vMesAux := MonthOf(DM1.tNotaFiscalNDevolvidaDtEmissao.AsDateTime);
          fNFe.mNotaDevolvidaNFeAnoEmissao.AsString := Copy(IntToStr(vAnoAux),3,2);
          fNFe.mNotaDevolvidaNFeMesEmissao.AsInteger := vMesAux;
          fNFe.mNotaDevolvidaNFeCodUF.AsString := DM1.tNotaFiscalNDevolvidaUFFornecedor.AsString;
          if DM1.tUF.FindKey([DM1.tNotaFiscalNDevolvidaUFFornecedor.AsString]) then
            fNFe.mNotaDevolvidaNFeCodUF.AsString := DM1.tUFCodUF.AsString;
          fNFe.mNotaDevolvidaNFeSerie.AsString   := DM1.tNotaFiscalNDevolvidaSerie.AsString;
        end;
        fNFe.mNotaDevolvidaNFe.Post;
      end;

      DM1.tNotaFiscalNDevolvida.Next;
    end;
end;

//procedure 12/03/2010
procedure Monta_mParcelaNFe;
begin
  fNFe.mParcelaNFe.EmptyDataSet;
  if DM1.tNotaFiscalCondPgto.AsString = 'V' then
    begin
      fNFe.mParcelaNFe.Insert;
      fNFe.mParcelaNFeNumNota.AsInteger     := DM1.tNotaFiscalNumNota.AsInteger;
      fNFe.mParcelaNFeParcela.AsInteger     := 0;
      fNFe.mParcelaNFeValor.AsFloat         := DM1.tNotaFiscalVlrTotalDupl.AsFloat;
      fNFe.mParcelaNFeDtVencimento.AsString := 'A Vista';
      fNFe.mParcelaNFe.Post;
    end
  else
    begin
      DM1.tNotaFiscalParc.First;
      while not DM1.tNotaFiscalParc.Eof do
        begin
          fNFe.mParcelaNFe.Insert;
          fNFe.mParcelaNFeNumNota.AsInteger     := DM1.tNotaFiscalNumNota.AsInteger;
          fNFe.mParcelaNFeParcela.AsInteger     := DM1.tNotaFiscalParcParcela.AsInteger;
          fNFe.mParcelaNFeValor.AsFloat         := DM1.tNotaFiscalParcVlrVenc.AsFloat;
          fNFe.mParcelaNFeDtVencimento.AsString := DM1.tNotaFiscalParcDtVenc.AsString;
          fNFe.mParcelaNFe.Post;
          DM1.tNotaFiscalParc.Next;
        end;
    end;
end;

procedure Gera_NFe;
var
  i : Integer;
begin
  fNFe.mDadosAdicionaisNFe.Open;
  fNFe.mItensNFe.Open;
  if not fNFe.mAuxDadosNFe.Active then
    fNFe.mAuxDadosNFe.Open;

  fNFe.mItensNFe.First;
  while not fNFe.mItensNFe.Eof do
    fNFe.mItensNFe.Delete;
  fNFe.mAuxDadosNFe.EmptyDataSet;

  if DMNotaFiscal.vNumSeqNFe <> DM1.tNotaFiscalNumSeq.AsInteger then
    DM1.tNotaFiscal.FindKey([DM1.tFilialCodigo.AsInteger,DMNotaFiscal.vNumSeqNFe]);

  DM1.tCliente.Locate('Codigo',DM1.tNotaFiscalCodCli.AsInteger,[loCaseInsensitive]);
  DMNotaFiscal.qNatOper.Close;
  DMNotaFiscal.qNatOper.Params[0].AsInteger := Dm1.tNotaFiscalFilial.AsInteger;
  DMNotaFiscal.qNatOper.Params[1].AsInteger := Dm1.tNotaFiscalNumSeq.AsInteger;
  DMNotaFiscal.qNatOper.Open;

  Monta_mItensNFe;
  Monta_mDadosAdicionaisNFe;
  Monta_mParcelaNFe;
  //NFe 2.00
  Le_tNotaFiscalRef;

  //NFe 2.00
  if (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '1') or (DM1.tNotaFiscalCancelada.AsBoolean) then
    fNFe.ComboBox1.ItemIndex := 0
  else
  if Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2' then
    fNFe.ComboBox1.ItemIndex := 1
  else
  if Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '3' then
    fNFe.ComboBox1.ItemIndex := 2
  else
  if Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5' then
    fNFe.ComboBox1.ItemIndex := 3;
end;

Function Monta_Texto(Campo: String; Tamanho: Integer): String;
var
  texto2 : String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

procedure Grava_mAuxDadosNFe(Tipo, Codigo: String);
begin
  if Codigo <> '' then
  begin
    fNFe.mAuxDadosNFe.Insert;
    fNFe.mAuxDadosNFeTipo.AsString   := Tipo;
    fNFe.mAuxDadosNFeCodigo.AsString := Codigo;
    fNFe.mAuxDadosNFe.Post;
  end;
end;

procedure Monta_mDadosAdicionaisNFe;
var
  vTexto: String;
  vObsAux: String;
  vNumAux: Integer;
  //NFe 2.00
  vObsSimplesPermiteIcms, vObsSimples: Boolean;
begin
  fNFe.mDadosAdicionaisNFe.EmptyDataSet;
  fNFe.mDadosAdicionaisNFe.Insert;
  fNFe.mDadosAdicionaisNFeFilial.AsInteger  := DM1.tNotaFiscalFilial.AsInteger;
  fNFe.mDadosAdicionaisNFeNumNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
  fNFe.mDadosAdicionaisNFe.Post;
  //Dados digitados manualmente

  if DM1.tNotaFiscalTBObs.RecordCount > 0 then
    Grava_DadosAdicionaisNFe(DM1.tNotaFiscalTBObsDadosAdicionais.AsString,0);

  //Lei 12.741/12
  if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlr_Tributo.AsFloat)) > 0 then
  begin
    vTexto := fnc_monta_Lei_Transparencia_DAdicionais;
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  //NFe 2.00
  vObsSimples            := False;
  vObsSimplesPermiteIcms := False;
  //Situação Tributária
  fNFe.mAuxDadosNFe.First;
  while not fNFe.mAuxDadosNFe.Eof do
    begin
      if fNFe.mAuxDadosNFeTipo.AsString = 'SIT' then
      begin
        DM1.tSitTributaria.IndexFieldNames := 'Codigo';
        DM1.tSitTributaria.SetKey;
        DM1.tSitTributariaCodigo.AsString := fNFe.mAuxDadosNFeCodigo.AsString;
        if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaHistorico.AsString <> '') then
          Grava_DadosAdicionaisNFe(DM1.tSitTributariaHistorico.AsString,0);
      end;

      if fNFe.mAuxDadosNFeTipo.AsString = 'NAT' then
      begin
        DM1.tNatOperacao.IndexFieldNames := 'Codigo';
        DM1.tNatOperacao.SetKey;
        DM1.tNatOperacaoCodigo.AsString := fNFe.mAuxDadosNFeCodigo.AsString;
        if DM1.tNatOperacao.GotoKey then
        begin
          Grava_DadosAdicionaisNFe(DM1.tNatOperacaoLei.Value,0);
          //NFe 2.00
          if DM1.tNatOperacaoIcmsSimples.AsBoolean then
            vObsSimplesPermiteIcms := True;
        end;
      end;

      fNFe.mAuxDadosNFe.Next;
    end;

  //Endereço Cobrança
  if DM1.tNotaFiscallkEndPgto.AsString <> '' then
  begin
    vTexto := '';
    if DM1.tCidade.Locate('Codigo',DM1.tClienteCodCidadeP.AsInteger,[loCaseInsensitive]) then
      vTexto := DM1.tCidadeNome.AsString + ' ';
    vTexto := '(End.Cobr. ' +
               DM1.tNotaFiscallkEndPgto.AsString + ' - ' +
               DM1.tNotaFiscallkBairroPgto.AsString + ' - ' +
               vTexto + ' - ' +
               DM1.tNotaFiscallkCepPgto.AsString + ' - ' +
               DM1.tNotaFiscallkUfPgto.AsString + ') ';
    if DM1.tClientePessoaPgto.AsString = 'J' then
      vTexto := vTexto + ' - CNPJ: ' + DM1.tClienteCgcCpfPgto.AsString
    else
    if DM1.tClientePessoaPgto.AsString = 'F' then
      vTexto := vTexto + ' - CPF: ' + DM1.tClienteCgcCpfPgto.AsString;
    vTexto := vTexto + ')';
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;
  //Nº notas de devolução
  if vTextoNumNotaNFe <> '' then
    Grava_DadosAdicionaisNFe('('+vTextoNumNotaNFe+')',0);

  //IPI do cliente
  if (DM1.tClienteIPISuspenso.AsBoolean) and
     (Dm1.tNotaFiscalDtEmissao.AsDateTime < Dm1.tClienteDtValidadeIPI.AsDateTime)
     and (DM1.tClienteCodObsIPI.AsInteger > 0) and (DM1.tNotaFiscalVlrIpi.AsFloat <= 0) then
  begin
    Dm1.tObsAux.IndexFieldNames := 'Codigo';
    Dm1.tObsAux.SetKey;
    Dm1.tObsAuxCodigo.AsInteger := Dm1.tClienteCodObsIPI.AsInteger;
    if Dm1.tObsAux.GotoKey then
      Grava_DadosAdicionaisNFe(Dm1.tObsAuxDescricao.AsString,0);
  end;

  //Monta a mensagem da tributação pelo simples
  if (DM1.tFilialSimplesGaucho.AsBoolean) or (DM1.tFilialSimples.AsBoolean) then
  begin
    //NFe 2.00
    if (DM1.tParametrosImp2ObsSimples.AsBoolean) or  not(vObsSimplesPermiteIcms) then
      Grava_DadosAdicionaisNFe(DM1.tParametrosObsSimples.Value,0);

    //NFe 2.00
    if (DM1.tParametrosImp2ObsSimples.AsBoolean) or (vObsSimplesPermiteIcms) then
    begin
      if (DM1.tFilialUsarICMSimples.AsBoolean) and
         (DM1.tNotaFiscalPercIcmsSimples.AsFloat > 0) and (DM1.tNotaFiscalVlrIcmsSimples.AsFloat > 0) then
      begin
        vTexto := 'Permite o aproveitamento do credito de icms no valor de R$ ' +
                    FormatFloat('###,###,##0.00',DM1.tNotaFiscalVlrIcmsSimples.AsFloat) +
                  ', correspondente a aliquota de ' + FormatFloat('###,###,##0.00',DM1.tNotaFiscalPercIcmsSimples.AsFloat) +
                  ' nos termos do ART.23 da LC 123 ';
        Grava_DadosAdicionaisNFe(vTexto,0);
      end;
    end;
  end
  else
  //não é usado
  if DM1.tFilialSimples.AsBoolean then
    Grava_DadosAdicionaisNFe('*** TRIBUTACAO PELO SIMPLES CONFORME LEI 9317 05/12/96 *** ',0);

  //Grava endereço de entrega
  if DM1.tNotaFiscalLocalEntrega.AsBoolean then
  begin
    vTexto := '';
    if DM1.tCliente.Locate('Codigo',DM1.tNotaFiscalCodCli.AsInteger,[loCaseInsensitive]) then
      if DM1.tCidade.Locate('Codigo',DM1.tClienteCodCidadeE.AsInteger,[loCaseInsensitive]) then
        vTexto := DM1.tCidadeNome.AsString + ' ';
    vObsAux := '(Local de Entrega:' +
               DM1.tNotaFiscallkEndEntrega.AsString + ' ' + DM1.tClienteNumEndEntrega.AsString + ' - ' +
               //NFe 2.00
               DM1.tClienteComplEnderecoEntrega.AsString + ' ' + DM1.tNotaFiscallkBairroEntrega.AsString + ' ' +
               vTexto + ' ' +
               DM1.tNotaFiscallkCepEntrega.AsString + ' ' +
               DM1.tNotaFiscallkUFEntrega.AsString + ') ';
    if DM1.tClientePessoaEntrega.AsString = 'J' then
      vObsAux := vObsAux + ' - CNPJ: ' + DM1.tClienteCgcCpfEntrega.AsString
    else
    if DM1.tClientePessoaEntrega.AsString = 'F' then
      vObsAux := vObsAux + ' - CPF: ' + DM1.tClienteCgcCpfEntrega.AsString;
    vObsAux := vObsAux + ')';
    Grava_DadosAdicionaisNFe(vObsAux,0);
  end;

  //Transferência de ICMS
  if DM1.tNotaFiscalVlrTransf.AsFloat > 0 then
    Grava_DadosAdicionaisNFe('(Transf.ICMS: R$ ' + FormatFloat('#,###,###,###,##0.00',DM1.tNotaFiscalVlrTransf.AsFloat)+ ') ',0);

  if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDesc.AsFloat)) > 0 then
  begin
    vTexto := '*(DESCONTO: ';
    if DM1.tNotaFiscalDescricaoDesc.AsString <> '' then
      vTexto := vTexto + DM1.tNotaFiscalDescricaoDesc.AsString;
    vTexto := vTexto + ' Vlr: ';
    vTexto := vTexto + FormatFloat('###,###,##0.00',DM1.tNotaFiscalVlrTotalDesc.AsFloat) + ')*';
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;

{  //Cliente Triangular primeira nota
  if (DM1.tNotaFiscalCodClienteTriang.AsInteger > 0) and (DM1.tNotaFiscalNumNotaCopiada.AsInteger <= 0) then
  begin
    vTexto := '';
    if DM1.tCliente2.Locate('Codigo',DM1.tNotaFiscalCodClienteTriang.AsInteger,[loCaseInsensitive]) then
    begin
      vTexto := '( Entregue a ' + DM1.tCliente2Nome.AsString;
      if DM1.tCliente2Pessoa.AsString = 'J' then
        vTexto := vTexto + ' CNPJ:'
      else
        vTexto := vTexto + ' CPF:';
      vTexto := vTexto + DM1.tCliente2CgcCpf.AsString;
      if Trim(DM1.tCliente2InscrEst.AsString) <> '' then
        vTexto := vTexto + ' Inscr.Est: ' + DM1.tCliente2InscrEst.AsString;
      vTexto := vTexto + ' End: ' + DM1.tCliente2Endereco.AsString + ',' + DM1.tCliente2NumEnd.AsString;
      if DM1.tCidade.Locate('Codigo',DM1.tCliente2CodCidade.AsInteger,[loCaseInsensitive]) then
        vTexto := vTexto + ',' + DM1.tCidadeNome.AsString + ' - ' + DM1.tCidadeEstado.AsString;
      vNumAux := DM1.tNotaFiscalNumNota.AsInteger + 1;
      vTexto := vTexto + ', Cfe.NF:NE/' + IntToStr(vNumAux) + ' de ' + DM1.tNotaFiscalDtEmissao.AsString + ' )';
    end;
    if vTexto <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  //Cliente Triangular copia da nota com a natureza 5923/6923
  if (DM1.tNotaFiscalCodClienteTriang.AsInteger > 0) and (DM1.tNotaFiscalNumNotaCopiada.AsInteger > 0) then
  begin
    vTexto := '';
    if DM1.tCliente2.Locate('Codigo',DM1.tNotaFiscalCodClienteTriang.AsInteger,[loCaseInsensitive]) then
    begin
      vTexto := '( Mercadorias Vendidas atraves da NF ' +  DM1.tNotaFiscalNumNotaCopiada.AsString;
      vTexto := vTexto + ', para ' +  DM1.tCliente2Nome.AsString + ', ';
      if DM1.tCliente2Pessoa.AsString = 'J' then
        vTexto := vTexto + ' CNPJ:'
      else
        vTexto := vTexto + ' CPF:';
      vTexto := vTexto + DM1.tCliente2CgcCpf.AsString;
      if Trim(DM1.tCliente2InscrEst.AsString) <> '' then
        vTexto := vTexto + ' Inscr.Est: ' + DM1.tCliente2InscrEst.AsString;
      vTexto := vTexto + ' End: ' + DM1.tCliente2Endereco.AsString + ',' + DM1.tCliente2NumEnd.AsString;
      if DM1.tCidade.Locate('Codigo',DM1.tCliente2CodCidade.AsInteger,[loCaseInsensitive]) then
        vTexto := vTexto + ',' + DM1.tCidadeNome.AsString + ' - ' + DM1.tCidadeEstado.AsString;
      vTexto := vTexto + ', cujas mercadorias serao entregues por sua conta e ordem ao destinatario para industrializacao.)';
    end;
    if vTexto <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);
  end;
}

  //NFe 2.00
  if (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '3') or
     (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5')  then
  begin
    if Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2' then
      vTexto := '*(FS - '
    else
    if Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '3' then
      vTexto := '*(SCAN - '
    else
    if Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5' then
      vTexto := '*(FS-DA - ';
    vTexto := 'Data e Hora de Entrada em Contingencia:' + DM1.tNotaFiscalDtContingencia.AsString + ' ' + DM1.tNotaFiscalHrContingencia.AsString;
    vTexto := vTexto + ' - Justificativa de Entrada em Contingencia: '  + DM1.tNotaFiscalMotivoContingencia.AsString + ')*';
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;
  
  //22/12/2015
  //Dados do ICMS UF Destino
  vTexto := '';
  if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_ICMS_FCP.AsFloat)) > 0 then
    vTexto := 'Vlr. ICMS Fundo de Combate a Pobreza: ' + FormatFloat('###,###,##0.00',DM1.tNotaFiscalVLR_ICMS_FCP.AsFloat);
  if (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_ICMS_UF_DEST.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVLR_ICMS_UF_REMET.AsFloat)) > 0) then
  begin
    if vTexto <> '' then
      vTexto := vTexto + ', ';
    vTexto := vTexto + 'Vlr.ICMS UF Dest.: ' + FormatFloat('###,###,##0.00',DM1.tNotaFiscalVLR_ICMS_UF_DEST.AsFloat);
    vTexto := vTexto + ', Vlr.ICMS UF Remet.: ' + FormatFloat('###,###,##0.00',DM1.tNotaFiscalVLR_ICMS_UF_REMET.AsFloat);
  end;
  if trim(vTexto) <> '' then
    Grava_DadosAdicionaisNFe('('+vTexto+')',0);
  //***********
end;

procedure Grava_DadosAdicionaisNFe(DadosAdi: String; Tipo: Integer);
begin
  if fNFe.mDadosAdicionaisNFe.State in [dsBrowse] then
  begin
    DadosAdi := fNFe.TirarAcento(DadosAdi);
    fNFe.mDadosAdicionaisNFe.Edit;
    fNFe.mDadosAdicionaisNFeObs.Value := fNFe.mDadosAdicionaisNFeObs.Value + DadosAdi;
    if tipo = 1 then
      fNFe.mDadosAdicionaisNFeObsAux.Value := fNFe.mDadosAdicionaisNFeObsAux.Value + DadosAdi;
    if Copy(fNFe.mDadosAdicionaisNFeObs.Value,Length(fNFe.mDadosAdicionaisNFeObs.Value),1) <> ' ' then
      fNFe.mDadosAdicionaisNFeObs.Value := fNFe.mDadosAdicionaisNFeObs.Value + ' ';
    fNFe.mDadosAdicionaisNFeObs.Value := TrimLeft(fNFe.mDadosAdicionaisNFeObs.Value);
    fNFe.mDadosAdicionaisNFe.Post;
  end;
end;

procedure Procura_ProdCliente;
begin
  vCodProdutoNfe := '';
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.SetKey;
  DM1.tProdutoCodigo.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
  if DM1.tProduto.GotoKey then
  begin
    if vCodProdutoNFe = '' then
      if DM1.tProdutoCli.Locate('CodCor;CodCliente',
         VarArrayOf([DM1.tNotaFiscalItensCodCor.AsInteger,DM1.tNotaFiscalCodCli.AsInteger]),[locaseinsensitive]) then
        vCodProdutoNFe := DM1.tProdutoCliCodProdCli.AsString;
    if copy(vCodProdutoNFe,Length(vCodProdutoNFe),1) = '.' then
      Delete(vCodProdutoNFe,Length(vCodProdutoNFe),1);
  end;
end;

procedure Monta_mItensNFe;
var
  Texto1, texto2, vTextoTriang, vNomeTriang : String;
  vItemNFe : Integer;
  vTextoDesonerado : String;  
begin
  DM1.tProduto.IndexFieldNames       := 'Codigo';
  DM1.tSitTributaria.IndexFieldNames := 'Codigo';
  vItemNFe := 0;
  fNFe.mAuxDadosNFe.EmptyDataSet;
  fNFe.mItensNFe.EmptyDataSet;
  fNFe.mDadosAdicionaisNFe.EmptyDataSet;
  //NFe 2.00
  fNFe.mNotaDevolvidaNFe.EmptyDataSet;

  //21/09/2010
  if DM1.tNotaFiscalNumSeq.AsInteger <> DMNotaFiscal.vNumSeqNFe then
  begin
    ShowMessage('Itens diferente da nota, retornar a tela da nota e enviar novamente!');
    exit;
  end;

  vVlr_Trib_Itens  := 0;
  vPerc_Trib_2     := False;
  vTextoNumNotaNFe := '';
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
    begin
      vTextoDetNFe := '';
      inc(vItemNFe);
      if not fNFe.mAuxDadosNFe.Locate('Tipo;Codigo',VarArrayOf(['SIT',DM1.tNotaFiscalItensSitTrib.AsString]),[locaseinsensitive]) then
        Grava_mAuxDadosNFe('SIT',DM1.tNotaFiscalItensSitTrib.AsString);
      if not fNFe.mAuxDadosNFe.Locate('Tipo;Codigo',VarArrayOf(['CFI',DM1.tNotaFiscalItensClasFiscal.AsString]),[locaseinsensitive]) then
        Grava_mAuxDadosNFe('CFI',DM1.tNotaFiscalItensClasFiscal.AsString);
      if not fNFe.mAuxDadosNFe.Locate('Tipo;Codigo',VarArrayOf(['NAT',DM1.tNotaFiscalItensNatOper.AsString]),[locaseinsensitive]) then
        Grava_mAuxDadosNFe('NAT',DM1.tNotaFiscalItensNatOper.AsString);
      DM1.tProduto.FindKey([DM1.tNotaFiscalItensCodProduto.AsInteger]);
      //Lei 12.741/12
      {if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Maior)) > 0) and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPerc_Tributo.AsFloat)) > 0) and
         (StrToFloat(FormatFloat('0.00',vPerc_Trib_Maior)) <> StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPerc_Tributo.AsFloat))) then
        vPerc_Trib_2 := True;
      if DM1.tNotaFiscalItensPerc_Tributo.AsFloat > vPerc_Trib_Maior then
        vPerc_Trib_Maior := DM1.tNotaFiscalItensPerc_Tributo.AsFloat;
      if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlr_Tributo.AsFloat)) > 0 then
        vVlr_Trib_Itens := StrToFloat(FormatFloat('0.00',vVlr_Trib_Itens + DM1.tNotaFiscalItensVlrTotal.AsFloat));}
      //Lei 12.741/12
      if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlr_Tributo.AsFloat)) > 0 then
      begin
        if StrToFloat(FormatFloat('0.00',vVlr_Trib_Estadual)) > 0 then
        begin
          if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Estadual)) <> StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_ESTADUAL.AsFloat)))
            and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_ESTADUAL.AsFloat)) <> 0) then
            vPerc_Trib_Estadual := 0
        end
        else
          vPerc_Trib_Estadual := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_ESTADUAL.AsFloat));
        if DM1.tNotaFiscalItensPERC_TRIBUTO_ESTADUAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
          vVlr_Trib_Estadual := StrToFloat(FormatFloat('0.00',vVlr_Trib_Estadual + DM1.tNotaFiscalItensVlrTotal.AsFloat));

        if StrToFloat(FormatFloat('0.00',vVlr_Trib_Federal)) > 0 then
        begin
          if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Federal)) <> StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_FEDERAL.AsFloat)))
            and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_FEDERAL.AsFloat)) <> 0) then
            vPerc_Trib_Federal := 0
        end
        else
          vPerc_Trib_Federal := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_FEDERAL.AsFloat));
        if DM1.tNotaFiscalItensPERC_TRIBUTO_FEDERAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
          vVlr_Trib_Federal := StrToFloat(FormatFloat('0.00',vVlr_Trib_Federal + DM1.tNotaFiscalItensVlrTotal.AsFloat));

        if StrToFloat(FormatFloat('0.00',vVlr_Trib_Municipal)) > 0 then
        begin
          if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Municipal)) <> StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_MUNICIPAL.AsFloat)))
            and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_MUNICIPAL.AsFloat)) <> 0) then
            vPerc_Trib_Municipal := 0
        end
        else
          vPerc_Trib_Municipal := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensPERC_TRIBUTO_MUNICIPAL.AsFloat));
        if DM1.tNotaFiscalItensPERC_TRIBUTO_MUNICIPAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
          vVlr_Trib_Municipal := StrToFloat(FormatFloat('0.00',vVlr_Trib_Municipal + DM1.tNotaFiscalItensVlrTotal.AsFloat));
        vVlr_Trib_Itens := StrToFloat(FormatFloat('0.00',vVlr_Trib_Itens + DM1.tNotaFiscalItensVlrTotal.AsFloat));
      end;

      fNFe.mItensNFe.Insert;
      fNFe.mItensNFeTipoReg.AsString       := 'P';
      fNFe.mItensNFeFilial.AsInteger       := DM1.tNotaFiscalFilial.AsInteger;
      fNFe.mItensNFeNumNota.AsInteger      := DM1.tNotaFiscalNumNota.AsInteger;
      fNFe.mItensNFeItemNota.AsInteger     := vItemNFe;
      fNFe.mItensNFeCodNatOper.AsString    := DM1.tNotaFiscalItenslkCodNatOper.AsString;
      //ProdMat = 'N' é cadastrado dentro do fOutrosServicosNota
      if DM1.tProdutoProdMat.AsString = 'N' then
        begin
          fNFe.mItensNFeTipoReg.AsString    := 'O';
          fNFe.mItensNFeCodProduto.AsString := 'CFOP' + DM1.tNotaFiscalItenslkCodNatOper.AsString;
        end
      else
        begin
          //NFe 2.00
          fNFe.mItensNFeCodProduto.AsString := DM1.tNotaFiscalItensCodProduto.AsString;
          if DM1.tNotaFiscalItensCodCor.AsInteger > 0 then
            fNFe.mItensNFeCodProduto.AsString := fNFe.mItensNFeCodProduto.AsString + '.' + DM1.tNotaFiscalItensCodCor.AsString;
        end;
      texto2 := '';
      if (DM1.tProdutoProdMat.AsString = 'P') and (DM1.tParametrosImpRefNota.AsBoolean) then
        Texto2 := 'Ref. ' + DM1.tNotaFiscalItensReferencia.AsString + ' - ';
      fNFe.mItensNFeNomeProduto.AsString    := fNFe.TirarAcento(DM1.tNotaFiscalItensDescricao.AsString + ' ' + texto2 + DM1.tNotaFiscalItenslkNomeCor.AsString);
      fNFe.mItensNFeQtd.AsFloat             := DM1.tNotaFiscalItensQtd.AsFloat;
      fNFe.mItensNFeUnidade.AsString        := DM1.tNotaFiscalItensUnidade.AsString;
      fNFe.mItensNFeVlrUnitario.AsFloat     := DM1.tNotaFiscalItensVlrUnit.AsFloat;
      //NFe 2.00 o campo DM1.tNotaFiscalItensVlrDesconto.AsFloat, foi incluido 21/02/2011
      fNFe.mItensNFeVlrTotal.AsFloat       := DM1.tNotaFiscalItensVlrTotal.AsFloat
                                            + DM1.tNotaFiscalItensVlrDesconto.AsFloat
                                            + DM1.tNotaFiscalItensVlrDescontoRateio.AsFloat;
      if DM1.tParametrosSomarNoProdFrete.AsBoolean then
        fNFe.mItensNFeVlrTotal.AsFloat := DM1.tNotaFiscalItensVlrTotal.AsFloat + DM1.tNotaFiscalItensVlrFrete.AsFloat;
      if DM1.tParametrosSomarNoProdOutrasDesp.AsBoolean then
        fNFe.mItensNFeVlrTotal.AsFloat := DM1.tNotaFiscalItensVlrTotal.AsFloat + DM1.tNotaFiscalItensVlrOutrasDespesas.AsFloat;
      if DM1.tParametrosSomarNoProdSeguro.AsBoolean then
        fNFe.mItensNFeVlrTotal.AsFloat := DM1.tNotaFiscalItensVlrTotal.AsFloat + DM1.tNotaFiscalItensVlrSeguro.AsFloat;
      //***********

      fNFe.mItensNFeAliqIcms.AsFloat        := DM1.tNotaFiscalItensIcms.AsFloat;
      fNFe.mItensNFeAliqIpi.AsFloat         := DM1.tNotaFiscalItensIpi.AsFloat;
      fNFe.mItensNFeVlrIcms.AsFloat         := DM1.tNotaFiscalItensVlrIcms.AsFloat;
      fNFe.mItensNFeVlrIpi.AsFloat          := DM1.tNotaFiscalItensVlrIpi.AsFloat;
      fNFe.mItensNFeBaseIcmsSimples.AsFloat   := DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat;
      fNFe.mItensNFeVlrIcmsSimples.AsFloat    := DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat;
      fNFe.mItensNFeVlrPis.AsFloat            := DM1.tNotaFiscalItensVlrPis.AsFloat;
      fNFe.mItensNFeVlrCofins.AsFloat         := DM1.tNotaFiscalItensVlrCofins.AsFloat;
      fNFe.mItensNFeVlrFrete.AsFloat          := DM1.tNotaFiscalItensVlrFrete.AsFloat;
      fNFe.mItensNFeVlrSeguro.AsFloat         := DM1.tNotaFiscalItensVlrSeguro.AsFloat;
      fNFe.mItensNFeVlrOutrasDespesas.AsFloat := DM1.tNotaFiscalItensVlrOutrasDespesas.AsFloat;
      fNFe.mItensNFeSomaVlrTotalProd.AsBoolean := DM1.tNotaFiscalItensSomaVlrTotalProd.AsBoolean;

      //Lei 12.741/12
      fNFe.mItensNFeVlrTributos.AsFloat           := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlr_Tributo.AsFloat));
      fNFe.mItensNFeVlrTributos_Estadual.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVLR_TRIBUTOS_ESTADUAL.AsFloat));
      fNFe.mItensNFeVlrTributos_Federal.AsFloat   := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVLR_TRIBUTOS_FEDERAL.AsFloat));
      fNFe.mItensNFeVlrTributos_Municipal.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVLR_TRIBUTOS_MUNICIPAL.AsFloat));
      //*************

      fNFe.mItensNFeCodSitTrib.AsString    := DM1.tNotaFiscalItensOrigemProd.AsString + DM1.tNotaFiscalItenslkSitTributaria.AsString;
      fNFe.mItensNFeAliqSitTrib.AsFloat    := DM1.tNotaFiscalItenslkPercSitTributaria.AsFloat;
      fNFe.mItensNFeClasFiscalRed.AsString := DM1.tNotaFiscalItensClasFiscal.AsString;
      fNFe.mItensNFeClasFiscal.AsString    := DM1.tNotaFiscalItensClasFiscal.AsString;
      fNFe.mItensNFePedidoCliente.AsString := DM1.tNotaFiscalItensNumOC.AsString;
      //3.10 
      fNFe.mItensNFeItemPedido.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
      //******
      fNFe.mItensNFeVlrDesconto.AsFloat    := DM1.tNotaFiscalItensVlrDesconto.AsFloat + DM1.tNotaFiscalItensVlrDescontoRateio.AsFloat;

      fNFe.mItensNFeBaseICMS.AsFloat       := DM1.tNotaFiscalItensBaseIcms.AsFloat;
      fNFe.mItensNFePercRedICMS.AsFloat    := 0;
      fNFe.mItensNFeCodCSTIPI.AsString     := DM1.tNotaFiscalItensCodCSTIPI.AsString;
      if (fNFe.mItensNFeCodCSTIPI.AsString = '') and (DM1.tNotaFiscalSaidaEntrada.AsString = 'E') then
        fNFe.mItensNFeCodCSTIPI.AsString   := '02'
      else
      if (fNFe.mItensNFeCodCSTIPI.AsString = '') and (DM1.tNotaFiscalSaidaEntrada.AsString = 'S') then
        fNFe.mItensNFeCodCSTIPI.AsString   := '52';
      fNFe.mItensNFeCodCofins.AsString  := DM1.tNotaFiscalItensCodCofins.AsString;
      fNFe.mItensNFeCodPis.AsString     := DM1.tNotaFiscalItensCodPis.AsString;
      fNFe.mItensNFeTipoPis.AsString    := DM1.tNotaFiscalItensTipoPis.AsString;
      fNFe.mItensNFeTipoCofins.AsString := DM1.tNotaFiscalItensTipoCofins.AsString;

      //Verifica % de redução da situação tributária
      if DM1.tSitTributaria.FindKey([DM1.tNotaFiscalItensSitTrib.AsInteger]) then
        fNFe.mItensNFePercRedICMS.AsFloat  := 100 - StrToFloat(FormatFloat('0.0000',DM1.tSitTributariaSitTributaria.AsFloat));
      if Trim(DM1.tProdutoComplemento.AsString) <> '' then
        vTextoDetNFe := fNFE.TirarAcento(Dm1.tProdutoComplemento.AsString) + ' ';
      Procura_ProdCliente;
      if vCodProdutoNFe <> '' then
        texto2 := 'Prod.Cliente:';
      {if (DM1.tNotaFiscallkImpItemNotaPorTamanho.AsBoolean) and (DM1.tNotaFiscalGrade.RecordCount < 1) then
        begin
          if (DM1.tNotaFiscalItensNumOC.AsString <> '') then
            vTextoDetNFe := vTextoDetNFe + 'OC:' + DM1.tNotaFiscalItensNumOC.AsString + ' ';
          if DM1.tNotaFiscalItensNumOS.AsString <> '' then
             vTextoDetNFe := vTextoDetNFe + 'OS:' + DM1.tNotaFiscalItensNumOS.AsString + ' ';
          if (DM1.tNotaFiscalItensPlano.AsString <> '') then
            vTextoDetNFe := vTextoDetNFe + 'Plano:' + DM1.tNotaFiscalItensPlano.AsString + ' ';
          if (DM1.tNotaFiscalItensFabrica.AsString <> '') then
            vTextoDetNFe := vTextoDetNFe + 'Fab:' + DM1.tNotaFiscalItensFabrica.AsString + ' ';
        end;}

      vNomeTriang  := '';
      vTextoTriang := '';
      if DM1.tNotaFiscalNDevolvida.RecordCount > 0 then
        begin
          texto2 := '';
          DM1.tNotaFiscalNDevolvida.First;
          while not DM1.tNotaFiscalNDevolvida.Eof do
            begin
              if DM1.tNotaFiscalNDevolvidalkCgcFornecedor.AsString <> DM1.tNotaFiscallkCgcCli.AsString then
                begin
                  if vTextoTriang = '' then
                    vTextoTriang := '[Ret.Ref.Nota '
                  else
                    vTextoTriang := vTextoTriang + ',';
                  vNomeTriang := DM1.tNotaFiscalNDevolvidalkNomeFornecedor.AsString;
                end;

              if texto2 = '' then
                texto2 := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsString
              else
                texto2 := texto2 + ',' + DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsString;

              if DMNotaFiscal.tNEntradaItens.Locate('Filial;CodForn;NumNEntr;Item',VarArrayOf([DM1.tNotaFiscalNDevolvidaFilial.AsInteger,DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger,
                 DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger,DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger]),[locaseinsensitive]) then
                begin
                  if StrToFloat(FormatFloat('0.0000000',DMNotaFiscal.tNEntradaItensQtdRestante.AsFloat)) > 0 then
                    texto2 := texto2 + ' Parcial'
                  else
                    texto2 := texto2 + ' Total';
                end;

              if DM1.tNotaFiscalNDevolvidalkCgcFornecedor.AsString <> DM1.tNotaFiscallkCgcCli.AsString then
                vTextoTriang := vTextoTriang + Texto2;
              DM1.tNotaFiscalNDevolvida.Next;
            end;
          vTextoDetNFe  := vTextoDetNFe + '(Notas Dev.:' + texto2 + ') ';
          if vTextoTriang <> '' then
            vTextoDetNFe := vTextoDetNFe + vTextoTriang + ' de ' + vNomeTriang + '] ';
        end;
      if (not DM1.tNotaFiscallkImpItemNotaPorTamanho.AsBoolean) and (DM1.tNotaFiscalGrade.RecordCount > 0) then
        begin
          texto1 := '';
          DM1.tNotaFiscalGrade.First;
          while not DM1.tNotaFiscalGrade.Eof do
            begin
              if DM1.tNotaFiscalGradeQtd.AsFloat > 0 then
                texto1 := texto1 + DM1.tNotaFiscalGradelkTamanho.AsString + '/' + DM1.tNotaFiscalGradeQtd.AsString + ' ';
              DM1.tNotaFiscalGrade.Next;
            end;
          vTextoDetNFe := vTextoDetNFe + '(' + Texto1 + ') ';
          Texto1    := '';
          {if (DM1.tNotaFiscalItensNumOC.AsString <> '') then
            Texto1 := Texto1 + 'OC:' + DM1.tNotaFiscalItensNumOC.AsString + ' ';
          if (DM1.tNotaFiscalItensNumOS.AsString <> '') then
            Texto1 := Texto1 + 'OS:' + fNFe.TirarAcento(DM1.tNotaFiscalItensNumOS.AsString) + ' ';
          if (DM1.tNotaFiscalItensPlano.AsString <> '') then
            Texto1 := Texto1 + 'Plano:' + fNFe.TirarAcento(DM1.tNotaFiscalItensPlano.AsString) + ' ';
          if (DM1.tNotaFiscalItensFabrica.AsString <> '') then
            Texto1 := Texto1 + 'Fab:' + fNFe.TirarAcento(DM1.tNotaFiscalItensFabrica.AsString) + ' ';}
          if texto1 <> '' then
            vTextoDetNFe := vTextoDetNFe + '(' + Texto1 + ')';
        end;
      if vTextoDetNFe <> '' then
        fNFe.mItensNFeInfAdicionais.Value := vTextoDetNFe + ' ';
      //14/09/2009 foi incluido para gravar a obsauxiliar aqui neste campo
      if Trim(DM1.tNotaFiscalItensObsComplementar.AsString) <> '' then
        begin
          if Trim(fNFe.mItensNFeInfAdicionais.Value) = '' then
            fNFe.mItensNFeInfAdicionais.Value := DM1.tNotaFiscalItensObsComplementar.AsString
          else
            fNFe.mItensNFeInfAdicionais.Value := fNFe.mItensNFeInfAdicionais.Value + ' (' + DM1.tNotaFiscalItensObsComplementar.AsString + ')';
        end;
      Texto1 := '';
      if (DM1.tNotaFiscalItensNumOC.AsString <> '') then
        Texto1 := Texto1 + 'OC:' + DM1.tNotaFiscalItensNumOC.AsString + ' ';
      if (DM1.tNotaFiscalItensNumOS.AsString <> '') then
        Texto1 := Texto1 + 'OS:' + fNFe.TirarAcento(DM1.tNotaFiscalItensNumOS.AsString) + ' ';
      if texto1 <> '' then
      begin
        if Trim(fNFe.mItensNFeInfAdicionais.Value) = '' then
          fNFe.mItensNFeInfAdicionais.Value := Texto1
        else
          fNFe.mItensNFeInfAdicionais.Value := fNFe.mItensNFeInfAdicionais.Value + ' (' + Texto1 + ')';
      end;
      //Lei 12.741/12
      if (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlr_Tributo.AsFloat)) > 0) and (DM1.tParametrosLei_Transp_Imp_Item.AsString = 'S') then
        fNFe.mItensNFeInfAdicionais.Value := fNFe.mItensNFeInfAdicionais.Value + fnc_monta_Lei_Transparencia_Itens;

      //3.10  16/03/2015
      vTextoDesonerado := '';
      //fDMNFe.mItensNFePercIcmsSubstInterno.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat));
      fNFe.mItensNFeVlrIcmsDesonerado.AsFloat     := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVLR_ICMSDESONERADO.AsFloat));
      fNFe.mItensNFeCodMotivoDesonerado.AsInteger := DM1.tNotaFiscalItensCOD_DESONERACAO.AsInteger;
      if (DM1.tParametrosVersaoNFe.AsString = '3.10') and (DM1.tParametrosUSA_DESONERACAO.AsString = 'S') then
      begin
        if (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVLR_ICMSDESONERADO.AsFloat)) > 0) and (DM1.tNotaFiscalItensCOD_DESONERACAO.AsInteger > 0) then
          vTextoDesonerado := '(Valor Dispensado R$ ' + FormatFloat('###,###,##0.00',DM1.tNotaFiscalItensVLR_ICMSDESONERADO.AsFloat)
                            + ', Motivo da Desoneração do ICMS ' + DM1.tNotaFiscalItensCOD_DESONERACAO.AsString + ')';
      end;
      if trim(vTextoDesonerado) <> '' then
        fNFe.mItensNFeInfAdicionais.Value := fNFe.mItensNFeInfAdicionais.Value + vTextoDesonerado;
      fNFe.mItensNFeVlrIcmsOperacao.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVLR_ICMSOPERACAO.AsFloat));
      //fNFe.mItensNFePercTribIcms.AsFloat    := StrToFloat(FormatFloat('0.0000',DM1. fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat));
      if DM1.tSitTributaria.Locate('Codigo',DM1.tNotaFiscalItensSitTrib.AsInteger,[loCaseInsensitive]) then
        fNFe.mItensNFePercTribIcms.AsFloat := StrToFloat(FormatFloat('0.0000',DM1.tSitTributariaSitTributaria.AsFloat));
      //*************

      //3.10   24/03/2015
      fNFe.mItensNFeInfAdicionais.Value := trim(fNFe.mItensNFeInfAdicionais.Value);
      //**************

      //22/12/2015
      if DM1.tNotaFiscalItensID_ENQIPI.AsInteger <= 0 then
        fNFe.mItensNFeCod_EnqIPI.AsString := '999'
      else
      if DM1.tNotaFiscalItensID_ENQIPI.AsInteger > 0 then
      begin
        DMTabEnqIPI.Abre_Tab_EnqIPI(DM1.tNotaFiscalItensID_ENQIPI.AsInteger);
        fNFe.mItensNFeCod_EnqIPI.AsString := DMTabEnqIPI.cdsEnqIPICODIGO.AsString;
      end;
      //*************

      //22/12/2015
      fNFe.mItensNFePerc_ICMS_FCP.AsFloat      := StrToFloat(FormatFloat('0.000',DM1.tNotaFiscalItensPERC_ICMS_FCP.AsFloat));
      fNFe.mItensNFePerc_ICMS_UF_Dest.AsFloat  := StrToFloat(FormatFloat('0.000',DM1.tNotaFiscalItensPERC_ICMS_UF_DEST.AsFloat));
      fNFe.mItensNFePerc_ICMS_Partilha.AsFloat := StrToFloat(FormatFloat('0.000',DM1.tNotaFiscalItensPERC_ICMS_PARTILHA.AsFloat));
      fNFe.mItensNFeVlr_ICMS_FCP.AsFloat       := StrToFloat(FormatFloat('0.000',DM1.tNotaFiscalItensVLR_ICMS_FCP.AsFloat));
      fNFe.mItensNFeVlr_ICMS_UF_Dest.AsFloat   := StrToFloat(FormatFloat('0.000',DM1.tNotaFiscalItensVLR_ICMS_UF_DEST.AsFloat));
      fNFe.mItensNFeVlr_ICMS_UF_Remet.AsFloat  := StrToFloat(FormatFloat('0.000',DM1.tNotaFiscalItensVLR_ICMS_UF_REMET.AsFloat));
      //*******

      fNFe.mItensNFe.Post;

      if DM1.tParametrosEnviarNotasBenefNaNFe.AsBoolean then
        Le_tNotaFiscalNDevolvida;

      DM1.tNotaFiscalItens.Next;
    end;
  fNFe.mItensNFe.First;

  if not fNFe.mAuxDadosNFe.Locate('Tipo;Codigo',VarArrayOf(['NAT',DM1.tNotaFiscalCodNatOper.AsInteger]),[locaseinsensitive]) then
    Grava_mAuxDadosNFe('NAT',DM1.tNotaFiscalCodNatOper.AsString);
end;

end.
