unit UParadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, DBTables, DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask,
  RxLookup, ToolEdit, RXDBCtrl, Grids, DBGrids, SMDBGrid, FMTBcd, Provider, DBClient, SqlExpr, dbXPress, DmdDatabase, rsDBUtils, dmdCadParadas,
  RxDBComb;

type
  TfParadas = class(TForm)
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
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
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
    FdmCadParadas : TdmCadParadas;

    procedure Habilita;

  public
    { Public declarations }
    procedure Abre_Paradas(ID : Integer);
  end;

var
  fParadas: TfParadas;

implementation

uses UDM1, UConsParadas, URelListagemParadas;

{$R *.dfm}

procedure TfParadas.Abre_Paradas(ID : Integer);
begin
  dmCadParadas.cdsParadas.Close;
  dmCadParadas.sdsParadas.CommandText := ctParadas
                                 + ' WHERE CODIGO = :CODIGO';
  dmCadParadas.sdsParadas.ParamByName('CODIGO').AsInteger := ID;
  dmCadParadas.cdsParadas.Open;
end;

procedure TfParadas.Habilita;
begin
  BitBtn1.Enabled := not(BitBtn1.Enabled);
  BitBtn2.Enabled := not(BitBtn2.Enabled);
  BitBtn3.Enabled := not(BitBtn3.Enabled);
  BitBtn4.Enabled := not(BitBtn4.Enabled);
  BitBtn6.Enabled := not(BitBtn6.Enabled);
  BitBtn8.Enabled := not(BitBtn8.Enabled);
  Panel1.Enabled  := not(Panel1.Enabled);
end;

procedure TfParadas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FdmCadParadas);
  Action := Cafree;
end;

procedure TfParadas.BitBtn2Click(Sender: TObject);
begin
  if not DM1.tUsuarioCadastroParadas.AsBoolean then
    begin
      ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
      exit;
    end;

  if not(dmCadParadas.cdsParadas.Active) or ((dmCadParadas.cdsParadas.Active) and (dmCadParadas.cdsParadasCODIGO.AsInteger < 1)) then
    begin
      ShowMessage('Não existe registro para ser alterado!');
      exit;
    end;

  Habilita;

  dmCadParadas.cdsParadas.Edit;
  DBEdit2.SetFocus;
end;

procedure TfParadas.BitBtn3Click(Sender: TObject);
begin
  if not DM1.tUsuarioExcCadastroParadas.AsBoolean then
    begin
      ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
      exit;
    end;

  if not(dmCadParadas.cdsParadas.Active) or ((dmCadParadas.cdsParadas.Active) and (dmCadParadas.cdsParadasCODIGO.AsInteger < 1)) then
    begin
      ShowMessage('Não existe registro para ser excluido!');
      exit;
    end;

  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrNo then
    exit;

  dmCadParadas.cdsParadas.Delete;
  dmCadParadas.cdsParadas.ApplyUpdates(0);
end;

procedure TfParadas.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if not DM1.tUsuarioInsCadastroParadas.AsBoolean then
    begin
      ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
      exit;
    end;

  Habilita;

  Abre_Paradas(0);

  vNumAux := dmDatabase.ProximaSequencia('PARADAS',0);

  dmCadParadas.cdsParadas.Insert;
  dmCadParadas.cdsParadasCODIGO.AsInteger := vNumAux;
  dbEdit2.SetFocus;
end;

procedure TfParadas.BitBtn8Click(Sender: TObject);
begin
  if dmCadParadas.cdsParadasNOME.AsString = '' then
    begin
      ShowMessage('É obrigatório informar o nome!');
      exit;
    end;
  if dmCadParadas.cdsParadasTIPO.AsString = '' then
    begin
      ShowMessage('É obrigatório informar o tipo!');
      exit;
    end;
  dmCadParadas.cdsParadas.Post;

  dmCadParadas.cdsParadas.ApplyUpdates(0);

  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfParadas.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a alteração ou inclusão do registro?', mtConfirmation, [mbOk, mbNo], 0) = mrNO then
    Exit;

  dmCadParadas.cdsParadas.CancelUpdates;

  Habilita;
end;

procedure TfParadas.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfParadas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (((dmCadParadas.cdsParadas.Active) and (dmCadParadas.cdsParadas.State in [dsBrowse])) or
                        not(dmCadParadas.cdsParadas.Active)) then
    begin
      fConsParadas := TfConsParadas.Create(Self);
      fConsParadas.ShowModal;
    end;
end;

procedure TfParadas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dmCadParadas.cdsParadas.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve confirmar ou cancelar o registro antes de fechar a janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfParadas.FormShow(Sender: TObject);
begin
  DmCadParadas := TDmCadParadas.Create(Self);
end;

end.

