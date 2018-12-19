unit UIrregularidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, Db, DBTables, RxLookup;

type
  TfIrregularidade = class(TForm)
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
    tIrregularidadeIns: TTable;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tIrregularidadeInsCodigo: TIntegerField;
    tIrregularidadeInsNome: TStringField;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
  private
    procedure Habilita;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIrregularidade: TfIrregularidade;
  vExcluir : Boolean;

implementation

uses UDM1, UDM2;

{$R *.DFM}

procedure TfIrregularidade.Habilita;
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

procedure TfIrregularidade.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfIrregularidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfIrregularidade.BitBtn1Click(Sender: TObject);
begin
  //if DM1.tUsuarioInsCor.AsBoolean then
  //  begin
    tIrregularidadeIns.IndexFieldNames  := 'Codigo';
    tIrregularidadeIns.Refresh;
    tIrregularidadeIns.Last;
    if (tIrregularidadeInsCodigo.AsInteger + 1) > 48 then
      ShowMessage('Não aceita mais de 48!')
    else
      begin
        DM1.tIrregularidade.IndexFieldNames := 'Codigo';
        DM1.tIrregularidade.Refresh;
        DM1.tIrregularidade.Insert;
        DM1.tIrregularidadeCodigo.AsInteger :=  tIrregularidadeInsCodigo.AsInteger + 1;
        DM1.tIrregularidade.Post;
        DM1.tIrregularidade.Edit;
        Habilita;
        DBEdit1.SetFocus;
      end;
  //  end
  //else
  //  ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfIrregularidade.BitBtn5Click(Sender: TObject);
begin
  DM1.tIrregularidade.Post;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfIrregularidade.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tIrregularidade.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tIrregularidade.Cancel;
  Habilita;
end;

procedure TfIrregularidade.BitBtn2Click(Sender: TObject);
begin
 // if DM1.tUsuarioAltIrregularidade.AsBoolean then
 //   begin
      DM1.tIrregularidade.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
 //   end
 // else
 //   ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfIrregularidade.BitBtn3Click(Sender: TObject);
begin
  //if DM1.tUsuarioExcCor.AsBoolean then
  //  begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        DM1.tIrregularidade.Delete;
 //   end
 // else
 //   ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfIrregularidade.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tIrregularidade.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfIrregularidade.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tIrregularidade.IndexFieldNames := 'Nome';
end;

end.
