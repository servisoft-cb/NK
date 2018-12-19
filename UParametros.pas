unit UParametros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, DB, DBTables, ToolEdit,
  CurrEdit, ComCtrls, RxLookup, Grids, DBGrids, RXDBCtrl, Variants, RxDBComb, rsDBUtils;

type
  TfParametros = class(TForm)
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label19: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DirectoryEdit1: TDirectoryEdit;
    DBCheckBox3: TDBCheckBox;
    DBEdit12: TDBEdit;
    TabSheet2: TTabSheet;
    StaticText1: TStaticText;
    RxDBLookupCombo5: TRxDBLookupCombo;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    BitBtn16: TBitBtn;
    TabSheet3: TTabSheet;
    Label23: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    DBEdit13: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DirectoryEdit2: TDirectoryEdit;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    DBEdit20: TDBEdit;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    DBEdit21: TDBEdit;
    BitBtn5: TBitBtn;
    ProgressBar1: TProgressBar;
    Label20: TLabel;
    Label39: TLabel;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBEdit22: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    Label21: TLabel;
    Label22: TLabel;
    GroupBox3: TGroupBox;
    Label87: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label150: TLabel;
    Label149: TLabel;
    Label151: TLabel;
    Label148: TLabel;
    Label42: TLabel;
    RxDBComboBox53: TRxDBComboBox;
    RxDBComboBox66: TRxDBComboBox;
    DBEdit27: TDBEdit;
    RxDBComboBox67: TRxDBComboBox;
    RxDBComboBox96: TRxDBComboBox;
    RxDBComboBox95: TRxDBComboBox;
    RxDBComboBox97: TRxDBComboBox;
    RxDBComboBox94: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    Label133: TLabel;
    Label132: TLabel;
    RxDBComboBox81: TRxDBComboBox;
    RxDBComboBox80: TRxDBComboBox;
    Label60: TLabel;
    RxDBComboBox32: TRxDBComboBox;
    RxDBComboBox82: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vItemSetor : Integer;
    procedure Habilita_Desabilita;
  public
    { Public declarations }
  end;

var
  fParametros: TfParametros;

implementation

uses UDM1, UDMTalao;

{$R *.DFM}

procedure TfParametros.Habilita_Desabilita;
begin
  Panel2.Enabled  := not(Panel2.Enabled);
  TabSheet2.Enabled := not(TabSheet2.Enabled);
  TabSheet3.Enabled := not(TabSheet3.Enabled);
  BitBtn1.Enabled := not(BitBtn1.Enabled);
  BitBtn2.Enabled := not(BitBtn2.Enabled);
  BitBtn3.Enabled := not(BitBtn3.Enabled);
  BitBtn4.Enabled := not(BitBtn4.Enabled);
end;

procedure TfParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DmTalao.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DmTalao);

  Action := Cafree;
end;

procedure TfParametros.BitBtn1Click(Sender: TObject);
begin
  DM1.tParametrosCaminhoGrids.AsString    := DirectoryEdit1.Text;
  DM1.tParametrosEndSalvarXMLNFe.AsString := DirectoryEdit2.Text;
  DM1.tParametros.Post;
  Habilita_Desabilita;
end;

procedure TfParametros.BitBtn2Click(Sender: TObject);
begin
  DM1.tParametros.Cancel;
  Habilita_Desabilita;
end;

procedure TfParametros.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tParametros.State in [dsEdit] then
    begin
      CanClose := False;
      ShowMessage('Você deve confirmar ou cancelar este parâmetro!');
    end
  else
    CanClose := True;
end;

procedure TfParametros.BitBtn3Click(Sender: TObject);
begin
  DM1.tParametros.Edit;
  Habilita_Desabilita;
end;

procedure TfParametros.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfParametros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    begin
      DBEdit1.ReadOnly  := not(DBEdit1.ReadOnly);
      if DM1.tUsuarioAdministrador.AsBoolean then
        DBEdit11.ReadOnly := not(DBEdit11.ReadOnly);
      DirectoryEdit1.ReadOnly := not(DirectoryEdit1.ReadOnly);
    end;
end;

procedure TfParametros.BitBtn7Click(Sender: TObject);
var
  i : Integer;
begin
  if RxDBLookupCombo5.Text <> '' then
    begin
      DM1.tParametrosSetor.Refresh;
      DM1.tParametrosSetor.Last;
      if vItemSetor > 0 then
        i := vItemPedido
      else
        i := DM1.tParametrosSetorOrdem.AsInteger + 1;
      DM1.tParametrosSetor.Insert;
      DM1.tParametrosSetorOrdem.AsInteger    := i;
      DM1.tParametrosSetorCodSetor.AsInteger := RxDBLookupCombo5.KeyValue;
      DM1.tParametrosSetor.Post;
    end
  else
    ShowMessage('Falta informar o setor!');
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo5.SetFocus;
  vItemSetor := 0;
end;

procedure TfParametros.BitBtn16Click(Sender: TObject);
begin
  if DM1.tParametrosSetorOrdem.AsInteger > 0 then
    begin
      vItemSetor := DM1.tParametrosSetorOrdem.AsInteger;
      RxDBLookupCombo5.KeyValue := DM1.tParametrosSetorCodSetor.AsInteger;
      RxDBLookupCombo5.SetFocus;
      DM1.tParametrosSetor.Delete;
    end;
end;

procedure TfParametros.BitBtn9Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este setor?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    DM1.tParametrosSetor.Delete;
end;

procedure TfParametros.BitBtn5Click(Sender: TObject);
begin
  RxDBGrid1.DataSource := nil;
  DMTalao.tTalao.Close;
  DMTalao.Talao.CommandText := ctTalao
                             + ' WHERE PROCESSO <> ' + QuotedStr('E');
  DMTalao.tTalao.Open;
  ProgressBar1.Max      := DMTalao.tTalao.RecordCount;
  ProgressBar1.Position := 0;

  DMTalao.tTalao.First;
  while not DMTalao.tTalao.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    DM1.tParametrosSetor.First;
    while not DM1.tParametrosSetor.Eof do
    begin
      if not DMTalao.tTalaoSetor.Locate('TALAO;CODSETOR',VarArrayOf([DMTalao.tTalaoTALAO.AsInteger,DM1.tParametrosSetorCodSetor.AsInteger]),[loCaseInsensitive]) then
      begin
        DMTalao.tTalaoSetor.Insert;
        DMTalao.tTalaoSetorTalao.AsInteger       := DMTalao.tTalaoTALAO.AsInteger;
        DMTalao.tTalaoSetorCodSetor.AsInteger    := DM1.tParametrosSetorCodSetor.AsInteger;
        DMTalao.tTalaoSetorProcesso.AsString     := 'N';
        DMTalao.tTalaoSetorTOTALHORAS.AsFloat    := 0;
        DMTalao.tTalaoSetorHORASPARADAS.AsFloat  := 0;
        DMTalao.tTalaoSetorHORASPRODUCAO.AsFloat := 0;
        DMTalao.tTalaoSetor.Post;
        DMTalao.tTalaoSetor.ApplyUpdates(0);
      end;

      DM1.tParametrosSetor.Next;
    end;

    DMTalao.tTalao.Next;
  end;
  RxDBGrid1.DataSource := DM1.dsParametrosSetor;

  ShowMessage('Geração concluída!');
end;

procedure TfParametros.FormCreate(Sender: TObject);
begin
  if not Assigned(DMTalao) then
    DMTalao := TDMTalao.Create(Self);

  oDBUtils.OpenTables(True,Self);

  PageControl1.ActivePageIndex := 0;
  DirectoryEdit1.Text := DM1.tParametrosCaminhoGrids.AsString;
  DirectoryEdit2.Text := DM1.tParametrosEndSalvarXMLNFe.AsString;
end;

end.
