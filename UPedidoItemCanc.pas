unit UPedidoItemCanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls, ToolEdit, CurrEdit,
  Buttons, Grids, DBGrids, RXDBCtrl, DB, DBClient, DBVGrids;

type
  TfPedidoItemCanc = class(TForm)
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    RxLabel9: TRxLabel;
    Edit1: TEdit;
    Bevel3: TBevel;
    StaticText1: TStaticText;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Bevel1: TBevel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    Bevel2: TBevel;
    RxLabel8: TRxLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    CurrencyEdit1: TCurrencyEdit;
    VDBGrid1: TVDBGrid;
    mTamanho: TClientDataSet;
    mTamanhoCodGrade: TIntegerField;
    mTamanhoPosicao: TIntegerField;
    mTamanhoQtd: TFloatField;
    mTamanhoQtdRestante: TFloatField;
    mTamanhoQtdACancelar: TFloatField;
    mTamanhoTamanho: TStringField;
    mTamanhoQtdParesCanc: TFloatField;
    dsmTamanho: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vGravar : Boolean;
    procedure Verifica_Grade;
    procedure Le_Itens;
    procedure Cancela_Itens;
    procedure Monta_mTamanho;
  public
    { Public declarations }
  end;

var
  fPedidoItemCanc: TfPedidoItemCanc;

implementation

uses UDM1, UPedido;

{$R *.dfm}

procedure TfPedidoItemCanc.Monta_mTamanho;
begin
  DM1.tPedidoGrade.First;
  while not DM1.tPedidoGrade.Eof do
    begin
      mTamanho.Insert;
      mTamanhoCodGrade.AsInteger   := DM1.tPedidoGradeCodGrade.AsInteger;
      mTamanhoPosicao.AsInteger    := DM1.tPedidoGradePosicao.AsInteger;
      mTamanhoQtd.AsFloat          := DM1.tPedidoGradeQtd.AsFloat;
      mTamanhoQtdRestante.AsFloat  := DM1.tPedidoGradeQtdParesRest.AsFloat;
      mTamanhoQtdACancelar.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat;
      mTamanhoTamanho.AsString     := DM1.tPedidoGradelkTamanho.AsString;
      mTamanho.Post;
      DM1.tPedidoGrade.Next;
    end;
  mTamanho.First;
end;

procedure TfPedidoItemCanc.Le_Itens;
begin
  DM1.tPedido.Edit;
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
    begin
      if (DM1.tPedidoItemQtdPares.AsFloat > 0) and (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
        begin
          CurrencyEdit1.Value := DM1.tPedidoItemQtdParesRest.AsFloat;
          Monta_mTamanho;
          Cancela_Itens;
        end;
      DM1.tPedidoItem.Next;
    end;
  fPedido.Calc_Vlr_Pedido;
  DM1.tPedido.Post;
end;

procedure TfPedidoItemCanc.Cancela_Itens;
var
  vTexto1 : String;
  vNumero : Integer;
begin
  DM1.tPedidoItem.Edit;
  DM1.tPedidoItemQtdParesCanc.AsFloat := DM1.tPedidoItemQtdParesCanc.AsFloat + CurrencyEdit1.Value;
  DM1.tPedidoItemQtdPares.AsFloat     := DM1.tPedidoItemQtdPares.AsFloat - CurrencyEdit1.Value;
  DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat - CurrencyEdit1.Value;

  DM1.tPedidoQtdPares.AsFloat           := DM1.tPedidoQtdPares.AsFloat - CurrencyEdit1.Value;
  DM1.tPedidoQtdParesRest.AsFloat       := DM1.tPedidoQtdParesRest.AsFloat - CurrencyEdit1.Value;
  DM1.tPedidoQtdParesCanc.AsFloat       := DM1.tPedidoQtdParesCanc.AsFloat + CurrencyEdit1.Value;

  DM1.tPedidoPesoBruto.AsFloat          := DM1.tPedidoPesoBruto.AsFloat - DM1.tPedidoItemlkPesoBruto.AsFloat *
                                          CurrencyEdit1.Value;
  DM1.tPedidoPesoLiquido.AsFloat        := DM1.tPedidoPesoLiquido.AsFloat - DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                          CurrencyEdit1.Value;
  DM1.tPedidoItem.Post;

  DM1.tPedidoCanc.Refresh;
  DM1.tPedidoCanc.Last;
  vNumero := DM1.tPedidoCancItem.AsInteger;
  DM1.tPedidoCanc.Insert;
  DM1.tPedidoCancPedido.AsInteger  := DM1.tPedidoPedido.AsInteger;
  DM1.tPedidoCancItemPed.AsInteger := DM1.tPedidoItemItem.AsInteger;
  DM1.tPedidoCancItem.AsInteger    := vNumero + 1;
  DM1.tPedidoCancData.AsDateTime   := Date;
  DM1.tPedidoCancMotivo.AsString   := Edit1.Text;
  DM1.tPedidoCancQtd.AsFloat       := CurrencyEdit1.Value;
  DM1.tPedidoCanc.Post;

  //Tamanhos
{  DM1.tPedidoCancGrade.First;
  while not DM1.tPedidoCancGrade.Eof do
    DM1.tPedidoCancGrade.Delete;
  mTamanho.First;
  while not mTamanho.Eof do
    begin
      if mTamanhoQtdACancelar.AsFloat > 0 then
        begin
          if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([mTamanhoCodGrade.AsInteger,mTamanhoPosicao.AsInteger]),[locaseinsensitive]) then
            begin
              DM1.tPedidoGrade.Edit;
              DM1.tPedidoGradeQtdParesCanc.AsFloat := DM1.tPedidoGradeQtdParesCanc.AsFloat + mTamanhoQtdACancelar.AsFloat;
              DM1.tPedidoGradeQtd.AsFloat          := DM1.tPedidoGradeQtd.AsFloat - mTamanhoQtdACancelar.AsFloat;
              DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat - mTamanhoQtdACancelar.AsFloat;
              DM1.tPedidoGrade.Post;

              //Grava a tabela de cancelamento dos tamanhos
              DM1.tPedidoCancGrade.Insert;
              DM1.tPedidoCancGradePedido.AsInteger   := DM1.tPedidoCancPedido.AsInteger;
              DM1.tPedidoCancGradeItemPed.AsInteger  := DM1.tPedidoCancItemPed.AsInteger;
              DM1.tPedidoCancGradeItem.AsInteger     := DM1.tPedidoCancItem.AsInteger;
              DM1.tPedidoCancGradeCodGrade.AsInteger := mTamanhoCodGrade.AsInteger;
              DM1.tPedidoCancGradePosicao.AsInteger  := mTamanhoPosicao.AsInteger;
              DM1.tPedidoCancGradeQtd.AsFloat        := mTamanhoQtdACancelar.AsFloat;
              DM1.tPedidoCancGrade.Post;
            end;
        end;
      mTamanho.Next;
    end;
}

  //Foi tirado o cancelamento do talão porque na NK não vão usar, só vão cancelar o pedido
  {vTexto1 := '';
  DM1.tTalao.Filtered := False;
  DM1.tTalao.Filter   := 'Pedido = '''+DM1.tPedidoPedido.AsString+''' and ItemPedido = '''+DM1.tPedidoItemItem.AsString+'''';
  DM1.tTalao.Filtered := True;
  DM1.tTalao.First;
  while not DM1.tTalao.Eof do
    begin
      vTexto1 := vTexto1 + ',' + DM1.tTalaoTalao.AsString;
      DM1.tTalao.Edit;
      DM1.tTalaoCancelado.AsBoolean        := True;
      DM1.tTalaoDtCancelado.AsDateTime     := Date;
      DM1.tTalaoMotivoCancelado.AsString   := Edit1.Text;
      DM1.tTalao.Post;
      DM1.tTalao.Next;
    end;
  if vTexto1 <> '' then
    ShowMessage('Foi cancelado os talões ' + vTexto1);
  DM1.tTalao.Filtered := False;}
end;

procedure TfPedidoItemCanc.Verifica_Grade;
var
  vQtdTotal : Real;
begin
  vGravar := True;
  if DM1.tPedidoGrade.RecordCount > 0 then
    begin
      vQtdTotal := 0;
      mTamanho.First;
      while not mTamanho.Eof do
        begin
          if mTamanhoQtdACancelar.AsFloat > mTamanhoQtdRestante.AsFloat then
            begin
              ShowMessage('Quantidade a cancelar maior que a restante, no tamanho ' + mTamanhoTamanho.AsString);
              vGravar := False;
              mTamanho.Last;
            end;
          vQtdTotal := vQtdTotal + mTamanhoQtdACancelar.AsFloat;
          mTamanho.Next;
        end;
      if (vGravar) and (StrToFloat(FormatFloat('0.000',vQtdTotal)) <> CurrencyEdit1.Value) then
        begin
          ShowMessage('Qtd. informada nos tamanhos, não é diferete do total a cancelar!');
          vGravar := False;
        end;
    end;
end;

procedure TfPedidoItemCanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tTalao.Filtered := False;
  Action := Cafree;
end;

procedure TfPedidoItemCanc.BitBtn5Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ShowMessage('Falta informar o motivo do cancelamento!')
  else
  if Tag = 1 then
    begin
      Le_Itens;
      Close;
    end
  else
  if CurrencyEdit1.Value > DM1.tPedidoItemQtdParesRest.AsFloat then
    ShowMessage('Quantidade maior que a restante!')
  else
    begin
      Verifica_Grade;
      if vGravar then
        begin
          DM1.tPedido.Edit;
          Cancela_Itens;
          fPedido.Calc_Vlr_Pedido;
          DM1.tPedido.Post;
          Close;
        end
      else
        CurrencyEdit1.SetFocus;
    end;
end;

procedure TfPedidoItemCanc.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfPedidoItemCanc.FormShow(Sender: TObject);
begin
  mTamanho.EmptyDataSet;
  if Tag <> 1 then
    Monta_mTamanho;
end;

end.
