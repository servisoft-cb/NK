unit UVoltaNotaFIscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, RXLookup, DbTables, Db, RxCalc, ToolEdit, CurrEdit, rsDBUtils,
  MemTable, DBFilter, Math, RXDBCtrl, Variants, DBClient, RxDBComb,
  RzButton, SMDBGrid, Menus;

type
  TfVoltaNotaFiscal = class(TForm)
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    Label43: TLabel;
    edSerie: TEdit;
    Label53: TLabel;
    ceNota: TCurrencyEdit;
    ckCReceber: TCheckBox;
    BitBtn1: TBitBtn;
    ckEstoque: TCheckBox;
    ckPedido: TCheckBox;
    ckNotaBenef: TCheckBox;
    ckVale: TCheckBox;
    ckComissao: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GPE(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

    procedure Volta_Pedido;

    procedure Cancelamento;
    
  public
    { Public declarations }

  end;

var
  fVoltaNotaFiscal: TfVoltaNotaFiscal;

implementation

uses UDM1, UEmissaoNotaFiscal, UGeracoes;

{$R *.DFM}

procedure TfVoltaNotaFiscal.Cancelamento;
var
  vFlag : String;
begin
  vFlag := 'S';

  if MessageDlg('Deseja realmente cancelar esta nota fiscal?',mtWarning,[mbOK,mbNO],0) = mrNO then
    exit;

  try
    if ckEstoque.Checked then
      fEmissaoNotaFiscal.Incrementa_Estoque;

    if ckCReceber.Checked then
      Cancela_CReceber('C');

    if (ckPedido.Checked) or (ckNotaBenef.Checked) then
      Volta_Pedido;

    if ckVale.Checked then
    begin
      DM1.tNotaFiscalItens.First;
      while not DM1.tNotaFiscalItens.Eof do
      begin
        fEmissaoNotaFiscal.Exclui_Vales;
        DM1.tNotaFiscalItens.Next;
      end;
    end;

    if ckComissao.Checked then
      fEmissaoNotaFiscal.Desfaz_ExtComissao;
  except
    ShowMessage('Erro na gravação!');
  end;

  DM1.tNotaFiscal.Edit;
  DM1.tNotaFiscalVoltouNota.AsBoolean := True;
  DM1.tNotaFiscal.Post;

  ShowMessage('Operação Concluida!');
end;

procedure TfVoltaNotaFiscal.Volta_Pedido;
var
  vQtdAux : Real;
begin
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.EOF do
  begin
    if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (ckPedido.Checked) then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      DM1.tPedido.SetKey;
      DM1.tPedidoPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
      if DM1.tPedido.GotoKey then
      begin
        DM1.tPedido.Edit;
        DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
        DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
        DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
        if StrToFloat(FormatFloat('0.000',DM1.tPedidoQtdParesRest.AsFloat)) > StrToFloat(FormatFloat('0.000',DM1.tPedidoQtdPares.AsFloat)) then
          DM1.tPedidoQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.000',DM1.tPedidoQtdPares.AsFloat));
        if StrToFloat(FormatFloat('0.000',DM1.tPedidoQtdParesFat.AsFloat)) <= 0 then
          DM1.tPedidoQtdParesFat.AsFloat := StrToFloat(FormatFloat('0.000',0));
        if StrToFloat(FormatFloat('0.000',DM1.tPedidoQtdFatAut.AsFloat)) <= 0 then
          DM1.tPedidoQtdFatAut.AsFloat := StrToFloat(FormatFloat('0.000',0));
        DM1.tPedidoCopiado.AsBoolean    := False;
        DM1.tPedido.Post;
        DM1.tPedidoItem.SetKey;
        DM1.tPedidoItemPedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
        DM1.tPedidoItemItem.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
        if DM1.tPedidoItem.GotoKey then
        begin
          DM1.tPedidoItem.Edit;
          DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
          DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
          DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;

          if StrToFloat(FormatFloat('0.000',DM1.tPedidoItemQtdParesRest.AsFloat)) > StrToFloat(FormatFloat('0.000',DM1.tPedidoItemQtdPares.AsFloat)) then
            DM1.tPedidoItemQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.000',DM1.tPedidoItemQtdPares.AsFloat));
          if StrToFloat(FormatFloat('0.000',DM1.tPedidoItemQtdParesFat.AsFloat)) <= 0 then
            DM1.tPedidoItemQtdParesFat.AsFloat := StrToFloat(FormatFloat('0.000',0));
          if StrToFloat(FormatFloat('0.000',DM1.tPedidoItemQtdFatAut.AsFloat)) <= 0 then
            DM1.tPedidoItemQtdFatAut.AsFloat := StrToFloat(FormatFloat('0.000',0));
          DM1.tPedidoItemCopiado.AsBoolean    := False;
          DM1.tPedidoItem.Post;
          DM1.tNotaFiscalGrade.First;
          while not DM1.tNotaFiscalGrade.Eof do
          begin
            if DM1.tPedidoGrade.Locate('Pedido;ItemPed;CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,
                                       DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
              begin
                DM1.tPedidoGrade.Edit;
                DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat - DM1.tNotaFiscalGradeQtd.AsFloat;
                DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + DM1.tNotaFiscalGradeQtd.AsFloat;
                DM1.tPedidoGrade.Post;
              end;
            DM1.tNotaFiscalGrade.Next;
          end;
          DM1.tPedidoNota.First;
          while not DM1.tPedidoNota.Eof do
            begin
              if (DM1.tPedidoNotaNumSeqNota.AsInteger = DM1.tNotaFiscalItensNumSeq.AsInteger) and
                 (DM1.tPedidoNotaItemNota.AsInteger = DM1.tNotaFiscalItensItem.AsInteger) and
                 (DM1.tPedidoNotaFilialNota.AsInteger = DM1.tNotaFiscalItensFilial.AsInteger) and
                 (DM1.tPedidoNotaTipo.AsString = 'N') then
               DM1.tPedidoNota.Delete
             else
               DM1.tPedidoNota.Next;
            end;
        end;
      end;
    end;

    //Estorna a nota de entrada devolvida e apaga a tabela dbNotaFiscalNDevolvida
    if ckNotaBenef.Checked then
    begin
      DM1.tNEntrada.IndexFieldNames      := 'NumNEntr;CodForn;Serie';
      DM1.tNEntradaItens.IndexFieldNames := 'CodForn;NumNEntr;Serie;Item';
      DM1.tNotaFiscalNDevolvida.First;
      while not DM1.tNotaFiscalNDevolvida.Eof do
      begin
        DM1.tNEntrada.SetKey;
        DM1.tNEntradaNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
        DM1.tNEntradaCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
        DM1.tNEntradaSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
        if DM1.tNEntrada.GotoKey then
        begin
          DM1.tNEntradaItens.SetKey;
          DM1.tNEntradaItensNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
          DM1.tNEntradaItensCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
          DM1.tNEntradaItensSerie.AsString     := DM1.tNotaFiscalNDevolvidaSerie.AsString;
          DM1.tNEntradaItensItem.AsInteger     := DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger;
          if DM1.tNEntradaItens.GotoKey then
          begin
            DM1.tNEntradaItens.Edit;
            DM1.tNEntradaItensQtdRestante.AsFloat  := DM1.tNEntradaItensQtdRestante.AsFloat + DM1.tNotaFiscalNDevolvidaQtd.AsFloat;
            DM1.tNEntradaItensQtdDevolvida.AsFloat := DM1.tNEntradaItensQtdDevolvida.AsFloat - DM1.tNotaFiscalNDevolvidaQtd.AsFloat;
            DM1.tNEntradaItens.Post;
          end;
        end;
        DM1.tNotaFiscalNDevolvida.Delete;
      end;
    end;
    DM1.tNotaFiscalItens.Next;
  end;
end;

procedure TfVoltaNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);

  DM1.tCReceber.Filtered := False;

  DM1.tNotaFiscalParc.Close;
  DM1.tNotaFiscalItens.Close;
  DM1.tNotaFiscalGrade.Close;
  DM1.tNotaFiscalVale.Close;
  DM1.tNotaFiscalNDevolvida.Close;
  DM1.tNotaFiscalTBObs.Close;

  DM1.tVale.Close;
  DM1.tValeItens.Close;

  DM1.tNEntrada.Close;
  DM1.tNEntradaItens.Close;

  DM1.tProduto.Close;
  DM1.tProdutoCor.Close;
  DM1.tProdutoCli.Close;
  DM1.tProdutoConsumo.Close;
  DM1.tProdutoConsumoItem.Close;
  DM1.tProdutoMat.Close;

  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedidoGrade.Close;
  DM1.tPedidoNota.Close;
  DM1.tPedido2.Close;
  DM1.tPedidoItem2.Close;

  DM1.tCliente.Close;

  DM1.tCReceber.Close;
  DM1.tCReceberParc.Close;
  DM1.tCReceberParcHist.Close;

  DM1.tTalao.Close;
  DM1.tTalaoGrade.Close;

  Action := CaFree;
end;

procedure TfVoltaNotaFiscal.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfVoltaNotaFiscal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TfVoltaNotaFiscal.GPE(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True, DM1.tFilial, Name);

  DM1.tNotaFiscal.Open;
  DM1.tNotaFiscalItens.Open;
  DM1.tNotaFiscalNDevolvida.Open;
  DM1.tNotaFiscalGrade.Open;
  DM1.tNotaFiscalVale.Open;

  DM1.tVale.Open;
  DM1.tValeItens.Open;

  DM1.tNEntrada.Open;
  DM1.tNEntradaItens.Open;
  DM1.tNEntradaItensGrade.Open;
  DM1.tNEntradaNDevolvida.Open;

  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
  DM1.tPedidoNota.Open;
  DM1.tPedidoConsumo.Open;

  DM1.tEstoqueMatMov.Open;
  DM1.tExtComissao.Open;
  DM1.tCReceber.Open;
  DM1.tCReceberParc.Open;
  DM1.tCReceberParcHist.Open;

  DM1.tTalao.Open;
  DM1.tTalaoGrade.Open;

  DM1.tNotaFiscal.Refresh;
  DM1.tNotaFiscal.Last;

  Screen.cursor := crDefault;
end;

procedure TfVoltaNotaFiscal.BitBtn1Click(Sender: TObject);
begin
  if not(ckComissao.Checked) and not(ckCReceber.Checked) and not(ckEstoque.Checked) and not(ckNotaBenef.Checked) and
     not(ckPedido.Checked)   and not(ckVale.Checked) then
  begin
    ShowMessage('É obrigatório escolher uma opção!');
    exit;
  end;

  if Trim(edSerie.Text) = '' then
  begin
    ShowMessage('Série não informada!');
    exit;
  end;
  if ceNota.AsInteger < 1 then
  begin
    ShowMessage('Nº Nota não informada!');
    exit;
  end;

  DM1.tFilial.First;

  if not DM1.tNotaFiscal.Locate('Filial;Serie;NumNota',VarArrayOf([1,edSerie.Text,ceNota.AsInteger]),[locaseinsensitive]) then
  begin
    ShowMessage('Nota não encontrada!');
    exit;
  end;
  if DM1.tNotaFiscalCancelada.AsBoolean then
  begin
    ShowMessage('Nota já cancelada!');
    exit;
  end;
  if Trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) = '' then
  begin
    ShowMessage('Nota não enviada!');
    exit;
  end;
  if DM1.tNotaFiscalVoltouNota.AsBoolean then
  begin
    ShowMessage('Nota já foi feito o processo de volta!');
    exit;
  end;
  Cancelamento;
  edSerie.Clear;
  ceNota.Clear;
  edSerie.SetFocus;
end;


end.
