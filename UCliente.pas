unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF, VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb;

type
  TfCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel5: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tClienteIns: TTable;
    tClienteInsCodigo: TIntegerField;
    Label29: TLabel;
    DBEdit22: TDBEdit;
    Label31: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label16: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    TabSheet3: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Panel6: TPanel;
    BitBtn7: TBitBtn;
    TabSheet4: TTabSheet;
    Label33: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    VerificaCGC1: TVerificaCGC;
    VerificaCPF1: TVerificaCPF;
    Label34: TLabel;
    DBEdit23: TDBEdit;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Panel7: TPanel;
    DBMemo2: TDBMemo;
    Label36: TLabel;
    DBEdit14: TDBEdit;
    Bevel1: TBevel;
    Label37: TLabel;
    SpeedButton6: TSpeedButton;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    QRCompositeReport1: TQRCompositeReport;
    qVerifica: TQuery;
    qVerificaCodCliente: TIntegerField;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label32: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    TabSheet5: TTabSheet;
    Label38: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Label39: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label14: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label30: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label40: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    TabSheet6: TTabSheet;
    Label35: TLabel;
    DBEdit4: TDBEdit;
    Label41: TLabel;
    DBEdit21: TDBEdit;
    Label42: TLabel;
    RxDBLookupCombo15: TRxDBLookupCombo;
    StaticText1: TStaticText;
    Label43: TLabel;
    DBEdit24: TDBEdit;
    Label44: TLabel;
    DBEdit25: TDBEdit;
    Label45: TLabel;
    DBEdit26: TDBEdit;
    Label46: TLabel;
    DBEdit27: TDBEdit;
    tClienteInsCgcCpf: TStringField;
    tClienteInsNome: TStringField;
    tClienteInsEndPgto: TStringField;
    tClienteInsBairroPgto: TStringField;
    tClienteInsCidPgto: TStringField;
    tClienteInsCepPgto: TStringField;
    tClienteInsUfPgto: TStringField;
    tClienteInsCodCidadeP: TIntegerField;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label47: TLabel;
    DBCheckBox3: TDBCheckBox;
    Label48: TLabel;
    DBEdit32: TDBEdit;
    Label49: TLabel;
    RxDBLookupCombo16: TRxDBLookupCombo;
    SpeedButton7: TSpeedButton;
    Label50: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label51: TLabel;
    DBEdit33: TDBEdit;
    Label66: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label67: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label68: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label69: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    Label52: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    Label89: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RxDBLookupCombo5DropDown(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo7Exit(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure RxDBLookupCombo9Exit(Sender: TObject);
    procedure RxDBLookupCombo11Exit(Sender: TObject);
    procedure RxDBLookupCombo13Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo15Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo6Change(Sender: TObject);
    procedure RxDBComboBox4Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure RxDBComboBox5Exit(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure RxDBComboBox7Exit(Sender: TObject);
    procedure RxDBComboBox8Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Checa_Duplicidade;

    function Monta_MascaraDoc(Pessoa : String) : String;
  public
    { Public declarations }
  end;

var
  fCliente: TfCliente;

implementation

uses UDM1, UVendedor, UCopiaFornec, UUf, UCidade, UCondPgto, uRelCadCli, UDM2, UGrupoCliente, uConsCliente, UCopiaConsCliente, UIntegracao, rsDBUtils;

{$R *.DFM}

procedure TfCliente.Habilita;
begin
  Panel5.Enabled            := not(Panel5.Enabled);
  Panel3.Enabled            := not(Panel3.Enabled);
  Panel7.Enabled            := not(Panel7.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  RxDBLookupCombo7.Enabled  := not(RxDBLookupCombo7.Enabled);
  RxDBLookupCombo9.Enabled  := not(RxDBLookupCombo9.Enabled);
  RxDBLookupCombo10.Enabled := not(RxDBLookupCombo10.Enabled);
  RxDBLookupCombo11.Enabled := not(RxDBLookupCombo11.Enabled);
  RxDBLookupCombo12.Enabled := not(RxDBLookupCombo12.Enabled);
  RxDBComboBox2.Enabled     := not(RxDBComboBox2.Enabled);
  DBEdit4.Enabled           := not(DBEdit4.Enabled);
  DBEdit12.Enabled          := not(DBEdit12.Enabled);
  DBEdit13.Enabled          := not(DBEdit13.Enabled);
  DBEdit15.Enabled          := not(DBEdit15.Enabled);
  DBEdit16.Enabled          := not(DBEdit16.Enabled);
  DBEdit17.Enabled          := not(DBEdit17.Enabled);
  DBEdit18.Enabled          := not(DBEdit18.Enabled);
  DBEdit19.Enabled          := not(DBEdit19.Enabled);
  DBEdit20.Enabled          := not(DBEdit20.Enabled);
  DBMemo1.Enabled           := not(DBMemo1.Enabled);
  DBCheckBox1.Enabled       := False;
end;

procedure TfCliente.Checa_Duplicidade;
begin
  tClienteIns.IndexFieldNames := 'CgcCpf';
  tClienteIns.SetKey;
  tClienteInsCgcCpf.AsString := DBEdit9.Text;
  if (tClienteIns.GotoKey) and (tClienteInsCodigo.AsString <> DM1.tClienteCodigo.AsString) then
    begin
      case MessageDlg('O cliente ' + tClienteInsNome.AsString + ', já está cadastrado com o CNPJ digitado! Deseja continuar assim mesmo?',
           mtInformation,mbYesNoCancel,0) of
        mrNo     : DBEdit9.SetFocus;
        mrCancel : BitBtn5.Click;
      end;
    end;
  tClienteIns.IndexFieldNames := 'Codigo';  
end;

procedure TfCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfCliente.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfCliente.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
end;

procedure TfCliente.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsClientes.AsBoolean then
    begin
      DM1.tCliente.Refresh;
      DM1.tCliente.IndexFieldNames := 'Codigo';
      tClienteIns.IndexFieldNames  := 'Codigo';
      tClienteIns.Refresh;
      tClienteIns.Last;
      DM1.tCliente.Insert;
      DM1.tClienteCodigo.AsInteger := tClienteInsCodigo.AsInteger + 1;
      DBDateEdit1.Date := Date();
      DM1.tClienteImpItemNotaPorTam.AsBoolean := False;
      DM1.tClienteTipoFrete.AsString          := 'F';
      DM1.tCliente.Post;
      DM1.tCliente.Edit;
      Habilita;
      DBEdit1.SetFocus;
      //DM1.t aqui
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfCliente.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltClientes.AsBoolean then
    begin
      DM1.tCliente.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfCliente.BitBtn3Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if DM1.tUsuarioExcClientes.AsBoolean then
    begin
      vCodigo := DM1.tClienteCodigo.AsInteger;
      qVerifica.Close;
      qVerifica.ParamByName('CodCliente').AsInteger := DM1.tClienteCodigo.AsInteger;
      qVerifica.Open;
      if qVerifica.RecordCount > 0 then
        ShowMessage('Cliente não pode ser excluido')
      else
      if MessageDlg('Deseja realmente excluir o cliente?',mtconfirmation,[mbok,mbno],0)=mrok then
      begin
        DM1.tCliente.Delete;
        Prc_Excluir_Cliente_FB(vCodigo);
      end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfCliente.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tCliente.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tCliente.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfCliente.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfCliente.BitBtn6Click(Sender: TObject);
begin
  if DbEdit5.Text = '     -   ' then
    begin
      ShowMessage('Cliente sem CEP');
      DbEdit5.SetFocus;
    end
  else
  begin
    if (DM1.tClienteAprovCredito.AsString <> 'S') and (DM1.tClienteAprovCredito.AsString <> 'C') then
      DM1.tClienteTipoAprov.AsString := '';
    DM1.tCliente.Post;

    Prc_Gravar_Cliente_FB(DM1.tClienteCodigo.AsInteger);
      
    Habilita;
    BitBtn2.Tag := 0;
    BitBtn1.SetFocus;
  end;
end;

procedure TfCliente.DBEdit9Exit(Sender: TObject);
begin
 if (DM1.tClientePessoa.AsString = 'F') and (DBEdit9.Text <> '   .   .   -  ') then
 begin
   VerificaCPF1.Entrada := DBEdit9.Text;
   if not VerificaCPF1.Resultado then
   begin
     ShowMessage('Número de CPF inválido!');
     DBEdit9.SetFocus;
   end;
 end
 else
 if (DM1.tClientePessoa.AsString = 'J') and (DBEdit9.Text <> '  .   .   /    -  ') then
  begin
     VerificaCGC1.Entrada := DBEdit9.Text;
   if not VerificaCGC1.Resultado then
    begin
     ShowMessage('Número de CNPJ inválido!');
     DBEdit9.SetFocus;
    end;
  end;
  Checa_Duplicidade;
end;

procedure TfCliente.BitBtn7Click(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      DM1.tClienteEndPgto.AsString     := tClienteInsEndPgto.AsString;
      DM1.tClienteBairroPgto.AsString  := tClienteInsBairroPgto.AsString;
      DM1.tClienteCodCidadeP.AsInteger := tClienteInsCodCidadeP.AsInteger;
      DM1.tClienteCepPgto.AsString     := tClienteInsCepPgto.AsString;
      DM1.tClienteUfPgto.AsString      := tClienteInsUfPgto.AsString;
    end;
end;

procedure TfCliente.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'CgcCpf';
  Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfCliente.RxDBLookupCombo2Exit(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'Codigo';
  Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfCliente.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'Codigo';
end;

procedure TfCliente.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
    begin
      fVendedor := TfVendedor.Create(Self);
      fVendedor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfCliente.RxDBLookupCombo3Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfCliente.RxDBLookupCombo2Change(Sender: TObject);
begin
  Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfCliente.Edit1Change(Sender: TObject);
begin
  try
    DM1.tCliente.IndexFieldNames := 'CgcCpf';
    DM1.tCliente.FindNearest([Edit1.Text]);
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfCliente.RxDBLookupCombo5DropDown(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'Fantasia';
end;

procedure TfCliente.RxDBLookupCombo5Exit(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'Codigo';
end;

procedure TfCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    if DM1.tCliente.State in [dsEdit,dsInsert] then
      DBCheckBox1.Enabled := not(DBCheckBox1.Enabled);
  if (Key = Vk_F2) and (DM1.tCliente.State in [dsBrowse]) then
  begin
    fCopiaConsCliente := TfCopiaConsCliente.Create(Self);
    fCopiaConsCliente.ShowModal;
  end;
end;

procedure TfCliente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tCliente.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o cliente antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfCliente.RxDBLookupCombo7Exit(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    BitBtn7.SetFocus;
  tClienteIns.IndexFieldNames := 'Codigo';
end;

procedure TfCliente.RxDBLookupCombo7Enter(Sender: TObject);
begin
  tClienteIns.IndexFieldNames := 'Fantasia'
end;

procedure TfCliente.SpeedButton3Click(Sender: TObject);
begin
  fCopiaFornec := TfCopiaFornec.Create(Self);
  fCopiaFornec.ShowModal;
end;

procedure TfCliente.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
    begin
      fUf := TfUf.Create(Self);
      fUf.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.RxDBLookupCombo8Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfCliente.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioCidade.AsBoolean then
    begin
      fCidade := TfCidade.Create(Self);
      fCidade.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.RxDBLookupCombo8Exit(Sender: TObject);
begin
  if (RxDBLookupCombo6.Text = '') and (RxDBLookupCombo8.Text <> '') then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo8.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if DM1.tCidadeEstado.AsString <> '' then
            DM1.tClienteUf.AsString := DM1.tCidadeEstado.AsString;
          if (DBEdit5.Text = '') and (DM1.tCidadeCep.AsString <> '') then
            DM1.tClienteCep.AsString := DM1.tCidadeCep.AsString;
        end;
    end;
end;

procedure TfCliente.RxDBLookupCombo9Exit(Sender: TObject);
begin
  if (RxDBLookupCombo10.Text = '') and (RxDBLookupCombo9.Text <> '') then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo9.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if DM1.tCidadeEstado.AsString <> '' then
            DM1.tClienteUfEntrega.AsString := DM1.tCidadeEstado.AsString;
        end;
    end;
end;

procedure TfCliente.RxDBLookupCombo11Exit(Sender: TObject);
begin
  if (RxDBLookupCombo12.Text = '') and (RxDBLookupCombo11.Text <> '') then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo11.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if DM1.tCidadeEstado.AsString <> '' then
            DM1.tClienteUfEntrega.AsString := DM1.tCidadeEstado.AsString;
        end;
    end;
end;

procedure TfCliente.RxDBLookupCombo13Enter(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfCliente.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.Imprimir1Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if not DM1.tCliente.IsEmpty then
    begin
      vCodigo                      := DM1.tClienteCodigo.AsInteger;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.Filter          := 'Codigo = '''+IntToStr(vCodigo)+'''';
      DM1.tCliente.Filtered        := True;
      fRelCadCli                   := TfRelCadCli.Create(Self);
      if MessageDlg('Deseja imprimir o histórico do pedido?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          QRCompositeReport1.Print;
          fRelCadCli.QuickRep2.Free;
        end
      else
        fRelCadCli.QuickRep1.Print;
      fRelCadCli.QuickRep1.Free;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([vCodigo]);
    end
  else
    ShowMessage('Não há registro p/ ser impresso!');
end;

procedure TfCliente.Visualizar1Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if not DM1.tCliente.IsEmpty then
    begin
      vCodigo                      := DM1.tClienteCodigo.AsInteger;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.Filter          := 'Codigo = '''+IntToStr(vCodigo)+'''';
      DM1.tCliente.Filtered        := True;
      fRelCadCli                   := TfRelCadCli.Create(Self);
      if MessageDlg('Deseja imprimir o histórico do pedido?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          QRCompositeReport1.Preview;
          fRelCadCli.QuickRep2.Free;
        end
      else
        fRelCadCli.QuickRep1.Preview;
      fRelCadCli.QuickRep1.Free;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([vCodigo]);
    end
  else
    ShowMessage('Não há registro p/ ser impresso!');
end;

procedure TfCliente.QRCompositeReport1AddReports(Sender: TObject);
begin
  QRCompositeReport1.Reports.Add(fRelCadCli.QuickRep1);
  QRCompositeReport1.Reports.Add(fRelCadCli.QuickRep2);
end;

procedure TfCliente.CurrencyEdit1Change(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindNearest([CurrencyEdit1.AsInteger]);
    end;
end;

procedure TfCliente.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioGrupoCliente.AsBoolean then
    begin
      fGrupoCliente := TfGrupoCliente.Create(Self);
      fGrupoCliente.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.RxDBLookupCombo15Enter(Sender: TObject);
begin
  DM1.tTipoCobranca.IndexFieldNames := 'Nome';
end;

procedure TfCliente.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  DM1.qPais.Open;
end;

procedure TfCliente.RxDBLookupCombo6Change(Sender: TObject);
begin
  if RxDBLookupCombo6.Text = 'EX' then
    RxDBLookupCombo16.ReadOnly := False;
end;

procedure TfCliente.RxDBComboBox4Exit(Sender: TObject);
var
  vAux : String;
begin
  vAux := '';
  case RxDBComboBox4.ItemIndex of
    0 : vAux := 'J';
    1 : vAux := 'F';
  end;
  if vAux <> '' then
    DM1.tClienteCgcCpfEntrega.EditMask := Monta_MascaraDoc(vAux);
  DM1.tClientePessoaEntrega.AsString := vAux;
end;

function TfCliente.Monta_MascaraDoc(Pessoa: String): String;
begin
  Result := '';
  if Pessoa = 'J' then
    Result := '99.999.999/9999-99'
  else
  if Pessoa = 'F' then
    Result := '999.999.999-99';
end;

procedure TfCliente.DBEdit16Exit(Sender: TObject);
begin
  if (Trim(DM1.tClientePessoaEntrega.AsString) = '') and (DM1.tClienteCgcCpfEntrega.AsString <> '') then
  begin
    ShowMessage('Não foi informada a pessoa (Jurídica/Física)');
    DM1.tClienteCgcCpfEntrega.Clear;
    RxDBComboBox4.SetFocus;
  end;
  if (DM1.tClientePessoaEntrega.AsString = 'F') and (DBEdit16.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit16.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit16.SetFocus;
    end;
  end
  else
  if (DM1.tClientePessoaEntrega.AsString = 'J') and (DBEdit16.Text <> '  .   .   /    -  ') then
  begin
    VerificaCGC1.Entrada := DBEdit16.Text;
    if not VerificaCGC1.Resultado then
    begin
      ShowMessage('Número de CNPJ inválido!');
      DBEdit16.SetFocus;
    end;
  end;
end;

procedure TfCliente.RxDBComboBox5Exit(Sender: TObject);
var
  vAux : String;
begin
  case RxDBComboBox5.ItemIndex of
    0 : vAux := 'J';
    1 : vAux := 'F';
  end;
  DM1.tClientePessoaPgto.AsString := vAux;
  DM1.tClienteCgcCpfPgto.EditMask := Monta_MascaraDoc(vAux);
end;

procedure TfCliente.DBEdit41Exit(Sender: TObject);
begin
  if (Trim(DM1.tClientePessoaPgto.AsString) = '') and (DM1.tClienteCgcCpfPgto.AsString <> '') then
  begin
    ShowMessage('Não foi informada a pessoa (Jurídica/Física)');
    DM1.tClienteCgcCpfPgto.Clear;
    RxDBComboBox5.SetFocus;
  end;
  if (DM1.tClientePessoaPgto.AsString = 'F') and (DBEdit41.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit41.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit41.SetFocus;
    end;
  end
  else
  if (DM1.tClientePessoaPgto.AsString = 'J') and (DBEdit41.Text <> '  .   .   /    -  ') then
  begin
    VerificaCGC1.Entrada := DBEdit41.Text;
    if not VerificaCGC1.Resultado then
    begin
      ShowMessage('Número de CNPJ inválido!');
      DBEdit41.SetFocus;
    end;
  end;
end;

procedure TfCliente.RxDBComboBox7Exit(Sender: TObject);
begin
 if RxDBComboBox7.ItemIndex = 1 then
  begin
   DM1.tClienteCgcCpf.EditMask:='999.999.999-99';
   DBEdit10.TabStop := False;
   DM1.tClienteTipo_Consumidor.AsInteger := 1;
  end
 else
 if RxDBComboBox7.ItemIndex = 0 then
  begin
   DM1.tClienteCgcCpf.EditMask:='99.999.999/9999-99';
   DBEdit10.TabStop := True;
   DM1.tClienteTipo_Consumidor.AsInteger := 0;
  end
 else
 begin
   DM1.tClienteCgcCpf.EditMask:='';
   DBEdit10.TabStop := True;
   DM1.tClienteTipo_Consumidor.AsInteger := 0;
 end;
end;

procedure TfCliente.RxDBComboBox8Exit(Sender: TObject);
begin
  if DM1.tClienteTIPO_CONTRIBUINTE.AsInteger = 2 then
    DM1.tClienteInscrEst.AsString := 'ISENTO'
  else
  if DM1.tClienteTIPO_CONTRIBUINTE.AsInteger = 9 then
    DM1.tClienteInscrEst.AsString := '';
end;

end.
