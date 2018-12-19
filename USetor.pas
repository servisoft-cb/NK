unit USetor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, Db, DBTables, RxLookup;

type
  TfSetor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    tSetorIns: TTable;
    tSetorInsCodigo: TIntegerField;
    tSetorInsNome: TStringField;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBCheckBox2: TDBCheckBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    qSetor: TQuery;
    BitBtn7: TBitBtn;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    procedure Habilita;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSetor: TfSetor;

implementation

uses UDM1, UIntegracao, URelListagemSetor;

{$R *.DFM}

procedure TfSetor.Habilita;
begin
  Panel2.Enabled       := not(Panel2.Enabled);
  Panel4.Enabled       := not(Panel4.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
end;

procedure TfSetor.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfSetor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qSetor.Close;
  Action := Cafree;
end;

procedure TfSetor.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsSetor.AsBoolean then
    begin
      tSetorIns.IndexFieldNames   := 'Codigo';
      DM1.tSetor.IndexFieldNames := 'Codigo';
      tSetorIns.Refresh;
      tSetorIns.Last;
      DM1.tSetor.Refresh;
      DM1.tSetor.Insert;
      DM1.tSetorCodigo.AsInteger   := tSetorInsCodigo.AsInteger + 1;
      DM1.tSetorFinal.AsBoolean    := False;
      DM1.tSetorImpTalao.AsBoolean := False;
      DM1.tSetorAtelier.AsBoolean  := False;
      DM1.tSetor.Post;
      DM1.tSetor.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfSetor.BitBtn5Click(Sender: TObject);
begin
  if Trim(DM1.tSetorNome.AsString) = '' then
    begin
      ShowMessage('Nome não foi informado!');
      exit;
    end;

  DM1.tSetor.Post;

  Prc_Gravar_Setor_FB(DM1.tSetorCodigo.AsInteger);

  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfSetor.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tSetor.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tSetor.Cancel;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfSetor.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltSetor.AsBoolean then
    begin
      qSetor.Close;
      qSetor.Params[0].AsInteger := DM1.tSetorCodigo.AsInteger;
      qSetor.Open;
      if qSetor.RecordCount > 0 then
        DBEdit1.ReadOnly := True
      else
        DBEdit1.ReadOnly := False;
      DM1.tSetor.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfSetor.BitBtn3Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if DM1.tUsuarioExcSetor.AsBoolean then
    begin
      vCodigo := DM1.tSetorCodigo.AsInteger;
      qSetor.Close;
      qSetor.Params[0].AsInteger := DM1.tSetorCodigo.AsInteger;
      qSetor.Open;
      if qSetor.RecordCount > 0 then
        ShowMessage('Não pode ser excluido, pois este setor esta sendo usado!')
      else
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tSetor.Delete;
          Prc_Excluir_Setor_FB(vCodigo);
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfSetor.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  DM1.tSetor.IndexFieldNames := 'Codigo';
end;

procedure TfSetor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tSetor.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o setor antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfSetor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if (Shift = [ssCtrl]) and (Key = 76) then
//    DM1.Login;
end;

procedure TfSetor.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tSetor.Refresh;
  DM1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfSetor.BitBtn7Click(Sender: TObject);
begin
  fRelListagemSetor := TfRelListagemSetor.Create(Self);
  fRelListagemSetor.RLReport1.Preview;
end;

end.
