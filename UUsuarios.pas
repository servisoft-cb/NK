unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, ComCtrls, DB, DBTables;

type
  TfUsuarios = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Bevel4: TBevel;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    BitBtn23: TBitBtn;
    BitBtn26: TBitBtn;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Bevel5: TBevel;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    BitBtn25: TBitBtn;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Bevel6: TBevel;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    TabSheet5: TTabSheet;
    Panel8: TPanel;
    Bevel7: TBevel;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    BitBtn30: TBitBtn;
    TabSheet6: TTabSheet;
    Panel10: TPanel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    BitBtn32: TBitBtn;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    TabSheet7: TTabSheet;
    Panel11: TPanel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    TabSheet8: TTabSheet;
    Panel12: TPanel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    DBCheckBox83: TDBCheckBox;
    DBCheckBox84: TDBCheckBox;
    DBCheckBox85: TDBCheckBox;
    DBCheckBox86: TDBCheckBox;
    DBCheckBox87: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    DBCheckBox89: TDBCheckBox;
    BitBtn31: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox102: TDBCheckBox;
    BitBtn40: TBitBtn;
    DBCheckBox105: TDBCheckBox;
    DBCheckBox107: TDBCheckBox;
    DBCheckBox108: TDBCheckBox;
    DBCheckBox112: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox104: TDBCheckBox;
    DBCheckBox115: TDBCheckBox;
    BitBtn42: TBitBtn;
    DBCheckBox120: TDBCheckBox;
    BitBtn48: TBitBtn;
    DBCheckBox122: TDBCheckBox;
    DBCheckBox124: TDBCheckBox;
    DBCheckBox126: TDBCheckBox;
    DBCheckBox127: TDBCheckBox;
    DBCheckBox128: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    BitBtn36: TBitBtn;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    Panel4: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn22: TBitBtn;
    DBCheckBox48: TDBCheckBox;
    BitBtn18: TBitBtn;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox106: TDBCheckBox;
    BitBtn41: TBitBtn;
    DBCheckBox57: TDBCheckBox;
    BitBtn46: TBitBtn;
    DBCheckBox121: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    BitBtn24: TBitBtn;
    DBCheckBox23: TDBCheckBox;
    BitBtn43: TBitBtn;
    DBCheckBox37: TDBCheckBox;
    BitBtn49: TBitBtn;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox103: TDBCheckBox;
    BitBtn50: TBitBtn;
    DBCheckBox113: TDBCheckBox;
    DBCheckBox117: TDBCheckBox;
    DBCheckBox118: TDBCheckBox;
    DBCheckBox119: TDBCheckBox;
    DBCheckBox123: TDBCheckBox;
    DBCheckBox97: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    BitBtn38: TBitBtn;
    DBCheckBox72: TDBCheckBox;
    DBCheckBox125: TDBCheckBox;
    BitBtn51: TBitBtn;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    BitBtn19: TBitBtn;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    BitBtn21: TBitBtn;
    DBCheckBox68: TDBCheckBox;
    BitBtn44: TBitBtn;
    DBCheckBox77: TDBCheckBox;
    BitBtn45: TBitBtn;
    DBCheckBox98: TDBCheckBox;
    DBCheckBox99: TDBCheckBox;
    DBCheckBox109: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    BitBtn37: TBitBtn;
    DBCheckBox96: TDBCheckBox;
    DBCheckBox101: TDBCheckBox;
    BitBtn39: TBitBtn;
    DBCheckBox110: TDBCheckBox;
    BitBtn47: TBitBtn;
    DBCheckBox114: TDBCheckBox;
    BitBtn52: TBitBtn;
    DBCheckBox111: TDBCheckBox;
    BitBtn53: TBitBtn;
    DBCheckBox116: TDBCheckBox;
    DBCheckBox129: TDBCheckBox;
    BitBtn54: TBitBtn;
    DBCheckBox130: TDBCheckBox;
    BitBtn58: TBitBtn;
    DBCheckBox131: TDBCheckBox;
    BitBtn59: TBitBtn;
    DBCheckBox132: TDBCheckBox;
    BitBtn60: TBitBtn;
    DBCheckBox142: TDBCheckBox;
    BitBtn61: TBitBtn;
    DBCheckBox143: TDBCheckBox;
    BitBtn62: TBitBtn;
    DBCheckBox133: TDBCheckBox;
    DBCheckBox134: TDBCheckBox;
    BitBtn55: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBCheckBox27Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBCheckBox24Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBCheckBox25Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBCheckBox33Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure DBCheckBox41Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure DBCheckBox26Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure DBCheckBox39Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure DBCheckBox22Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure DBCheckBox14Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure DBCheckBox9Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure DBCheckBox10Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure DBCheckBox12Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure DBCheckBox44Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure DBCheckBox67Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure DBCheckBox83Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure DBCheckBox85Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure DBCheckBox87Click(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure DBCheckBox89Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure DBCheckBox102Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure BitBtn42Click(Sender: TObject);
    procedure DBCheckBox115Click(Sender: TObject);
    procedure DBCheckBox57Click(Sender: TObject);
    procedure BitBtn46Click(Sender: TObject);
    procedure DBCheckBox120Click(Sender: TObject);
    procedure BitBtn48Click(Sender: TObject);
    procedure DBCheckBox15Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure DBCheckBox18Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn43Click(Sender: TObject);
    procedure BitBtn49Click(Sender: TObject);
    procedure DBCheckBox37Click(Sender: TObject);
    procedure BitBtn50Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure BitBtn51Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox66Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure DBCheckBox68Click(Sender: TObject);
    procedure BitBtn44Click(Sender: TObject);
    procedure DBCheckBox77Click(Sender: TObject);
    procedure BitBtn45Click(Sender: TObject);
    procedure BitBtn41Click(Sender: TObject);
    procedure DBCheckBox106Click(Sender: TObject);
    procedure DBCheckBox28Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure DBCheckBox101Click(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure DBCheckBox110Click(Sender: TObject);
    procedure BitBtn47Click(Sender: TObject);
    procedure DBCheckBox114Click(Sender: TObject);
    procedure BitBtn52Click(Sender: TObject);
    procedure DBCheckBox111Click(Sender: TObject);
    procedure BitBtn53Click(Sender: TObject);
    procedure DBCheckBox129Click(Sender: TObject);
    procedure BitBtn54Click(Sender: TObject);
    procedure BitBtn58Click(Sender: TObject);
    procedure BitBtn59Click(Sender: TObject);
    procedure BitBtn60Click(Sender: TObject);
    procedure BitBtn61Click(Sender: TObject);
    procedure BitBtn62Click(Sender: TObject);
    procedure DBCheckBox130Click(Sender: TObject);
    procedure DBCheckBox131Click(Sender: TObject);
    procedure DBCheckBox132Click(Sender: TObject);
    procedure DBCheckBox142Click(Sender: TObject);
    procedure DBCheckBox143Click(Sender: TObject);
    procedure DBCheckBox134Click(Sender: TObject);
    procedure BitBtn55Click(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Editar_Tabelas;
    procedure Editar_Tabelas1(Campo: String; Valor: Boolean);
    procedure Permissao(campo: String; Valor: Boolean);
  public
    { Public declarations }
  end;

var
  fUsuarios: TfUsuarios;
  vUsuario: String;

implementation

uses UDM1, UPermissoes;

{$R *.DFM}

procedure TfUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tUsuario.FindKey([vUsuario]);
  Action := Cafree;
end;

procedure TfUsuarios.Habilita;
begin
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  Panel1.Enabled       := not(Panel1.Enabled);
  Panel9.Enabled       := not(Panel9.Enabled);
end;

procedure Editar_Tabelas(Campo : String; Valor : Boolean);
begin
  if DM1.tUsuario.State in [dsBrowse] then
    Exit;

  DM1.tUsuarioAlt.Edit;
  DM1.tUsuarioExc.Edit;
  DM1.tUsuarioIns.Edit;

  DM1.tUsuarioIns.FieldByName(Campo).AsBoolean := Valor;
  DM1.tUsuarioExc.FieldByName(Campo).AsBoolean := Valor;
  DM1.tUsuarioAlt.FieldByName(Campo).AsBoolean := Valor;
end;

procedure TfUsuarios.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfUsuarios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o usuário antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfUsuarios.BitBtn2Click(Sender: TObject);
begin
  Habilita;
  DM1.tUsuario.Insert;
  DBEdit1.Enabled := True;
  DBEdit1.SetFocus;
end;

procedure TfUsuarios.BitBtn3Click(Sender: TObject);
begin
  DM1.tUsuario.Edit;
  Editar_Tabelas;
  Habilita;
  DBEdit1.Enabled := False;
  DBEdit2.SetFocus;
end;

procedure TfUsuarios.BitBtn5Click(Sender: TObject);
begin
  DM1.tUsuario.Cancel;
  DM1.tUsuarioAlt.Cancel;
  DM1.tUsuarioExc.Cancel;
  DM1.tUsuarioIns.Cancel;
  Habilita;
end;

procedure TfUsuarios.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioAlt.State in [dsEdit,dsInsert] then
    DM1.tUsuarioAlt.Post;
  if DM1.tUsuarioExc.State in [dsEdit,dsInsert] then
    DM1.tUsuarioExc.Post;
  if DM1.tUsuarioIns.State in [dsEdit,dsInsert] then
    DM1.tUsuarioIns.Post;
  DM1.tUsuario.Post;
  Habilita;
end;

procedure TfUsuarios.BitBtn4Click(Sender: TObject);
begin
 if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
    [mbOk,mbNo],0) = mrOk then
   begin
     DM1.tUsuarioAlt.Delete;
     DM1.tUsuarioExc.Delete;
     DM1.tUsuarioIns.Delete;
     DM1.tUsuario.Delete;
   end;
end;

procedure TfUsuarios.FormShow(Sender: TObject);
begin
  vUsuario := DM1.tUsuarioUsuario.AsString;
end;

procedure TfUsuarios.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    if DBEdit2.PasswordChar = #0 then
      DBEdit2.PasswordChar := '*'
    else
      DBEdit2.PasswordChar := #0;
end;

procedure TfUsuarios.BitBtn7Click(Sender: TObject);
begin
  if DBCheckBox27.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'ClasFiscal';
      fPermissoes.DBCheckBox2.DataField := 'ClasFiscal';
      fPermissoes.DBCheckBox3.DataField := 'ClasFiscal';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox27Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsClasFiscal.AsBoolean := DBCheckBox27.Checked;
      DM1.tUsuarioExcClasFiscal.AsBoolean := DBCheckBox27.Checked;
      DM1.tUsuarioAltClasFiscal.AsBoolean := DBCheckBox27.Checked;
    end;
end;

procedure TfUsuarios.DBCheckBox2Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsClientes.AsBoolean := DBCheckBox2.Checked;
      DM1.tUsuarioExcClientes.AsBoolean := DBCheckBox2.Checked;
      DM1.tUsuarioAltClientes.AsBoolean := DBCheckBox2.Checked;
    end;
end;

procedure TfUsuarios.BitBtn8Click(Sender: TObject);
begin
  if DBCheckBox2.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Clientes';
      fPermissoes.DBCheckBox2.DataField := 'Clientes';
      fPermissoes.DBCheckBox3.DataField := 'Clientes';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox24Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsCor.AsBoolean := DBCheckBox24.Checked;
      DM1.tUsuarioExcCor.AsBoolean := DBCheckBox24.Checked;
      DM1.tUsuarioAltCor.AsBoolean := DBCheckBox24.Checked;
    end;
end;

procedure TfUsuarios.BitBtn9Click(Sender: TObject);
begin
  if DBCheckBox24.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Cor';
      fPermissoes.DBCheckBox2.DataField := 'Cor';
      fPermissoes.DBCheckBox3.DataField := 'Cor';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox25Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsCondPgto.AsBoolean := DBCheckBox25.Checked;
      DM1.tUsuarioExcCondPgto.AsBoolean := DBCheckBox25.Checked;
      DM1.tUsuarioAltCondPgto.AsBoolean := DBCheckBox25.Checked;
    end;
end;

procedure TfUsuarios.BitBtn10Click(Sender: TObject);
begin
  if DBCheckBox25.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'CondPgto';
      fPermissoes.DBCheckBox2.DataField := 'CondPgto';
      fPermissoes.DBCheckBox3.DataField := 'CondPgto';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox3Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsUf.AsBoolean := DBCheckBox3.Checked;
      DM1.tUsuarioExcUf.AsBoolean := DBCheckBox3.Checked;
      DM1.tUsuarioAltUf.AsBoolean := DBCheckBox3.Checked;
    end;
end;

procedure TfUsuarios.BitBtn11Click(Sender: TObject);
begin
  if DBCheckBox3.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Uf';
      fPermissoes.DBCheckBox2.DataField := 'Uf';
      fPermissoes.DBCheckBox3.DataField := 'Uf';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox4Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsGrade.AsBoolean := DBCheckBox4.Checked;
      DM1.tUsuarioExcGrade.AsBoolean := DBCheckBox4.Checked;
      DM1.tUsuarioAltGrade.AsBoolean := DBCheckBox4.Checked;
    end;
end;

procedure TfUsuarios.BitBtn12Click(Sender: TObject);
begin
  if DBCheckBox4.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Grade';
      fPermissoes.DBCheckBox2.DataField := 'Grade';
      fPermissoes.DBCheckBox3.DataField := 'Grade';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox33Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsGrupos.AsBoolean := DBCheckBox33.Checked;
      DM1.tUsuarioExcGrupos.AsBoolean := DBCheckBox33.Checked;
      DM1.tUsuarioAltGrupos.AsBoolean := DBCheckBox33.Checked;
    end;
end;

procedure TfUsuarios.BitBtn13Click(Sender: TObject);
begin
  if DBCheckBox33.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Grupos';
      fPermissoes.DBCheckBox2.DataField := 'Grupos';
      fPermissoes.DBCheckBox3.DataField := 'Grupos';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox5Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsHistoricos.AsBoolean := DBCheckBox5.Checked;
      DM1.tUsuarioExcHistoricos.AsBoolean := DBCheckBox5.Checked;
      DM1.tUsuarioAltHistoricos.AsBoolean := DBCheckBox5.Checked;
    end;
end;

procedure TfUsuarios.BitBtn14Click(Sender: TObject);
begin
  if DBCheckBox5.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Historicos';
      fPermissoes.DBCheckBox2.DataField := 'Historicos';
      fPermissoes.DBCheckBox3.DataField := 'Historicos';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox41Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsImpressoras.AsBoolean := DBCheckBox41.Checked;
      DM1.tUsuarioExcImpressoras.AsBoolean := DBCheckBox41.Checked;
      DM1.tUsuarioAltimpressoras.AsBoolean := DBCheckBox41.Checked;
    end;
end;

procedure TfUsuarios.BitBtn15Click(Sender: TObject);
begin
  if DBCheckBox41.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Impressoras';
      fPermissoes.DBCheckBox2.DataField := 'impressoras';
      fPermissoes.DBCheckBox3.DataField := 'Impressoras';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox26Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsNatOper.AsBoolean := DBCheckBox26.Checked;
      DM1.tUsuarioExcNatOper.AsBoolean := DBCheckBox26.Checked;
      DM1.tUsuarioAltNatOper.AsBoolean := DBCheckBox26.Checked;
    end;
end;

procedure TfUsuarios.BitBtn16Click(Sender: TObject);
begin
  if DBCheckBox26.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'NatOper';
      fPermissoes.DBCheckBox2.DataField := 'NatOper';
      fPermissoes.DBCheckBox3.DataField := 'NatOper';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox39Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsObsAux.AsBoolean := DBCheckBox39.Checked;
      DM1.tUsuarioExcObsAux.AsBoolean := DBCheckBox39.Checked;
      DM1.tUsuarioAltObsAux.AsBoolean := DBCheckBox39.Checked;
    end;
end;

procedure TfUsuarios.BitBtn17Click(Sender: TObject);
begin
  if DBCheckBox39.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'ObsAux';
      fPermissoes.DBCheckBox2.DataField := 'ObsAux';
      fPermissoes.DBCheckBox3.DataField := 'ObsAux';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox22Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsRegioesVendas.AsBoolean := DBCheckBox22.Checked;
      DM1.tUsuarioExcRegioesVendas.AsBoolean := DBCheckBox22.Checked;
      DM1.tUsuarioAltRegioesVendas.AsBoolean := DBCheckBox22.Checked;
    end;
end;

procedure TfUsuarios.BitBtn20Click(Sender: TObject);
begin
  if DBCheckBox22.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'RegioesVendas';
      fPermissoes.DBCheckBox2.DataField := 'RegioesVendas';
      fPermissoes.DBCheckBox3.DataField := 'RegioesVendas';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox8Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsSitTrib.AsBoolean := DBCheckBox8.Checked;
      DM1.tUsuarioExcSitTrib.AsBoolean := DBCheckBox8.Checked;
      DM1.tUsuarioAltSitTrib.AsBoolean := DBCheckBox8.Checked;
    end;
end;

procedure TfUsuarios.BitBtn22Click(Sender: TObject);
begin
  if DBCheckBox8.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'SitTrib';
      fPermissoes.DBCheckBox2.DataField := 'SitTrib';
      fPermissoes.DBCheckBox3.DataField := 'SitTrib';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox14Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsTransp.AsBoolean := DBCheckBox14.Checked;
      DM1.tUsuarioExcTransp.AsBoolean := DBCheckBox14.Checked;
      DM1.tUsuarioAltTransp.AsBoolean := DBCheckBox14.Checked;
    end;
end;

procedure TfUsuarios.BitBtn18Click(Sender: TObject);
begin
  if DBCheckBox14.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Transp';
      fPermissoes.DBCheckBox2.DataField := 'Transp';
      fPermissoes.DBCheckBox3.DataField := 'Transp';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox9Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsFornecedores.AsBoolean := DBCheckBox9.Checked;
      DM1.tUsuarioExcFornecedores.AsBoolean := DBCheckBox9.Checked;
      DM1.tUsuarioAltFornecedores.AsBoolean := DBCheckBox9.Checked;
    end;
end;

procedure TfUsuarios.BitBtn27Click(Sender: TObject);
begin
  if DBCheckBox9.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Fornecedores';
      fPermissoes.DBCheckBox2.DataField := 'Fornecedores';
      fPermissoes.DBCheckBox3.DataField := 'Fornecedores';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox10Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsMaterial.AsBoolean := DBCheckBox10.Checked;
      DM1.tUsuarioExcMaterial.AsBoolean := DBCheckBox10.Checked;
      DM1.tUsuarioAltMaterial.AsBoolean := DBCheckBox10.Checked;
    end;
end;

procedure TfUsuarios.BitBtn23Click(Sender: TObject);
begin
  if DBCheckBox10.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Material';
      fPermissoes.DBCheckBox2.DataField := 'Material';
      fPermissoes.DBCheckBox3.DataField := 'Material';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox12Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsOrdemCompra.AsBoolean := DBCheckBox12.Checked;
      DM1.tUsuarioExcOrdemCompra.AsBoolean := DBCheckBox12.Checked;
      DM1.tUsuarioAltOrdemCompra.AsBoolean := DBCheckBox12.Checked;
    end;
end;

procedure TfUsuarios.BitBtn26Click(Sender: TObject);
begin
  if DBCheckBox12.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'OrdemCompra';
      fPermissoes.DBCheckBox2.DataField := 'OrdemCompra';
      fPermissoes.DBCheckBox3.DataField := 'OrdemCompra';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox44Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsPedido.AsBoolean := DBCheckBox44.Checked;
      DM1.tUsuarioExcPedido.AsBoolean := DBCheckBox44.Checked;
      DM1.tUsuarioAltPedido.AsBoolean := DBCheckBox44.Checked;
    end;
end;

procedure TfUsuarios.BitBtn28Click(Sender: TObject);
begin
  if DBCheckBox44.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Pedido';
      fPermissoes.DBCheckBox2.DataField := 'Pedido';
      fPermissoes.DBCheckBox3.DataField := 'Pedido';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox17Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsProduto.AsBoolean := DBCheckBox17.Checked;
      DM1.tUsuarioExcProduto.AsBoolean := DBCheckBox17.Checked;
      DM1.tUsuarioAltProduto.AsBoolean := DBCheckBox17.Checked;
    end;
end;

procedure TfUsuarios.BitBtn29Click(Sender: TObject);
begin
  if DBCheckBox17.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Produto';
      fPermissoes.DBCheckBox2.DataField := 'Produto';
      fPermissoes.DBCheckBox3.DataField := 'Produto';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox16Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsSetor.AsBoolean := DBCheckBox16.Checked;
      DM1.tUsuarioExcSetor.AsBoolean := DBCheckBox16.Checked;
      DM1.tUsuarioAltSetor.AsBoolean := DBCheckBox16.Checked;
    end;
end;

procedure TfUsuarios.BitBtn25Click(Sender: TObject);
begin
  if DBCheckBox16.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Setor';
      fPermissoes.DBCheckBox2.DataField := 'Setor';
      fPermissoes.DBCheckBox3.DataField := 'Setor';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox19Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsVendedor.AsBoolean := DBCheckBox19.Checked;
      DM1.tUsuarioExcVendedor.AsBoolean := DBCheckBox19.Checked;
      DM1.tUsuarioAltVendedor.AsBoolean := DBCheckBox19.Checked;
    end;
end;

procedure TfUsuarios.BitBtn30Click(Sender: TObject);
begin
  if DBCheckBox19.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Vendedor';
      fPermissoes.DBCheckBox2.DataField := 'Vendedor';
      fPermissoes.DBCheckBox3.DataField := 'Vendedor';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox67Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsTiposCobr.AsBoolean := DBCheckBox67.Checked;
      DM1.tUsuarioExcTiposCobr.AsBoolean := DBCheckBox67.Checked;
      DM1.tUsuarioAltTiposCobr.AsBoolean := DBCheckBox67.Checked;
    end;
end;

procedure TfUsuarios.BitBtn32Click(Sender: TObject);
begin
  if DBCheckBox67.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'TiposCobr';
      fPermissoes.DBCheckBox2.DataField := 'TiposCobr';
      fPermissoes.DBCheckBox3.DataField := 'TiposCobr';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox83Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsContas.AsBoolean := DBCheckBox83.Checked;
      DM1.tUsuarioExcContas.AsBoolean := DBCheckBox83.Checked;
      DM1.tUsuarioAltContas.AsBoolean := DBCheckBox83.Checked;
    end;
end;

procedure TfUsuarios.BitBtn31Click(Sender: TObject);
begin
  if DBCheckBox83.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Contas';
      fPermissoes.DBCheckBox2.DataField := 'Contas';
      fPermissoes.DBCheckBox3.DataField := 'Contas';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox85Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsJuros.AsBoolean := DBCheckBox85.Checked;
      DM1.tUsuarioExcJuros.AsBoolean := DBCheckBox85.Checked;
      DM1.tUsuarioAltJuros.AsBoolean := DBCheckBox85.Checked;
    end;
end;

procedure TfUsuarios.BitBtn33Click(Sender: TObject);
begin
  if DBCheckBox85.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Juros';
      fPermissoes.DBCheckBox2.DataField := 'Juros';
      fPermissoes.DBCheckBox3.DataField := 'juros';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox87Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsPlanoCtas.AsBoolean := DBCheckBox87.Checked;
      DM1.tUsuarioExcPlanoCtas.AsBoolean := DBCheckBox87.Checked;
      DM1.tUsuarioAltPlanoCtas.AsBoolean := DBCheckBox87.Checked;
    end;
end;

procedure TfUsuarios.BitBtn34Click(Sender: TObject);
begin
  if DBCheckBox87.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'PlanoCtas';
      fPermissoes.DBCheckBox2.DataField := 'PlanoCtas';
      fPermissoes.DBCheckBox3.DataField := 'PlanoCtas';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox89Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsIndexador.AsBoolean := DBCheckBox89.Checked;
      DM1.tUsuarioExcIndexador.AsBoolean := DBCheckBox89.Checked;
      DM1.tUsuarioAltIndexador.AsBoolean := DBCheckBox89.Checked;
    end;
end;

procedure TfUsuarios.BitBtn35Click(Sender: TObject);
begin
  if DBCheckBox89.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Indexador';
      fPermissoes.DBCheckBox2.DataField := 'Indexador';
      fPermissoes.DBCheckBox3.DataField := 'Indexador';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox102Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsAtividade.AsBoolean := DBCheckBox102.Checked;
      DM1.tUsuarioExcAtividade.AsBoolean := DBCheckBox102.Checked;
      DM1.tUsuarioAltAtividade.AsBoolean := DBCheckBox102.Checked;
    end;
end;

procedure TfUsuarios.BitBtn40Click(Sender: TObject);
begin
  if DBCheckBox102.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Atividade';
      fPermissoes.DBCheckBox2.DataField := 'Atividade';
      fPermissoes.DBCheckBox3.DataField := 'Atividade';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn42Click(Sender: TObject);
begin
  if DBCheckBox115.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'PedidoEsp';
      fPermissoes.DBCheckBox2.DataField := 'PedidoEsp';
      fPermissoes.DBCheckBox3.DataField := 'PedidoEsp';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox115Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsPedidoEsp.AsBoolean := DBCheckBox115.Checked;
      DM1.tUsuarioExcPedidoEsp.AsBoolean := DBCheckBox115.Checked;
      DM1.tUsuarioAltPedidoEsp.AsBoolean := DBCheckBox115.Checked;
    end;
end;

procedure TfUsuarios.DBCheckBox57Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsCidade.AsBoolean := DBCheckBox57.Checked;
      DM1.tUsuarioExcCidade.AsBoolean := DBCheckBox57.Checked;
      DM1.tUsuarioAltCidade.AsBoolean := DBCheckBox57.Checked;
    end;
end;

procedure TfUsuarios.BitBtn46Click(Sender: TObject);
begin
  if DBCheckBox57.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Cidade';
      fPermissoes.DBCheckBox2.DataField := 'Cidade';
      fPermissoes.DBCheckBox3.DataField := 'Cidade';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox120Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsDctoEst.AsBoolean := DBCheckBox120.Checked;
      DM1.tUsuarioExcDctoEst.AsBoolean := DBCheckBox120.Checked;
      DM1.tUsuarioAltDctoEst.AsBoolean := DBCheckBox120.Checked;
    end;
end;

procedure TfUsuarios.BitBtn48Click(Sender: TObject);
begin
  if DBCheckBox120.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'DctoEst';
      fPermissoes.DBCheckBox2.DataField := 'DctoEst';
      fPermissoes.DBCheckBox3.DataField := 'DctoEst';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox15Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsFuncionario.AsBoolean := DBCheckBox15.Checked;
      DM1.tUsuarioExcFuncionario.AsBoolean := DBCheckBox15.Checked;
      DM1.tUsuarioAltFuncionario.AsBoolean := DBCheckBox15.Checked;
    end;
end;

procedure TfUsuarios.BitBtn24Click(Sender: TObject);
begin
  if DBCheckBox15.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Funcionario';
      fPermissoes.DBCheckBox2.DataField := 'Funcionario';
      fPermissoes.DBCheckBox3.DataField := 'Funcionario';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox18Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsProgramacao.AsBoolean := DBCheckBox18.Checked;
      DM1.tUsuarioExcProgramacao.AsBoolean := DBCheckBox18.Checked;
      DM1.tUsuarioAltProgramacao.AsBoolean := DBCheckBox18.Checked;
    end;
end;

procedure TfUsuarios.BitBtn36Click(Sender: TObject);
begin
  if DBCheckBox18.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Programacao';
      fPermissoes.DBCheckBox2.DataField := 'Programacao';
      fPermissoes.DBCheckBox3.DataField := 'Programacao';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn43Click(Sender: TObject);
begin
  if DBCheckBox23.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.Caption   := 'Digitar';
      fPermissoes.DBCheckBox1.DataField := 'TabPreco';
      fPermissoes.DBCheckBox2.Visible   := False;
      fPermissoes.DBCheckBox3.DataField := 'TabPreco';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn49Click(Sender: TObject);
begin
  if DBCheckBox37.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'AgeContato';
      fPermissoes.DBCheckBox2.DataField := 'AgeContato';
      fPermissoes.DBCheckBox3.DataField := 'AgeContato';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox37Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsAgeContato.AsBoolean := DBCheckBox37.Checked;
      DM1.tUsuarioExcAgeContato.AsBoolean := DBCheckBox37.Checked;
      DM1.tUsuarioAltAgeContato.AsBoolean := DBCheckBox37.Checked;
    end;
end;

procedure TfUsuarios.BitBtn50Click(Sender: TObject);
begin
  if DBCheckBox50.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Cheque';
      fPermissoes.DBCheckBox2.DataField := 'Cheque';
      fPermissoes.DBCheckBox3.DataField := 'Cheque';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn38Click(Sender: TObject);
begin
  if DBCheckBox71.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Orcamento';
      fPermissoes.DBCheckBox2.DataField := 'Orcamento';
      fPermissoes.DBCheckBox3.DataField := 'Orcamento';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn51Click(Sender: TObject);
begin
  if DBCheckBox11.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'NotaEnt';
      fPermissoes.DBCheckBox2.DataField := 'NotaEnt';
      fPermissoes.DBCheckBox3.DataField := 'NotaEnt';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');

end;

procedure TfUsuarios.BitBtn19Click(Sender: TObject);
begin
  if DBCheckBox7.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Vale';
      fPermissoes.DBCheckBox2.DataField := 'Vale';
      fPermissoes.DBCheckBox3.DataField := 'Vale';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox7Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsVale.AsBoolean := DBCheckBox7.Checked;
      DM1.tUsuarioExcVale.AsBoolean := DBCheckBox7.Checked;
      DM1.tUsuarioAltVale.AsBoolean := DBCheckBox7.Checked;
    end;
end;

procedure TfUsuarios.DBCheckBox66Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsMotivo.AsBoolean := DBCheckBox66.Checked;
      DM1.tUsuarioExcMotivo.AsBoolean := DBCheckBox66.Checked;
      DM1.tUsuarioAltMotivo.AsBoolean := DBCheckBox66.Checked;
    end;
end;

procedure TfUsuarios.BitBtn21Click(Sender: TObject);
begin
  if DBCheckBox66.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Motivo';
      fPermissoes.DBCheckBox2.DataField := 'Motivo';
      fPermissoes.DBCheckBox3.DataField := 'Motivo';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox68Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsEquipEpi.AsBoolean := DBCheckBox68.Checked;
      DM1.tUsuarioExcEquipEpi.AsBoolean := DBCheckBox68.Checked;
      DM1.tUsuarioAltEquipEpi.AsBoolean := DBCheckBox68.Checked;
    end;
end;

procedure TfUsuarios.BitBtn44Click(Sender: TObject);
begin
  if DBCheckBox68.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'EquipEPI';
      fPermissoes.DBCheckBox2.DataField := 'EquipEPI';
      fPermissoes.DBCheckBox3.DataField := 'EquipEPI';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox77Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsMovAtelier.AsBoolean := DBCheckBox77.Checked;
      DM1.tUsuarioExcMovAtelier.AsBoolean := DBCheckBox77.Checked;
      DM1.tUsuarioAltMovAtelier.AsBoolean := DBCheckBox77.Checked;
    end;
end;

procedure TfUsuarios.BitBtn45Click(Sender: TObject);
begin
  if DBCheckBox77.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'MovAtelier';
      fPermissoes.DBCheckBox2.DataField := 'MovAtelier';
      fPermissoes.DBCheckBox3.DataField := 'MovAtelier';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn41Click(Sender: TObject);
begin
  if DBCheckBox106.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'MaoDeObra';
      fPermissoes.DBCheckBox2.DataField := 'MaoDeObra';
      fPermissoes.DBCheckBox3.DataField := 'MaoDeObra';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox106Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsFuncionario.AsBoolean := DBCheckBox106.Checked;
      DM1.tUsuarioExcFuncionario.AsBoolean := DBCheckBox106.Checked;
      DM1.tUsuarioAltFuncionario.AsBoolean := DBCheckBox106.Checked;
    end;
end;

procedure TfUsuarios.DBCheckBox28Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsGrupoCliente.AsBoolean := DBCheckBox28.Checked;
      DM1.tUsuarioExcGrupoCliente.AsBoolean := DBCheckBox28.Checked;
      DM1.tUsuarioAltGrupoCliente.AsBoolean := DBCheckBox28.Checked;
    end;
end;

procedure TfUsuarios.BitBtn37Click(Sender: TObject);
begin
  if DBCheckBox28.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'GrupoCliente';
      fPermissoes.DBCheckBox2.DataField := 'GrupoCliente';
      fPermissoes.DBCheckBox3.DataField := 'GrupoCliente';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox101Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsFeriado.AsBoolean := DBCheckBox101.Checked;
      DM1.tUsuarioExcFeriado.AsBoolean := DBCheckBox101.Checked;
      DM1.tUsuarioAltFeriado.AsBoolean := DBCheckBox101.Checked;
    end;
end;

procedure TfUsuarios.BitBtn39Click(Sender: TObject);
begin
  if DBCheckBox28.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Feriado';
      fPermissoes.DBCheckBox2.DataField := 'Feriado';
      fPermissoes.DBCheckBox3.DataField := 'Feriado';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox110Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsCadastroParadas.AsBoolean := DBCheckBox110.Checked;
      DM1.tUsuarioExcCadastroParadas.AsBoolean := DBCheckBox110.Checked;
      DM1.tUsuarioAltCadastroParadas.AsBoolean := DBCheckBox110.Checked;
    end;
end;

procedure TfUsuarios.BitBtn47Click(Sender: TObject);
begin
  if DBCheckBox110.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'CadastroParadas';
      fPermissoes.DBCheckBox2.DataField := 'CadastroParadas';
      fPermissoes.DBCheckBox3.DataField := 'CadastroParadas';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox114Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsCadastroDefeitos.AsBoolean := DBCheckBox114.Checked;
      DM1.tUsuarioExcCadastroDefeitos.AsBoolean := DBCheckBox114.Checked;
      DM1.tUsuarioAltCadastroDefeitos.AsBoolean := DBCheckBox114.Checked;
    end;
end;

procedure TfUsuarios.BitBtn52Click(Sender: TObject);
begin
  if DBCheckBox114.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'CadastroDefeitos';
      fPermissoes.DBCheckBox2.DataField := 'CadastroDefeitos';
      fPermissoes.DBCheckBox3.DataField := 'CadastroDefeitos';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');

end;

procedure TfUsuarios.DBCheckBox111Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsTalao.AsBoolean := DBCheckBox111.Checked;
      DM1.tUsuarioExcTalao.AsBoolean := DBCheckBox111.Checked;
    end;
end;

procedure TfUsuarios.BitBtn53Click(Sender: TObject);
begin
  if DBCheckBox114.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Talao';
      fPermissoes.DBCheckBox2.Visible   := False;
      fPermissoes.DBCheckBox3.DataField := 'Talao';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.DBCheckBox129Click(Sender: TObject);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      Editar_Tabelas;
      DM1.tUsuarioInsFilial.AsBoolean := DBCheckBox129.Checked;
      DM1.tUsuarioExcFilial.AsBoolean := DBCheckBox129.Checked;
      DM1.tUsuarioAltFilial.AsBoolean := DBCheckBox129.Checked;
    end;
end;

procedure TfUsuarios.BitBtn54Click(Sender: TObject);
begin
  if DBCheckBox129.Checked then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := 'Filial';
      fPermissoes.DBCheckBox2.DataField := 'Filial';
      fPermissoes.DBCheckBox3.DataField := 'Filial';
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn58Click(Sender: TObject);
begin
  Permissao(DBCheckBox130.DataField,DBCheckBox130.Checked);
end;

procedure TfUsuarios.BitBtn59Click(Sender: TObject);
begin
  Permissao(DBCheckBox131.DataField,DBCheckBox131.Checked);
end;

procedure TfUsuarios.BitBtn60Click(Sender: TObject);
begin
  Permissao(DBCheckBox132.DataField,DBCheckBox132.Checked);
end;

procedure TfUsuarios.BitBtn61Click(Sender: TObject);
begin
  Permissao(DBCheckBox142.DataField,DBCheckBox142.Checked);
end;

procedure TfUsuarios.BitBtn62Click(Sender: TObject);
begin
  Permissao(DBCheckBox143.DataField,DBCheckBox143.Checked);
end;

procedure TfUsuarios.DBCheckBox130Click(Sender: TObject);
begin
  Editar_Tabelas1(DBCheckBox130.DataField,DBCheckBox130.Checked);
end;

procedure TfUsuarios.DBCheckBox131Click(Sender: TObject);
begin
  Editar_Tabelas1(DBCheckBox131.DataField,DBCheckBox131.Checked);
end;

procedure TfUsuarios.DBCheckBox132Click(Sender: TObject);
begin
  Editar_Tabelas1(DBCheckBox132.DataField,DBCheckBox132.Checked);
end;

procedure TfUsuarios.DBCheckBox142Click(Sender: TObject);
begin
  Editar_Tabelas1(DBCheckBox142.DataField,DBCheckBox142.Checked);
end;

procedure TfUsuarios.DBCheckBox143Click(Sender: TObject);
begin
  Editar_Tabelas1(DBCheckBox143.DataField,DBCheckBox143.Checked);
end;

procedure TfUsuarios.Permissao(campo: String; Valor: Boolean);
begin
  if Valor then
  begin
    fPermissoes := TfPermissoes.Create(Self);
    fPermissoes.DBCheckBox1.DataField := Campo;
    fPermissoes.DBCheckBox2.DataField := Campo;
    fPermissoes.DBCheckBox3.DataField := Campo;
    fPermissoes.ShowModal;
  end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.Editar_Tabelas;
begin
  DM1.tUsuarioAlt.Edit;
  DM1.tUsuarioExc.Edit;
  DM1.tUsuarioIns.Edit;
end;

procedure TfUsuarios.Editar_Tabelas1(Campo: String; Valor: Boolean);
begin
  if DM1.tUsuario.State in [dsBrowse] then
    Exit;

  DM1.tUsuarioAlt.Edit;
  DM1.tUsuarioExc.Edit;
  DM1.tUsuarioIns.Edit;

  DM1.tUsuarioIns.FieldByName(Campo).AsBoolean := Valor;
  DM1.tUsuarioExc.FieldByName(Campo).AsBoolean := Valor;
  DM1.tUsuarioAlt.FieldByName(Campo).AsBoolean := Valor;
end;

procedure TfUsuarios.DBCheckBox134Click(Sender: TObject);
begin
  Editar_Tabelas1(DBCheckBox134.DataField,DBCheckBox134.Checked);
end;

procedure TfUsuarios.BitBtn55Click(Sender: TObject);
begin
  Permissao(DBCheckBox134.DataField,DBCheckBox134.Checked);
end;

end.


