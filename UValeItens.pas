unit UValeItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, RxLookup, ExtCtrls, Db, DBTables, Mask, ToolEdit,
  CurrEdit;

type
  TfValeItens = class(TForm)
    Label8: TLabel;
    Label25: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label16: TLabel;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Label14: TLabel;
    Edit4: TEdit;
    Label12: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    SpeedButton7: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CurrencyEdit3: TCurrencyEdit;
    SpeedButton17: TSpeedButton;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    Label1: TLabel;
    Edit5: TEdit;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Move_Itens;
    procedure Limpa_Edit;
  public
    { Public declarations }
  end;

var
  fValeItens: TfValeItens;

implementation

uses UDM1, UDM2, UVale, USitTributaria, UProduto, UBuscaPedido, UValeOC;

{$R *.DFM}

procedure TfValeItens.Limpa_Edit;
begin
  Edit2.Clear;
  Edit4.Clear;
  Edit5.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo13.ClearValue;
  vNumPedido        := 0;
  vItemPedido       := 0;
  vItemVale         := 0;
end;

procedure TfValeItens.Move_Itens;
begin
  fVale.Verifica_UF;
  CurrencyEdit1.AsInteger := DM1.tProdutoCodigo.AsInteger;
  Edit2.Text              := DM1.tProdutoUnidade.AsString;
  CurrencyEdit3.AsInteger := 1;
  if vAliqICMS > 0 then
    Edit4.Text := FloatToStr(vAliqICMS)
  else
    Edit4.Text := DM1.tProdutoAliqICMS.AsString;
  if vCodSitTrib > 0 then
    RxDBLookupCombo13.KeyValue := vCodSitTrib
  else
  if DM1.tProdutoCodSitTrib.AsInteger > 0 then
    RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger;
  CurrencyEdit4.Value := DM1.tProdutoVlrVenda.AsFloat;
  CurrencyEdit5.Value := CurrencyEdit4.Value;
end;

procedure TfValeItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfValeItens.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfValeItens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo2.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          if DM1.tProdutoCor.RecordCount < 1 then
            begin
              Edit2.SetFocus;
              RxDBLookupCombo4.ClearValue;
            end;
        end
      else
        RxDBLookupCombo2.SetFocus;
    end
  else
    RxDBLookupCombo2.SetFocus;
end;

procedure TfValeItens.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) then
      CurrencyEdit4.Value := DM1.tProdutoCorPrCusto.AsFloat;
end;

procedure TfValeItens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfValeItens.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
      if vItemVale < 1 then
        Move_itens;
    end;
end;

procedure TfValeItens.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
      if vItemVale < 1 then
        Move_itens;
    end;
end;

procedure TfValeItens.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfValeItens.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioProduto.AsBoolean then
    begin
      fProduto := TfProduto.Create(Self);
      fProduto.ShowModal;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfValeItens.SpeedButton17Click(Sender: TObject);
begin
  vNumPedido  := 0;
  vItemPedido := 0;
  fBuscaPedido := TfBuscaPedido.Create(Self);
  fBuscaPedido.RadioGroup1.ItemIndex := 1;
  fBuscaPedido.ShowModal;
end;

procedure TfValeItens.SpeedButton7Click(Sender: TObject);
begin
  Limpa_Edit;
end;

procedure TfValeItens.BitBtn6Click(Sender: TObject);
var
  vNumOC  : String;
  vNumOS  : String;
  vAltera : Boolean;
  vItemAux : Integer;
begin
  if vSiglaUF = '' then
    fVale.Verifica_UF;
  vNumOC := '';
  vNumOS := '';
  vAltera := False;
  //Posiciona o Produto
  if RxDBLookupCombo1.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo1.KeyValue;
      if not DM1.tProduto.GotoKey then
        RxDBLookupCombo1.ClearValue;
    end;
  if (RxDBLookupCombo2.Text = '')  or (Edit2.Text = '') or
     (RxDBLookupCombo1.Text = '') or (CurrencyEdit3.Value = 0) or (CurrencyEdit4.Value = 0) or
     (CurrencyEdit5.Value = 0) or (vSiglaUF = '') or (DM1.tValeCodCliente.AsInteger < 1) then
    ShowMessage('Há campos obrigatório em branco <Referência>, <Nat.Operação>, <Unid.Medida>' +#13+
                '<Quantidade>, <Valor Unitário>, <Valor Total>, <Produto>, <Cliente> ou <Cliente sem UF>!')
  else
  if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo4.Text = '') then
    begin
      ShowMessage('Este produto é obrigatório informar a cor!');
      RxDBLookupCombo4.SetFocus;
    end
  else
    begin
      CurrencyEdit4Exit(Sender);
      if Edit4.Text = '' then
        Edit4.Text := FloatToStr(vAliqICMS);
      DM1.tValeItens.Refresh;
      DM1.tValeItens.Last;
      vItemAux := DM1.tValeItensItem.AsInteger;
      DM1.tValeItens.Insert;
      if vItemVale > 0 then
        begin
          DM1.tValeItensItem.AsInteger := vItemVale;
          vAltera := True;
        end
      else
        DM1.tValeItensItem.AsInteger := vItemAux + 1;
      DM1.tValeItensCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tValeItensCodCor.AsInteger     := 0;
      if RxDBLookupCombo4.Text <> '' then
        DM1.tValeItensCodCor.AsInteger := RxDBLookupCombo4.KeyValue;
      DM1.tValeItensUnidade.AsString    := Edit2.Text;
      DM1.tValeItensQtd.AsFloat         := CurrencyEdit3.Value;
      DM1.tValeItensQtdFaturada.AsFloat := 0;
      DM1.tValeItensQtdRestante.AsFloat := CurrencyEdit3.Value;
      DM1.tValeItensAliqIcms.AsString := Edit4.Text;
      DM1.tValeItensAliqIPI.AsString  := Edit5.Text;
      if RxDBLookupCombo13.Text <> '' then
        DM1.tValeItensCodSitTrib.AsInteger := RxDBLookupCombo13.KeyValue
      else
        DM1.tValeItensCodSitTrib.AsInteger := 0;
      DM1.tValeItensVlrUnitario.AsFloat       := CurrencyEdit4.Value;
      DM1.tValeItensVlrTotal.AsFloat      := CurrencyEdit5.Value;

      DM1.tValeVlrTotal.AsFloat := DM1.tValeVlrTotal.AsFloat + CurrencyEdit5.Value;

      DM1.tValeItensNumPedido.AsInteger  := vNumPedido;
      DM1.tValeItensItemPedido.AsInteger := vItemPedido;

      //Grava a tabela dbPedidoNota
      if DM1.tValeItensNumPedido.AsInteger > 0 then
        begin
          {DM1.tPedido.IndexFieldNames := 'Pedido';
          DM1.tPedido.FindKey([DM1.tValeItensNumPedido.AsInteger]);
          DM1.tPedidoItem.IndexFieldNames := 'Pedido;Item';
          DM1.tPedidoItem.FindKey([DM1.tValeItensNumPedido.AsInteger,DM1.tValeItensItemPedido.AsInteger]);}

          DM1.tPedidoNota.SetKey;
          DM1.tPedidoNotaPedido.AsInteger     := DM1.tValeItensNumPedido.AsInteger;
          DM1.tPedidoNotaItem.AsInteger       := DM1.tValeItensItemPedido.AsInteger;
          DM1.tPedidoNotaNumSeqNota.AsInteger := DM1.tValeItensNumVale.AsInteger;
          DM1.tPedidoNotaItemNota.AsInteger   := DM1.tValeItensItem.AsInteger;
          DM1.tPedidoNotaTipo.AsString        := 'V';
          if DM1.tPedidoNota.GotoKey then
            DM1.tPedidoNota.Edit
          else
            begin
              DM1.tPedidoNota.Insert;
              DM1.tPedidoNotaPedido.AsInteger   := DM1.tValeItensNumPedido.AsInteger;
              DM1.tPedidoNotaItem.AsInteger     := DM1.tValeItensItemPedido.AsInteger;
              DM1.tPedidoNotaNumSeqNota.AsInteger := DM1.tValeItensNumVale.AsInteger;
              DM1.tPedidoNotaNumNota.AsInteger  := DM1.tValeItensNumVale.AsInteger;
              DM1.tPedidoNotaItemNota.AsInteger := DM1.tValeItensItem.AsInteger;
              DM1.tPedidoNotaTipo.AsString      := 'V';
              DM1.tPedidoNotaNumNota.AsInteger  := DM1.tValeItensNumVale.AsInteger;
            end;
          DM1.tPedidoNotaQtdPares.AsInteger := DM1.tValeItensQtd.AsInteger;
          DM1.tPedidoNotaDtNota.AsDateTime  := DM1.tValeDtEmissao.AsDateTime;
          DM1.tPedidoNota.Post;
          vNumOC := DM1.tPedidoPedidoCliente.AsString;
          vNumOS := DM1.tPedidoItemNumOS.AsString;
          DM1.tPedidoItem.Edit;
          DM1.tPedidoItemQtdParesRest.AsInteger := DM1.tPedidoItemQtdParesRest.AsInteger - DM1.tValeItensQtd.AsInteger;
          DM1.tPedidoItemQtdParesFat.AsInteger  := DM1.tPedidoItemQtdParesFat.AsInteger + DM1.tValeItensQtd.AsInteger;
          DM1.tPedidoItemQtdFatAut.AsInteger    := DM1.tPedidoItemQtdFatAut.AsInteger + DM1.tValeItensQtd.AsInteger;
          if DM1.tPedidoItemQtdParesRest.AsInteger > 0 then
            DM1.tPedidoItemCopiado.AsBoolean := False
          else
            DM1.tPedidoItemCopiado.AsBoolean := True;
          DM1.tPedidoItem.Post;
          DM1.tPedido.Edit;
          DM1.tPedidoQtdParesRest.AsInteger := DM1.tPedidoQtdParesRest.AsInteger - DM1.tValeItensQtd.AsInteger;
          DM1.tPedidoQtdParesFat.AsInteger  := DM1.tPedidoQtdParesFat.AsInteger + DM1.tValeItensQtd.AsInteger;
          DM1.tPedidoQtdFatAut.AsInteger    := DM1.tPedidoQtdFatAut.AsInteger + DM1.tValeItensQtd.AsInteger;
          if DM1.tPedidoQtdParesRest.AsInteger > 0 then
            DM1.tPedidoCopiado.AsBoolean  := False
          else
            DM1.tPedidoCopiado.AsBoolean  := True;
          DM1.tPedido.Post;
        end;

      DM1.tValeItensNumOC.AsString := vNumOC;
      DM1.tValeItensNumOS.AsString := vNumOS;
      if DM1.tValeItensNumOC.AsString = '' then
        begin
          fValeOC := TfValeOC.Create(Self);
          fValeOC.ShowModal;
        end;
      DM1.tValeItens.Post;
      fVale.SpeedButton23.Tag := 0;
      //Grava a tabela de grade do item da nota
      Limpa_Edit;
      CurrencyEdit1.SetFocus;
    end;
  vNumPedido  := 0;
  vItemPedido := 0;
  DM1.tValeItens.Refresh;
  if vAltera then
    Close;
end;

procedure TfValeItens.FormShow(Sender: TObject);
begin
  if fVale.SpeedButton23.Tag = 1 then
    begin
      SpeedButton17.Enabled := False;
      SpeedButton7.Enabled  := False;
    end
  else
    begin
      SpeedButton17.Enabled := True;
      SpeedButton7.Enabled  := True;
    end;
end;

procedure TfValeItens.CurrencyEdit4Exit(Sender: TObject);
begin
  CurrencyEdit5.Value := CurrencyEdit3.Value * CurrencyEdit4.Value;
end;

procedure TfValeItens.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit1.AsInteger > 0 then
        RxDBLookupCombo1.SetFocus
      else
        RxDBLookupCombo2.SetFocus;
    end;
end;

procedure TfValeItens.CurrencyEdit1Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit1.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo2.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit1.SetFocus;
          CurrencyEdit1.Clear;
        end;
    end;
end;

procedure TfValeItens.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfValeItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F10 then
    Close;
end;

procedure TfValeItens.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fVale.SpeedButton23.Tag = 1 then
    begin
      ShowMessage('Este item esta no modo de alteração, tem que ser confirmado antes!');
      CanClose := False;
      BitBtn6.SetFocus;
    end
  else
    CanClose := True;
end;

end.
