unit UPrevCalcMaterialLote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, Db, DBTables,
  MemTable, DBFilter, RXCtrls, Menus, Grids, DBGrids, RXDBCtrl;

type
  TfPrevCalcMaterialLote = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    tAuxCalcMaterialItens: TTable;
    dsAuxCalcMaterialItens: TDataSource;
    RxDBFilter2: TRxDBFilter;
    CurrencyEdit3: TCurrencyEdit;
    Edit2: TEdit;
    RxSpeedButton1: TRxSpeedButton;
    GroupBox1: TGroupBox;
    BitBtn3: TBitBtn;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    tAuxCalcMaterialGrade: TTable;
    dsAuxCalcMaterialGrade: TDataSource;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    tAuxCalcMaterialItenslkNomeCor: TStringField;
    tAuxCalcMaterialGradeCodMaterial: TIntegerField;
    tAuxCalcMaterialGradeCodCor: TIntegerField;
    tAuxCalcMaterialGradeCodGrade: TIntegerField;
    tAuxCalcMaterialGradeTamMaterial: TStringField;
    tAuxCalcMaterialGradeQtdPares: TFloatField;
    tAuxCalcMaterialItensCodMaterial: TIntegerField;
    tAuxCalcMaterialItensCodCor: TIntegerField;
    tAuxCalcMaterialItensCodGrade: TIntegerField;
    tAuxCalcMaterialItensConsumo: TFloatField;
    tAuxCalcMaterialItensNomeMaterial: TStringField;
    tAuxCalcMaterialItensUnidade: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Controle_Material;
    procedure Imp_Lote;
  public
    { Public declarations }
  end;

var                                       
  fPrevCalcMaterialLote: TfPrevCalcMaterialLote;
  vLancamento, linha, pagina, vQtdPares, vQtdTotal : Integer;
  F: TextFile;
  vPreco : Real;
  vGerar: Boolean;
  texto, NLotes : String;
  vQtdParesAux : Real;

implementation

//uses UEscImpressora, UDM1, UDM2, URelCalcMaterial;
uses UEscImpressora, UDM1, UDM2, URelCalcMaterial;

{$R *.DFM}

procedure TfPrevCalcMaterialLote.Controle_Material;
var
  vAux : Real;
  vTamMaterial : String[3];
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
          //*** Le os materiais do pedido
          DM1.tPedidoMaterial.First;
          while not DM1.tPedidoMaterial.EOF do
            begin
              DM1.tProduto.IndexFieldNames := 'Codigo';
              DM1.tProduto.FindKey([DM1.tPedidoMaterialCodMaterial.AsInteger]);
              tAuxCalcMaterialItens.SetKey;
              tAuxCalcMaterialItensCodGrade.AsInteger    := DM1.tPedidoItemCodGrade.AsInteger;
              tAuxCalcMaterialItensCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
              tAuxCalcMaterialItensCodCor.AsInteger      := DM1.tPedidoMaterialCodCor.AsInteger;
              if tAuxCalcMaterialItens.GotoKey then
                tAuxCalcMaterialItens.Edit
              else
                begin
                  tAuxCalcMaterialItens.Insert;
                  tAuxCalcMaterialItensCodGrade.AsInteger    := DM1.tPedidoItemCodGrade.AsInteger;
                  tAuxCalcMaterialItensCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
                  tAuxCalcMaterialItensCodCor.AsInteger      := DM1.tPedidoMaterialCodCor.AsInteger;
                  tAuxCalcMaterialItensNomeMaterial.AsString := DM1.tProdutoNome.AsString;
                  tAuxCalcMaterialItensUnidade.AsString      := DM1.tProdutoUnidade.AsString;
                  tAuxCalcMaterialItensConsumo.AsFloat       := 0;
                  tAuxCalcMaterialItens.Post;
                  tAuxCalcMaterialItens.Edit;
                end;
              vTamMaterial := '';
              if (DM1.tProdutoLancaGrade.AsBoolean) or
                 (DM1.tPedidoMaterialTipoConsumo.AsString = 'T') then
                begin
                  DM1.tPedidoGrade.First;
                  while not DM1.tPedidoGrade.Eof do
                    begin
                      if DM1.tPedidoGradeQtd.AsFloat > 0 then
                        begin
                          if DM1.tPedidoMaterialTipoConsumo.AsString = 'T' then
                            begin
                              DM1.tPedidoConsumo.SetKey;
                              DM1.tPedidoConsumoPedido.AsInteger   := DM1.tPedidoPedido.AsInteger;
                              DM1.tPedidoConsumoItemPed.AsInteger  := DM1.tPedidoItemItem.AsInteger;
                              DM1.tPedidoConsumoOrdem.AsInteger    := DM1.tPedidoMaterialOrdem.AsInteger;
                              DM1.tPedidoConsumoCodGrade.AsInteger := DM1.tPedidoGradeCodGrade.AsInteger;
                              DM1.tPedidoConsumoPosicao.AsInteger  := DM1.tPedidoGradePosicao.AsInteger;
                              if DM1.tPedidoConsumo.GotoKey then
                                vAux := DM1.tPedidoGradeQtd.AsFloat * DM1.tPedidoConsumoConsumo.AsFloat
                              else
                                vAux := 0;
                            end
                          else
                            vAux := DM1.tPedidoGradeQtd.AsFloat * DM1.tPedidoMaterialConsumoPr.AsFloat;
                          tAuxCalcMaterialItensConsumo.AsFloat := tAuxCalcMaterialItensConsumo.AsFloat + vAux;
                          if DM1.tProdutoCodGrade.AsInteger > 0 then
                            begin
                              //*** Verifica o tamanho do material
                              DM1.tMaterialGradeNum.SetKey;
                              DM1.tMaterialGradeNumCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
                              DM1.tMaterialGradeNumCodGrade.AsInteger    := DM1.tPedidoGradeCodGrade.AsInteger;
                              DM1.tMaterialGradeNumPosicao.AsInteger     := DM1.tPedidoGradePosicao.AsInteger;
                              if not DM1.tMaterialGradeNum.GotoKey then
                                vTamMaterial := DM1.tPedidoGradelkTamanho.AsString
                              else
                                vTamMaterial := DM1.tMaterialGradeNumTamMaterial.AsString;
                              //*** Grava a tabela auxiliar das grades
                              tAuxCalcMaterialGrade.SetKey;
                              tAuxCalcMaterialGradeCodGrade.AsInteger    := DM1.tPedidoItemCodGrade.AsInteger;
                              tAuxCalcMaterialGradeCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
                              tAuxCalcMaterialGradeCodCor.AsInteger      := DM1.tPedidoMaterialCodCor.AsInteger;
                              tAuxCalcMaterialGradeTamMaterial.AsString  := vTamMaterial;
                              if tAuxCalcMaterialGrade.GotoKey then
                                begin
                                  tAuxCalcMaterialGrade.Edit;
                                  tAuxCalcMaterialGradeQtdPares.AsFloat := tAuxCalcMaterialGradeQtdPares.AsFloat + vAux;
                                  tAuxCalcMaterialGrade.Post;
                                end
                              else
                                begin
                                  tAuxCalcMaterialGrade.Insert;
                                  tAuxCalcMaterialGradeCodGrade.AsInteger    := DM1.tPedidoItemCodGrade.AsInteger;
                                  tAuxCalcMaterialGradeCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
                                  tAuxCalcMaterialGradeCodCor.AsInteger      := DM1.tPedidoMaterialCodCor.AsInteger;
                                  tAuxCalcMaterialGradeTamMaterial.AsString  := vTamMaterial;
                                  tAuxCalcMaterialGradeQtdPares.AsFloat      := vAux;
                                  tAuxCalcMaterialGrade.Post;
                                end;
                              //**********************
                            end;
                        end;
                      DM1.tPedidoGrade.Next;
                    end;
                end
              else
                begin
                  vAux := DM1.tPedidoItemQtdPares.AsFloat * DM1.tPedidoMaterialConsumoPr.AsFloat;
                  tAuxCalcMaterialItensConsumo.AsFloat := tAuxCalcMaterialItensConsumo.AsFloat + vAux;
                end;
              tAuxCalcMaterialItens.Post;
              DM1.tPedidoMaterial.Next;
            end;
        end;
    end;
end;

procedure TfPrevCalcMaterialLote.Imp_Lote;
begin
  NLotes  := '';
  vQtdPares            := 0;
  DM1.tTalao.Filtered := False;
  DM1.tTalao.Filter   := 'Talao >= '''+CurrencyEdit3.Text+''' and Talao <= '''+CurrencyEdit1.Text+'''';
  DM1.tTalao.Filtered := True;
  DM1.tTalao.First;
  while not DM1.tTalao.EOF do
    begin
      Controle_Material;
      if Nlotes = '' then
        NLotes   := DM1.tTalaoTalao.AsString
      else
        NLotes   := NLotes + ', ' + DM1.tTalaoTalao.AsString;
      DM1.tTalao.Next;
    end;
end;

procedure TfPrevCalcMaterialLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*** Limpa as tabelas auxiliares
  tAuxCalcMaterialItens.First;
  while not tAuxCalcMaterialItens.Eof do
    begin
      tAuxCalcMaterialGrade.First;
      while not tAuxCalcMaterialGrade.Eof do
        tAuxCalcMaterialGrade.Delete;
      tAuxCalcMaterialItens.Delete;
    end;
  //****************
  DM1.tPedido.IndexFieldNames := 'Pedido';
  DM1.tTalao.Filtered         := False;
  Action := Cafree;
end;

procedure TfPrevCalcMaterialLote.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevCalcMaterialLote.BitBtn3Click(Sender: TObject);
begin
  vLancamento := 0;
  if CurrencyEdit3.AsInteger > 0 then
    begin
      Screen.Cursor := crHourglass;
      tAuxCalcMaterialItens.First;
      while not tAuxCalcMaterialItens.EOF do
        begin
          tAuxCalcMaterialGrade.First;
          while not tAuxCalcMaterialGrade.Eof do
            tAuxCalcMaterialGrade.Delete;
          tAuxCalcMaterialItens.Delete;
        end;
      //*********************
      Imp_Lote;
    end
  else
    ShowMessage('Falta informar o número do talão!');
  Screen.Cursor := crDefault;
end;

procedure TfPrevCalcMaterialLote.RxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfPrevCalcMaterialLote.CurrencyEdit3Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger = 0 then
    CurrencyEdit1.AsInteger := CurrencyEdit3.AsInteger;
end;

procedure TfPrevCalcMaterialLote.RxSpeedButton1Click(Sender: TObject);
begin
  if tAuxCalcMaterialItens.RecordCount < 1 then
    begin
      ShowMessage('Não foi gerado o auxiliar');
      BitBtn3.SetFocus;
    end
  else
    begin
      fRelCalcMaterial := TfRelCalcMaterial.Create(Self);
      FRelCalcMaterial.lbl_lote_ini.caption := CurrencyEdit3.text;
      FRelCalcMaterial.lbl_lote_fim.caption := CurrencyEdit1.text;
      fRelCalcMaterial.QuickRep1.Preview;
      fRelCalcMaterial.Free;
      BitBtn1.SetFocus;
    end;
end;

end.
