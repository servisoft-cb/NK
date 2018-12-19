unit UPedidoGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, Buttons, Db,
  DBTables, MemTable, Grids, DBVGrids, DBGrids;

type
  TfPedidoGrade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    VDBGrid1: TVDBGrid;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBLookupComboBox4DropDown(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure MontaGrade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPedidoGrade: TfPedidoGrade;

implementation

uses UPedido, UDM1;

{$R *.DFM}

procedure TfPedidoGrade.MontaGrade;
begin
  Edit1.Text := DM1.tGradeCodLetra.AsString;
  Edit2.Text := DM1.tGradeLargura.AsString;
  if fPedido.BitBtn16.Tag <> 2 then
    begin
      if DM1.tGradeTipoDig.AsString = 'P' then
        begin
          CurrencyEdit1.ReadOnly := False;
          CurrencyEdit2.ReadOnly := True;
          VDBGrid1.ReadOnly      := False;
        end
      else
        begin
          CurrencyEdit1.ReadOnly := True;
          CurrencyEdit2.ReadOnly := False;
          VDBGrid1.ReadOnly      := True;
        end;
    end;
  if fPedido.BitBtn16.Tag < 1 then
    begin
      fPedido.tPedidoItemIns.Refresh;
      fPedido.tPedidoItemIns.Last;
      fPedido.tAuxPedidoGrade.First;
      while not fPedido.tAuxPedidoGrade.Eof do
        fPedido.tAuxPedidoGrade.delete;
      DM1.tGradeItem.First;
      while not DM1.tGradeItem.Eof do
        begin
          fPedido.tAuxPedidoGrade.Insert;
          fPedido.tAuxPedidoGradeCodGrade.AsInteger := DM1.tGradeItemCodGrade.AsInteger;
          fPedido.tAuxPedidoGradePosicao.AsInteger       := DM1.tGradeItemPosicao.AsInteger;
          fPedido.tAuxPedidoGradeQtd.AsString            := '';
          fPedido.tAuxPedidoGradeVlrUnitario.AsString    := '';
          fPedido.tAuxPedidoGradeVlrTotal.AsString       := '';
          fPedido.tAuxPedidoGrade.Post;
          DM1.tGradeItem.Next;
        end;
    end;
  fPedido.tAuxPedidoGrade.First;
end;

procedure TfPedidoGrade.FormShow(Sender: TObject);
begin
  BitBtn5.Caption := 'Continuar';
  if fPedido.BitBtn16.Tag = 2 then
    begin
      BitBtn5.Caption := 'Fechar';
      DbLookupComboBox4.Enabled := False;
      CurrencyEdit1.Enabled     := False;
      CurrencyEdit2.Enabled     := False;
      VDBGrid1.ReadOnly         := True;
    end
  else
  if fPedido.BitBtn16.Tag = 1 then
    begin
      DbLookupComboBox4.Enabled := False;
      CurrencyEdit1.Enabled     := True;
      CurrencyEdit2.Enabled     := True;
      VDBGrid1.ReadOnly         := False;
    end
  else
    begin
      DbLookupComboBox4.Enabled := True;
      CurrencyEdit1.Enabled     := True;
      CurrencyEdit2.Enabled     := True;
      VDBGrid1.ReadOnly         := False;
    end;

//  if DM1.tMaterialPrecoGrade.AsBoolean = false then
    vDBGrid1.Columns[2].Destroy;
  if fPedido.BitBtn16.Tag = 2 then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
      DBLookupComboBox4.KeyValue := DM1.tGradeCodigo.AsInteger;
      CurrencyEdit1.AsInteger    := DM1.tPedidoItemQtdPares.AsInteger;
    end
  else
  if fPedido.BitBtn16.Tag = 1 then

    begin
      fPedido.tAuxPedidoGrade.First;
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([fPedido.tAuxPedidoGradeCodGrade.AsInteger]);
      DBLookupComboBox4.KeyValue := DM1.tGradeCodigo.AsInteger;
    end
  else
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tProdutoCodGrade.AsInteger]);
      DBLookupComboBox4.KeyValue := DM1.tGradeCodigo.AsInteger;
    end;
  MontaGrade;
  if fPedido.BitBtn16.Tag = 1 then
    begin
      CurrencyEdit1.Value := fPedido.CurrencyEdit1.Value;
      CurrencyEdit2.Value := 0;
      if DM1.tGradeTipoDig.AsString = 'T' then
        CurrencyEdit2.Value := CurrencyEdit1.AsInteger / DM1.tGradeQtdParTotal.AsInteger;
    end;
end;

procedure TfPedidoGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPedidoGrade.VDBGrid1Enter(Sender: TObject);
begin
 if CurrencyEdit1.Value = 0 then
   begin
     if fPedido.BitBtn16.Tag <> 2 then
       begin
         ShowMessage('É obrigatório informar a quantidade total!');
         CurrencyEdit1.SetFocus;
       end;
   end
 else
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfPedidoGrade.BitBtn5Click(Sender: TObject);
var
 vQtd, vVlrTotal : Real;
begin
  if fPedido.BitBtn16.Tag <> 2 then
    begin
      vQtd      := 0;
      vVlrTotal := 0;
      fPedido.tAuxPedidoGrade.First;
      while not fPedido.tAuxPedidoGrade.Eof do
        begin
          vQtd := vQtd + fPedido.tAuxPedidoGradeQtd.AsFloat;
          vVlrTotal := vVlrTotal + (fPedido.tAuxPedidoGradeQtd.AsFloat * fPedido.tAuxPedidoGradeVlrUnitario.AsFloat);
          fPedido.tAuxPedidoGrade.Next;
        end;
      if vQtd <> CurrencyEdit1.Value then
        begin
          ShowMessage('Quantidade da grade diferente da quantidade total!');
          CurrencyEdit1.SetFocus;
        end
      else
        begin
          fPedido.CurrencyEdit1.Value := vQtd;
          Close
        end;
    end
  else
  if fPedido.BitBtn16.Tag = 2 then
    Close;
end;

procedure TfPedidoGrade.DBLookupComboBox4CloseUp(Sender: TObject);
begin
  if DBLookupComboBox4.Text <> '' then
    begin
      Edit1.Text := DM1.tGradeCodLetra.AsString;
      Edit2.Text := DM1.tGradeLargura.AsString;
    end;
  DM1.tGrade.IndexFieldNames := 'Codigo';
end;

procedure TfPedidoGrade.DBLookupComboBox4DropDown(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfPedidoGrade.DBLookupComboBox4Exit(Sender: TObject);
begin
  MontaGrade;
end;

procedure TfPedidoGrade.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfPedidoGrade.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;


procedure TfPedidoGrade.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfPedidoGrade.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vQtdPares : Integer;
begin
  vQtdPares := 0;
  if (Key = Vk_Return) and (DM1.tGradeTipoDig.AsString = 'T') then
    begin
      DM1.tGradeItem.First;
      while not DM1.tGradeItem.Eof do
        begin
          if fPedido.tAuxPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tGradeItemCodGrade.AsInteger,DM1.tGradeItemPosicao.AsInteger]),[locaseinsensitive]) then
            begin
              fPedido.tAuxPedidoGrade.Edit;
              fPedido.tAuxPedidoGradeQtd.AsInteger := DM1.tGradeItemQtdPar.AsInteger * CurrencyEdit2.AsInteger;
              vQtdPares := vQtdPares + fPedido.tAuxPedidoGradeQtd.AsInteger;
              fPedido.tAuxPedidoGrade.Post;
            end;
          DM1.tGradeItem.Next;
        end;
    end;
  CurrencyEdit1.AsInteger := vQtdPares;
end;

end.
