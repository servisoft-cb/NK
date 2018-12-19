unit UOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ComCtrls,
  Db, DBTables, RXLookup, Grids, DBGrids, RXDBCtrl, Menus, RXCtrls, DBFilter, ALed, rsDBUtils;

type
  TfOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label6: TLabel;
    Edit1: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBDateEdit1: TDBDateEdit;
    RxSpeedButton2: TRxSpeedButton;
    Edit2: TEdit;
    BitBtn16: TBitBtn;
    StaticText10: TStaticText;
    RxDBGrid1: TRxDBGrid;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText14: TStaticText;
    StaticText11: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    StaticText6: TStaticText;
    BitBtn10: TBitBtn;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RxDBLookupCombo1Click(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
  private
    procedure Habilita;
    procedure AtualizaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrcamento: TfOrcamento;
  vTotalPesoTr : Real;
  Obs   : Array [1..6] of String[126];
  vEdit : String[1];
  T, vCodFornecedor, vItem : Integer;

implementation

uses UDM1, UDM2, UCondPgto, UMaterial, Printers, UCliente,
  UConsOrcamento, URelOrcamentoMail, UAprovaOrcamento, uUtil;


{$R *.DFM}

procedure TfOrcamento.Habilita;
begin
  Panel2.Enabled         := not(Panel2.Enabled);
  Panel4.Enabled         := not(Panel4.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn2.Enabled        := not(BitBtn2.Enabled);
  BitBtn3.Enabled        := not(BitBtn3.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn6.Enabled        := not(BitBtn6.Enabled);
  RxSpeedButton2.Enabled := not(RxSpeedButton2.Enabled);
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
  DBMemo1.ReadOnly       := not(DBMemo1.ReadOnly);
  bitbtn10.Enabled       := not(bitbtn10.Enabled); 
end;

procedure TfOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfOrcamento.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrcamento.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  BitBtn2.Tag := 0;
  if DM1.tUsuarioInsOrcamento.AsBoolean then
    begin
      DM1.tOrcamento.IndexFieldNames  := 'NumOrcamento';
      DM1.tOrcamento.Refresh;
      DM1.tOrcamento.Last;
      vNumAux := DM1.tOrcamentoNumOrcamento.AsInteger;

      DM1.tOrcamento.Insert;
      DM1.tOrcamentoNumOrcamento.AsInteger    := vNumAux + 1;
      DM1.tOrcamentoData.AsDateTime           := Date;
      DM1.tOrcamentoAprovado.AsString         := 'P';
      DM1.tOrcamentoQtdDiasValidade.AsInteger := 30;
      DM1.tOrcamentoPrazoPagto.AsString       := 'À COMBINAR';
      DM1.tOrcamento.Post;
      DM1.tOrcamento.Edit;

      //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
      AtualizaTela;

      vEdit := 'N';
      vItem := 0;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfOrcamento.BitBtn2Click(Sender: TObject);
begin
  BitBtn2.Tag := 1;
  DM1.tOrcamento.IndexFieldNames := 'NumOrcamento';
  vEdit := 'N';
  vItem := 0;
  if DM1.tUsuarioAltOrcamento.AsBoolean then
    begin
      DM1.tOrcamento.Edit;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfOrcamento.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      DM1.tOrcamentoItens.First;
      while not DM1.tOrcamentoItens.Eof do
        DM1.tOrcamentoItens.Delete;
      DM1.tOrcamento.Delete;
    end
  else
    DM1.tOrcamento.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
end;

procedure TfOrcamento.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  if DM1.tUsuarioExcOrcamento.AsBoolean then
    begin
      vExcluir := True;
      if DM1.tOrcamentoAprovado.AsString = 'A' then
        vExcluir := False;
      if vExcluir then
        begin
          if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              DM1.tOrcamentoItens.First;
              while not DM1.tOrcamentoItens.Eof do
                DM1.tOrcamentoItens.Delete;
              DM1.tOrcamento.Delete;
              DM1.tOrcamento.Refresh;
              //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
              AtualizaTela;
            end
        end
      else
        ShowMessage('Orçamento já foi aprovador!');
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfOrcamento.BitBtn5Click(Sender: TObject);
begin
  BitBtn2.Tag := 0;
  if DM1.tOrcamento.State in [dsEdit,dsInsert] then
    begin
      DM1.tOrcamento.Post;
      DM1.tOrcamentoItens.Refresh;
      DM1.tOrcamento.Refresh;
      //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
      AtualizaTela;
      Habilita;
      BitBtn1.SetFocus;
    end;
end;

procedure TfOrcamento.DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  DM1.tOrcamento.IndexFieldNames := 'NumOrcamento';
end;

procedure TfOrcamento.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tOrcamento.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o orçamento antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfOrcamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) and (Dm1.tOrcamento.State in [dsBrowse]) then
    begin
      fConsOrcamento := TfConsOrcamento.Create(Self);
      fConsOrcamento.ShowModal;
    end;
end;

procedure TfOrcamento.BitBtn7Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if (Edit1.Text = '') or (Edit4.Text = '') or (CurrencyEdit2.Value = 0) or (Trim(Edit3.Text) = '') then
    ShowMessage('Falta informar <Referência>, <Nome do Produto>, <Quantidade> ou <Prazo de Entrega>!')
  else
    begin
      DM1.tOrcamentoItens.Refresh;
      DM1.tOrcamentoItens.Last;
      vItemAux := DM1.tOrcamentoItensItem.AsInteger;

      DM1.tOrcamentoItens.Insert;
      DM1.tOrcamentoItensNumOrcamento.AsInteger := DM1.tOrcamentoNumOrcamento.AsInteger;
      if vEdit = 'S' then
        DM1.tOrcamentoItensItem.AsInteger  := vItem
      else
        DM1.tOrcamentoItensItem.AsInteger      := vItemAux + 1;
      DM1.tOrcamentoItensReferencia.AsString   := Edit1.Text;
      DM1.tOrcamentoItensNomeProduto.AsString  := Edit4.Text;
      DM1.tOrcamentoItensVlrUnitario.AsFloat   := CurrencyEdit2.Value;
      DM1.tOrcamentoItensComMatriz.AsBoolean   := CheckBox1.Checked;
      DM1.tOrcamentoItensQtd.AsFloat           := CurrencyEdit1.Value;
      DM1.tOrcamentoItensVlrTotal.AsFloat      := CurrencyEdit3.Value;
      //DM1.tOrcamentoItensDtEntrega.AsDateTime  := DateEdit1.Date;
      DM1.tOrcamentoItensPrazoEntrega.AsString := Edit3.Text;
      DM1.tOrcamentoItens.Post;
      DM1.tOrcamentoVlrTotal.AsFloat          := DM1.tOrcamentoVlrTotal.AsFloat + CurrencyEdit3.Value;
      BitBtn8Click(Sender);
    end;
  Edit1.SetFocus;
end;

procedure TfOrcamento.BitBtn8Click(Sender: TObject);
begin
  vItem := 0;
  vEdit := 'N';
  Edit1.Clear;
  Edit4.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CheckBox1.Checked := False;
end;

procedure TfOrcamento.BitBtn9Click(Sender: TObject);
begin
  if (not DM1.tOrcamentoItens.IsEmpty) then
    begin
      if MessageDlg('Deseja realmente excluir este item ?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tOrcamentoVlrTotal.AsFloat     := DM1.tOrcamentoVlrTotal.AsFloat - DM1.tOrcamentoItensVlrTotal.AsFloat;
          DM1.tOrcamentoItens.Delete;
        end;
    end
  else
    ShowMessage('Não há registro p/ ser excluído, ou item ja entregue!');
end;

procedure TfOrcamento.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit2.Value * CurrencyEdit1.Value));
end;

procedure TfOrcamento.FormShow(Sender: TObject);
begin
  DM1.tOrcamento.Refresh;
  DM1.tOrcamentoItens.Refresh;
  DM1.tProduto.Open;
  //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
  AtualizaTela;
end;

procedure TfOrcamento.Edit2Change(Sender: TObject);
begin
  try
    DM1.tOrcamento.IndexFieldNames := 'NumOrcamento';
    DM1.tOrcamento.FindKey([Edit2.Text]);
    //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
    AtualizaTela;
  except
  end;
end;

procedure TfOrcamento.BitBtn16Click(Sender: TObject);
begin
  if DM1.tOrcamentoItens.RecordCount > 0 then
    begin
      vEdit := 'S';
      vItem := DM1.tOrcamentoItensItem.AsInteger;
      Edit1.Text          := DM1.tOrcamentoItensReferencia.AsString;
      Edit4.Text          := DM1.tOrcamentoItensNomeProduto.AsString;
      CurrencyEdit2.Value := DM1.tOrcamentoItensVlrUnitario.AsFloat;
      CheckBox1.Checked   := DM1.tOrcamentoItensComMatriz.AsBoolean;
      CurrencyEdit1.Value := DM1.tOrcamentoItensQtd.AsFloat;
      CurrencyEdit3.Value := DM1.tOrcamentoItensVlrTotal.AsFloat;
      //DateEdit1.Date      := DM1.tOrcamentoItensDtEntrega.AsDateTime;
      Edit3.Text          := DM1.tOrcamentoItensPrazoEntrega.AsString;
      DM1.tOrcamentoVlrTotal.AsFloat := DM1.tOrcamentoVlrTotal.AsFloat - DM1.tOrcamentoItensVlrTotal.AsFloat;
      DM1.tOrcamentoItens.Delete;
      Edit1.SetFocus;
    end;
end;

procedure TfOrcamento.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
  AtualizaTela;
end;

procedure TfOrcamento.RxDBLookupCombo1Click(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo1.Text;
  //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
  AtualizaTela;
end;

procedure TfOrcamento.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tOrcamento.Refresh;
  DM1.tOrcamento.IndexFieldNames := 'NumOrcamento';
  Edit2.Text := RxDBLookupCombo1.Text;
  //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
  AtualizaTela;
end;

procedure TfOrcamento.RxDBLookupCombo1Exit(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo1.Text;
  //StaticText11.Visible := DM1.tOrcamentoAprovado.AsString = 'A';
  AtualizaTela;
end;

procedure TfOrcamento.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
      DM1.tCliente.Refresh;
      DM1.tCliente.IndexFieldNames := 'Nome';
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfOrcamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfOrcamento.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if ((BitBtn2.Tag < 1) and (RxDBLookupCombo2.Text <> '')) or
     ((BitBtn2.Tag = 1) and (DM1.tOrcamentoNomeCliente.AsString <> '')) then
  begin
    DM1.tCliente.IndexFieldNames := 'Codigo';
    DM1.tCliente.SetKey;
    DM1.tClienteCodigo.AsInteger := RxDBLookupCombo2.KeyValue;
    if DM1.tCliente.GotoKey then
      begin
        DM1.tOrcamentoNomeCliente.AsString := DM1.tClienteNome.AsString;
        DM1.tOrcamentoFone.AsString        := DM1.tClienteTelefone.AsString;
        DM1.tOrcamentoEmail.AsString       := DM1.tClienteEmail.AsString;
      end;
  end;
end;

procedure TfOrcamento.BitBtn10Click(Sender: TObject);
begin
  fAprovaOrcamento := TfAprovaOrcamento.Create(nil);
  try
    fAprovaOrcamento.ShowModal;
  finally
    FreeAndNil(fAprovaOrcamento);
  end;
end;

procedure TfOrcamento.AtualizaTela;
begin
  if DM1.tOrcamentoAprovado.AsString = 'A' then
    StaticText11.Caption := 'Aprovado'
  else
    if DM1.tOrcamentoAprovado.AsString = 'N' then
      StaticText11.Caption := 'Não Aprovado'
    else
      StaticText11.Caption := 'Pendente';

  StaticText11.Visible := DM1.tOrcamentoAprovado.AsString <> 'P';
end;

procedure TfOrcamento.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tClasFiscal,Name);
end;

procedure TfOrcamento.RxSpeedButton2Click(Sender: TObject);
var
  NumOrc : integer;
begin
  NumOrc := DM1.tOrcamentoNumOrcamento.AsInteger;

  Dm1.tCliente.Filtered := False;
  Dm1.tCliente.Filter   := 'Codigo = '''+IntToStr(Dm1.tOrcamentoCodCliente.AsInteger)+'''';
  Dm1.tCliente.Filtered := True;

  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.Filter   := 'NumOrcamento = '''+IntToStr(NumOrc)+'''';
  DM1.tOrcamento.Filtered := True;

  vFormulario := 'Orcamento';
  if trim(DM1.tOrcamentoEmail.AsString) <> '' then
    vEmail_Fortes := DM1.tOrcamentoEmail.AsString
  else
    vEmail_Fortes := DM1.tClienteEmail.AsString;
  vEmail_Assunto_Fortes := 'Orçamento Nº ' +  DM1.tOrcamentoNumOrcamento.AsString;
  vEmail_Fortes_Corpo   := 'Em Anexo Orçamento  Nº ' + DM1.tOrcamentoNumOrcamento.AsString;

  fRelOrcamentoMail := TfRelOrcamentoMail.Create(Self);
  fRelOrcamentoMail.RLReport1.Preview;
  fRelOrcamentoMail.RLReport1.Free;

  Dm1.tCliente.Filtered := False;
  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.FindKey([NumOrc]);
end;

end.
