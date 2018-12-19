unit UMotivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, Db, DBTables, RxLookup;

type
  TfMotivo = class(TForm)
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
    tMotivoIns: TTable;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tMotivoInsCodigo: TIntegerField;
    tMotivoInsNome: TStringField;
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
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Habilita;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMotivo: TfMotivo;

implementation

uses UDM1, UDM2;

{$R *.DFM}

procedure TfMotivo.Habilita;
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

procedure TfMotivo.BitBtn6Click(Sender: TObject);
begin
  oDBUtils.OpenTables(False,Self);
  Close;
end;

procedure TfMotivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMotivo.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsMotivo.AsBoolean then
    begin
      tMotivoIns.IndexFieldNames   := 'Codigo';
      DM1.tMotivo.IndexFieldNames := 'Codigo';
      tMotivoIns.Refresh;
      tMotivoIns.Last;
      DM1.tMotivo.Refresh;
      DM1.tMotivo.Insert;
      DM1.tMotivoCodigo.AsInteger :=  tMotivoInsCodigo.AsInteger + 1;
      DM1.tMotivo.Post;
      DM1.tMotivo.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMotivo.BitBtn5Click(Sender: TObject);
begin
  DM1.tMotivo.Post;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfMotivo.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tMotivo.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tMotivo.Cancel;
  Habilita;
end;

procedure TfMotivo.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMotivo.AsBoolean then
    begin
      DM1.tMotivo.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMotivo.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcMotivo.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        DM1.tMotivo.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMotivo.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  DM1.tMotivo.IndexFieldNames := 'Codigo';
end;

procedure TfMotivo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tMotivo.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o motivo antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfMotivo.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
    begin
      if tMotivoIns.Locate('Nome',DM1.tMotivoNome.AsString,[loCaseInsensitive]) then
        begin
          if tMotivoInsCodigo.AsInteger <> DM1.tMotivoCodigo.AsInteger then
            begin
              ShowMessage('Motivo já cadastrado!');
              DM1.tMotivoNome.Clear;
              DBEdit1.SetFocus;
            end;
        end;
    end;
end;

procedure TfMotivo.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
