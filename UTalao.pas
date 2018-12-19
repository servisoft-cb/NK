unit UTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, Db, DBTables, ExtCtrls, ALed,
  Mask, DBCtrls, DBFilter, DBClient;

type
  TfTalao = class(TForm)
    RxDBGrid1: TRxDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label33: TLabel;
    ALed2: TALed;
    Label32: TLabel;
    ALed1: TALed;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    RxDBFilter1: TRxDBFilter;
    ALed3: TALed;
    Label3: TLabel;
    StaticText1: TStaticText;
    CheckBox1: TCheckBox;
    RxDBGrid2: TRxDBGrid;
    BitBtn4: TBitBtn;
    ALed4: TALed;
    Label4: TLabel;
    tTalao2: TTable;
    tTalao2Talao: TIntegerField;
    BitBtn6: TBitBtn;
    dsmTalaoBranco: TClientDataSet;
    dsmTalaoBrancoID: TIntegerField;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    vTalao : Integer;
    procedure Grava_Talao(Qtd: Real);
    procedure Filtra;
  public
    { Public declarations }
  end;

var
  fTalao: TfTalao;

implementation

uses UDM1, UDM2, UOpcaoTalao, UEscImpressora, URelTalao, UCancelaTalao,
  URelTalao_Branco;

{$R *.DFM}

procedure TfTalao.Filtra;
begin
  DM1.tTalao.Filtered := False;
  DM1.tTalao.Filter   := 'Pedido = '''+DM1.tPedidoPedido.AsString+'''';
  DM1.tTalao.Filtered := True;
end;

procedure TfTalao.Grava_Talao(Qtd: Real);
begin
  inc(vTalao);
  DM1.tTalao.Insert;
  DM1.tTalaoTalao.AsInteger        := vTalao;
  DM1.tTalaoCodProduto.AsInteger   := DM1.tPedidoItemCodProduto.AsInteger;
  DM1.tTalaoCodCor.AsInteger       := DM1.tPedidoItemCodCor.AsInteger;
  DM1.tTalaoCodGrade.AsInteger     := DM1.tPedidoItemCodGrade.AsInteger;
  DM1.tTalaoQuantidade.AsFloat     := Qtd;
  DM1.tTalaoPedido.AsInteger       := DM1.tPedidoPedido.AsInteger;
  DM1.tTalaoPedidoCliente.AsString := DM1.tPedidoPedidoCliente.AsString;
  DM1.tTalaoPedCliDif.AsString     := DM1.tPedidoPedCliDif.AsString;
  DM1.tTalaoCodCliente.AsInteger   := DM1.tPedidoCodCliente.AsInteger;
  DM1.tTalaoProduzido.AsBoolean    := False;
  DM1.tTalaoItemPedido.AsInteger   := DM1.tPedidoItemItem.AsInteger;
  DM1.tTalaoDtGerado.AsDateTime    := Date;
  DM1.tTalaoProcesso.AsString      := 'N';
  DM1.tTalao.Post;

  if not DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]) then
    begin
      ShowMessage('Não encontrou o produto ' + DM1.tPedidoItemCodProduto.AsString);
      exit;
    end;

end;

procedure TfTalao.FormShow(Sender: TObject);
begin
  if not DM1.tProdutoSetor.Active then
    DM1.tProdutoSetor.Open;
  Filtra;
  BitBtn2.Enabled := not(DM1.tTalao.IsEmpty);
  BitBtn3.Enabled := not(DM1.tTalao.IsEmpty);
end;

procedure TfTalao.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir o talão do pedido?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      if DM1.tTalaoProduzido.AsBoolean then
        ShowMessage('Talão já produzido')
      else
        begin
          if DM1.tPedidoItem.Locate('Item',DM1.tTalaoItemPedido.AsInteger,[loCaseInsensitive]) then
            begin
              DM1.tPedidoItem.Edit;
              DM1.tPedidoItemNumTalao.AsInteger := 0;
              DM1.tPedidoItem.Post;
            end;
          DM1.tTalaoGrade.First;
          while not DM1.tTalaoGrade.Eof do
            DM1.tTalaoGrade.Delete;
          DM1.tTalao.Delete;
        end;
      DM1.tTalao.Refresh;
      DM1.tTalaoGrade.Refresh;
    end;
  BitBtn2.Enabled := not(DM1.tTalao.IsEmpty);
  BitBtn3.Enabled := not(DM1.tTalao.IsEmpty);
end;

procedure TfTalao.BitBtn1Click(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  RxDBGrid1.DataSource := nil;
  tTalao2.Refresh;
  tTalao2.Last;
  vTalao := tTalao2Talao.AsInteger;
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
    begin
      if (not DM1.tPedidoItemCancelado.AsBoolean) and (DM1.tPedidoItemGerarTalao.AsBoolean) and (DM1.tPedidoItemNumTalao.AsInteger < 1) then
        begin
          Grava_Talao(DM1.tPedidoItemQtdPares.AsFloat);
          DM1.tPedidoItem.Edit;
          DM1.tPedidoItemNumTalao.AsInteger := vTalao;
          DM1.tPedidoItem.Post;
        end;
      DM1.tPedidoItem.Next;
    end;
  DM1.tTalao.Refresh;
  //Filtra;
  RxDBGrid1.DataSource := DM1.dsTalao;
  BitBtn2.Enabled := not(DM1.tTalao.IsEmpty);
  BitBtn3.Enabled := not(DM1.tTalao.IsEmpty);
end;

procedure TfTalao.BitBtn3Click(Sender: TObject);
begin
  RxDBFilter1.Active := True;
  if DM1.tTalao.RecordCount > 0 then
  begin
    DM1.tProduto.IndexFieldNames := 'Codigo';

    fRelTalao := TfRelTalao.Create(Self);
    fRelTalao.QuickRep1.Preview;
    fRelTalao.QuickRep1.Free;

    fRelTalao.QuickRep2.Preview;
    fRelTalao.QuickRep2.Free;

    DM1.tTalao.Edit;
    DM1.tTalaoImpressoData.AsDateTime  := Date;
    DM1.tTalaoImpressoHora.AsDateTime  := Now;
    DM1.tTalaoImpressoUsuario.AsString := DM1.tUsuarioUsuario.AsString;
    DM1.tTalao.Post;

  end
  else
    ShowMessage('Não existe nenhum talão selecionado para a impressão!');
  RxDBFilter1.Active := False;
end;

procedure TfTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tTalao.First;
  while not DM1.tTalao.Eof do
    begin
      DM1.tTalao.Edit;
      DM1.tTalaoImprimir.AsBoolean := False;
      DM1.tTalao.Post;
      DM1.tTalao.Next;
    end;
  DM1.tTalao.Filtered := False;

  Action := Cafree;
end;

procedure TfTalao.BitBtn4Click(Sender: TObject);
begin
  if DM1.tTalaoHist.RecordCount > 0 then
  //if DM1.tTalaoProduzido.AsBoolean then
    begin
      if MessageDlg('Deseja excluir a baixa selecionada?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tEstoqueMatMov.SetKey;
          DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tTalaoHistNumMovEst.AsInteger;
          if DM1.tEstoqueMatMov.GotoKey then
            DM1.tEstoqueMatMov.Delete;

          DM1.tTalao.Edit;
          DM1.tTalaoProduzido.AsBoolean    := False;
          DM1.tTalaoDtBaixa.Clear;
          //DM1.tTalaoNumMovEst.AsInteger    := 0;
          DM1.tTalaoQtdProduzida.AsInteger := DM1.tTalaoQtdProduzida.AsInteger - DM1.tTalaoHistQtdProduzida.AsInteger;
          DM1.tTalao.Post;

          DM1.tTalaoHist.Delete;

          //Excluir a data do item do pedido baixado
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
                  DM1.tPedidoItemDtBaixa.Clear;
                  DM1.tPedidoItem.Post;
                end;
            end;
        end;
    end;
end;

procedure TfTalao.RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tTalaoProduzido.AsBoolean then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if DM1.tTalaoQtdProduzida.AsInteger > 0 then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end;

  if DM1.tTalaoCancelado.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end
  else
  if DM1.tTalaoImprimir.AsBoolean then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
end;

procedure TfTalao.BitBtn5Click(Sender: TObject);
begin
  if DM1.tTalaoTalao.AsInteger > 0 then
    begin
      if DM1.tTalaoQtdProduzida.AsFloat > 0 then
        ShowMessage('Talão não pode ser cancelado, pois já foi produzido!')
      else
        begin
          fCancelaTalao := TfCancelaTalao.Create(Self);
          fCancelaTalao.ShowModal;
        end;
    end;
end;

procedure TfTalao.RxDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tTalaoCancelado.AsBoolean then
    ShowMessage('Talão cancelado!')
  else
    begin
      DM1.tTalao.Edit;
      DM1.tTalaoImprimir.AsBoolean := not(DM1.tTalaoImprimir.AsBoolean);
      DM1.tTalao.Post;
    end;
end;

procedure TfTalao.CheckBox1Click(Sender: TObject);
begin
  DM1.tTalao.First;
  while not DM1.tTalao.Eof do
    begin
      if not DM1.tTalaoCancelado.AsBoolean then
        begin
          DM1.tTalao.Edit;
          DM1.tTalaoImprimir.AsBoolean := not(DM1.tTalaoImprimir.AsBoolean);
          DM1.tTalao.Post;
        end;
      DM1.tTalao.Next;
    end;
end;

procedure TfTalao.BitBtn6Click(Sender: TObject);
begin
  fRelTalao_Branco := TfRelTalao_Branco.Create(Self);
  fRelTalao_Branco.QuickRep1.Preview;
  fRelTalao_Branco.QuickRep1.Free;
end;

end.
