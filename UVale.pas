unit UVale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Buttons, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, RXLookup, DbTables, Db, RxCalc, ToolEdit, CurrEdit, MemTable, DBFilter, Math, RXDBCtrl, rsDBUtils;

type
  TfVale = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    Bevel3: TBevel;
    Bevel5: TBevel;
    BitBtn7: TBitBtn;
    tPedidoItem: TTable;
    tPedidoItemPedido: TIntegerField;
    tPedidoItemItem: TIntegerField;
    tPedidoItemCodProduto: TIntegerField;
    tPedidoItemCodCor: TIntegerField;
    tPedidoItemCodGrade: TIntegerField;
    tPedidoItemQtdPares: TFloatField;
    tPedidoItemQtdParesFat: TFloatField;
    tPedidoItemQtdParesRest: TFloatField;
    tPedidoItemPreco: TFloatField;
    tPedidoItemVlrTotal: TFloatField;
    tPedidoItemCancelado: TBooleanField;
    tPedidoItemCopiado: TBooleanField;
    tPedidoItemSelecionado: TBooleanField;
    tPedidoItemQtdParesCanc: TFloatField;
    tPedidoItemVlrDesconto: TFloatField;
    tPedidoItemSitTrib: TSmallintField;
    Label53: TLabel;
    RxDBGrid1: TRxDBGrid;
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoItemQtdFatMan: TFloatField;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit35: TDBEdit;
    SpeedButton23: TSpeedButton;
    BitBtn6: TBitBtn;
    StaticText1: TStaticText;
    BitBtn14: TBitBtn;
    DBDateEdit2: TDBDateEdit;
    BitBtn18: TBitBtn;
    dsPedidoItem: TDataSource;
    RxLabel2: TRxLabel;
    DBEdit39: TDBEdit;
    SpeedButton5: TSpeedButton;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo8Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vFaturado : Boolean;
    Texto1, Texto2 : string;
    F : TextFile;
    procedure Baixa_Estoque;
    procedure Habilita_Desabilita;
    procedure Incrementa_Estoque;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
    procedure Le_Itens;
  public
    { Public declarations }
    procedure Verifica_UF;
  end;

var
  fVale: TfVale;
  vSiglaUF : String[2];
  vLetra : String[3];
  vItemVale : Integer;
  vCodSitTrib, Linha : Integer;
  vAliqIcms : Real;


implementation

uses UDM1, UDM2, UValeItens, UCliente, UUf, UProduto, UBuscaPedido, UEscImpressora,
     USitTributaria, URelVale, UConsVale, UVerificaCliente, USenhaControle;

{$R *.DFM}

procedure TfVale.Le_Itens;
begin
  vFaturado := False;
  DM1.tValeItens.First;
  while not DM1.tValeItens.Eof do
    begin
      if DM1.tValeItensQtdFaturada.AsFloat > 0 then
        begin
          vFaturado := True;
          DM1.tValeItens.Last;
        end;
      DM1.tValeItens.Next;
    end;
  if vFaturado then
    ShowMessage('Vale não pode ser excluido, pois já foi faturado!');
end;

procedure TfVale.Imprime_Rodape;
begin
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'                                                                                               Vlr. Total ==>> ' + FormatFloat('###,###,##0.00',Dm1.tValeVlrTotal.AsFloat));
  Writeln(F);
  Writeln(F);
  Writeln(F);
  Writeln(F,'            ___________________________________________ ');
  Writeln(F,'               ' + Dm1.tValelkNomeCliente.AsString);
  linha := linha + 7;
  while linha < 33 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfVale.Imprime_Detalhe;
var
  i : Integer;
begin
  Texto2 := Dm1.tValeItensItem.AsString;
  for i := 1 to 4 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto2 + '   ';

  Texto2 := Dm1.tValeItenslkReferencia.AsString;
  for i := 1 to 17 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + texto2;

  Texto2 := Dm1.tValeItenslkNomeProduto.AsString;
  for i := 1 to 37 - length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;

  Texto2 := Dm1.tValeItensNumOC.AsString;
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := Texto1 + Texto2;

  Texto2 := Dm1.tValeItensQtd.AsString;
  for i := 1 to 12 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := Texto1 + Texto2 + '     ';

  Texto2 := Dm1.tValeItensUnidade.AsString;
  for i := 1 to 9 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := Texto1 + Texto2;

  Texto2 := FormatFloat('0.00',Dm1.tValeItensVlrUnitario.AsFloat);
  for i := 1 to 8 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := Texto1 + Texto2;
  
  Texto2 := FormatFloat('0.00',Dm1.tValeItensVlrTotal.AsFloat);
  for i := 1 to 17 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := Texto1 + Texto2;
  writeln(F,Texto1);

  Linha := Linha + 1;
end;

procedure TfVale.Imprime_Cabecalho;
var
  i : Integer;
begin
  Linha := 0;
{  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;}
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  Writeln(F,Dm1.tEmpresaEmpresa.AsString);
  Writeln(F,'Endereço: ' + Dm1.tEmpresaEndereco.AsString);
  Texto2 := 'Cep: ' + Dm1.tEmpresaCep.AsString;
  for i := 1 to 35 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2 + 'Bairro: ' + Dm1.tEmpresaBairro.AsString;
  Writeln(F,Texto1);

  Texto2 := 'Cidade: ' + Dm1.tEmpresaCidade.AsString;
  for i := 1 to 39 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'UF: ' + Dm1.tEmpresaEstado.AsString;
  for i := 1 to 13 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
 Texto1 := Texto1 + Texto2 + '                     Fone:' + Dm1.tEmpresaTel.AsString;
 Writeln(F,Texto1);

  Texto2 := 'CNPJ: ' + Dm1.tEmpresaCgc.AsString;
  for i := 1 to 23 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'Insc. Estadual: ' + Dm1.tEmpresaInscr.AsString;
  for i := 1 to 20 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '                    Fax: ' + Dm1.tEmpresaFax.AsString;
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'    N° DO VALE: ' + Dm1.tValeNumVale.AsString + '                                                             DT. EMISSAO: ' + Dm1.tValeDtEmissao.AsString);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');

  Writeln(F,Dm1.tClienteNome.AsString);
  Writeln(F,'Endereço: ' + Dm1.tClienteEndereco.AsString);
  Texto2 := 'Cep: ' + Dm1.tClienteCep.AsString;
  for i := 1 to 35 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2 + 'Bairro: ' + Dm1.tClienteBairro.AsString;
  Writeln(F,Texto1);

  Texto2 := 'Cidade: ' + Dm1.tClientelkCidade.AsString;
  for i := 1 to 39 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'UF: ' + Dm1.tClienteUf.AsString;
  for i := 1 to 13 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
 Texto1 := Texto1 + Texto2 + '                     Fone:' + Dm1.tClienteTelefone.AsString;
 Writeln(F,Texto1);

  Texto2 := 'CNPJ: ' + Dm1.tClienteCgcCpf.AsString;
  for i := 1 to 23 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'Insc. Estadual: ' + Dm1.tClienteInscrEst.AsString;
  for i := 1 to 20 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '                    Fax: ' + Dm1.tClienteFax.AsString;
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F);
  Writeln(F,' Item  Referencia       Produto                              O.C                   Quantidade   Unid.  Vlr.Unitario       Vlr. Total');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Linha := 17;
end;

procedure TfVale.Verifica_UF;
begin
  vCodSitTrib := 0;
  DM1.tUF.SetKey;
  DM1.tUFSigla.AsString := DM1.tValelkUF.AsString;
  if DM1.tUF.GotoKey then
    begin
      vAliqICMS   := DM1.tUFPercentual.AsFloat;
      vCodSitTrib := DM1.tUFCodSitTrib.AsInteger;
    end;
  vSiglaUF := DM1.tValelkUF.AsString;
end;

procedure TfVale.Habilita_Desabilita;
begin
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  Panel1.Enabled            := not(Panel1.Enabled);
  Panel6.Enabled            := not(Panel6.Enabled);
  BitBtn1.Enabled           := not(BitBtn1.Enabled);
  BitBtn2.Enabled           := not(BitBtn2.Enabled);
  BitBtn3.Enabled           := not(BitBtn3.Enabled);
  BitBtn4.Enabled           := not(BitBtn4.Enabled);
  BitBtn5.Enabled           := not(BitBtn5.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  BitBtn14.Enabled          := not(BitBtn14.Enabled);
end;

procedure TfVale.Baixa_Estoque;
var
  vNumMovEst : Integer;
begin
  DM1.tEstoqueMatMov.Filtered := False;
  DM1.tEstoqueMatMov.Filter   := 'NumNota = '''+DM1.tValeNumVale.AsString+''' and TipoMov = '''+'VAL'+'''';
  DM1.tEstoqueMatMov.Filtered := True;
  DM1.tEstoqueMatMov.First;
  while not DM1.tEstoqueMatMov.Eof do
    DM1.tEstoqueMatMov.Delete;
  DM1.tEstoqueMatMov.Filtered := False;

  DM1.tValeItens.First;
  while not DM1.tValeItens.Eof do
    begin
      if DM1.tValeItensNumMovEst.AsInteger > 0 then
        begin
          DM1.tEstoqueMatMov.SetKey;
          DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tValeItensNumMovEst.AsInteger;
          if DM1.tEstoqueMatMov.GotoKey then
            begin
              DM1.tEstoqueMatMov.Refresh;
              DM2.tEstoqueMatMov2.Refresh;
              DM2.tEstoqueMatMov2.Last;
              vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
            end
          else
            vNumMovEst := DM1.tValeItensNumMovEst.AsInteger;
        end
      else
        begin
          DM1.tEstoqueMatMov.Refresh;
          DM2.tEstoqueMatMov2.Refresh;
          DM2.tEstoqueMatMov2.Last;
          vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
        end;
      DM1.tEstoqueMatMov.Insert;
      DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
      DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tValeItensCodProduto.AsInteger;
      DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tValeItensCodCor.AsInteger;
      DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tValeDtEmissao.AsDateTime;
      DM1.tEstoqueMatMovES.AsString           := 'S';
      DM1.tEstoqueMatMovTipoMov.AsString      := 'VAL';
      DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tValeNumVale.AsInteger;
      DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tValeCodCliente.AsInteger;
      DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tValeItensVlrUnitario.AsFloat;
      DM1.tEstoqueMatMovQtd.AsFloat           := DM1.tValeItensQtd.AsFloat;
      DM1.tEstoqueMatMovQtd2.AsFloat          := StrToFloat(FormatFloat('0.00000',DM1.tValeItensQtd.AsFloat * -1));
      DM1.tEstoqueMatMovUnidade.AsString      := DM1.tValeItensUnidade.AsString;
      DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tValeItensAliqIcms.AsFloat;
      DM1.tEstoqueMatMovPercIpi.AsFloat       := 0;
      DM1.tEstoqueMatMovVlrDesconto.AsFloat   := 0;
      DM1.tEstoqueMatMov.Post;
      DM1.tValeItens.Edit;
      DM1.tValeItensNumMovEst.AsInteger := vNumMovEst;
      DM1.tValeItens.Post;
      DM1.tValeItens.Next;
    end;
end;

procedure TfVale.Incrementa_Estoque;
begin
  DM1.tValeItens.First;
  while not DM1.tValeItens.Eof do
    begin
      DM1.tEstoqueMatMov.SetKey;
      DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tValeItensNumMovEst.AsInteger;
      if DM1.tEstoqueMatMov.GotoKey then
        begin
          DM1.tEstoqueMatMovGrade.First;
          while not DM1.tEstoqueMatMovGrade.Eof do
            DM1.tEstoqueMatMovGrade.Delete;
          DM1.tEstoqueMatMov.Delete;
        end;
      DM1.tValeItens.Next;
    end;
end;

procedure TfVale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);

  Action := CaFree;
end;

procedure TfVale.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfVale.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de clientes!');
end;

procedure TfVale.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
    begin
      fUf := TfUf.Create(Self);
      fUf.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Estados e Alíquotas!');
end;

procedure TfVale.SpeedButton9Click(Sender: TObject);
begin
  if not(DM1.tValeItens.IsEmpty) then
    begin
      if DM1.tValeItensQtdFaturada.AsFloat > 0 then
        ShowMessage('Item já faturado!')
      else
        begin
          if MessageDlg('Deseja realmente excluir este produto do vale?',mtConfirmation,
             [mbOK,mbNo],0) = mrOK then
            begin
              if BitBtn7.Tag = 1 then
                begin
                  fSenhaControle := TfSenhaControle.Create(Self);
                  fSenhaControle.ShowModal;
                end
              else
                DM1.vSenhaControle := DM1.tParametrosSenhaExc.AsString;
              if DM1.vSenhaControle = DM1.tParametrosSenhaExc.AsString then
                begin
                  DM1.tValeVlrTotal.AsFloat  := DM1.tValeVlrTotal.AsFloat - DM1.tValeItensVlrTotal.AsFloat;
                  if DM1.tValeItensNumPedido.AsInteger > 0 then
                    begin
                      DM1.tPedido.IndexFieldNames := 'Pedido';
                      DM1.tPedido.SetKey;
                      DM1.tPedidoPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
                      if DM1.tPedido.GotoKey then
                        begin
                          DM1.tPedido.Edit;
                          DM1.tPedidoQtdParesFat.AsInteger  := DM1.tPedidoQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
                          DM1.tPedidoQtdParesRest.AsInteger := DM1.tPedidoQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
                          DM1.tPedidoQtdFatAut.AsInteger    := DM1.tPedidoQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
                          DM1.tPedidoCopiado.AsBoolean      := False;
                          DM1.tPedido.Post;
                          DM1.tPedidoItem.SetKey;
                          DM1.tPedidoItemPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
                          DM1.tPedidoItemItem.AsInteger   := DM1.tValeItensItemPedido.AsInteger;
                          if DM1.tPedidoItem.GotoKey then
                            begin
                              DM1.tPedidoItem.Edit;
                              DM1.tPedidoItemQtdParesFat.AsInteger  := DM1.tPedidoItemQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
                              DM1.tPedidoItemQtdParesRest.AsInteger := DM1.tPedidoItemQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
                              DM1.tPedidoItemQtdFatAut.AsInteger    := DM1.tPedidoItemQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
                              DM1.tPedidoItemCopiado.AsBoolean      := False;
                              DM1.tPedidoItem.Post;
                              DM1.tPedidoNota.First;
                              while not DM1.tPedidoNota.Eof do
                                begin
                                  if (DM1.tPedidoNotaNumNota.AsInteger = DM1.tValeItensNumVale.AsInteger) and
                                     (DM1.tPedidoNotaItemNota.AsInteger = DM1.tValeItensItem.AsInteger) and
                                     (DM1.tPedidoNotaTipo.AsString = 'V') then
                                     DM1.tPedidoNota.Delete
                                  else
                                    DM1.tPedidoNota.Next;
                                end;
                            end;
                        end;
                    end;
                  DM1.tValeItens.Delete;
                end;
            end;
        end;
    end
  else
    ShowMessage('Não existe item para apagar do vale ou este item já foi faturado!');
end;

procedure TfVale.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if DM1.tUsuarioInsVale.AsBoolean then
    begin
      BitBtn7.Tag := 0;
      vPedido     := 0;
      vItemPedido := 0;
      vCodSitTrib := 0;
      Habilita_Desabilita;
      DM1.tVale.IndexFieldNames := 'NumVale';
      DM1.tVale.Refresh;
      DM1.tVale.Last;
      vNumAux := DM1.tValeNumVale.AsInteger;

      DM1.tVale.Insert;
      DM1.tValeNumVale.AsInteger    := vNumAux + 1;
      DM1.tValeDtEmissao.AsDateTime := Date;
      DM1.tValeFaturado.AsBoolean   := False;
      DM1.tVale.Post;
      DM1.tVale.Edit;
      DBDateEdit2.SetFocus;
      BitBtn18.Visible := False;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfVale.BitBtn2Click(Sender: TObject);
begin
  if (RxDBLookupCombo8.Text = '') and (DBDateEdit2.Date < 1) then
    ShowMessage('Falta informar o cliente e a data de emissão!')
  else
    begin
      RxDBLookupCombo8.Color := clWindow;
      Baixa_Estoque;
      Habilita_Desabilita;
      BitBtn4.Enabled          := False;
      DBEdit35.Enabled         := True;
      BitBtn7.Tag := 0;
      DM1.tVale.Post;
      DM1.tVale.Refresh;
      DM1.tValeItens.Refresh;
    end;
  vItemVale := 0;
end;

procedure TfVale.BitBtn4Click(Sender: TObject);
begin
  if BitBtn7.Tag = 0 then
    begin
      DM1.tValeItens.First;
      while not DM1.tValeItens.Eof do
        begin
          if DM1.tValeItensNumPedido.AsInteger > 0 then
            begin
              DM1.tPedido.IndexFieldNames := 'Pedido';
              DM1.tPedido.SetKey;
              DM1.tPedidoPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
              if DM1.tPedido.GotoKey then
                begin
                  DM1.tPedido.Edit;
                  DM1.tPedidoQtdParesFat.AsInteger  := DM1.tPedidoQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
                  DM1.tPedidoQtdParesRest.AsInteger := DM1.tPedidoQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
                  DM1.tPedidoQtdFatAut.AsInteger    := DM1.tPedidoQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
                  DM1.tPedidoCopiado.AsBoolean      := False;
                  DM1.tPedido.Post;
                  DM1.tPedidoItem.SetKey;
                  DM1.tPedidoItemPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
                  DM1.tPedidoItemItem.AsInteger   := DM1.tValeItensItemPedido.AsInteger;
                  if DM1.tPedidoItem.GotoKey then
                    begin
                      DM1.tPedidoItem.Edit;
                      DM1.tPedidoItemQtdParesFat.AsInteger  := DM1.tPedidoItemQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
                      DM1.tPedidoItemQtdParesRest.AsInteger := DM1.tPedidoItemQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
                      DM1.tPedidoItemQtdFatAut.AsInteger    := DM1.tPedidoItemQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
                      DM1.tPedidoItemCopiado.AsBoolean      := False;
                      DM1.tPedidoItem.Post;
                      DM1.tPedidoNota.First;
                      while not DM1.tPedidoNota.Eof do
                        begin
                          if (DM1.tPedidoNotaNumNota.AsInteger = DM1.tValeItensNumVale.AsInteger) and
                             (DM1.tPedidoNotaItemNota.AsInteger = DM1.tValeItensItem.AsInteger) and
                             (DM1.tPedidoNotaTipo.AsString = 'V') then
                             DM1.tPedidoNota.Delete
                          else
                            DM1.tPedidoNota.Next;
                        end;
                    end;
                end;
            end;
          DM1.tValeItens.Delete;
        end;
      DM1.tVale.Delete;
    end;
  Habilita_Desabilita;
  vItemVale := 0;
  BitBtn18.Visible := DM1.tValeFaturado.AsBoolean;
  RxDBLookupCombo8.Color := clWindow;
end;

procedure TfVale.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tVale.State in [dsBrowse]) then
  begin
    fConsVale := TfConsVale.Create(Self);
    fConsVale.ShowModal;
    BitBtn18.Visible := DM1.tValeFaturado.AsBoolean;
  end;
end;

procedure TfVale.BitBtn7Click(Sender: TObject);
begin
  if DM1.tUsuarioAltVale.AsBoolean then
    begin
      if Dm1.tValeFaturado.AsBoolean then
        ShowMessage('Vale já foi Faturado, não é possível alterar!')
      else
        begin
          vCodSitTrib := 0;
          BitBtn7.Tag := 1;
          Incrementa_Estoque;
          DM1.tVale.Edit;
          Habilita_Desabilita;
          BitBtn4.Enabled := False;
          DBDateEdit2.SetFocus;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfVale.RxDBLookupCombo8Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfVale.RxDBLookupCombo8Click(Sender: TObject);
begin
  Verifica_UF;
end;

procedure TfVale.SpeedButton23Click(Sender: TObject);
var
  vCor : TColor;
begin
  if (DM1.tValeItensItem.AsInteger > 0) and (DM1.tValeItensQtdFaturada.AsFloat <= 0) then
    begin
      vCor := RxDBLookupCombo8.Color;
      RxDBLookupCombo8.Color := clWindow;
      fValeItens := TfValeItens.Create(Self);
      SpeedButton23.Tag := 1;
      vItemVale := DM1.tValeItensItem.AsInteger;
      fValeItens.CurrencyEdit1.AsInteger    := DM1.tValeItensCodProduto.AsInteger;
      fValeItens.RxDBLookupCombo2.KeyValue  := DM1.tValeItensCodProduto.AsInteger;
      fValeItens.RxDBLookupCombo1.KeyValue  := DM1.tValeItensCodProduto.AsInteger;
      if DM1.tValeItensCodCor.AsInteger > 0 then
        fValeItens.RxDBLookupCombo4.KeyValue := DM1.tValeItensCodCor.AsInteger;
      fValeItens.Edit2.Text  := DM1.tValeItensUnidade.AsString;
      fValeItens.CurrencyEdit3.Value  := DM1.tValeItensQtd.AsFloat;
      fValeItens.Edit4.Text  := DM1.tValeItensAliqIcms.AsString;
      fValeItens.Edit5.Text  := DM1.tValeItensAliqIPI.AsString;
      if DM1.tValeItensCodSitTrib.AsInteger > 0 then
        fValeItens.RxDBLookupCombo13.KeyValue := DM1.tValeItensCodSitTrib.AsInteger;
      fValeItens.CurrencyEdit4.Value := DM1.tValeItensVlrUnitario.AsFloat;
      fValeItens.CurrencyEdit5.Value := DM1.tValeItensVlrTotal.AsFloat;
      vItemPedido                  := DM1.tValeItensItemPedido.AsInteger;
      vNumPedido                   := DM1.tValeItensNumPedido.AsInteger;
      //**************************
      DM1.tValeVlrTotal.AsFloat      := DM1.tValeVlrTotal.AsFloat - DM1.tValeItensVlrTotal.AsFloat;
      if DM1.tValeItensNumPedido.AsInteger > 0 then
        begin
          DM1.tPedido.IndexFieldNames := 'Pedido';
          DM1.tPedido.SetKey;
          DM1.tPedidoPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
          if DM1.tPedido.GotoKey then                           
            begin
              DM1.tPedido.Edit;
              DM1.tPedidoQtdParesFat.AsInteger  := DM1.tPedidoQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
              DM1.tPedidoQtdParesRest.AsInteger := DM1.tPedidoQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
              DM1.tPedidoQtdFatAut.AsInteger    := DM1.tPedidoQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
              DM1.tPedidoCopiado.AsBoolean      := False;
              DM1.tPedido.Post;
              DM1.tPedidoItem.SetKey;
              DM1.tPedidoItemPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
              DM1.tPedidoItemItem.AsInteger   := DM1.tValeItensItemPedido.AsInteger;
              if DM1.tPedidoItem.GotoKey then
                begin
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemQtdParesFat.AsInteger  := DM1.tPedidoItemQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
                  DM1.tPedidoItemQtdParesRest.AsInteger := DM1.tPedidoItemQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
                  DM1.tPedidoItemQtdFatAut.AsInteger    := DM1.tPedidoItemQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
                  DM1.tPedidoItemCopiado.AsBoolean      := False;
                  DM1.tPedidoItem.Post;
                  DM1.tPedidoNota.First;
                  while not DM1.tPedidoNota.Eof do
                    begin
                      if (DM1.tPedidoNotaNumNota.AsInteger = DM1.tValeItensNumVale.AsInteger) and
                         (DM1.tPedidoNotaItemNota.AsInteger = DM1.tValeItensItem.AsInteger) and
                         (DM1.tPedidoNotaTipo.AsString = 'V') then
                         DM1.tPedidoNota.Delete
                      else
                        DM1.tPedidoNota.Next;
                    end;
                end;
            end;
        end;
      DM1.tValeItens.Delete;
      fValeItens.ShowModal;
      RxDBLookupCombo8.Color := vCor;
    end
  else
    ShowMessage('Não existe item, ou item já foi faturado!');
end;

procedure TfVale.BitBtn6Click(Sender: TObject);
var
  vCor : TColor;
begin
   if DM1.tValeCodCliente.AsInteger > 0 then
    begin
      vCor := RxDBLookupCombo8.Color;
      RxDBLookupCombo8.Color := clWindow;
      SpeedButton23.Tag := 0;
      fValeItens := TfValeItens.Create(Self);
      fValeItens.ShowModal;
      RxDBLookupCombo8.Color := vCor;
    end
  else
    begin
      ShowMessage('Falta informar o cliente!');
      RxDBLookupCombo8.SetFocus;
     end;
end;

procedure TfVale.BitBtn14Click(Sender: TObject);
begin
  if DM1.tUsuarioExcVale.AsBoolean then
    begin
      vFaturado := DM1.tValeFaturado.AsBoolean;
      if Dm1.tValeFaturado.AsBoolean then
        ShowMessage('Vale já foi Faturado, não pode ser excluido!')
      else
        Le_Itens;
      if not vFaturado then
        begin
          if MessageDlg('Deseja realmente excluir o vale?',mtconfirmation,[mbok,mbno],0)=mrok then
            begin
              fSenhaControle := TfSenhaControle.Create(Self);
              fSenhaControle.ShowModal;
              if DM1.vSenhaControle = DM1.tParametrosSenhaExc.AsString then
                begin
                  DM1.tValeItens.First;
                  while not DM1.tValeItens.Eof do
                    begin
                      //*** Voltar o Pedido
                      if DM1.tValeItensNumPedido.AsInteger > 0 then
                        begin
                          DM1.tPedido.IndexFieldNames := 'Pedido';
                          DM1.tPedido.SetKey;
                          DM1.tPedidoPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
                          if DM1.tPedido.GotoKey then
                            begin
                              DM1.tPedido.Edit;
                              DM1.tPedidoQtdParesFat.AsInteger  := DM1.tPedidoQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
                              DM1.tPedidoQtdParesRest.AsInteger := DM1.tPedidoQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
                              DM1.tPedidoQtdFatAut.AsInteger    := DM1.tPedidoQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
                              DM1.tPedidoCopiado.AsBoolean      := False;
                              DM1.tPedido.Post;
                              DM1.tPedidoItem.SetKey;
                              DM1.tPedidoItemPedido.AsInteger := DM1.tValeItensNumPedido.AsInteger;
                              DM1.tPedidoItemItem.AsInteger   := DM1.tValeItensItemPedido.AsInteger;
                              if DM1.tPedidoItem.GotoKey then
                                begin
                                  DM1.tPedidoItem.Edit;
                                  DM1.tPedidoItemQtdParesFat.AsInteger  := DM1.tPedidoItemQtdParesFat.AsInteger - DM1.tValeItensQtd.AsInteger;
                                  DM1.tPedidoItemQtdParesRest.AsInteger := DM1.tPedidoItemQtdParesRest.AsInteger + DM1.tValeItensQtd.AsInteger;
                                  DM1.tPedidoItemQtdFatAut.AsInteger    := DM1.tPedidoItemQtdFatAut.AsInteger - DM1.tValeItensQtd.AsInteger;
                                  DM1.tPedidoItemCopiado.AsBoolean      := False;
                                  DM1.tPedidoItem.Post;
                                  DM1.tPedidoNota.First;
                                  while not DM1.tPedidoNota.Eof do
                                    begin
                                      if (DM1.tPedidoNotaNumNota.AsInteger = DM1.tValeItensNumVale.AsInteger) and
                                         (DM1.tPedidoNotaItemNota.AsInteger = DM1.tValeItensItem.AsInteger) and
                                         (DM1.tPedidoNotaTipo.AsString = 'V') then
                                         DM1.tPedidoNota.Delete
                                      else
                                        DM1.tPedidoNota.Next;
                                    end;
                                end;
                            end;
                        end;
                      //*** Voltar o Estoque
                      if DM1.tValeItensNumMovEst.AsInteger > 0 then
                        begin
                          DM1.tEstoqueMatMov.SetKey;
                          DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tValeItensNumMovEst.AsInteger;
                          if DM1.tEstoqueMatMov.GotoKey then
                            begin
                              DM1.tEstoqueMatMovGrade.First;
                              while not DM1.tEstoqueMatMovGrade.Eof do
                                DM1.tEstoqueMatMovGrade.Delete;
                              DM1.tEstoqueMatMov.Delete;
                            end;
                        end;
                      DM1.tValeItens.Delete;
                    end;
                  DM1.tVale.Delete;
                end;
            end;
          BitBtn18.Visible := DM1.tValeFaturado.AsBoolean;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfVale.RxDBLookupCombo8Exit(Sender: TObject);
begin
  Verifica_UF;
  if RxDBLookupCombo8.Text <> '' then
    begin
      RxDBLookupCombo8.Color := clWindow;
      RxDBLookupCombo8.Refresh;
      if DM1.tCliente.Locate('Codigo',RxDBLookupCombo8.KeyValue,([Locaseinsensitive])) then
        if DM1.tClienteLiberacao.AsString = 'V' then
          begin
            RxDBLookupCombo8.Color := clRed;
            ShowMessage('Cliente com restrição, venda só a vista!');
          end;
      fVerificaCliente := TfVerificaCliente.Create(Self);
      fVerificaCliente.qConsulta.Close;
      fVerificaCliente.qConsulta.ParamByName('CodCli').AsInteger := RxDBLookupCombo8.KeyValue;
      fVerificaCliente.qConsulta.Open;
      fVerificaCliente.qConsulta.First;
      if fVerificaCliente.qConsulta.RecordCount > 0 then
        begin
          if fVerificaCliente.qConsultaDtVencCReceber.AsDateTime < Date then
            begin
              ShowMessage('Cliente com títulos em atraso!');
              RxDBLookupCombo8.Color := clRed;
            end
          else
            ShowMessage('Cliente com títulos em aberto, a vencer!');
        end;
      fVerificaCliente.Destroy;
    end;
end;

procedure TfVale.BitBtn3Click(Sender: TObject);
var
  vCodigo : integer;
  Texto : String;
begin
  vCodigo            := DM1.tValeNumVale.AsInteger;
  DM1.tVale.Filtered := False;
  DM1.tVale.Filter   := 'NumVale = '''+IntToStr(vCodigo)+'''';
  DM1.tVale.Filtered := True;
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  Linha := 99;
  DM1.tValeItens.First;
  while not DM1.tValeItens.Eof do
    begin
      if linha > 31 then
        Imprime_Cabecalho;
      Imprime_Detalhe;
      DM1.tValeItens.Next;
    end;
  Imprime_Rodape;

  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;
{  fRelVale := TfRelVale.Create(Self);
  fRelVale.QuickRep1.Preview;
  fRelVale.QuickRep1.Free;}
  DM1.tVale.Filtered := False;
  DM1.tVale.SetKey;
  DM1.tValeNumVale.AsInteger := vCodigo;
  DM1.tVale.GotoKey;
end;

procedure TfVale.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  BitBtn18.Visible := DM1.tValeFaturado.AsBoolean;
end;

procedure TfVale.SpeedButton5Click(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
    begin
      fVerificaCliente := TfVerificaCliente.Create(Self);
      fVerificaCliente.qConsulta.Close;
      fVerificaCliente.qConsulta.ParamByName('CodCli').AsInteger := RxDBLookupCombo8.KeyValue;
      fVerificaCliente.qConsulta.Open;
      fVerificaCliente.ShowModal;
      fVerificaCliente.qConsulta.Close;
    end;
end;

procedure TfVale.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tEstoqueMatMov,Name);
  oDBUtils.ActiveDataSet(True,dm1.tUf,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedido,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoItem,Name);
  oDBUtils.ActiveDataSet(True,dm2.tEstoqueMatMov2,Name);
  oDBUtils.ActiveDataSet(True,dm1.tPedidoNota,Name);
  oDBUtils.ActiveDataSet(True,dm1.tProdutoCor,Name);

  DM1.tVale.Last;
  DM1.tProduto.IndexFieldNames := 'Nome';
  BitBtn18.Visible := DM1.tValeFaturado.AsBoolean;
end;

end.
