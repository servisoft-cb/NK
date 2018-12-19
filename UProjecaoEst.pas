unit UProjecaoEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, DBFilter, Buttons, RXCtrls, Mask, ToolEdit, CurrEdit,
  Grids, DBGrids, RXDBCtrl, Db, DBTables;

type
  TfProjecaoEst = class(TForm)
    StaticText1: TStaticText;
    RxDBFilter1: TRxDBFilter;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn5: TBitBtn;
    RxLabel1: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBGrid1: TRxDBGrid;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qEstoque: TQuery;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueQtd: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProjecaoEst: TfProjecaoEst;

implementation

uses UDM1, URelProjecaoEst;

{$R *.DFM}

procedure TfProjecaoEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qEstoque.Close;
  RxDBFilter1.Active        := False;
  DM1.tProjecaoEst.Filtered := False;
  Action := Cafree;
end;

procedure TfProjecaoEst.FormShow(Sender: TObject);
begin
  RxDBFilter1.Active   := True;
  RxDBGrid1.DataSource := nil;
end;

procedure TfProjecaoEst.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este produto da projeção?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    DM1.tProjecaoEst.Delete;
end;

procedure TfProjecaoEst.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfProjecaoEst.BitBtn5Click(Sender: TObject);
begin
  if (RxDBLookupCombo1.Text <> '') and (CurrencyEdit1.AsInteger > 0) then
    begin
      DM1.tProjecaoEst.SetKey;
      DM1.tProjecaoEstAno.AsInteger        := CurrencyEdit1.AsInteger;
      DM1.tProjecaoEstCodProduto.AsInteger := RxDBLookupCombo1.KeyValue;
      if not DM1.tProjecaoEst.GotoKey then
        begin
          DM1.tProjecaoEst.Insert;
          DM1.tProjecaoEstAno.AsInteger        := CurrencyEdit1.AsInteger;
          DM1.tProjecaoEstCodProduto.AsInteger := RxDBLookupCombo1.KeyValue;
          DM1.tProjecaoEst.Post;
        end;
    end;
end;

procedure TfProjecaoEst.BitBtn1Click(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      DM1.tProjecaoEst.Filtered  := False;
      DM1.tProjecaoEst.Filter    := 'Ano = '''+CurrencyEdit1.Text+'''';
      DM1.tProjecaoEst.Filtered  := True;
      BitBtn5.Enabled            := True;
      RxDBGrid1.DataSource       := DM1.dsProjecaoEst;
    end;
end;

procedure TfProjecaoEst.BitBtn2Click(Sender: TObject);
begin
  if DM1.tProjecaoEst.RecordCount > 0 then
    begin
      qEstoque.Close;
      qEstoque.Open;
      fRelProjecaoEst := TfRelProjecaoEst.Create(Self);
      fRelProjecaoEst.QuickRep1.Preview;
      fRelProjecaoEst.Free;
    end;
end;

end.
