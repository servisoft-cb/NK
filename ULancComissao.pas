unit ULancComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, db,
  Grids, DBGrids, ExtCtrls, StdCtrls, ALed, RXDBCtrl, RXLookup, CurrEdit,
  Mask, ToolEdit, Buttons, DBTables, SMDBGrid;

type
  TfLancComissao = class(TForm)
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    tExtComissaoIns: TTable;
    tExtComissaoInsNroLancamento: TIntegerField;
    tExtComissaoInsCodVendedor: TIntegerField;
    tExtComissaoInsDtReferencia: TDateField;
    tExtComissaoInsNroDoc: TIntegerField;
    tExtComissaoInsParcDoc: TIntegerField;
    tExtComissaoInsCodCliente: TIntegerField;
    tExtComissaoInsFuncao: TStringField;
    tExtComissaoInsVlrBase: TFloatField;
    tExtComissaoInsPercDescDupl: TFloatField;
    tExtComissaoInsPercComissao: TFloatField;
    tExtComissaoInsVlrComissao: TFloatField;
    tExtComissaoInsTipo: TStringField;
    tExtComissaoInsSuspensa: TBooleanField;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLancComissao: TfLancComissao;
  vTipo, vCodigo : String;
  vAlterar       : Boolean;  

implementation

uses UDM1;

{$R *.DFM}

procedure TfLancComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tExtComissao.IndexFieldNames := 'NroLancamento';
  Action := caFree;
end;

procedure TfLancComissao.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfLancComissao.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfLancComissao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfLancComissao.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir esta comissão?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DM1.tExtComissao.Delete;
end;

procedure TfLancComissao.BitBtn3Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      if MessageDlg('Deseja realmente alterar esta comissão?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          RxDBLookupCombo2.KeyValue := DM1.tExtComissaoCodCliente.AsInteger;
          DateEdit1.Text            := DM1.tExtComissaoDtReferencia.AsString;
          CurrencyEdit1.Value       := DM1.tExtComissaoNroDoc.AsInteger;
          CurrencyEdit2.Value       := DM1.tExtComissaoParcDoc.AsInteger;
          if DM1.tExtComissaoFuncao.AsString = 'E' then
            ComboBox1.ItemIndex := 0
          else
          if DM1.tExtComissaoFuncao.AsString = 'S' then
            ComboBox1.ItemIndex := 1
          else
          if DM1.tExtComissaoFuncao.AsString = 'D' then
            ComboBox1.ItemIndex := 2;
          CurrencyEdit3.Value       := DM1.tExtComissaoPercDescDupl.AsFloat;
          CurrencyEdit4.Value       := DM1.tExtComissaoPercComissao.AsFloat;
          CurrencyEdit5.Value       := DM1.tExtComissaoVlrBase.AsFloat;
          CurrencyEdit6.Value       := DM1.tExtComissaoVlrComissao.AsFloat;
          vTipo                     := DM1.tExtComissaoTipo.AsString;
          vCodigo                   := DM1.tExtComissaoNroLancamento.AsString;
          DM1.tExtComissao.Delete;
          vAlterar := True;
        end;
    end
  else
    begin
      ShowMessage('Não foi preenchido campo de Vendedor!');
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfLancComissao.BitBtn2Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex < 0 then
    ShowMessage('Falta escolher um função!')
  else
  if (RxDBLookupCombo1.Text <> '') and (DateEdit1.Text <> '  /  /    ') and (CurrencyEdit6.Text <> '') then
    begin
      DM1.tExtComissao.Refresh;
      tExtComissaoIns.Refresh;
      tExtComissaoIns.Last;
      DM1.tExtComissao.Insert;
      if vAlterar then
        begin
          DM1.tExtComissaoNroLancamento.AsInteger := StrToInt(vCodigo);
          vAlterar := False;
        end
      else
        DM1.tExtComissaoNroLancamento.AsInteger := tExtComissaoInsNroLancamento.AsInteger + 1;
      DM1.tExtComissaoCodVendedor.AsInteger   := RxDBLookupCombo1.KeyValue;
      if RxDBLookupCombo2.Text <> '' then
        DM1.tExtComissaoCodCliente.AsInteger    := RxDBLookupCombo2.KeyValue;
      DM1.tExtComissaoDtReferencia.AsString   := DateEdit1.Text;
      if CurrencyEdit1.Text = '' then
        DM1.tExtComissaoNroDoc.AsInteger      :=  0
      else
        DM1.tExtComissaoNroDoc.AsInteger      := StrToInt(CurrencyEdit1.Text);
      if CurrencyEdit2.Text = '' then
        DM1.tExtComissaoParcDoc.AsInteger     :=  0
      else
        DM1.tExtComissaoParcDoc.AsInteger     :=  StrToInt(CurrencyEdit2.Text);
      case ComboBox1.ItemIndex of
        0 : DM1.tExtComissaoFuncao.AsString :=  'E';
        1 : DM1.tExtComissaoFuncao.AsString :=  'S';
        2 : DM1.tExtComissaoFuncao.AsString :=  'D';
      end;
      DM1.tExtComissaoPercDescDupl.AsFloat  :=  CurrencyEdit3.Value;
      DM1.tExtComissaoPercComissao.AsFloat  :=  CurrencyEdit4.Value;
      DM1.tExtComissaoVlrBase.AsFloat       :=  CurrencyEdit5.Value;
      DM1.tExtComissaoVlrComissao.AsFloat   :=  CurrencyEdit6.Value;
      if vTipo <> '' then
        DM1.tExtComissaoTipo.AsString         :=  vTipo
      else
        DM1.tExtComissaoTipo.AsString         :=  'M';
      DM1.tExtComissaoFilial.AsInteger := 1;
      DM1.tExtComissao.Post;
      DM1.tExtComissao.Refresh;
      RxDBLookupCombo2.ClearValue;
      CurrencyEdit1.Clear;
      CurrencyEdit2.Clear;
      CurrencyEdit3.Clear;
      CurrencyEdit4.Clear;
      CurrencyEdit5.Clear;
      CurrencyEdit6.Clear;
      DateEdit1.Clear;
      ComboBox1.ItemIndex := 0;
      RxDBLookupCombo2.SetFocus;
    end
  else
    begin
      ShowMessage('Existem campos não preenchidos, "VENDEDOR", "DATA" ou "COMISSÃO" !');
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfLancComissao.RxDBLookupCombo1Change(Sender: TObject);
begin
  DM1.tExtComissao.Filtered := False;
  DM1.tExtComissao.Filter   := 'CodVendedor = '''+DM1.tVendedorCodigo.AsString+'''';
  DM1.tExtComissao.Filtered := True;
end;

procedure TfLancComissao.CurrencyEdit5Exit(Sender: TObject);
var
vValorBase, vValorCom : Currency;
begin
  if CurrencyEdit4.Value > 0 then
    begin
      vValorBase := CurrencyEdit5.Value - CurrencyEdit3.Value;;
      vValorCom  := (vValorBase * CurrencyEdit4.Value) / 100;
      CurrencyEdit6.Value := vValorCom;
    end;
end;

procedure TfLancComissao.FormShow(Sender: TObject);
begin
  DM1.tExtComissao.IndexFieldNames := 'CodVendedor;DtReferencia';
  vTipo    := '';
  vCodigo  := '';
  vAlterar := False;
end;

procedure TfLancComissao.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : DM1.tExtComissao.IndexFieldNames := 'NroLancamento';
    1 : DM1.tExtComissao.IndexFieldNames := 'CodVendedor;DtReferencia';
  end;
end;

procedure TfLancComissao.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tExtComissaoSuspensa.AsBoolean then
    Background := clRed;
end;

end.
