unit UDefeito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask,
  RxLookup, ToolEdit, RXDBCtrl, FMTBcd, Provider,
  DBClient, SqlExpr, dbXPress, DmdDatabase, rsDBUtils, dmdCadDefeitos;

type
  TfDefeito = class(TForm)
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    StaticText1: TStaticText;
    BitBtn8: TBitBtn;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;

  public
    { Public declarations }
    procedure Abre_Defeitos(ID : Integer);
  end;

var
  fDefeito: TfDefeito;

implementation

uses UDM1, UConsDefeito, URelListagemDefeito;

{$R *.dfm}

procedure TfDefeito.Abre_Defeitos(ID : Integer);
begin
  dmCadDefeitos.cdsDefeitos.Close;
  dmCadDefeitos.sdsDefeitos.CommandText := ctDefeitos
                                 + ' WHERE CODIGO = ' + IntToStr(ID);
  dmCadDefeitos.cdsDefeitos.Open;
end;

procedure TfDefeito.Habilita;
begin
  BitBtn1.Enabled := not(BitBtn1.Enabled);
  BitBtn2.Enabled := not(BitBtn2.Enabled);
  BitBtn3.Enabled := not(BitBtn3.Enabled);
  BitBtn4.Enabled := not(BitBtn4.Enabled);
  BitBtn6.Enabled := not(BitBtn6.Enabled);
  BitBtn8.Enabled := not(BitBtn8.Enabled);
  Panel1.Enabled  := not(Panel1.Enabled);
end;

procedure TfDefeito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(dmCadDefeitos);
  Action := Cafree;
end;

procedure TfDefeito.BitBtn2Click(Sender: TObject);
begin
  if not DM1.tUsuarioCadastroDefeitos.AsBoolean then
    begin
      ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
      exit;
    end;

  if not(dmCadDefeitos.cdsDefeitos.Active) or ((dmCadDefeitos.cdsDefeitos.Active) and (dmCadDefeitos.cdsDefeitosCODIGO.AsInteger < 1)) then
    begin
      ShowMessage('Não existe registro para ser alterado!');
      exit;
    end;

  Habilita;

  dmCadDefeitos.cdsDefeitos.Edit;
  DBEdit2.SetFocus;
end;

procedure TfDefeito.BitBtn3Click(Sender: TObject);
begin
  if not DM1.tUsuarioExcCadastroDefeitos.AsBoolean then
    begin
      ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
      exit;
    end;

  if not(dmCadDefeitos.cdsDefeitos.Active) or ((dmCadDefeitos.cdsDefeitos.Active) and (dmCadDefeitos.cdsDefeitosCODIGO.AsInteger < 1)) then
    begin
      ShowMessage('Não existe registro para ser excluido!');
      exit;
    end;

  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrNo then
    exit;

  dmCadDefeitos.cdsDefeitos.Delete;
  dmCadDefeitos.cdsDefeitos.ApplyUpdates(0);
end;

procedure TfDefeito.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if not DM1.tUsuarioInsCadastroDefeitos.AsBoolean then
    begin
      ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
      exit;
    end;

  Habilita;

  Abre_Defeitos(0);

  vNumAux := dmDatabase.ProximaSequencia('DEFEITOS',0);

  dmCadDefeitos.cdsDefeitos.Insert;
  dmCadDefeitos.cdsDefeitosCODIGO.AsInteger := vNumAux;
  dbEdit2.SetFocus;
end;

procedure TfDefeito.BitBtn8Click(Sender: TObject);
begin
  if dmCadDefeitos.cdsDefeitosNOME.AsString = '' then
    begin
      ShowMessage('É obrigatório informar o nome!');
      exit;
    end;

  dmCadDefeitos.cdsDefeitos.Post;

  dmCadDefeitos.cdsDefeitos.ApplyUpdates(0);

  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfDefeito.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a alteração ou inclusão do registro?', mtConfirmation, [mbOk, mbNo], 0) = mrNO then
    Exit;

  dmCadDefeitos.cdsDefeitos.CancelUpdates;

  Habilita;
end;

procedure TfDefeito.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfDefeito.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and ((dmCadDefeitos.cdsDefeitos.State in [dsBrowse]) or not(dmCadDefeitos.cdsDefeitos.Active)) then
    begin
      fConsDefeito := TfConsDefeito.Create(Self);
      fConsDefeito.ShowModal;
    end;
end;

procedure TfDefeito.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dmCadDefeitos.cdsDefeitos.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve confirmar ou cancelar o registro antes de fechar a janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfDefeito.FormShow(Sender: TObject);
begin
  DmCadDefeitos := TDmCadDefeitos.Create(Self);
end;

end.

