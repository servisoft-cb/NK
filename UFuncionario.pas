unit UFuncionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB, ExtCtrls, StdCtrls, RxLookup, DBCtrls, Buttons, Mask, ComCtrls, ToolEdit, Variants,
  RXDBCtrl, Grids, DBGrids, CurrEdit, rsDBUtils;

type
  TfFuncionario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    BitBtn6: TBitBtn;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label24: TLabel;
    DBMemo1: TDBMemo;
    Label25: TLabel;
    DateEdit1: TDateEdit;
    Label26: TLabel;
    DateEdit2: TDateEdit;
    BitBtn7: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    Label27: TLabel;
    DateEdit3: TDateEdit;
    Label28: TLabel;
    Edit1: TEdit;
    Label29: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBGrid2: TRxDBGrid;
    BitBtn8: TBitBtn;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    TabSheet4: TTabSheet;
    Panel9: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    DateEdit4: TDateEdit;
    Edit2: TEdit;
    RxDBGrid3: TRxDBGrid;
    BitBtn9: TBitBtn;
    Label32: TLabel;
    DBEdit17: TDBEdit;
    Label33: TLabel;
    DBEdit18: TDBEdit;
    Label34: TLabel;
    DBEdit19: TDBEdit;
    Label35: TLabel;
    DBEdit20: TDBEdit;
    BitBtn10: TBitBtn;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton12: TSpeedButton;
    TabSheet5: TTabSheet;
    Panel10: TPanel;
    StaticText1: TStaticText;
    DateEdit5: TDateEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText2: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    StaticText3: TStaticText;
    BitBtn11: TBitBtn;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    RxDBGrid4: TRxDBGrid;
    StaticText4: TStaticText;
    Label36: TLabel;
    DBEdit21: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure Panel10Enter(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fFuncionario: TfFuncionario;
  vAltera, vAltera2 : Boolean;
  vItem, vItem2 : Integer;

implementation

uses UDM1, UDM2, UCidade, UUf, UPrevFichaFunc, UMotivo, UConsEPI, uIntegracao;

{$R *.DFM}

procedure TfFuncionario.Habilita;
begin
  DBNavigator1.Enabled  := not(DBNavigator1.Enabled);
  BitBtn1.Enabled       := not(BitBtn1.Enabled);
  BitBtn2.Enabled       := not(BitBtn2.Enabled);
  BitBtn3.Enabled       := not(BitBtn3.Enabled);
  BitBtn4.Enabled       := not(BitBtn4.Enabled);
  BitBtn5.Enabled       := not(BitBtn5.Enabled);
  BitBtn6.Enabled       := not(BitBtn6.Enabled);
  BitBtn7.Enabled       := not(BitBtn7.Enabled);
  BitBtn8.Enabled       := not(BitBtn8.Enabled);
  BitBtn10.Enabled      := not(BitBtn10.Enabled);
  DateEdit1.Enabled     := not(DateEdit1.Enabled);
  DateEdit2.Enabled     := not(DateEdit2.Enabled);
  DateEdit3.Enabled     := not(DateEdit3.Enabled);
  Edit1.Enabled         := not(Edit1.Enabled);
  CurrencyEdit1.Enabled := not(CurrencyEdit1.Enabled);
  Panel2.Enabled        := not(Panel2.Enabled);
  Panel4.Enabled        := not(Panel4.Enabled);
  Panel6.Enabled        := not(Panel6.Enabled);
  SpeedButton2.Enabled  := not(SpeedButton2.Enabled);
  SpeedButton3.Enabled  := not(SpeedButton3.Enabled);
  SpeedButton5.Enabled  := not(SpeedButton5.Enabled);
  SpeedButton6.Enabled  := not(SpeedButton6.Enabled);
  SpeedButton7.Enabled  := not(SpeedButton7.Enabled);
  SpeedButton8.Enabled  := not(SpeedButton8.Enabled);
  Panel9.Enabled        := not(Panel9.Enabled);
  Panel10.Enabled       := not(Panel10.Enabled);
end;

procedure TfFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  DM2.qEquipEPI.Close;
  Action := Cafree;
end;

procedure TfFuncionario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tFuncionario.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve confirmar ou cancelar este registro, antes de fechar este formulário!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfFuncionario.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfFuncionario.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tFuncionario.IndexFieldNames := 'Codigo';
end;

procedure TfFuncionario.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  DM1.tFuncionario.IndexFieldNames := 'Codigo';
end;

procedure TfFuncionario.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfFuncionario.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo2.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if (DM1.tCidadeEstado.AsString <> '') and (RxDBLookupCombo6.Text = '') then
            DM1.tFuncionarioUf.AsString := DM1.tCidadeEstado.AsString;
          if (DBEdit4.Text = '     -   ') and (DM1.tCidadeCep.AsString <> '') then
            DM1.tFuncionarioCep.AsString := DM1.tCidadeCep.AsString;
        end;
    end;
end;

procedure TfFuncionario.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioCidade.AsBoolean then
    begin
      fCidade := TfCidade.Create(Self);
      fCidade.ShowModal;
    end
  else
    ShowMessage('Usuário '+ DM1.tUsuarioUsuario.AsString + ' não pode abrir este formulário!');
end;

procedure TfFuncionario.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
    begin
      fUf := TfUf.Create(Self);
      fUf.ShowModal;
    end
  else
    ShowMessage('Usuário '+ DM1.tUsuarioUsuario.AsString + ' não pode abrir este formulário!');
end;

procedure TfFuncionario.BitBtn1Click(Sender: TObject);
var
  vCodAux : Integer;
begin
  if DM1.tUsuarioInsFuncionario.AsBoolean then
    begin
      DM1.tFuncionario.IndexFieldNames := 'Codigo';
      DM1.tFuncionario.Refresh;
      DM1.tFuncionario.Last;
      vCodAux := DM1.tFuncionarioCodigo.AsInteger;
      DM1.tFuncionario.Insert;
      DM1.tFuncionarioCodigo.AsInteger  := vCodAux + 1;
      DM1.tFuncionarioTipoPgto.AsString := 'M';
      DM1.tFuncionario.Post;
      DM1.tFuncionario.Edit;
      Habilita;
      DBEdit1.SetFocus
    end
  else
    ShowMessage('Usuário '+DM1.tUsuarioUsuario.AsString+' não autorizado a fazer inserção!');
end;

procedure TfFuncionario.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltFuncionario.AsBoolean then
    begin
      if not DM1.tFuncionario.IsEmpty then
        begin
          DM1.tFuncionario.Edit;
          BitBtn2.Tag := 1;
          Habilita;
          DBEdit1.SetFocus;
        end
      else
        ShowMessage('Não há registro p/ ser alterado!');
    end
  else
    ShowMessage('Usuário '+DM1.tUsuarioUsuario.AsString+' não autorizado a fazer alteração!');
end;

procedure TfFuncionario.BitBtn3Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      DM1.tSalario.First;
      while not DM1.tSalario.Eof do
        DM1.tSalario.Delete;
      DM1.tFerias.First;
      while not DM1.tFerias.Eof do
        DM1.tFerias.Delete;
      DM1.tFuncFaltas.First;
      while not DM1.tFuncFaltas.Eof do
        DM1.tFuncFaltas.Delete;
      DM1.tFuncionarioEPI.First;
      while not DM1.tFuncionarioEPI.Eof do
        DM1.tFuncionarioEPI.Delete;
      DM1.tFuncionario.Delete;
    end
  else
    DM1.tFuncionario.Cancel;
  SpeedButton10.Click;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfFuncionario.BitBtn4Click(Sender: TObject);
var
  vCodAux : Integer;
begin
  if DM1.tUsuarioExcFuncionario.AsBoolean then
    begin
      if not DM1.tFuncionario.IsEmpty then
        begin
          if MessageDlg('Deseja realmente excluir este funcionário?',mtconfirmation,[mbok,mbno],0)=mrok then
            begin
              DM1.tSalario.First;
              while not DM1.tSalario.Eof do
                DM1.tSalario.Delete;
              DM1.tFerias.First;
              while not DM1.tFerias.Eof do
                DM1.tFerias.Delete;
              DM1.tFuncFaltas.First;
              while not DM1.tFuncFaltas.Eof do
                DM1.tFuncFaltas.Delete;
              DM1.tFuncionarioEPI.First;
              while not DM1.tFuncionarioEPI.Eof do
                DM1.tFuncionarioEPI.Delete;
              vCodAux := DM1.tFuncionarioCodigo.AsInteger;
              DM1.tFuncionario.Delete;
              Prc_Excluir_Funcionario_FB(vCodAux);
            end;
        end
      else
        ShowMessage('Não há registro p/ ser excluído!');
    end
  else
    ShowMessage('Usuário '+DM1.tUsuarioUsuario.AsString+' não autorizado a fazer exclusão!');
end;

procedure TfFuncionario.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfFuncionario.BitBtn6Click(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
    begin
      DM1.tFuncionario.Post;

      Prc_Gravar_Funcionario_FB(DM1.tFuncionarioCodigo.AsInteger);

      SpeedButton10.Click;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end
  else
    begin
      ShowMessage('Não pode ser confirmado um cadastro s/ o nome do funcionário!');
      DBEdit1.SetFocus;
    end;
end;

procedure TfFuncionario.BitBtn7Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      if DateEdit2.Date > DateEdit1.Date then
        begin
          DM1.tFerias.Refresh;
          DM1.tFerias.Last;
          vItemAux := DM1.tFeriasItem.AsInteger;
          DM1.tFerias.Insert;
          DM1.tFeriasCodFuncionario.AsInteger := DM1.tFuncionarioCodigo.AsInteger;
          if vAltera then
            DM1.tFeriasItem.AsInteger := vItem
          else
            DM1.tFeriasItem.AsInteger := vItemAux + 1;
          DM1.tFeriasDtInicial.AsDateTime     := DateEdit1.Date;
          DM1.tFeriasDtFinal.AsDateTime       := DateEdit2.Date;
          DM1.tFerias.Post;
          vAltera                             := False;
          DateEdit1.Clear;
          DateEdit2.Clear;
          DateEdit1.SetFocus;
        end
      else
        begin
          ShowMessage('"Data Inicial" não pode ser maior que "Data Final"!');
          DateEdit1.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('Deve ser informado datas "Inicial" e "Final" p/ cadastrar um período de férias!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfFuncionario.SpeedButton2Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
  vAltera := False;
  DateEdit1.SetFocus;
end;

procedure TfFuncionario.SpeedButton3Click(Sender: TObject);
begin
  if not DM1.tFerias.IsEmpty then
    begin
      vAltera        := True;
      vItem          := DM1.tFeriasItem.AsInteger;
      DateEdit1.Date := DM1.tFeriasDtInicial.AsDateTime;
      DateEdit2.Date := DM1.tFeriasDtFinal.AsDateTime;
      DM1.tFerias.Delete;
      DateEdit1.SetFocus;
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfFuncionario.SpeedButton5Click(Sender: TObject);
begin
  if not DM1.tFerias.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tFerias.Delete;
    end
  else
    ShowMessage('Nao há registro p/ ser excluído!');
end;

procedure TfFuncionario.SpeedButton7Click(Sender: TObject);
begin
  vAltera2            := False;
  DateEdit3.Clear;
  Edit1.Clear;
  CurrencyEdit1.Value := 0;
  DateEdit3.SetFocus;
  RxDBLookupCombo3.ClearValue;
end;

procedure TfFuncionario.SpeedButton6Click(Sender: TObject);
begin
  if not DM1.tSalario.IsEmpty then
    begin
      vAltera2            := True;
      vItem2              := DM1.tSalarioItem.AsInteger;
      DateEdit3.Date      := DM1.tSalarioData.AsDateTime;
      Edit1.Text          := DM1.tSalarioMotivo.AsString;
      CurrencyEdit1.Value := DM1.tSalarioValor.AsCurrency;
      DM1.tSalario.Delete;
      DateEdit3.SetFocus;
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfFuncionario.SpeedButton8Click(Sender: TObject);
begin
  if not DM1.tSalario.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tSalario.Delete;
    end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfFuncionario.SpeedButton10Click(Sender: TObject);
begin
  DateEdit4.Clear;
  Edit2.Clear;
  SpeedButton9.Tag := 0;
end;

procedure TfFuncionario.BitBtn9Click(Sender: TObject);
begin
  if (DateEdit4.Text <> '  /  /    ') and (Edit2.Text <> '') then
    begin
      if DM1.tFuncFaltas.Locate('CodFuncionario;Data',VarArrayOf([DM1.tFuncionarioCodigo.AsInteger,DateEdit4.Date]),[locaseinsensitive]) then
        begin
          ShowMessage('Data já lançada');
          DateEdit4.SetFocus;
        end
      else
        begin
          DM1.tFuncFaltas.Insert;
          DM1.tFuncFaltasCodFuncionario.AsInteger := DM1.tFuncionarioCodigo.AsInteger;
          DM1.tFuncFaltasData.AsDateTime          := DateEdit4.Date;
          DM1.tFuncFaltasDescricao.AsString       := Edit2.Text;
          DM1.tFuncFaltas.Post;
        end;
      SpeedButton10.Click;
      DateEdit4.SetFocus;
    end
  else
    begin
      ShowMessage('Você deve informar data e motivo!');
      DateEdit4.SetFocus;
    end;
end;

procedure TfFuncionario.SpeedButton9Click(Sender: TObject);
begin
  if not DM1.tFuncFaltas.IsEmpty then
    begin
      SpeedButton9.Tag := 1;
      DateEdit4.Date   := DM1.tFuncFaltasData.AsDateTime;
      Edit2.Text       := DM1.tFuncFaltasDescricao.AsString;
      DM1.tFuncFaltas.Delete;
      DateEdit4.SetFocus;
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfFuncionario.BitBtn8Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if (DateEdit3.Text <> '  /  /    ') and (CurrencyEdit1.Value > 0) then
    begin
      DM1.tSalario.Refresh;
      DM1.tSalario.Last;
      vItemAux := DM1.tSalarioItem.AsInteger;

      DM1.tSalario.Insert;
      DM1.tSalarioCodFuncionario.AsInteger := DM1.tFuncionarioCodigo.AsInteger;
      if vAltera2 then
        DM1.tSalarioItem.AsInteger := vItem2
      else
        DM1.tSalarioItem.AsInteger := vItemAux + 1;
      DM1.tSalarioData.AsDateTime  := DateEdit3.Date;
      DM1.tSalarioMotivo.AsString  := Edit1.Text;
      DM1.tSalarioValor.AsFloat    := CurrencyEdit1.Value;
      DM1.tSalario.Post;
      vAltera2                     := False;
      DateEdit3.Clear;
      Edit1.Clear;
      CurrencyEdit1.Value          := 0;
      RxDBLookupCombo3.ClearValue;
      DateEdit3.SetFocus;
    end
  else
    begin
      ShowMessage('Você deve informar data e valor p/ gravar um item!');
      DateEdit3.SetFocus;
    end;
end;

procedure TfFuncionario.SpeedButton11Click(Sender: TObject);
begin
  if not DM1.tFuncFaltas.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tFuncFaltas.Delete;
    end
  else                  
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfFuncionario.BitBtn10Click(Sender: TObject);
begin
  fPrevFichaFunc := TfPrevFichaFunc.Create(Self);
  fPrevFichaFunc.ShowModal;
end;

procedure TfFuncionario.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    if DM1.tMotivo.Locate('Codigo',RxDBLookupCombo3.KeyValue,[loCaseInsensitive]) then
      Edit1.Text := DM1.tMotivoNome.AsString;
end;

procedure TfFuncionario.SpeedButton12Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
  begin
    fMotivo := TfMotivo.Create(Self);
    fMotivo.ShowModal;
  end
  else
    ShowMessage('Usuário '+ DM1.tUsuarioUsuario.AsString + ' não pode abrir este formulário!');
end;

procedure TfFuncionario.BitBtn11Click(Sender: TObject);
begin
  if (DateEdit5.Date < 1) or (RxDBLookupCombo4.Text = '') or (CurrencyEdit2.AsInteger < 1) then
    begin
      ShowMessage('É obrigatório informar todos os campos!');
      DateEdit5.SetFocus;
      Exit;
    end;
  if DM1.tFuncionarioEPI.Locate('CodEPI',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]) then
    DM1.tFuncionarioEPI.Edit
  else
    begin
      DM1.tFuncionarioEPI.Insert;
      DM1.tFuncionarioEPICodFuncionario.AsInteger := DM1.tFuncionarioCodigo.AsInteger;
      DM1.tFuncionarioEPICodEpi.AsInteger         := RxDBLookupCombo4.KeyValue;
    end;
  DM1.tFuncionarioEPIData.AsDateTime := DateEdit5.Date;
  DM1.tFuncionarioEPIQtd.AsInteger   := CurrencyEdit2.AsInteger;
  DM1.tFuncionarioEPI.Post;
  DateEdit5.SetFocus;
  SpeedButton14Click(Sender);
end;

procedure TfFuncionario.SpeedButton14Click(Sender: TObject);
begin
  DateEdit5.Clear;
  RxDBLookupCombo4.ClearValue;
  CurrencyEdit2.Clear;
end;

procedure TfFuncionario.SpeedButton13Click(Sender: TObject);
begin
  if DM1.tFuncionarioEPICodEpi.AsInteger < 1 then
    begin
      ShowMessage('Não existe registro para alterar!');
      Exit;
    end;
  DateEdit5.Date            := DM1.tFuncionarioEPIData.AsDateTime;
  RxDBLookupCombo4.KeyValue := DM1.tFuncionarioEPICodEpi.AsInteger;
  CurrencyEdit2.AsInteger   := DM1.tFuncionarioEPIQtd.AsInteger;
  DateEdit5.SetFocus;
end;

procedure TfFuncionario.Panel10Enter(Sender: TObject);
begin
  DM2.qEquipEPI.Close;
  DM2.qEquipEPI.Open;
end;

procedure TfFuncionario.SpeedButton15Click(Sender: TObject);
begin
  if DM1.tFuncionarioEPICodEpi.AsInteger < 1 then
    ShowMessage('Não existe registro para alterar!')
  else
  if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbok,mbno],0)=mrok then
    DM1.tFuncionarioEPI.Delete;
end;

procedure TfFuncionario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F3 then
  begin
    fConsEPI := TfConsEPI.Create(Self);
    fConsEPI.ShowModal;
  end;
end;

procedure TfFuncionario.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.

