unit UMovAtelier;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, RXLookup, DbTables, Db, RxCalc, ToolEdit, CurrEdit,
  MemTable, DBFilter, Math, RXDBCtrl, SMDBGrid;

type
  TfMovAtelier = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SpeedButton9: TSpeedButton;
    Panel3: TPanel;
    Bevel3: TBevel;
    Bevel5: TBevel;
    BitBtn7: TBitBtn;
    Label53: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit35: TDBEdit;
    StaticText1: TStaticText;
    BitBtn14: TBitBtn;
    DBDateEdit2: TDBDateEdit;
    RxLabel2: TRxLabel;
    DBEdit39: TDBEdit;
    SpeedButton17: TSpeedButton;
    SMDBGrid1: TSMDBGrid;
    StaticText2: TStaticText;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    Linha : Integer;
    F : TextFile;
    Texto1, Texto2 : string;

    procedure Habilita_Desabilita;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
  public
    { Public declarations }
  end;

var
  fMovAtelier: TfMovAtelier;

implementation

uses UDM1, UDM2, UCliente, UEscImpressora, UConsMovAtelier, UBuscaTalao,
  uMovAtelierAlt, UbaixaMovAtelier;

{$R *.DFM}

procedure TfMovAtelier.Imprime_Rodape;
begin
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'                                                                                               Vlr. Total ==>> ' + FormatFloat('###,###,##0.00',Dm1.tMovAtelierVlrTotal.AsFloat));
  Writeln(F);
  Writeln(F);
  Writeln(F);
  Writeln(F,'            ___________________________________________ ');
  Writeln(F,'               ' + DM1.tClienteNome.AsString);
  linha := linha + 7;
  while linha < 33 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfMovAtelier.Imprime_Detalhe;
var
  i : Integer;
begin
  Texto2 := Dm1.tMovAtelierItensItem.AsString;
  for i := 1 to 4 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto2 + '  ';

  Texto2 := Dm1.tMovAtelierItensTalao.AsString;
  for i := 1 to 8 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2 + '   ';

  Texto2 := Dm1.tMovAtelierItenslkReferencia.AsString;
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + texto2 + ' ';

  Texto2 := Copy(Dm1.tMovAtelierItenslkNomeProduto.AsString,1,30);
  for i := 1 to 30 - length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + ' ';

  Texto2 := Dm1.tMovAtelierItensQtd.AsString;
  for i := 1 to 13 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := Texto1 + Texto2 + '   ';

  Texto2 := FormatFloat('###,###,##0.00',DM1.tMovAtelierItensVlrUnitario.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := Texto1 + Texto2 + '   ';

  Texto2 := FormatFloat('###,###,##0.00',DM1.tMovAtelierItensVlrTotal.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := Texto1 + Texto2;
  writeln(F,Texto1);

  Linha := Linha + 1;
end;

procedure TfMovAtelier.Imprime_Cabecalho;
var
  i : Integer;
begin
  Linha := 0;
{  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;}
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  Writeln(F,Dm1.tEmpresaEmpresa.AsString);
  Writeln(F,'Endereço: ' + Dm1.tEmpresaEndereco.AsString);
  Texto2 := 'Cep: ' + Dm1.tEmpresaCep.AsString;
  for i := 1 to 35 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2 + 'Bairro: ' + Dm1.tEmpresaBairro.AsString;
  Writeln(F,Texto1);

  Texto2 := 'Cidade: ' + Dm1.tEmpresaCidade.AsString;
  for i := 1 to 39 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'UF: ' + Dm1.tEmpresaEstado.AsString;
  for i := 1 to 13 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
 Texto1 := Texto1 + Texto2 + '                     Fone:' + Dm1.tEmpresaTel.AsString;
 Writeln(F,Texto1);

  Texto2 := 'CNPJ: ' + Dm1.tEmpresaCgc.AsString;
  for i := 1 to 23 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'Insc. Estadual: ' + Dm1.tEmpresaInscr.AsString;
  for i := 1 to 20 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '                    Fax: ' + Dm1.tEmpresaFax.AsString;
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'    N° DO MOVIMENTO: ' + DM1.tMovAtelierNumMov.AsString + '                                                      DT. EMISSAO: ' + Dm1.tMovAtelierDtEmissao.AsString);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');

  Writeln(F,Dm1.tClienteNome.AsString);
  Writeln(F,'Endereço: ' + Dm1.tClienteEndereco.AsString);
  Texto2 := 'Cep: ' + Dm1.tClienteCep.AsString;
  for i := 1 to 35 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2 + 'Bairro: ' + Dm1.tClienteBairro.AsString;
  Writeln(F,Texto1);

  Texto2 := 'Cidade: ' + Dm1.tClienteCidade.AsString;
  for i := 1 to 39 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'UF: ' + Dm1.tClienteUf.AsString;
  for i := 1 to 13 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
 Texto1 := Texto1 + Texto2 + '                     Fone:' + Dm1.tClienteTelefone.AsString;
 Writeln(F,Texto1);

  Texto2 := 'CNPJ: ' + Dm1.tClienteCgcCpf.AsString;
  for i := 1 to 23 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto2;

  Texto2 := 'Insc. Estadual: ' + Dm1.tClienteInscrEst.AsString;
  for i := 1 to 20 - Length(Texto2) do
   Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '                    Fax: ' + Dm1.tClienteFax.AsString;
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F);
  Writeln(F,' Item    Talão   Referencia           Produto                           Quantidade    Vlr. Unitario       Vlr. Total ');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Linha := 17;
end;

procedure TfMovAtelier.Habilita_Desabilita;
begin
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  Panel1.Enabled            := not(Panel1.Enabled);
  Panel6.Enabled            := not(Panel6.Enabled);
  BitBtn1.Enabled           := not(BitBtn1.Enabled);
  BitBtn2.Enabled           := not(BitBtn2.Enabled);
  BitBtn3.Enabled           := not(BitBtn3.Enabled);
  BitBtn4.Enabled           := not(BitBtn4.Enabled);
  BitBtn5.Enabled           := not(BitBtn5.Enabled);
  BitBtn6.Enabled           := not(BitBtn6.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  BitBtn14.Enabled          := not(BitBtn14.Enabled);
end;

procedure TfMovAtelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
  DM1.tCliente.IndexFieldNames := 'Codigo';
  Action := CaFree;
end;

procedure TfMovAtelier.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovAtelier.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de clientes!');
end;

procedure TfMovAtelier.SpeedButton9Click(Sender: TObject);
begin
  if not(DM1.tMovAtelierItens.IsEmpty) then
    begin
      if MessageDlg('Deseja excluir este talão do movimento?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
        begin
          DM1.tMovAtelierVlrTotal.AsFloat  := DM1.tMovAtelierVlrTotal.AsFloat - DM1.tMovAtelierItensVlrTotal.AsFloat;
          DM1.tMovAtelierItens.Delete;
        end;
    end
  else
    ShowMessage('Não existe item para excluir!');
end;

procedure TfMovAtelier.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if DM1.tUsuarioInsMovAtelier.AsBoolean then
    begin
      BitBtn7.Tag := 0;
      Habilita_Desabilita;
      DM1.tMovAtelier.IndexFieldNames  := 'NumMov';
      DM1.tMovAtelier.Refresh;
      DM1.tMovAtelier.Last;
      vNumAux := DM1.tMovAtelierNumMov.AsInteger;

      DM1.tMovAtelier.Insert;
      DM1.tMovAtelierNumMov.AsInteger     := vNumAux + 1;
      DM1.tMovAtelierDtEmissao.AsDateTime := Date;
      DM1.tMovAtelier.Post;
      DM1.tMovAtelier.Edit;
      DBDateEdit2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMovAtelier.BitBtn2Click(Sender: TObject);
begin
  if (RxDBLookupCombo8.Text = '') and (DBDateEdit2.Date < 1) then
    ShowMessage('Falta informar o cliente e a data de emissão!')
  else
    begin
      Habilita_Desabilita;
      BitBtn4.Enabled  := False;
      DBEdit35.Enabled := True;
      BitBtn7.Tag      := 0;
      DM1.tMovAtelierVlrTotal.AsFloat := 0;
      DM1.tMovAtelierItens.First;
      while not DM1.tMovAtelierItens.Eof do
        begin
          DM1.tMovAtelierVlrTotal.AsFloat := DM1.tMovAtelierVlrTotal.AsFloat + DM1.tMovAtelierItensVlrTotal.AsFloat;
          DM1.tMovAtelierItens.Next;
        end;
      DM1.tMovAtelier.Post;
      DM1.tMovAtelier.Refresh;
      DM1.tMovAtelierItens.Refresh;
    end;
end;

procedure TfMovAtelier.BitBtn4Click(Sender: TObject);
begin
  if BitBtn7.Tag = 0 then
    begin
      DM1.tMovAtelierItens.First;
      while not DM1.tMovAtelierItens.Eof do
        DM1.tMovAtelierItens.Delete;
      DM1.tMovAtelier.Delete;
    end;
  Habilita_Desabilita;
end;

procedure TfMovAtelier.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    CanClose := True;
end;

procedure TfMovAtelier.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tMovAtelier.State in [dsBrowse]) then
    begin
      fConsMovAtelier := TfConsMovAtelier.Create(Self);
      fConsMovAtelier.ShowModal;
    end;
end;

procedure TfMovAtelier.BitBtn7Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMovAtelier.AsBoolean then
    begin
      BitBtn7.Tag := 1;
      DM1.tMovAtelier.Edit;
      Habilita_Desabilita;
      BitBtn4.Enabled := False;
      DBDateEdit2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMovAtelier.RxDBLookupCombo8Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfMovAtelier.BitBtn14Click(Sender: TObject);
begin
  if DM1.tUsuarioExcMovAtelier.AsBoolean then
    begin
      if MessageDlg('Deseja excluir este registro?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          DM1.tMovAtelierItens.First;
          while not DM1.tMovAtelierItens.Eof do
            DM1.tMovAtelierItens.Delete;
          DM1.tMovAtelier.Delete;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMovAtelier.BitBtn3Click(Sender: TObject);
var
  vCodigo : integer;
  Texto : String;
begin
  vCodigo                  := DM1.tMovAtelierNumMov.AsInteger;
  DM1.tMovAtelier.Filtered := False;
  DM1.tMovAtelier.Filter   := 'NumMov = '''+IntToStr(vCodigo)+'''';
  DM1.tMovAtelier.Filtered := True;

  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;

  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  Linha := 99;
  DM1.tMovAtelierItens.First;
  while not DM1.tMovAtelierItens.Eof do
    begin
      if linha > 31 then
        Imprime_Cabecalho;
      Imprime_Detalhe;
      DM1.tMovAtelierItens.Next;
    end;
  Imprime_Rodape;

  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;
  DM1.tMovAtelier.Filtered := False;
  DM1.tMovAtelier.Locate('NumMov',vCodigo,[loCaseInsensitive]);
end;

procedure TfMovAtelier.SpeedButton17Click(Sender: TObject);
begin
  fBuscaTalao := TfBuscaTalao.Create(Self);
  fBuscaTalao.ShowModal;
end;

procedure TfMovAtelier.FormShow(Sender: TObject);
begin
  DM1.tMovAtelier.Refresh;
  DM1.tMovAtelierItens.Refresh;
  DM1.tMovAtelier.Last;
end;

procedure TfMovAtelier.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DM1.tMovAtelierItensItem.AsInteger > 0 then
    begin
      if (Shift = [ssCtrl]) and (Key = vk_Delete) then
        Key := vk_Return
      else
      if (Key = vk_Return) and (DM1.tMovAtelier.State in [dsEdit]) then
        begin
          fMovAtelierAlt := TfMovAtelierAlt.Create(Self);
          fMovAtelierAlt.ShowModal;
        end
      else
      if (Key = vk_Return) and (DM1.tMovAtelier.State in [dsBrowse]) then
        ShowMessage('Para alterar o valor, o movimento deve estar em modo de alteração!');
    end;
end;

procedure TfMovAtelier.BitBtn6Click(Sender: TObject);
begin
  fBaixaMovAtelier := TfBaixaMovAtelier.Create(Self);
  fBaixaMovAtelier.ShowModal;
end;

procedure TfMovAtelier.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tMovAtelierItensDtBaixa.AsDateTime > 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
end;

end.
