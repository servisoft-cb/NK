unit UPedidoMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, DbTables, Grids, DBGrids,
  RXCtrls, Menus, RXDBCtrl, RXLookup, ToolEdit, CurrEdit, DBFilter,
  DBVGrids, MemTable;

type
  TfPedidoMat = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    DBText1: TDBText;
    RxLabel2: TRxLabel;
    DBText2: TDBText;
    RxLabel3: TRxLabel;
    DBText3: TDBText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    Bevel1: TBevel;
    RxDBGrid1: TRxDBGrid;
    BitBtn1: TBitBtn;
    RxDBFilter1: TRxDBFilter;
    RadioGroup1: TRadioGroup;
    BitBtn16: TBitBtn;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    VDBGrid1: TVDBGrid;
    Bevel2: TBevel;
    GroupBox2: TGroupBox;
    VDBGrid2: TVDBGrid;
    mPedidoConsumo: TMemoryTable;
    mPedidoConsumoCodGrade: TIntegerField;
    mPedidoConsumoPosicao: TIntegerField;
    mPedidoConsumoQtd: TFloatField;
    mPedidoConsumolkTamanho: TStringField;
    dsmPedidoConsumo: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2CloseUp(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure RadioGroup2Exit(Sender: TObject);
    procedure mPedidoConsumoBeforeInsert(DataSet: TDataSet);
    procedure GroupBox2Enter(Sender: TObject);
    procedure VDBGrid2CellClick(Column: TColumn);
    procedure VDBGrid2ColEnter(Sender: TObject);
    procedure VDBGrid2Enter(Sender: TObject);
  private
    { Private declarations }
    vItemMatPed : Integer;
  public
    { Public declarations }
  end;

var
  fPedidoMat: TfPedidoMat;

implementation

uses UPedido, UDM1;

{$R *.DFM}

procedure TfPedidoMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  Action := CaFree;
end;

procedure TfPedidoMat.RxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := 0;
end;

procedure TfPedidoMat.BitBtn5Click(Sender: TObject);
begin
  if ((RadioGroup2.ItemIndex = 0) and (CurrencyEdit1.Value = 0)) or
     (RxDBLookupCombo2.Text = '') then
    ShowMessage('Existem campos em branco')
  else
  if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo3.Text = '') then
    ShowMessage('É obrigatório informar a cor')
  else
    begin
      DM1.tPedidoMaterial.Refresh;
      fPedido.tPedidoMaterialIns.Refresh;
      fPedido.tPedidoMaterialIns.Refresh;
      fPedido.tPedidoMaterialIns.Last;
      DM1.tPedidoMaterial.Insert;
      DM1.tPedidoMaterialPedido.AsInteger       := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoMaterialItemPed.AsInteger      := DM1.tPedidoItemItem.AsInteger;
      if vItemMatPed > 0 then
        DM1.tPedidoMaterialOrdem.AsInteger      := vItemMatPed
      else
        DM1.tPedidoMaterialOrdem.AsInteger        := fPedido.tPedidoMaterialInsOrdem.AsInteger + 1;
      if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo3.Text <> '') then
        DM1.tPedidoMaterialCodCor.AsInteger     := RxDBLookupCombo3.KeyValue
      else
        DM1.tPedidoMaterialCodCor.AsInteger     := 0;
      if RxDBLookupCombo2.Text <> '' then
        DM1.tPedidoMaterialCodMaterial.AsInteger := RxDBLookupCombo2.KeyValue;
      Case RadioGroup1.ItemIndex of
        0 : DM1.tPedidoMaterialImpTalao.AsString := 'S';
        1 : DM1.tPedidoMaterialImpTalao.AsString := 'N';
      end;
      DM1.tPedidoMaterialConsumoPr.AsFloat      := CurrencyEdit1.Value;
      Case RadioGroup2.ItemIndex of
        0 : DM1.tPedidoMaterialTipoConsumo.AsString := 'G';
        1 : begin
              DM1.tPedidoMaterialTipoConsumo.AsString := 'T';
              mPedidoConsumo.First;
              while not mPedidoConsumo.Eof do
                begin
                  DM1.tPedidoConsumo.Insert;
                  DM1.tPedidoConsumoPedido.AsInteger      := DM1.tPedidoMaterialPedido.AsInteger;
                  DM1.tPedidoConsumoItemPed.AsInteger     := DM1.tPedidoMaterialItemPed.AsInteger;
                  DM1.tPedidoConsumoOrdem.AsInteger       := DM1.tPedidoMaterialOrdem.AsInteger;
                  DM1.tPedidoConsumoCodGrade.AsInteger    := mPedidoConsumoCodGrade.AsInteger;
                  DM1.tPedidoConsumoPosicao.AsInteger     := mPedidoConsumoPosicao.AsInteger;
                  DM1.tPedidoConsumoConsumo.AsFloat       := mPedidoConsumoQtd.AsFloat;
                  DM1.tPedidoConsumo.Post;
                  mPedidoConsumo.Next;
                end;
            end;
      end;
      mPedidoConsumo.EmptyTable;
      DM1.tPedidoMaterial.Post;
      RxDBLookupCombo2.ClearValue;
      RxDBLookupCombo3.ClearValue;
      CurrencyEdit1.Clear;
      RxDBLookupCombo2.SetFocus;
      RadioGroup2.Enabled := True;
      RxDBLookupCombo2.SetFocus;
      vItemMatPed := 0;
    end;
end;

procedure TfPedidoMat.BitBtn6Click(Sender: TObject);
begin
  mPedidoConsumo.EmptyTable;
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo3.ClearValue;
  CurrencyEdit1.Clear;
  RadioGroup1.ItemIndex := 0;
  RadioGroup2.Enabled   := True;
  vItemMatPed           := 0;
end;

procedure TfPedidoMat.BitBtn7Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
    DM1.tPedidoMaterial.Delete;
end;

procedure TfPedidoMat.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPedidoMat.FormShow(Sender: TObject);
begin
  vItemMatPed := 0;
  RxDBFilter1.Active := True;
  if fPedido.vEdit = 'C' then
    begin
      Panel1.Enabled     := False;
      RxDBGrid1.ReadOnly := True;
    end
  else
    begin
      Panel1.Enabled     := True;
      RxDBGrid1.ReadOnly := False;
    end;
  RadioGroup2.Enabled := True;
end;

procedure TfPedidoMat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfPedidoMat.RxDBLookupCombo2CloseUp(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
end;
              
procedure TfPedidoMat.BitBtn16Click(Sender: TObject);
begin
  if DM1.tPedidoMaterialOrdem.AsInteger > 0 then
    begin
      vItemMatPed := DM1.tPedidoMaterialOrdem.AsInteger;
      RxDBLookupCombo2.KeyValue := DM1.tPedidoMaterialCodMaterial.AsInteger;
      if DM1.tPedidoMaterialCodCor.AsInteger > 0 then
        RxDBLookupCombo3.KeyValue := DM1.tPedidoMaterialCodCor.AsInteger;
      if DM1.tPedidoMaterialImpTalao.AsString = 'S' then
        RadioGroup1.ItemIndex := 0
      else
        RadioGroup1.ItemIndex := 1;
      CurrencyEdit1.Value := DM1.tPedidoMaterialConsumoPr.AsFloat;
      if DM1.tPedidoMaterialTipoConsumo.AsString = 'G' then
        begin
          RadioGroup2.ItemIndex := 0;
          CurrencyEdit1.Enabled := True;
        end
      else
        begin
          RadioGroup2.ItemIndex := 1;
          CurrencyEdit1.Enabled := False;
          mPedidoConsumo.EmptyTable;
          DM1.tPedidoConsumo.First;
          while not DM1.tPedidoConsumo.Eof do
            begin
              mPedidoConsumo.Insert;
              mPedidoConsumoCodGrade.AsInteger := DM1.tPedidoConsumoCodGrade.AsInteger;
              mPedidoConsumoPosicao.AsInteger  := DM1.tPedidoConsumoPosicao.AsInteger;
              mPedidoConsumoQtd.AsFloat        := DM1.tPedidoConsumoConsumo.AsFloat;
              mPedidoConsumo.Post;
              DM1.tPedidoConsumo.Delete;
            end;
          mPedidoConsumo.First;
        end;
      DM1.tPedidoMaterial.Delete;
      RadioGroup2.Enabled := False;
      RxDBLookupCombo2.SetFocus;
    end;
end;

procedure TfPedidoMat.RadioGroup2Exit(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then
    begin
      CurrencyEdit1.Enabled := True;
      GroupBox2.Enabled     := False;
      mPedidoConsumo.EmptyTable;
    end
  else
    begin
      CurrencyEdit1.Enabled := False;
      GroupBox2.Enabled     := True;
      mPedidoConsumo.EmptyTable;
      DM1.tPedidoGrade.First;
      while not DM1.tPedidoGrade.Eof do
        begin
          mPedidoConsumo.Insert;
          mPedidoConsumoCodGrade.AsInteger := DM1.tPedidoGradeCodGrade.AsInteger;
          mPedidoConsumoPosicao.AsInteger  := DM1.tPedidoGradePosicao.AsInteger;
          mPedidoConsumoQtd.AsFloat        := 0;
          mPedidoConsumo.Post;
          DM1.tPedidoGrade.Next;
        end;
      mPedidoConsumo.First;
    end;
  RadioGroup1.SetFocus;
end;

procedure TfPedidoMat.mPedidoConsumoBeforeInsert(DataSet: TDataSet);
begin
  if mPedidoConsumo.RecordCount >= DM1.tPedidoGrade.RecordCount then
    begin
      BitBtn5.SetFocus;
      Abort;
    end;
end;

procedure TfPedidoMat.GroupBox2Enter(Sender: TObject);
begin
  if mPedidoConsumo.RecordCount < 1 then
    RxDBLookupCombo2.SetFocus;
end;

procedure TfPedidoMat.VDBGrid2CellClick(Column: TColumn);
begin
 if vDBGrid2.SelectedIndex = 0 then
   vDBGrid2.SelectedIndex := 1;
end;

procedure TfPedidoMat.VDBGrid2ColEnter(Sender: TObject);
begin
 if vDBGrid2.SelectedIndex = 0 then
   vDBGrid2.SelectedIndex := 1;
end;

procedure TfPedidoMat.VDBGrid2Enter(Sender: TObject);
begin
 if vDBGrid2.SelectedIndex = 0 then
   vDBGrid2.SelectedIndex := 1;
end;

end.
