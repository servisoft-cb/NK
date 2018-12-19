unit UMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ComCtrls,
  Db, DBTables, RXLookup, Grids, DBGrids, DBVGrids, MemTable, DBFilter, RXDBCtrl, rsDBUtils;

type
  TfMaterial = class(TForm)
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    tProdutoIns: TTable;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    SpeedButton5: TSpeedButton;
    tProdutoCorIns: TTable;
    GroupBox2: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    tAuxMaterialGrade: TTable;
    dsAuxMaterialGrade: TDataSource;
    tAuxMaterialGradeCodGrade: TIntegerField;
    tAuxMaterialGradePosicao: TIntegerField;
    tAuxMaterialGradeTamanho: TStringField;
    tAuxMaterialGradePeso: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SpeedButton6: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBGrid1: TDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    TabSheet2: TTabSheet;
    SpeedButton7: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText3: TStaticText;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    RxDBFilter1: TRxDBFilter;
    DBRadioGroup3: TDBRadioGroup;
    tAuxMaterialGradeTamMaterial: TStringField;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    tProdutoMat: TTable;
    tProdutoMatCodMaterial: TIntegerField;
    tProdutoMatCodProduto: TIntegerField;
    tProdutoMatCodCor: TIntegerField;
    BitBtn15: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    Label9: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    Label13: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SpeedButton9: TSpeedButton;
    Label17: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    DBCheckBox6: TDBCheckBox;
    tProdutoInsCodigo: TIntegerField;
    tProdutoInsReferencia: TStringField;
    DBCheckBox7: TDBCheckBox;
    DBEdit2: TDBEdit;
    RxDBFilter2: TRxDBFilter;
    tProdutoCorInsCodProduto: TIntegerField;
    tProdutoCorInsCodCor: TIntegerField;
    tProdutoCorInsPrCusto: TFloatField;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    Label31: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton6Click(Sender: TObject);
    procedure tAuxMaterialGradeBeforeInsert(DataSet: TDataSet);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn15Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    procedure Habilita;
    procedure opcoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMaterial: TfMaterial;

implementation

uses UGrupos, UDM1, UFornecedores, UGrade, UCor, UMaterialGrade, USitTributaria, UClasFiscal, UOrigemProd,
  UDMTabImposto;

{$R *.DFM}

procedure TfMaterial.Habilita;
begin
  Panel2.Enabled           := not(Panel2.Enabled);
  Panel4.Enabled           := not(Panel4.Enabled);
  BitBtn1.Enabled          := not(BitBtn1.Enabled);
  BitBtn2.Enabled          := not(BitBtn2.Enabled);
  BitBtn3.Enabled          := not(BitBtn3.Enabled);
  BitBtn4.Enabled          := not(BitBtn4.Enabled);
  BitBtn5.Enabled          := not(BitBtn5.Enabled);
  BitBtn6.Enabled          := not(BitBtn6.Enabled);
  BitBtn7.Enabled          := not(BitBtn7.Enabled);
  BitBtn8.Enabled          := not(BitBtn8.Enabled);
  BitBtn9.Enabled          := not(BitBtn9.Enabled);
  BitBtn10.Enabled         := not(BitBtn10.Enabled);
  BitBtn11.Enabled         := not(BitBtn11.Enabled);
  BitBtn12.Enabled         := not(BitBtn12.Enabled);
  BitBtn15.Enabled         := not(BitBtn15.Enabled);
  SpeedButton6.Enabled     := not(SpeedButton6.Enabled);
  SpeedButton7.Enabled     := not(SpeedButton7.Enabled);
  DBNavigator1.Enabled     := not(DBNavigator1.Enabled);
  RxDBLookupCombo1.Enabled := not(RxDBLookupCombo1.Enabled);
  RxDBLookupCombo2.Enabled := not(RxDBLookupCombo2.Enabled);
  CurrencyEdit1.Enabled    := not(CurrencyEdit1.Enabled);
end;

procedure TfMaterial.Opcoes;
begin
  Label12.Visible := False;
  DbEdit7.Visible := False;
  TabSheet1.Enabled         := DbCheckBox2.Checked;
  TabSheet2.Enabled         := DbCheckBox5.Checked;
  RxDBLookupCombo7.Enabled  := DbCheckBox5.Checked;
  CurrencyEdit1.Enabled     := DbCheckBox4.Checked;
  DbCheckBox4.Enabled       := DbCheckBox2.Checked;
  CurrencyEdit1.Enabled     := DbCheckBox4.Checked;
  if not (DbCheckBox4.Checked) then
  begin
    Label12.Visible := True;
    DbEdit7.Visible := True;
  end;
end;

procedure TfMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);

  RxDBFilter1.Active := True;
  RxDBFilter2.Active := True;

  if DMTabImposto.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMTabImposto);

  Action := Cafree;
end;

procedure TfMaterial.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfMaterial.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioGrupos.AsBoolean then
  begin
    fGrupos := TfGrupos.Create(Self);
    fGrupos.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de grupos!');
end;

procedure TfMaterial.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsMaterial.AsBoolean then
    begin
      BitBtn2.Tag := 0;
      DM1.tProduto.IndexFieldNames   := 'Codigo';
      tProdutoIns.IndexFieldNames := 'Codigo';
      tProdutoIns.Refresh;
      tProdutoIns.Last;
      DM1.tProduto.Refresh;
      DM1.tProduto.Insert;
      DM1.tProdutoCodigo.AsInteger        := tProdutoInsCodigo.AsInteger + 1;
      DM1.tProdutoLancaCor.AsBoolean      := False;
      DM1.tProdutoPrecoCor.AsBoolean      := False;
      DM1.tProdutoLancaGrade.AsBoolean    := False;
      DM1.tProdutoPrecoGrade.AsBoolean    := False;
      DM1.tProdutoInativo.AsBoolean       := False;
      DM1.tProdutoEstoque.AsBoolean       := True;
      DM1.tProdutoPosseMat.AsString       := 'E';
      DM1.tProdutoMaterialOutros.AsString := 'M';
      DM1.tProdutoProdMat.AsString        := 'M';
      DM1.tProdutoDtAlteracao.AsDateTime  := Date;
      DM1.tProduto.Post;
      DM1.tProduto.Edit;
      Habilita;
      Opcoes;
      PageControl1.ActivePage := TabSheet1;
      RxDBLookupCombo4.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMaterial.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMaterial.AsBoolean then
    begin
      DM1.tProduto.Edit;
      Habilita;
      BitBtn2.Tag := 1;
      PageControl1.ActivePage := TabSheet1;
      RxDBLookupCombo4.SetFocus;
      opcoes;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMaterial.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
  begin
    DM1.tProdutoCor.First;
    while not DM1.tProdutoCor.Eof do
      DM1.tProdutoCor.Delete;
    DM1.tMaterialGradeNum.First;
    while not DM1.tMaterialGradeNum.Eof do
      DM1.tMaterialGradeNum.Delete;
    DM1.tProduto.Delete;
  end
  else
  if BitBtn2.Tag = 1 then
    DM1.tProduto.Cancel;
  BitBtn2.Tag := 0;
  RxDBLookupCombo2.ClearValue;
  CurrencyEdit1.Clear;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfMaterial.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcMaterial.AsBoolean then
  begin
    if tProdutoMat.Locate('CodMaterial',DM1.tProdutoCodigo.AsInteger,[loCaseInsensitive]) then
      ShowMessage('Este material não pode ser excluido, pois esta no produto ' + tProdutoMatCodProduto.AsString)
    else
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
      begin
        DM1.tProdutoCor.First;
        while not DM1.tProdutoCor.Eof do
          DM1.tProdutoCor.Delete;
        DM1.tMaterialGradeNum.First;
        while not DM1.tMaterialGradeNum.Eof do
          DM1.tMaterialGradeNum.Delete;
        DM1.tProduto.Delete;
      end;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMaterial.BitBtn5Click(Sender: TObject);
begin
  if DM1.tProduto.State in [dsEdit,dsInsert] then
    begin
      if (DbCheckBox5.Checked = True) and (DM1.tProdutoCodGrade.AsInteger < 1) then
        ShowMessage('Falta o código da grade!')
      else
        begin
          DM1.tProduto.Post;
          BitBtn2.Tag := 0;
          RxDBLookupCombo2.ClearValue;
          CurrencyEdit1.Clear;
          Habilita;
          BitBtn1.SetFocus;
        end;
    end;
end;

procedure TfMaterial.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
    begin
      fFornecedores := TfFornecedores.Create(Self);
      fFornecedores.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfMaterial.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tProduto.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o material antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfMaterial.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioGrade.AsBoolean then
    begin
      fGrade := TfGrade.Create(Self);
      fGrade.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de grades!');
end;

procedure TfMaterial.BitBtn7Click(Sender: TObject);
begin
  if not (RxDBLookupCombo2.Text <> '') then
    ShowMessage('Falta o nome da cor!')
  else
  if BitBtn15.Tag = 1 then
    begin
      if DM1.tProdutoCor.Locate('CodProduto;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,RxDBLookupCombo2.KeyValue]),[locaseinsensitive]) then
        begin
          if DM1.tProdutoCorCodCor.AsInteger <> RxDBLookupCombo2.KeyValue then
            ShowMessage('Quando for alterado uma cor, a mesma não pode ser trocada')
          else
            begin
              DM1.tProdutoCor.Edit;
              DM1.tProdutoCorPrCusto.AsFloat   := CurrencyEdit1.Value;
              DM1.tProdutoCor.Post;
              BitBtn15.Tag := 0;
            end;
        end;
    end
  else
  if DM1.tProdutoCor.Locate('CodProduto;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,RxDBLookupCombo2.KeyValue]),[locaseinsensitive]) then
    ShowMessage('Esta cor já esta no material!')
  else
    begin
      DM1.tProdutoCor.Refresh;
      DM1.tProdutoCor.Insert;
      DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tProdutoCorCodCor.AsInteger     := RxDBLookupCombo2.KeyValue;
      DM1.tProdutoCorPrCusto.AsFloat      := CurrencyEdit1.Value;
      DM1.tProdutoCor.Post;
      BitBtn15.Tag := 0;
    end;
  BitBtn8Click(Sender);
end;

procedure TfMaterial.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo2.ReadOnly := False;
  RxDBLookupCombo2.ClearValue;
  CurrencyEdit1.Clear;
  RxDBLookupCombo2.SetFocus;
  BitBtn15.Tag := 0;
end;

procedure TfMaterial.BitBtn9Click(Sender: TObject);
begin
  if not DM1.tProdutoCor.IsEmpty then
    begin
      if tProdutoMat.Locate('CodMaterial;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,DM1.tProdutoCorCodCor.AsInteger]),[locaseinsensitive]) then
        ShowMessage('Esta cor não pode ser excluida, pois esta no produto ' + tProdutoMatCodProduto.AsString)
      else
        if MessageDlg('Deseja realmente excluir esta cor?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
          DM1.tProdutoCor.Delete;
    end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfMaterial.DBCheckBox2Click(Sender: TObject);
begin
  Opcoes;
end;

procedure TfMaterial.GroupBox2Exit(Sender: TObject);
begin
  Opcoes;
end;

procedure TfMaterial.DBCheckBox5Click(Sender: TObject);
begin
  Opcoes;
end;

procedure TfMaterial.DBCheckBox4Click(Sender: TObject);
begin
  if DbCheckBox4.Checked then
    Opcoes;
end;

procedure TfMaterial.GroupBox1Enter(Sender: TObject);
begin
  opcoes;
end;

procedure TfMaterial.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  Opcoes;
end;

procedure TfMaterial.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioCor.AsBoolean then
    begin
      fCor := TfCor.Create(Self);
      fCor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cores!');
end;

procedure TfMaterial.tAuxMaterialGradeBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  icount := fMaterial.tAuxMaterialGrade.RecordCount;
  if icount >= DM1.tGradeItem.RecordCount then
    begin
      fMaterialGrade.BitBtn6.SetFocus;
      Abort;
    end;
end;

procedure TfMaterial.BitBtn10Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      tAuxMaterialGrade.First;
      while not tAuxMaterialGrade.Eof do
        begin
          DM1.tMaterialGradeNum.SetKey;
          DM1.tMaterialGradeNumCodMaterial.AsInteger := DM1.tProdutoCodigo.AsInteger;
          DM1.tMaterialGradeNumCodGrade.AsInteger    := tAuxMaterialGradeCodGrade.AsInteger;
          DM1.tMaterialGradeNumPosicao.AsInteger     := tAuxMaterialGradePosicao.AsInteger;
          if DM1.tMaterialGradeNum.GotoKey then                           
            DM1.tMaterialGradeNum.Edit
          else
            begin
              DM1.tMaterialGradeNum.Insert;
              DM1.tMaterialGradeNumCodMaterial.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tMaterialGradeNumCodGrade.AsInteger    := tAuxMaterialGradeCodGrade.AsInteger;
              DM1.tMaterialGradeNumPosicao.AsInteger     := tAuxMaterialGradePosicao.AsInteger;
            end;
          DM1.tMaterialGradeNumTamanho.AsString      := tAuxMaterialGradeTamanho.AsString;
          DM1.tMaterialGradeNumTamMaterial.AsString  := tAuxMaterialGradeTamMaterial.AsString;
          DM1.tMaterialGradeNumCodGradeMat.AsInteger := DM1.tProdutoCodGrade.AsInteger;
          if DM1.tGradeItemlk.Locate('CodGrade;Tamanho',VarArrayOf([DM1.tProdutoCodGrade.AsInteger,DM1.tMaterialGradeNumTamMaterial.AsString]),[locaseinsensitive]) then
            DM1.tMaterialGradeNumPosicaoMat.AsInteger := DM1.tGradeItemlkPosicao.AsInteger;
          DM1.tMaterialGradeNum.Post;
          tAuxMaterialGrade.Next;
        end;
    end;
  BitBtn11Click(Sender);
end;

procedure TfMaterial.BitBtn11Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfMaterial.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioGrade.AsBoolean then
    begin
      fGrade := TfGrade.Create(Self);
      fGrade.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de grades!');
end;

procedure TfMaterial.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Value <> '' then
    begin
      fMaterialGrade := TfMaterialGrade.Create(Self);
      fMaterialGrade.ShowModal;
    end;
end;

procedure TfMaterial.BitBtn12Click(Sender: TObject);
begin
  if not DM1.tMaterialGradeNum.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        DM1.tMaterialGradeNum.Delete;
    end
  else
    ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
end;

procedure TfMaterial.RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo6.LookupDisplay = 'NomeForn' then
        begin
           RxDBLookupCombo6.CloseUp(True);
           RxDBLookupCombo6.LookupDisplay    := 'Fantasia';
           DM1.tFornecedores.IndexFieldNames := 'Fantasia';
           DM1.tFornecedores.Refresh;
           Label8.Caption := 'Fantasia';
        end
      else
      if RxDBLookupCombo6.LookupDisplay = 'Fantasia' then
        begin
          RxDBLookupCombo6.CloseUp(True);
          RxDBLookupCombo6.LookupDisplay    := 'NomeForn';
          DM1.tFornecedores.IndexFieldNames := 'NomeForn';
          DM1.tFornecedores.Refresh;
          Label8.Caption := 'Nome';
        end;
    end;
end;

procedure TfMaterial.BitBtn15Click(Sender: TObject);
begin
  if DM1.tProdutoPrecoCor.AsBoolean then
    begin
      if not DM1.tProdutoCor.IsEmpty then
        begin
          if RxDBLookupCombo2.Text = '' then
            begin
              BitBtn15.Tag := 1;
              RxDBLookupCombo2.KeyValue := DM1.tProdutoCorCodCor.AsInteger;
              CurrencyEdit1.Value       := DM1.tProdutoCorPrCusto.AsFloat;
              RxDBLookupCombo2.ReadOnly := True;
              CurrencyEdit1.SetFocus;
            end
          else
            ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
        end
      else
        ShowMessage('Não registro p/ ser alterado!');
    end;
end;

procedure TfMaterial.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfMaterial.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioClasFiscal.AsBoolean then
    begin
      fClasFiscal := TfClasFiscal.Create(Self);
      fClasFiscal.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfMaterial.CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([CurrencyEdit3.AsInteger]);
    end;
end;

procedure TfMaterial.CurrencyEdit3Enter(Sender: TObject);
begin
  RxDBLookupCombo3.ClearValue;
end;

procedure TfMaterial.RxDBLookupCombo4Exit(Sender: TObject);
var
  i : Integer;
  vAux : String;
begin
  if (DBEdit2.Text = '') or (BitBtn2.Tag = 0) then
    begin
      if DM1.tGrupoReferencia.AsString = '' then
        DM1.tProdutoReferencia.AsString := 'M.';
      vAux := DM1.tProdutoCodigo.AsString;
      for i := 1 to 6 - Length(vAux) do
        vAux := '0' + vAux;
      DM1.tProdutoReferencia.AsString := DM1.tProdutoReferencia.AsString + vAux;
    end;
  DM1.tGrupo.IndexFieldNames := 'Codigo';
end;

procedure TfMaterial.DBEdit2Exit(Sender: TObject);
begin
  if DM1.tProdutoReferencia.AsString <> '' then
    begin
      if tProdutoIns.Locate('Referencia',DM1.tProdutoReferencia.AsString,[loCaseInsensitive]) then
        begin
          if tProdutoInsCodigo.AsInteger <> DM1.tProdutoCodigo.AsInteger then
            begin
              ShowMessage('Referência já cadastrada!');
              DM1.tProdutoReferencia.Clear;
              DBEdit2.SetFocus;
            end;
        end;
    end;
end;

procedure TfMaterial.FormCreate(Sender: TObject);
begin
  if not Assigned(DMTabImposto) then
    DMTabImposto := TDMTabImposto.Create(Self);

  oDBUtils.OpenTables(True,Self);
  RxDBFilter1.Active := True;
  RxDBFilter2.Active := True;
  Opcoes;
end;

procedure TfMaterial.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tGrupo.IndexFieldNames := 'Nome';
end;

procedure TfMaterial.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCor.IndexFieldNames := 'Nome';
end;

procedure TfMaterial.RxDBLookupCombo6Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfMaterial.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfMaterial.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tProduto.Refresh;
  DM1.tProduto.IndexFieldNames := 'Nome';
  CurrencyEdit3.Clear;
end;

procedure TfMaterial.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioRegimeTrib.AsBoolean then
  begin
    fOrigemProd := TfOrigemProd.Create(Self);
    fOrigemProd.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir o formulário!');
end;

end.
