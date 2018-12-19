unit UEscNotaDevolPorItem2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Mask, DBCtrls, RxLookup, Grids, DBGrids,
  RXDBCtrl, Buttons, ToolEdit, CurrEdit, Db, DBTables, DBFilter, MemTable,
  Variants;
  
type
  TfEscNotaDevolPorItem2 = class(TForm)
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    qNotaEntrada: TQuery;
    dsqNotaEntrada: TDataSource;
    qNotaEntradaCodForn: TIntegerField;
    qNotaEntradaNomeForn: TStringField;
    qNotaEntradaNumNEntr: TIntegerField;
    qNotaEntradaDtEmissaoNEntr: TDateField;
    qNotaEntradaVlrTotalNEntr: TFloatField;
    qNotaEntradaDtEntrada: TDateField;
    BitBtn2: TBitBtn;
    qNotaEntradaCodMaterial: TIntegerField;
    qNotaEntradaQtd: TFloatField;
    qNotaEntradaVlrUnit: TFloatField;
    qNotaEntradaVlrTotalItens: TFloatField;
    qNotaEntradaCodCor: TIntegerField;
    qNotaEntradaUnidade: TStringField;
    qNotaEntradaQtdRestante: TFloatField;
    qNotaEntradaQtdDevolvida: TFloatField;
    qNotaEntradalkNomeMaterial: TStringField;
    qNotaEntradalkNomeCor: TStringField;
    qNotaEntradaItem: TSmallintField;
    GroupBox1: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    qNotaEntradaSitTrib: TSmallintField;
    qMaterial: TQuery;
    RxLabel1: TRxLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qMaterialCodForn: TIntegerField;
    qMaterialCodMaterial: TIntegerField;
    dsqMaterial: TDataSource;
    CurrencyEdit4: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    RxDBGrid3: TRxDBGrid;
    Label1: TLabel;
    qMaterialNome: TStringField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    qItemNota: TQuery;
    qItemNotaCodProduto: TIntegerField;
    qItemNotaCodCor: TIntegerField;
    qItemNotaQtd: TFloatField;
    qNotaEntradaSerie: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure CurrencyEdit4Change(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
    vCodFornecedor : Integer;
    vQtdSelecionada : Real;
    vItemNotaAux : Integer;
    procedure Le_Pedido(NumPedido, ItemPedido : Integer; Tipo : String); //A=Acumulado   P=Pedido
    procedure Le_ProdutoMat;
  public
    { Public declarations }
  end;

var
  fEscNotaDevolPorItem2: TfEscNotaDevolPorItem2;

implementation

uses UDM1, UEmissaoNotaFiscal, UNotaFiscalItens;

{$R *.DFM}

procedure TfEscNotaDevolPorItem2.Le_ProdutoMat;
var
  vQtdConsumo : Real;
  vQtdConsumoInf : Real;
begin
  DM1.tProdutoMat.First;
  while not DM1.tProdutoMat.Eof do
    begin
      vQtdConsumo := 0;
      if DM1.tProdutoConsumo.RecordCount > 0 then
        begin
          DM1.tNotaFiscalGrade.First;
          while not DM1.tNotaFiscalGrade.Eof do
            begin
              if DM1.tNotaFiscalGradeQtd.AsFloat > 0 then
                if DM1.tProdutoConsumoItem.Locate('CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                  vQtdConsumo := vQtdConsumo + (DM1.tNotaFiscalGradeQtd.AsFloat * DM1.tProdutoConsumoItemConsumo.AsFloat);
              DM1.tNotaFiscalGrade.Next;
            end;
        end
      else
        vQtdConsumo := vQtdConsumo + (DM1.tNotaFiscalItensQtd.AsFloat * DM1.tProdutoMatQtd.AsFloat);
      
      //Grava tabela auxiliar do material
      if fNotaFiscalItens.mMaterial.Locate('CodMaterial;CodCor',VarArrayOf([DM1.tProdutoMatCodMaterial.AsInteger,DM1.tProdutoMatCodCor.AsInteger]),[locaseinsensitive]) then
        fNotaFiscalItens.mMaterial.Edit
      else
        begin
          fNotaFiscalItens.mMaterial.Insert;
          fNotaFiscalItens.mMaterialCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
          fNotaFiscalItens.mMaterialCodCor.AsInteger      := DM1.tProdutoMatCodCor.AsInteger;
          fNotaFiscalItens.mMaterialNomeMaterial.AsString := DM1.tProdutoMatlkNomeMaterial.AsString;
          fNotaFiscalItens.mMaterialNomeCor.AsString      := DM1.tProdutoMatlkNomeCor.AsString;
        end;
      fNotaFiscalItens.mMaterialQtdNota.AsFloat    := fNotaFiscalItens.mMaterialQtdNota.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;

      //Vai abater o consumo do material se este já estiver sido informado na nota fiscal
      vQtdConsumoInf := 0;
      qItemNota.Filtered := False;
      qItemNota.Filter   := 'CodProduto = '''+DM1.tProdutoMatCodMaterial.AsString+''' and CodCor = '''+DM1.tProdutoMatCodCor.AsString+'''';
      qItemNota.Filtered := True;
      qItemNota.First;
      while not qItemNota.Eof do
        begin
          vQtdConsumoInf := vQtdConsumoInf + qItemNotaQtd.AsFloat;
          qItemNota.Next;
        end;
      qItemNota.Filtered := False;
      //*********
      fNotaFiscalItens.mMaterialQtdConsumoOriginal.AsFloat := StrToFloat(FormatFloat('0.0000000',fNotaFiscalItens.mMaterialQtdConsumoOriginal.AsFloat + vQtdConsumo));
      fNotaFiscalItens.mMaterialQtdConsumoInf.AsFloat      := StrToFloat(FormatFloat('0.0000000',vQtdConsumoInf));
      fNotaFiscalItens.mMaterialQtdConsumo.AsFloat         := StrToFloat(FormatFloat('0.0000000',fNotaFiscalItens.mMaterialQtdConsumoOriginal.AsFloat - vQtdConsumoInf));
      //fNotaFiscalItens.mMaterialQtdConsumo.AsFloat := fNotaFiscalItens.mMaterialQtdConsumo.AsFloat + vQtdConsumo;
      fNotaFiscalItens.mMaterial.Post;

      DM1.tProdutoMat.Next;
    end;
end;

procedure TfEscNotaDevolPorItem2.Le_Pedido(NumPedido, ItemPedido : Integer; Tipo : String);
var
  vQtdConsumo, vQtdConsumoInf : Real;
begin
  DM1.tPedido.SetKey;
  DM1.tPedidoPedido.AsInteger := NumPedido;
  if DM1.tPedido.GotoKey then
    begin
      DM1.tPedidoItem.SetKey;
      DM1.tPedidoItemPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoItemItem.AsInteger   := ItemPedido;
      if DM1.tPedidoItem.GotoKey then
        begin
          DM1.tPedidoMaterial.First;
          while not DM1.tPedidoMaterial.Eof do
            begin
              vQtdConsumo := 0;
              //Quando o consumo for por grade
              if DM1.tPedidoConsumo.RecordCount > 0 then
                begin
                  //O item da nota não foi agrupado
                  if Tipo = 'P' then
                    begin
                      DM1.tNotaFiscalGrade.First;
                      while not DM1.tNotaFiscalGrade.Eof do
                        begin
                          if DM1.tNotaFiscalGradeQtd.AsFloat > 0 then
                            if DM1.tPedidoConsumo.Locate('CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                              vQtdConsumo := vQtdConsumo + (DM1.tNotaFiscalGradeQtd.AsFloat * DM1.tPedidoConsumoConsumo.AsFloat);
                          DM1.tNotaFiscalGrade.Next;
                        end;
                    end;
                end
              //Quando o consumo for geral e não por grade
              else
                begin
                  if Tipo = 'P' then
                    vQtdConsumo := vQtdConsumo + (DM1.tNotaFiscalItensQtd.AsFloat * DM1.tPedidoMaterialConsumoPr.AsFloat);
                end;
              //Grava tabela auxiliar do material
              if fNotaFiscalItens.mMaterial.Locate('CodMaterial;CodCor',VarArrayOf([DM1.tPedidoMaterialCodMaterial.AsInteger,DM1.tPedidoMaterialCodCor.AsInteger]),[locaseinsensitive]) then
                fNotaFiscalItens.mMaterial.Edit
              else
                begin
                  fNotaFiscalItens.mMaterial.Insert;
                  fNotaFiscalItens.mMaterialCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
                  fNotaFiscalItens.mMaterialCodCor.AsInteger      := DM1.tPedidoMaterialCodCor.AsInteger;
                  fNotaFiscalItens.mMaterialNomeMaterial.AsString := DM1.tPedidoMateriallkNomeMaterial.AsString;
                  fNotaFiscalItens.mMaterialNomeCor.AsString      := DM1.tPedidoMateriallkNomeCor.AsString;
                end;
              if fNotaFiscalItens.mMaterialItemNota.AsInteger <> DM1.tNotaFiscalItensItem.AsInteger then
                fNotaFiscalItens.mMaterialQtdNota.AsFloat    := fNotaFiscalItens.mMaterialQtdNota.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;

              //Vai abater o consumo do material se este já estiver sido informado na nota fiscal
              vQtdConsumoInf := 0;
              qItemNota.Filtered := False;
              qItemNota.Filter   := 'CodProduto = '''+DM1.tPedidoMaterialCodMaterial.AsString+''' and CodCor = '''+DM1.tPedidoMaterialCodCor.AsString+'''';
              qItemNota.Filtered := True;
              qItemNota.First;
              while not qItemNota.Eof do
                begin
                  vQtdConsumoInf := vQtdConsumoInf + qItemNotaQtd.AsFloat;
                  qItemNota.Next;
                end;
              qItemNota.Filtered := False;
              //*********
              fNotaFiscalItens.mMaterialQtdConsumoOriginal.AsFloat := StrToFloat(FormatFloat('0.0000000',fNotaFiscalItens.mMaterialQtdConsumoOriginal.AsFloat + vQtdConsumo));
              fNotaFiscalItens.mMaterialQtdConsumoInf.AsFloat      := StrToFloat(FormatFloat('0.0000000',fNotaFiscalItens.mMaterialQtdConsumoInf.AsFloat + vQtdConsumoInf));
              fNotaFiscalItens.mMaterialQtdConsumo.AsFloat         := StrToFloat(FormatFloat('0.0000000',fNotaFiscalItens.mMaterialQtdConsumo.AsFloat + (vQtdConsumo - vQtdConsumoInf)));
              //fNotaFiscalItens.mMaterialQtdConsumo.AsFloat := fNotaFiscalItens.mMaterialQtdConsumo.AsFloat + vQtdConsumo;
              fNotaFiscalItens.mMaterialItemNota.AsInteger         := DM1.tNotaFiscalItensItem.AsInteger;
              fNotaFiscalItens.mMaterial.Post;

              DM1.tPedidoMaterial.Next;
            end;
        end;
    end;
end;

procedure TfEscNotaDevolPorItem2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qMaterial.Close;
  qNotaEntrada.Close;
  qItemNota.Close;
  Action := CaFree;
end;

procedure TfEscNotaDevolPorItem2.BitBtn2Click(Sender: TObject);
var
  vGravar : Boolean;
begin
  vGravar := False;
  if fNotaFiscalItens.mSelecionado.IsEmpty then
    ShowMessage('Não existe nota selecionada!')
  else
  if CurrencyEdit2.Value > 0 then
    begin
      if MessageDlg('O material possue qtd.restante, confirmar material assim mesmo?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
        vGravar := True;
    end
  else
    vGravar := True;

  if vGravar then
    begin
      fNotaFiscalItens.mSelecionado.First;
      fNotaFiscalItens.CurrencyEdit6.AsInteger   := fNotaFiscalItens.mSelecionadoCodMaterial.AsInteger;
      fNotaFiscalItens.RxDBLookupCombo1.KeyValue := fNotaFiscalItens.mSelecionadoCodMaterial.AsInteger;
      fNotaFiscalItens.RxDBLookupCombo2.KeyValue := fNotaFiscalItens.mSelecionadoCodMaterial.AsInteger;
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([fNotaFiscalItens.mSelecionadoCodMaterial.AsInteger]);

      fNotaFiscalItens.Move_Itens;

      if fNotaFiscalItens.mSelecionadoCodCor.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo4.KeyValue := fNotaFiscalItens.mSelecionadoCodCor.AsInteger
      else
        fNotaFiscalItens.RxDBLookupCombo4.ClearValue;
      if DM1.tProdutoCodClasFiscal.AsString <> '' then
        fNotaFiscalItens.RxDBLookupCombo5.Value := DM1.tProdutoCodClasFiscal.Value;
      fNotaFiscalItens.Edit2.Text  := fNotaFiscalItens.mSelecionadoUnidade.AsString;
      fNotaFiscalItens.CurrencyEdit3.Value := vQtdSelecionada;
      fNotaFiscalItens.Edit4.Clear;
      fNotaFiscalItens.Edit5.Clear;
      //if (DM1.tProdutoCodigo.AsInteger = fNotaFiscalItens.mSelecionadoCodMaterial.AsInteger) and (DM1.tProdutoCodSitTrib.AsInteger > 0) then
      //  fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
      //else
      if fNotaFiscalItens.mSelecionadoSitTrib.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo13.KeyValue := fNotaFiscalItens.mSelecionadoSitTrib.AsInteger;
      fNotaFiscalItens.CurrencyEdit4.Value := fNotaFiscalItens.mSelecionadoVlrUnitario.AsFloat;
      fNotaFiscalItens.CurrencyEdit5.Value := fNotaFiscalItens.mSelecionadoVlrTotalItens.AsFloat;
      //vNumNotaDevItem   := tNEntradaItensNumNEntr.AsInteger;
      //vCodForncDevItem  := tNEntradaItensCodForn.AsInteger;
      //vItemDev          := tNEntradaItensItem.AsInteger;
      //vCodMatDev        := tNEntradaItensCodMatFornecedor.AsString;
      Close;
    end;
  //Antes era dessa maneira que copiava a nota de entrada para a nota fiscal
  {if (RxDBLookupCombo1.Text = '') or (CurrencyEdit1.AsInteger = 0) or (CurrencyEdit2.AsInteger = 0) then
    ShowMessage('Falta informação!')
  else
    begin
      if not qNotaEntrada.Locate('NumNEntr',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
        begin
          ShowMessage('Nota não esta cadastrada!');
          CurrencyEdit1.Clear;
          CurrencyEdit1.Setfocus;
        end
      else
      if not tNEntradaItens.Locate('Item',CurrencyEdit2.AsInteger,[loCaseInsensitive]) then
        begin
          ShowMessage('Item não cadastrado!');
          CurrencyEdit2.SetFocus;
          CurrencyEdit2.Clear;
        end
      else
        begin
          fEmissaoNotaFiscal.Edit1.Text  := tNEntradaItensCodMaterial.AsString;
          fEmissaoNotaFiscal.RxDBLookupCombo1.KeyValue := tNEntradaItensCodMaterial.AsInteger;
          fEmissaoNotaFiscal.Edit12.Text := tNEntradaItensNomeMaterial.AsString;
          //abre o sql da cor do material
          fEmissaoNotaFiscal.Query1.Close;
          fEmissaoNotaFiscal.Query1.SQL.Clear;
          fEmissaoNotaFiscal.Query1.SQL.Add('SELECT Codigo, Nome');
          fEmissaoNotaFiscal.Query1.SQL.Add('FROM dbCor, dbMaterialCor');
          fEmissaoNotaFiscal.Query1.SQL.Add('WHERE CodMaterial = :x0 AND Codigo = CodCor');
          fEmissaoNotaFiscal.Query1.SQL.Add('ORDER BY Nome');
          fEmissaoNotaFiscal.Query1.Params[0].AsInteger := tNEntradaItensCodMaterial.AsInteger;
          fEmissaoNotaFiscal.Query1.Open;
          fEmissaoNotaFiscal.RxDBLookupCombo4.LookupField   := 'Codigo';
          fEmissaoNotaFiscal.RxDBLookupCombo4.LookupDisplay := 'Nome';

          //***************
          if tNEntradaItensCodCor.AsInteger > 0  then
            fEmissaoNotaFiscal.RxDBLookupCombo4.KeyValue := tNEntradaItensCodCor.AsInteger
          else
            fEmissaoNotaFiscal.RxDBLookupCombo4.ClearValue;
          fEmissaoNotaFiscal.Edit2.Text  := tNEntradaItensUnidade.AsString;
          fEmissaoNotaFiscal.Edit3.Text  := tNEntradaItensQtd.AsString;
          fEmissaoNotaFiscal.Edit4.Clear;
          fEmissaoNotaFiscal.Edit5.Clear;
          DM1.tMaterial.IndexFieldNames := 'Codigo';
          DM1.tMaterial.SetKey;
          DM1.tMaterialCodigo.AsInteger := tNEntradaItensCodMaterial.AsInteger;
          if (DM1.tMaterial.GotoKey) and (DM1.tMaterialCodSitTrib.AsInteger > 0) then
            fEmissaoNotaFiscal.RxDBLookupCombo13.KeyValue := DM1.tMaterialCodSitTrib.AsInteger
          else
          if tNEntradaItensSitTrib.AsInteger > 0 then
            fEmissaoNotaFiscal.RxDBLookupCombo13.KeyValue := tNEntradaItensSitTrib.AsInteger
          else
            fEmissaoNotaFiscal.RxDBLookupCombo13.ClearValue;
          fEmissaoNotaFiscal.Edit7.Text := tNEntradaItensVlrUnit.AsString;
          fEmissaoNotaFiscal.Edit8.Text := tNEntradaItensVlrTotalItens.AsString;
          vNumNotaDevItem   := tNEntradaItensNumNEntr.AsInteger;
          vCodForncDevItem  := tNEntradaItensCodForn.AsInteger;
          vItemDev          := tNEntradaItensItem.AsInteger;
          vCodMatDev        := tNEntradaItensCodMatFornecedor.AsString;
          Close;
        end;
    end;}
end;

procedure TfEscNotaDevolPorItem2.FormShow(Sender: TObject);
var
  vQtdConsumo, vQtdConsumoInf : Real;
begin
  vQtdSelecionada := 0;
  vCodFornecedor  := 0;
  fNotaFiscalItens.mSelecionado.EmptyDataSet;
  if DM1.tFornecedores.Locate('CGC',DM1.tClienteCgcCpf.AsString,[loCaseInsensitive]) then
    vCodFornecedor := DM1.tFornecedoresCodForn.AsInteger
  else
    ShowMessage('Fornecedor não encontrado com o cgc do cliente!');
  qMaterial.Close;
  if vCodFornecedor > 0 then
    begin
      qMaterial.Params[0].AsInteger := vCodFornecedor;
      qMaterial.Open;
    end;

  if fNotaFiscalItens.mMaterial.RecordCount > 0 then
    begin
      qItemNota.Close;
      qItemNota.Params[0].AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
      qItemNota.Open;
      //Vai abater o consumo do material se este já estiver sido informado na nota fiscal
      fNotaFiscalItens.mMaterial.First;
      while not fNotaFiscalItens.mMaterial.Eof do
        begin
          vQtdConsumoInf := 0;
          vQtdConsumo    := 0;
          qItemNota.Filtered := False;
          qItemNota.Filter   := 'CodProduto = '''+fNotaFiscalItens.mMaterialCodMaterial.AsString+''' and CodCor = '''+fNotaFiscalItens.mMaterialCodCor.AsString+'''';
          qItemNota.Filtered := True;
          qItemNota.First;
          while not qItemNota.Eof do
            begin
              vQtdConsumoInf := vQtdConsumoInf + qItemNotaQtd.AsFloat;
              qItemNota.Next;
            end;
          qItemNota.Filtered := False;
          //*********
          fNotaFiscalItens.mMaterial.Edit;
          fNotaFiscalItens.mMaterialQtdConsumoInf.AsFloat := StrToFloat(FormatFloat('0.0000000',vQtdConsumoInf));
          fNotaFiscalItens.mMaterialQtdConsumo.AsFloat    := StrToFloat(FormatFloat('0.0000000',fNotaFiscalItens.mMaterialQtdConsumoOriginal.AsFloat - fNotaFiscalItens.mMaterialQtdConsumoInf.AsFloat));
          if fNotaFiscalItens.mMaterialQtdConsumo.AsFloat < 0 then
            fNotaFiscalItens.mMaterialQtdConsumo.AsFloat := 0;
          fNotaFiscalItens.mMaterial.Post;

          fNotaFiscalItens.mMaterial.Next;
        end;

    end;


  {if vCodForncDevItem > 0 then
    begin
      RxDBLookupCombo1.KeyValue := vCodForncDevItem;
      CurrencyEdit1.AsInteger   := vNumNotaDevItem;
      CurrencyEdit2.AsInteger   := vItemDev;
    end
  else
    begin
      if DM1.tFornecedores.Locate('CGC',DM1.tClienteCgcCpf.AsString,[loCaseInsensitive]) then
        begin
          RxDBLookupCombo1.KeyValue := DM1.tFornecedoresCodForn.AsInteger;
          RxDBLookupCombo1Exit(Sender);
        end;
    end;}
end;

procedure TfEscNotaDevolPorItem2.RxDBGrid1DblClick(Sender: TObject);
begin
  if CurrencyEdit2.Value <= 0 then
    ShowMessage('Qtd.Restante zerada!')
  else
  if qNotaEntrada.RecordCount > 0 then
    begin
      fNotaFiscalItens.mSelecionado.Last;
      if (fNotaFiscalItens.mSelecionado.RecordCount > 0) and
         ((fNotaFiscalItens.mSelecionadoCodMaterial.AsInteger <> qNotaEntradaCodMaterial.AsInteger) or
         (fNotaFiscalItens.mSelecionadoCodCor.AsInteger <> qNotaEntradaCodCor.AsInteger)) then
        ShowMessage('Material não é igual ao selecionado!')
      else
        begin
          fNotaFiscalItens.mSelecionado.Insert;
          fNotaFiscalItens.mSelecionadoNumNota.AsInteger       := qNotaEntradaNumNEntr.AsInteger;
          fNotaFiscalItens.mSelecionadoSerie.AsString          := qNotaEntradaSerie.AsString;
          fNotaFiscalItens.mSelecionadoItem.AsInteger          := qNotaEntradaItem.AsInteger;
          fNotaFiscalItens.mSelecionadoCodFornecedor.AsInteger := qNotaEntradaCodForn.AsInteger;
          fNotaFiscalItens.mSelecionadoCodMaterial.AsInteger   := qNotaEntradaCodMaterial.AsInteger;
          fNotaFiscalItens.mSelecionadoCodCor.AsInteger        := qNotaEntradaCodCor.AsInteger;
          fNotaFiscalItens.mSelecionadoQtdRestante.AsFloat     := qNotaEntradaQtdRestante.AsFloat;
          if qNotaEntradaQtdRestante.AsFloat <= CurrencyEdit2.Value then
            fNotaFiscalItens.mSelecionadoQtd.AsFloat := qNotaEntradaQtdRestante.AsFloat
          else
            fNotaFiscalItens.mSelecionadoQtd.AsFloat := CurrencyEdit2.Value;
          fNotaFiscalItens.mSelecionadoNomeMaterial.AsString := qNotaEntradalkNomeMaterial.AsString;
          fNotaFiscalItens.mSelecionadoNomeCor.AsString      := qNotaEntradalkNomeCor.AsString;
          fNotaFiscalItens.mSelecionadoUnidade.AsString      := qNotaEntradaUnidade.AsString;
          fNotaFiscalItens.mSelecionadoSitTrib.AsInteger     := qNotaEntradaSitTrib.AsInteger;
          fNotaFiscalItens.mSelecionadoVlrUnitario.AsFloat   := qNotaEntradaVlrUnit.AsFloat;
          fNotaFiscalItens.mSelecionadoVlrTotalItens.AsFloat := qNotaEntradaVlrTotalItens.AsFloat;

          CurrencyEdit2.Value := CurrencyEdit2.Value - fNotaFiscalItens.mSelecionadoQtd.AsFloat;

          vQtdSelecionada     := vQtdSelecionada + fNotaFiscalItens.mSelecionadoQtd.AsFloat;

          fNotaFiscalItens.mSelecionado.Post;
        end;
    end;
end;

procedure TfEscNotaDevolPorItem2.RxDBGrid2DblClick(Sender: TObject);
begin
  if fNotaFiscalItens.mSelecionado.RecordCount > 0 then
    begin
      if MessageDlg('Deseja excluir a nota selecionada?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          CurrencyEdit2.Value := CurrencyEdit2.Value + fNotaFiscalItens.mSelecionadoQtd.AsFloat;
          vQtdSelecionada     := vQtdSelecionada - fNotaFiscalItens.mSelecionadoQtd.AsFloat;
          if vQtdSelecionada < 0 then
            vQtdSelecionada := 0;
          fNotaFiscalItens.mSelecionado.Delete;
        end;
    end;
end;

procedure TfEscNotaDevolPorItem2.CurrencyEdit4Change(Sender: TObject);
begin
  if CurrencyEdit4.AsInteger > 0 then
    begin
      RxDBLookupCombo2.KeyValue := CurrencyEdit4.AsInteger;
      qMaterial.Locate('CodMaterial',CurrencyEdit4.AsInteger,[loCaseInsensitive]);
    end;
end;

procedure TfEscNotaDevolPorItem2.CurrencyEdit4Exit(Sender: TObject);
begin
  RxDBLookupCombo2.SetFocus;
end;

procedure TfEscNotaDevolPorItem2.BitBtn1Click(Sender: TObject);
begin
  qNotaEntrada.Close;
  qNotaEntrada.Params[0].AsInteger := vCodFornecedor;
  if RxDBLookupCombo2.Text <> '' then
    qNotaEntrada.Params[1].AsInteger := RxDBLookupCombo2.KeyValue
  else
    qNotaEntrada.Params[1].AsInteger := fNotaFiscalItens.mMaterialCodMaterial.AsInteger;
  qNotaEntrada.Open;

  CurrencyEdit2.Value := fNotaFiscalItens.mMaterialQtdConsumo.AsFloat;

end;

procedure TfEscNotaDevolPorItem2.BitBtn3Click(Sender: TObject);
begin
  qItemNota.Close;
  qItemNota.Params[0].AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
  qItemNota.Open;

  DM1.tPedido.IndexFieldNames     := 'Pedido';
  DM1.tPedidoItem.IndexFieldNames := 'Pedido;Item';
  DM1.tProduto.IndexFieldNames    := 'Codigo';
  fNotaFiscalItens.mMaterial.EmptyDataSet;
  vItemNotaAux := 0;
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
    begin
      if not DM1.tNotaFiscalItensMaterial.AsBoolean then
        begin
          {if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
            Le_Pedido(DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,'P')
          else
          if DM1.tNotaFiscalItensItemPedido.AsInteger = 99999 then
            begin
              DM1.tNotaFiscalPed.First;
              while not DM1.tNotaFiscalPed.Eof do
                begin
                  Le_Pedido(DM1.tNotaFiscalPedPedido.AsInteger,DM1.tNotaFiscalPedItemPedido.AsInteger,'A');
                  DM1.tNotaFiscalPed.Next;
                end;
            end
          else}
            //begin
              DM1.tProduto.SetKey;
              DM1.tProdutoCodigo.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
              if DM1.tProduto.GotoKey then
                begin
                  DM1.tProdutoMat.Filtered := False;
                  if DM1.tNotaFiscalItensCodCor.AsInteger > 0 then
                    begin
                      DM1.tProdutoMat.Filter   := 'CodCorProd = '''+DM1.tNotaFiscalItensCodCor.AsString+'''';
                      DM1.tProdutoMat.Filtered := True;
                    end;
                  Le_ProdutoMat;
                  DM1.tProdutoMat.Filtered := False;
                end;
            //end;
        end;
      DM1.tNotaFiscalItens.Next;
    end;
end;

procedure TfEscNotaDevolPorItem2.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    CurrencyEdit4.AsInteger := RxDBLookupCombo2.KeyValue;
end;

procedure TfEscNotaDevolPorItem2.RxDBGrid3DblClick(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

end.

