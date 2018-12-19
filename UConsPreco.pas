unit UConsPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, StdCtrls, RxLookup, Buttons, ExtCtrls, Mask,
  ToolEdit, CurrEdit, DBCtrls, DBFilter, Db, DBTables;

type
  TfConsPreco = class(TForm)
    RxDBGrid1: TRxDBGrid;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn8: TBitBtn;
    Bevel1: TBevel;
    BitBtn6: TBitBtn;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel1: TPanel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StaticText1: TStaticText;
    DBText1: TDBText;
    StaticText2: TStaticText;
    DBText2: TDBText;
    StaticText3: TStaticText;
    DBText3: TDBText;
    StaticText4: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    RxDBFilter3: TRxDBFilter;
    StaticText5: TStaticText;
    DBText4: TDBText;
    StaticText6: TStaticText;
    CurrencyEdit3: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Calcula_Produto;
  public
    { Public declarations }
  end;

var
  fConsPreco: TfConsPreco;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsPreco.Calcula_Produto;
begin
  

end;

procedure TfConsPreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter3.Active    := False;
  DM1.tProduto.Filtered := False;
  Action := Cafree;
end;

procedure TfConsPreco.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tGrupo.IndexFieldNames := 'Nome';
end;

procedure TfConsPreco.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPreco.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
  RxDBLookupCombo3.ClearValue;
end;

procedure TfConsPreco.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
  RxDBLookupCombo1.ClearValue;
end;

procedure TfConsPreco.BitBtn1Click(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
    begin
          if MessageDlg('Aplicar o % nos produtos?',mtWarning,[mbOK,mbNO],0) = mrOK then
            begin
              if MessageDlg('                                  ATENÇÃO'
                            +#13#13+
                            'Após confirmar a operação de cálculo, vai ser aplicada'+#13+
                            '  em todos os produtos selecionados na tabela abaixo, confirma mesmo assim?',mtInformation,
                            [mbOK,mbNO],0) = mrOK then
                Calcula_Produto;
            end;
    end
  else
    begin
      ShowMessage('Falta informar o %');
      CurrencyEdit1.SetFocus;
    end;
end;

procedure TfConsPreco.BitBtn8Click(Sender: TObject);
begin
  Dm1.tProduto.Filtered := False;
  if RxDBLookupCombo2.Text <> '' then
    begin
      Dm1.tProduto.Filter   := 'CodGrupo = '''+IntToStr(RxDBLookupCombo2.KeyValue)+'''';
      Dm1.tProduto.Filtered := True;
    end;
end;

procedure TfConsPreco.BitBtn4Click(Sender: TObject);
begin
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfConsPreco.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    BitBtn2.SetFocus;
end;

procedure TfConsPreco.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    BitBtn2.SetFocus;
end;

procedure TfConsPreco.BitBtn5Click(Sender: TObject);
begin
  if (DM1.tProdutoCodigo.AsInteger > 0) and ((CurrencyEdit2.Value > 0) or (CurrencyEdit3.Value > 0)) then
    begin
      DM1.tProduto.Edit;
      if CurrencyEdit2.Value > 0 then
        DM1.tProdutoVlrVenda.AsFloat   := CurrencyEdit2.Value;
      if CurrencyEdit3.Value > 0 then
        DM1.tProdutoPrecoCusto.AsFloat := CurrencyEdit3.Value;
      DM1.tProdutoDtAlteracao.AsDateTime := Date;
      DM1.tProduto.Post;
    end;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  if RxDBLookupCombo1.Text <> '' then
    RxDBLookupCombo1.SetFocus
  else
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo3.SetFocus
  else
    RxDBGrid1.SetFocus;
end;

procedure TfConsPreco.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return
  else
  if (Key = vk_Return) and (DM1.tProdutoCodigo.AsInteger > 0) then
    CurrencyEdit3.SetFocus;
end;

procedure TfConsPreco.BitBtn2Click(Sender: TObject);
begin
  if (RxDBLookupCombo1.Text <> '') or (RxDBLookupCombo3.Text <> '') then
    CurrencyEdit3.SetFocus
  else
    begin
      ShowMessage('Falta informar um produto!');
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfConsPreco.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tProdutoDtAlteracao.AsDateTime = Date then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
end;

procedure TfConsPreco.RxDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tProdutoCodigo.AsInteger > 0 then
    CurrencyEdit3.SetFocus;
end;            

procedure TfConsPreco.FormShow(Sender: TObject);
begin
  RxDBFilter3.Active := True;
end;

end.
