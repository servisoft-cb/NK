unit UBaixaPedido2Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, rsDBUtils, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit,
  DB, DBTables;

type
  TfBaixaPedido2Det = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Bevel1: TBevel;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label9: TLabel;
    DBText10: TDBText;
    Label10: TLabel;
    DBText11: TDBText;
    Label11: TLabel;
    DBText12: TDBText;
    Label12: TLabel;
    DBText13: TDBText;
    Bevel2: TBevel;
    Label13: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    qUltimoItem: TQuery;
    qUltimoItemItemNota: TIntegerField;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vNumMovEst : Integer;
    procedure Le_Pedido;
    procedure Baixa_Item(Qtd : Real);
    procedure Grava_PedidoNota(Qtd : Real);
    procedure Grava_Estoque(Qtd : Real);
  public
    { Public declarations }
    vOpcao : String;  //P= Pedido  I= Item
  end;

var
  fBaixaPedido2Det: TfBaixaPedido2Det;

implementation

uses UDM1;

{$R *.dfm}

procedure TfBaixaPedido2Det.Grava_Estoque(Qtd : Real);
begin
  DM1.tEstoqueMatMov.IndexFieldNames := 'NumMov';
  DM1.tEstoqueMatMov.Refresh;
  DM1.tEstoqueMatMov.Last;
  vNumMovEst := DM1.tEstoqueMatMovNumMov.AsInteger + 1;

  DM1.tEstoqueMatMov.Insert;
  DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
  DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tPedidoItemCodProduto.AsInteger;
  DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tPedidoItemCodCor.AsInteger;
  DM1.tEstoqueMatMovLargura.AsString      := DM1.tPedidoItemlkLargura.AsString;
  DM1.tEstoqueMatMovDtMov.AsDateTime      := Date;
  DM1.tEstoqueMatMovES.AsString           := 'S';
  DM1.tEstoqueMatMovTipoMov.AsString      := 'PED';
  DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tPedidoItemPedido.AsInteger;
  DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tPedidoCodCliente.AsInteger;
  DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tPedidoItemPreco.AsFloat;
  DM1.tEstoqueMatMovQtd.AsFloat           := StrToFloat(FormatFloat('0.00000',Qtd));
  DM1.tEstoqueMatMovQtd2.AsFloat          := StrToFloat(FormatFloat('0.00000',DM1.tEstoqueMatMovQtd.AsFloat * -1));
  DM1.tEstoqueMatMovUnidade.AsString      := DM1.tPedidoItemlkUnidade.AsString;

  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.SetKey;
  DM1.tProdutoCodigo.AsInteger := DM1.tDctoEstItemCodMaterial.AsInteger;
  if DM1.tProduto.GotoKey then
    begin
      DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tProdutoAliqIcms.AsFloat;
      DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tProdutoAliqIPI.AsFloat;
    end
  else
    begin
      DM1.tEstoqueMatMovPercIcms.AsFloat      := 0;
      DM1.tEstoqueMatMovPercIpi.AsFloat       := 0;
    end;
  DM1.tEstoqueMatMovVlrDesconto.AsFloat   := 0;
  DM1.tEstoqueMatMov.Post;
end;

procedure TfBaixaPedido2Det.Grava_PedidoNota(Qtd : Real);
begin
  qUltimoItem.Close;
  qUltimoItem.ParamByName('Pedido').AsInteger := DM1.tPedidoItemPedido.AsInteger;
  qUltimoItem.ParamByName('Item').AsInteger   := DM1.tPedidoItemItem.AsInteger;
  qUltimoItem.Open;

  DM1.tPedidoNota.Insert;
  DM1.tPedidoNotaPedido.AsInteger     := DM1.tPedidoItemPedido.AsInteger;
  DM1.tPedidoNotaItem.AsInteger       := DM1.tPedidoItemItem.AsInteger;
  DM1.tPedidoNotaTipo.AsString        := 'M';
  DM1.tPedidoNotaNumNota.AsInteger    := 0;
  DM1.tPedidoNotaNumSeqNota.AsInteger := 0;
  DM1.tPedidoNotaItemNota.AsInteger   := qUltimoItemItemNota.AsInteger + 1;
  DM1.tPedidoNotaDtNota.AsDateTime    := Date;
  DM1.tPedidoNotaQtdPares.AsFloat     := Qtd;
  DM1.tPedidoNota.Post;

  if CheckBox1.Checked then
    begin
      Grava_Estoque(Qtd);
      DM1.tPedidoNota.Edit;
      DM1.tPedidoNotaNumMovEst.AsInteger := vNumMovEst;
      DM1.tPedidoNota.Post;
    end;
end;

procedure TfBaixaPedido2Det.Baixa_Item(Qtd : Real);
begin
  DM1.tPedidoItem.Edit;
  DM1.tPedidoItemQtdFatMan.AsFloat    := DM1.tPedidoItemQtdFatMan.AsFloat + Qtd;
  DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat + Qtd;
  DM1.tPedidoItemQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.000',DM1.tPedidoItemQtdParesRest.AsFloat)) - StrToFloat(FormatFloat('0.000',Qtd));
  if DM1.tPedidoItemQtdParesRest.AsFloat < 0 then
    DM1.tPedidoItemQtdParesRest.AsFloat := 0;
  if DM1.tPedidoItemQtdParesRest.AsFloat > 0 then
    DM1.tPedidoItemCopiado.AsBoolean := False
  else
    DM1.tPedidoItemCopiado.AsBoolean := True;
  DM1.tPedidoItem.Post;
  Grava_PedidoNota(Qtd);

  DM1.tPedido.Edit;
  DM1.tPedidoQtdFatMan.AsFloat    := DM1.tPedidoQtdFatMan.AsFloat + Qtd;
  DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat + Qtd;
  DM1.tPedidoQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.000',DM1.tPedidoQtdParesRest.AsFloat)) - StrToFloat(FormatFloat('0.000',Qtd));
  if DM1.tPedidoQtdParesRest.AsFloat < 0 then
    DM1.tPedidoQtdParesRest.AsFloat := 0;
  if DM1.tPedidoQtdParesRest.AsFloat > 0 then
    DM1.tPedidoCopiado.AsBoolean := False
  else
    DM1.tPedidoCopiado.AsBoolean := True;
  DM1.tPedido.Post;
end;

procedure TfBaixaPedido2Det.Le_Pedido;
begin
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
    begin
      if DM1.tPedidoItemQtdParesRest.AsFloat > 0 then
        Baixa_Item(DM1.tPedidoItemQtdParesRest.AsFloat);
      DM1.tPedidoItem.Next;
    end;
end;

procedure TfBaixaPedido2Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBaixaPedido2Det.BitBtn1Click(Sender: TObject);
begin
  if vOpcao = 'P' then
    Le_Pedido
  else
  if CurrencyEdit1.Value <= 0 then
    ShowMessage('Não foi informada a quantidade para baixar no item!')
  else
  if CurrencyEdit1.Value > 0 then
    Baixa_Item(CurrencyEdit1.Value);
  Close;
end;

procedure TfBaixaPedido2Det.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaPedido2Det.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  if DM1.tPedidoCodCliente.AsInteger = DM1.tParametrosCliEstoque.AsInteger then
    CheckBox1.Checked := False
  else
    CheckBox1.Checked := True;
end;

end.
