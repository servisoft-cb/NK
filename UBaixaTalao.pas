unit UBaixaTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, Grids, DBGrids, RXDBCtrl,
  RxLookup, DBFilter, Db, DBTables;

type
  TfBaixaTalao = class(TForm)
    StaticText1: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    StaticText2: TStaticText;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    RxDBFilter1: TRxDBFilter;
    StaticText3: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Estoque;
  public
    { Public declarations }
  end;

var
  fBaixaTalao: TfBaixaTalao;

implementation

uses UDM1, UDM2;

{$R *.DFM}

procedure TfBaixaTalao.Grava_Estoque;
begin
  DM1.tEstoqueMatMov.Refresh;
  DM2.tEstoqueMatMov2.Refresh;
  DM2.tEstoqueMatMov2.Last;
  DM1.tEstoqueMatMov.Insert;
  DM1.tEstoqueMatMovNumMov.AsInteger      := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
  DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tTalaoCodProduto.AsInteger;
  DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tTalaoCodCor.AsInteger;
  DM1.tEstoqueMatMovLargura.AsString      := '';
  DM1.tEstoqueMatMovDtMov.AsDateTime      := DateEdit1.Date;
  DM1.tEstoqueMatMovES.AsString           := 'E';
  DM1.tEstoqueMatMovTipoMov.AsString      := 'TAL';
  DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tTalaoTalao.AsInteger;
  DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tTalaoCodCliente.AsInteger;
  if DM1.tProduto.Locate('Codigo',DM1.tTalaoCodProduto.AsInteger,([Locaseinsensitive])) then
  begin
    DM1.tEstoqueMatMovVlrUnitario.AsFloat := DM1.tProdutoPrecoCusto.AsFloat;
    DM1.tEstoqueMatMovUnidade.AsString    := DM1.tProdutoUnidade.AsString;
    DM1.tEstoqueMatMovPercIcms.AsFloat    := DM1.tProdutoAliqIcms.AsFloat;
    DM1.tEstoqueMatMovPercIpi.AsFloat     := DM1.tProdutoAliqIPI.AsFloat;
  end
  else
  begin
    DM1.tEstoqueMatMovVlrUnitario.AsFloat := 0;
    DM1.tEstoqueMatMovPercIcms.AsFloat    := 0;
    DM1.tEstoqueMatMovPercIpi.AsFloat     := 0;
  end;
  //DM1.tEstoqueMatMovQtd.AsFloat           := StrToFloat(FormatFloat('0.00000',DM1.tTalaoQuantidade.AsFloat));
  DM1.tEstoqueMatMovQtd.AsFloat   := DM1.tTalaoHistQtdProduzida.AsFloat;
  if DM1.tEstoqueMatMovES.AsString = 'E' then
    DM1.tEstoqueMatMovQtd2.AsFloat := DM1.tTalaoHistQtdProduzida.AsFloat
  else
    DM1.tEstoqueMatMovQtd2.AsFloat := DM1.tTalaoHistQtdProduzida.AsFloat * -1;
  DM1.tEstoqueMatMovVlrDesconto.AsFloat := 0;
  DM1.tEstoqueMatMov.Post;

  DM1.tTalaoHistNumMovEst.AsInteger := DM1.tEstoqueMatMovNumMov.AsInteger;
end;

procedure TfBaixaTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  RxDBFilter1.Active := False;
  Action := Cafree;
end;

procedure TfBaixaTalao.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      DM1.tTalao.SetKey;
      DM1.tTalaoTalao.AsInteger := CurrencyEdit1.AsInteger;
      if (DM1.tTalao.GotoKey) and (DM1.tTalaoProduzido.AsBoolean) then
        begin
          ShowMessage('Talão já baixado');
          CurrencyEdit1.Clear;
          CurrencyEdit1.SetFocus;
        end
      else
      if DM1.tTalao.GotoKey then
        CurrencyEdit2.AsInteger := DM1.tTalaoQuantidade.AsInteger - DM1.tTalaoQtdProduzida.AsInteger
      else
      if not DM1.tTalao.GotoKey then
        begin
          ShowMessage('Talão inexistente!');
          CurrencyEdit1.Clear;
          CurrencyEdit1.SetFocus;
        end;
    end;
end;

procedure TfBaixaTalao.BitBtn1Click(Sender: TObject);
var
  vGravar : Boolean;
  vItemHist : Integer;
begin
  vGravar := True;
  if CheckBox1.Checked then
    if MessageDlg('Deseja marcar o talão como Produzido?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
      vGravar := False;
  if (CurrencyEdit1.AsInteger > 0) and (CurrencyEdit2.AsInteger > 0) and (DateEdit1.Date > 1) and (vGravar) then
    begin
      //Grava a data de baixa no item do pedido
      if CheckBox1.Checked then
        begin
          DM1.tPedido.IndexFieldNames := 'Pedido';
          DM1.tPedido.SetKey;
          DM1.tPedidoPedido.AsInteger := DM1.tTalaoPedido.AsInteger;
          if DM1.tPedido.GotoKey then
            begin
              DM1.tPedidoItem.SetKey;
              DM1.tPedidoItemPedido.AsInteger := DM1.tTalaoPedido.AsInteger;
              DM1.tPedidoItemItem.AsInteger   := DM1.tTalaoItemPedido.AsInteger;
              if DM1.tPedidoItem.GotoKey then
                begin
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemDtBaixa.AsDateTime := DateEdit1.Date;

                  DM1.tPedidoItem.Post;
                end;
            end;
        end;

      //*** Grava o histórico da baixa do talão
      DM1.tTalaoHist.Refresh;
      DM1.tTalaoHist.Last;
      vItemHist := DM1.tTalaoHistItem.AsInteger;

      DM1.tTalaoHist.Insert;
      DM1.tTalaoHistTalao.AsInteger        := DM1.tTalaoTalao.AsInteger;
      DM1.tTalaoHistItem.AsInteger         := vItemHist + 1;
      DM1.tTalaoHistQtdProduzida.AsInteger := CurrencyEdit2.AsInteger;
      DM1.tTalaoHistDtBaixa.AsDateTime     := DateEdit1.Date;
      Grava_Estoque;
      DM1.tTalaoHist.Post;

      //************
      DM1.tTalao.Edit;
      DM1.tTalaoQtdProduzida.AsInteger := DM1.tTalaoQtdProduzida.AsInteger + CurrencyEdit2.AsInteger;
      DM1.tTalaoProduzido.AsBoolean    := CheckBox1.Checked;
      if DM1.tTalaoProduzido.AsBoolean then
        DM1.tTalaoDtBaixa.AsDateTime   := DateEdit1.Date;
      DM1.tTalao.Post;
      CurrencyEdit1.Clear;
    end
  else
  if vGravar then
    ShowMessage('É obrigatório preencher todos os campos!');
  CurrencyEdit1.SetFocus;
end;

procedure TfBaixaTalao.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tTalaoProduzido.AsBoolean then
    begin
      Background  := clTeal;;
      AFont.Color := clWhite;
    end;
end;

procedure TfBaixaTalao.RxDBGrid1DblClick(Sender: TObject);
begin
  CurrencyEdit1.AsInteger := DM1.tTalaoTalao.AsInteger;
  CurrencyEdit2.AsInteger := DM1.tTalaoQuantidade.AsInteger;
  CurrencyEdit1.SetFocus;
end;

procedure TfBaixaTalao.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tEstoqueMatMov,Name);
  oDBUtils.ActiveDataSet(True,DM1.tEstoqueMatMovGrade,Name);
  oDBUtils.ActiveDataSet(True,DM1.tTalaoHist,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedido,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedidoItem,Name);
  oDBUtils.ActiveDataSet(True,DM1.tProduto,Name);

  DateEdit1.Date     := Date;
  RxDBFilter1.Active := True;
end;

end.
