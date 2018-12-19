unit UOrdemCompraCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, Buttons, Db,
  DBTables, MemTable, Grids, DBVGrids, DBGrids, RxLookup;

type
  TfOrdemCompraCor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    VDBGrid1: TVDBGrid;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
  private
    procedure MontaGrade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrdemCompraCor: TfOrdemCompraCor;

implementation

uses UOrdemCompra, UDM1;

{$R *.DFM}

procedure TfOrdemCompraCor.MontaGrade;
begin
  Edit2.Text := DM1.tGradeCodLetra.AsString;
  Edit3.Text := DM1.tGradeLargura.AsString;
  if fOrdemCompra.BitBtn16.Tag < 1 then
    begin
      fOrdemCompra.tAuxOrdemCompra.First;
      while not fOrdemCompra.tAuxOrdemCompra.Eof do
        fOrdemCompra.tAuxOrdemCompra.delete;
      DM1.tGradeItem.First;
      while not DM1.tGradeItem.Eof do
        begin
          fOrdemCompra.tAuxOrdemCompra.Insert;
          fOrdemCompra.tAuxOrdemCompraCodGrade.AsInteger    := DM1.tGradeItemCodGrade.AsInteger;
          fOrdemCompra.tAuxOrdemCompraPosicao.AsInteger     := DM1.tGradeItemPosicao.AsInteger;
          fOrdemCompra.tAuxOrdemCompraQtd.AsString          := '';
          fOrdemCompra.tAuxOrdemCompraVlrUnitario.AsString  := '';
          fOrdemCompra.tAuxOrdemCompraVlrTotal.AsString     := '';
          fOrdemCompra.tAuxOrdemCompra.Post;
          DM1.tGradeItem.Next;
        end;  
    end;
  fOrdemCompra.tAuxOrdemCompra.First;
end;

procedure TfOrdemCompraCor.FormShow(Sender: TObject);
begin
  if DM1.tProdutoPrecoGrade.AsBoolean = false then
    vDBGrid1.Columns[2].Destroy;
  DM1.tGrade.IndexFieldNames := 'Codigo';
  DM1.tGrade.FindKey([DM1.tProdutoCodGrade.AsInteger]);
  RxDBLookupCombo1.KeyValue := DM1.tProdutoCodGrade.AsInteger;
  MontaGrade;
  if fOrdemCompra.BitBtn16.Tag = 1 then
    CurrencyEdit1.Value := fOrdemCompra.CurrencyEdit1.Value;
end;

procedure TfOrdemCompraCor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfOrdemCompraCor.VDBGrid1Enter(Sender: TObject);
begin
 if CurrencyEdit1.Value = 0 then
   begin
     ShowMessage('É obrigatório informar a quantidade total!');
     CurrencyEdit1.SetFocus;
   end
 else
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfOrdemCompraCor.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrdemCompraCor.BitBtn5Click(Sender: TObject);
var
 vQtd, vVlrTotal : Real;
begin
  vQtd      := 0;
  vVlrTotal := 0;
  fOrdemCompra.tAuxOrdemCompra.First;
  while not fOrdemCompra.tAuxOrdemCompra.Eof do
    begin
      vQtd := vQtd + fOrdemCompra.tAuxOrdemCompraQtd.asFloat;
      vVlrTotal := vVlrTotal + (fOrdemCompra.tAuxOrdemCompraQtd.AsFloat * fOrdemCompra.tAuxOrdemCompraVlrUnitario.AsFloat);
      fOrdemCompra.tAuxOrdemCompra.Next;
    end;
  if vQtd <> CurrencyEdit1.Value then
    begin
      ShowMessage('Quantidade da grade diferente da quantidade total!');
      CurrencyEdit1.SetFocus;
    end
  else
    begin
      fOrdemCompra.CurrencyEdit1.Value := vQtd;
      fOrdemCompra.CurrencyEdit3.Value := vVlrTotal;
      BitBtn6.SetFocus;
    end;
end;

procedure TfOrdemCompraCor.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      Edit2.Text := DM1.tGradeCodLetra.AsString;
      Edit3.Text := DM1.tGradeLargura.AsString;
    end;
  DM1.tGrade.IndexFieldNames := 'Codigo';
end;

procedure TfOrdemCompraCor.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfOrdemCompraCor.RxDBLookupCombo1Exit(Sender: TObject);
begin
  MontaGrade;
end;

procedure TfOrdemCompraCor.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfOrdemCompraCor.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

end.
