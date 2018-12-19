unit UEquipEpi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, Db, DBTables, RxLookup;

type
  TfEquipEpi = class(TForm)
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
    tEquipEpiIns: TTable;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tEquipEpiInsCodigo: TIntegerField;
    tEquipEpiInsNome: TStringField;
    tEquipEpiInsQtdMes: TIntegerField;
    qEquip: TQuery;
    dsqEquip: TDataSource;
    qEquipCodigo: TIntegerField;
    qEquipNome: TStringField;
    qEquipQtdMes: TIntegerField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    tFuncionarioEPI2: TTable;
    tFuncionarioEPI2CodFuncionario: TIntegerField;
    tFuncionarioEPI2CodEpi: TIntegerField;
    tFuncionarioEPI2Data: TDateField;
    tFuncionarioEPI2Qtd: TIntegerField;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    procedure Habilita;
    procedure Verifica_Funcionario;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEquipEpi: TfEquipEpi;
  vExcluir : Boolean;

implementation

uses UDM1, UDM2, StrUtils;

{$R *.DFM}

procedure TfEquipEpi.Habilita;
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

procedure TfEquipEpi.Verifica_Funcionario;
begin
  if tFuncionarioEPI2.Locate('CodEpi',DM1.tEquipEpiCodigo.AsInteger,[loCaseInsensitive])  then
    begin
      vExcluir := False;
      ShowMessage('Este EPI não pode ser excluido, esta no funcionário ' + tFuncionarioEPI2CodFuncionario.AsString)
    end;
end;

procedure TfEquipEpi.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfEquipEpi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfEquipEpi.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsEquipEpi.AsBoolean then
    begin
      tEquipEpiIns.IndexFieldNames  := 'Codigo';
      DM1.tEquipEpi.IndexFieldNames := 'Codigo';
      tEquipEpiIns.Refresh;
      tEquipEpiIns.Last;
      DM1.tEquipEpi.Refresh;
      DM1.tEquipEpi.Insert;
      DM1.tEquipEpiCodigo.AsInteger := tEquipEpiInsCodigo.AsInteger + 1;
      DM1.tEquipEpi.Post;
      DM1.tEquipEpi.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfEquipEpi.BitBtn5Click(Sender: TObject);
begin
  if DM1.tEquipEpiNome.AsString = '' then
    ShowMessage('É Obrigatório informar um nome!')
  else
    begin
      DM1.tEquipEpi.Post;
      BitBtn2.Tag := 0;
      Habilita;
    end;
  BitBtn1.SetFocus;
end;

procedure TfEquipEpi.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tEquipEpi.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tEquipEpi.Cancel;
  Habilita;
end;

procedure TfEquipEpi.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltEquipEpi.AsBoolean then
    begin
      DM1.tEquipEpi.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfEquipEpi.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcEquipEpi.AsBoolean then
    begin
      vExcluir := True;
      Verifica_Funcionario;
      if vExcluir then
        if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
          DM1.tEquipEpi.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfEquipEpi.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tEquipEpi.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfEquipEpi.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
    begin
      if tEquipEpiIns.Locate('Nome',DM1.tEquipEpiNome.AsString,[loCaseInsensitive]) then
        begin
          if tEquipEpiInsCodigo.AsInteger <> DM1.tEquipEpiCodigo.AsInteger then
            begin
              ShowMessage('EPI já cadastrado!');
              DM1.tEquipEpiNome.Clear;
              DBEdit1.SetFocus;
            end;
        end;
    end;
end;

procedure TfEquipEpi.RxDBLookupCombo1Enter(Sender: TObject);
begin
  qEquip.Close;
  qEquip.Open;
end;

procedure TfEquipEpi.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    DM1.tEquipEpi.Locate('Codigo',qEquipCodigo.AsInteger,[loCaseInsensitive]);
end;

end.
