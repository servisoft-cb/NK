unit UCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, StdCtrls, Mask, ToolEdit, CurrEdit, DBCtrls, Buttons, RxLookup, ExtCtrls,
  RXDBCtrl, Db, DBTables, Grids, DBGrids, SMDBGrid, Variants, DBFilter, ValorPor;

type
  TfCheques = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit3: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    tChequeIns: TTable;
    tChequeInsCodConta: TIntegerField;
    tChequeInsNumCheque: TIntegerField;
    tChequeInsDtEmissao: TDateField;
    tChequeInsVlrTotal: TFloatField;
    tChequeInsNominal: TStringField;
    tChequeInsDtEntrada: TDateField;
    tChequeInsDtPrevista: TDateField;
    tChequeInsAutomatico: TBooleanField;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    Shape1: TShape;
    SMDBGrid1: TSMDBGrid;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn9: TBitBtn;
    RxDBFilter1: TRxDBFilter;
    ValorPorExtenso1: TValorPorExtenso;
    ComboBox1: TComboBox;
    BitBtn11: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Estorna_Pagamento;
    procedure Exclui_CPagar;
    procedure Excluir_Compensacao;
  public
    { Public declarations }
  end;

var
  fCheques: TfCheques;

implementation

uses UDM1, UChequeComp, Math, UChequeCPagar, UEscImpressora, DateUtils, URelCopiaCheque3;

{$R *.DFM}

procedure TfCheques.Excluir_Compensacao;
begin
  DM1.tContas.IndexFieldNames := 'CodConta';
  DM1.tContas.FindKey([DM1.tChequeCodConta.AsInteger]);
  if DM1.tMovimentos.Locate('CodConta;NumChequePag',VarArrayOf([DM1.tChequeCodConta.AsInteger,DM1.tChequeNumCheque.AsInteger]),[locaseinsensitive]) then
    DM1.tMovimentos.Delete;
  DM1.tMovimentos.Refresh;
  DM1.tCheque.Edit;
  DM1.tChequeDtEntrada.Clear;
  DM1.tCheque.Post;
end;

procedure TfCheques.Exclui_CPagar;
begin
  if DM1.tCPagar.Locate('NumCPagar',DM1.tChequeCPagarNumCPagar.AsInteger,[loCaseInsensitive]) then
    if DM1.tCPagarParc.Locate('NumCPagar;ParcCPagar',VarArrayOf([DM1.tChequeCPagarNumCPagar.AsInteger,DM1.tChequeCPagarParcela.AsInteger]),[locaseinsensitive]) then
      Estorna_Pagamento;
  DM1.tChequeCPagar.Delete;
end;

procedure TfCheques.Estorna_Pagamento;
begin
  if DM1.tCPagarParcHist.Locate('NumCheque',DM1.tChequeNumCheque.AsInteger,[loCaseInsensitive]) then
    begin
      DM1.tCPagarParc.Edit;
      DM1.tCPagarParcQuitParcCPagar.AsBoolean   := False;
      DM1.tCPagarParcJurosParcCPagar.AsFloat    := DM1.tCPagarParcJurosParcCPagar.AsFloat - DM1.tCPagarParcHistVlrUltJuros.AsFloat;
      if DM1.tCPagarParcHist.RecordCount = 1 then
        begin
          DM1.tCPagarParcJurosParcCPagar.AsFloat := 0;
          DM1.tCPagarParcJurosPagos.AsFloat      := 0;
        end;
      DM1.tCPagarParcRestParcela.AsFloat := DM1.tCPagarParcRestParcela.AsFloat + DM1.tCPagarParcHistVlrUltPgto.AsFloat +
                                            DM1.tCPagarParcHistVlrUltAbatimentos.AsFloat + DM1.tCPagarParcHistVlrUltDescontos.AsFloat;
      DM1.tCPagarParcAbatimentos.AsFloat := DM1.tCPagarParcAbatimentos.AsFloat - DM1.tCPagarParcHistVlrUltAbatimentos.AsFloat;
      DM1.tCPagarParcDesconto.AsFloat    := DM1.tCPagarParcDesconto.AsFloat - DM1.tCPagarParcHistVlrUltDescontos.AsFloat;
      DM1.tCPagarParcDespesas.AsFloat    := DM1.tCPagarParcDespesas.AsFloat - DM1.tCPagarParcHistVlrUltDespesas.AsFloat;
      DM1.tCPagarParcPgtoParcial.AsFloat := DM1.tCPagarParcPgtoParcial.AsFloat - DM1.tCPagarParcHistVlrUltPgto.AsFloat;
      DM1.tCPagarParcHist.Delete;
      if DM1.tCPagarParcHist.Eof then
        begin
          DM1.tCPagarParcDtPagParcCPagar.Clear;
          DM1.tCPagarParcPgtoParcial.Clear;
        end
      else
        DM1.tCPagarParcDtPagParcCPagar.AsDateTime   := DM1.tCPagarParcHistDtUltPgto.AsDateTime;
      DM1.tCPagarParc.Post;

      DM1.tCPagar.Edit;
      DM1.tCPagarQuitado.AsBoolean := False;
      DM1.tCPagar.Post;
    end;
end;

procedure TfCheques.Habilita;
begin
  Panel2.Enabled       := not(Panel2.Enabled);
  Panel4.Enabled       := not(Panel4.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  BitBtn11.Enabled     := not(BitBtn11.Enabled);
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
end;

procedure TfCheques.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tCheque.Filtered := False;
  RxDBFilter1.Active   := False;
  DM1.tContas.Filtered := False;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfCheques.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfCheques.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsCheque.AsBoolean then
    begin
      BitBtn2.Tag := 0;
      tChequeIns.Refresh;
      tChequeIns.Last;
      DM1.tCheque.Refresh;
      DM1.tCheque.Insert;
      Dm1.tChequeAutomatico.AsBoolean := False;
      DM1.tCheque.Post;
      DM1.tCheque.Edit;

      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfCheques.BitBtn2Click(Sender: TObject);
begin
  if not DM1.tCheque.IsEmpty then
    begin
      if DM1.tUsuarioAltCheque.AsBoolean then
        begin
          if (Dm1.tChequeAutomatico.AsBoolean = False) and (Dm1.tChequeDtEntrada.AsDateTime < 1) then
            begin
              DM1.tCheque.Edit;
              BitBtn2.Tag := 1;
              Habilita;
              RxDBLookupCombo2.SetFocus;
            end
          else
            ShowMessage('Cheque já compensado ou automático!');
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfCheques.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcCheque.AsBoolean then
    begin
      //if (Dm1.tChequeAutomatico.AsBoolean = False) and (Dm1.tChequeDtEntrada.AsDateTime < 1) then
      if Dm1.tChequeDtEntrada.AsDateTime < 1 then
        begin
          if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              DM1.tChequeCPagar.First;
              while not DM1.tChequeCPagar.Eof do
                Exclui_CPagar;
              DM1.tCheque.Delete;
            end;
        end
      else
        ShowMessage('Cheque já compensado ou automático!');
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfCheques.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      DM1.tChequeCPagar.First;
      while not DM1.tChequeCPagar.Eof do
        Exclui_CPagar;
      DM1.tCheque.Delete;
    end
  else
  if BitBtn2.Tag = 1 then
    DM1.tCheque.Cancel;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfCheques.BitBtn5Click(Sender: TObject);
var
  vAux : Real;
begin
  if (RxDBLookupCombo2.Text = '') or (DBEdit1.Text = '') or (DM1.tChequeVlrTotal.AsFloat <= 0) then
    ShowMessage('Deve haver Banco, Nº do Cheque e valor!')
  else
    begin
      vAux := 0;
      if DM1.tChequeCPagar.RecordCount > 0 then
        begin
          DM1.tChequeCPagar.First;
          while not DM1.tChequeCPagar.Eof do
            begin
              vAux := StrToFloat(FormatFloat('0.00',vAux + DM1.tChequeCPagarValor.AsFloat));
              DM1.tChequeCPagar.Next;
            end;
        end;
      if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and
         (StrToFloat(FormatFloat('0.00',DM1.tChequeVlrTotal.AsFloat)) < StrToFloat(FormatFloat('0.00',vAux))) then
        begin
          ShowMessage('Valor total menor que valor dos itens!');
          exit;
        end;
      if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and
         (StrToFloat(FormatFloat('0.00',DM1.tChequeVlrTotal.AsFloat)) <> StrToFloat(FormatFloat('0.00',vAux))) then
        ShowMessage('Valor total diferente com o valor dos itens!');
      Dm1.tCheque.Post;
      Habilita;
    end;
end;

procedure TfCheques.DBEdit1Exit(Sender: TObject);
begin
  if BitBtn2.Tag <> 1 then
    begin
      if RxDBLookupCombo2.Text <> '' then
        begin
          tChequeIns.First;
          tChequeIns.SetKey;
          tChequeInsCodConta.AsInteger  := RxDBLookupCombo2.KeyValue;
          tChequeInsNumCheque.AsInteger := Dm1.tChequeNumCheque.AsInteger;
          if tChequeIns.GotoKey then
            begin
              ShowMessage('Já foi dada entrada nesse cheque!');
              Dm1.tCheque.Cancel;
              Dm1.tCheque.Insert;
              Dm1.tChequeAutomatico.AsBoolean := False;
              RxDBLookupCombo2.SetFocus;
            end;
        end;
    end;
end;

procedure TfCheques.BitBtn7Click(Sender: TObject);
begin
  DM1.tCheque.Filtered := False;
  fChequeComp := TfChequeComp.Create(Self);
  fChequeComp.ShowModal;
end;

procedure TfCheques.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tContas,Name);
  oDBUtils.ActiveDataSet(True,dm1.tMovimentos,Name);
  RxDBFilter1.Active := True;
end;

procedure TfCheques.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tCheque.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o cheque antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfCheques.BitBtn8Click(Sender: TObject);
begin
  if (DM1.tChequeCodConta.AsInteger > 0) and (DM1.tChequeNumCheque.AsInteger > 0) and
     (DM1.tChequeDtPrevista.AsDateTime > 0) and (DM1.tChequeDtEmissao.AsDateTime > 0) then
    begin
      fChequeCPagar := TfChequeCPagar.Create(Self);
      fChequeCPagar.ShowModal;
    end
  else
    ShowMessage('Falta informar o <Banco>, <Nº do cheque> ou <Dt. Prevista>!');
end;

procedure TfCheques.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if DM1.tChequeCPagar.RecordCount > 0 then
    RxDBLookupCombo2.ReadOnly := True
  else
    RxDBLookupCombo2.ReadOnly := False;
end;

procedure TfCheques.DBEdit1Enter(Sender: TObject);
begin
  if DM1.tChequeCPagar.RecordCount > 0 then
    DBEdit1.ReadOnly := True
  else
    DBEdit1.ReadOnly := False;
end;

procedure TfCheques.BitBtn10Click(Sender: TObject);
begin
  if (DM1.tChequeCPagarNumCPagar.AsInteger > 0) and
     (MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation,[mbOk,mbNo],0)=mrOk) then
    Exclui_CPagar;
end;

procedure TfCheques.BitBtn9Click(Sender: TObject);
begin
  if (DM1.tUsuarioExcCheque.AsBoolean) and
     (MessageDlg('Deseja excluir a compensação do cheque?', mtConfirmation,[mbOk,mbNo],0)=mrOk) then
    Excluir_Compensacao;
end;

procedure TfCheques.BitBtn11Click(Sender: TObject);
var
  Texto1, Texto2 : String;
  I, vCodigo : Integer;
  F : TextFile;
  vValor : String;
  vMes : Word;
begin
  if Dm1.tCheque.RecordCount > 0 then
    begin
      {fEscImpressora := TfEscImpressora.Create(self);
      fEscImpressora.ShowModal;
      AssignFile(F,DM1.tImpressoraEndereco.AsString);
      ReWrite(F);
      Write(F,'0'#15);
      Texto2 := '##### ' + FormatFloat('###,###,##0.00',Dm1.tChequeVlrTotal.AsFloat) + ' #####';
      for i := 1 to 116 - Length(Texto2)do
        Texto2 := ' ' + Texto2;
      Texto1 := Texto2;
      Writeln(F,Texto1);
      Writeln(F);
      ValorPorExtenso1.Valor := DM1.tChequeVlrTotal.AsFloat;
      Texto2 := '                             #####' + ValorPorExtenso1.Texto + ' ####';
      vValor := Copy(Texto2,1,108);
      Writeln(F,vValor);
      Writeln(F);
      if Length(Texto2) > 108 then
        begin
          vValor := Copy(Texto2,109,95);
          Writeln(F,vValor);
        end
      else
        Writeln(F,'         ################################################################################');
      Writeln(F);
      Writeln(F, '   ' + Dm1.tChequeNominal.AsString);
      Writeln(F);
      Texto2 := ' ';
      for i := 1 to 72 - length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto2;
      Texto2 := Dm1.tEmpresaCidade.AsString + '  ' + Copy(Dm1.tChequeDtPrevista.Text,1,2);
      for i := 1 to 24 -length(Texto2) do
        Texto2 := Texto2 + ' ';
      TExto1 := Texto1 + Texto2;
      vMes := MonthOf(Dm1.tChequeDtPrevista.AsDateTime);
      ComboBox1.ItemIndex := vMes - 1;
      Texto2 := '     ' + ComboBox1.Text;
      for i := 1 to 24 - Length(Texto2) do
        TExto2 := Texto2 + ' ';
      TExto1 := Texto1 + Texto2 + Copy(Dm1.tChequeDtPrevista.Text,9,2);
      Writeln(F,TExto1);
      for i := 1 to 15 do
        Writeln(F);
      CloseFile(F);
      if DM1.tImpressoraVisualizar.AsBoolean then
        begin
          Texto1 := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
          WinExec(PChar(Texto1),SW_MAXIMIZE);
        end;}
      vCodigo := Dm1.tChequeNumCheque.AsInteger;
      Dm1.tCheque.Filtered := False;
      Dm1.tCheque.Filter   := 'NumCheque = '''+IntToStr(vCodigo)+'''';
      Dm1.tCheque.Filtered := True;
      fRelCopiaCheque3 := TfRelCopiaCheque3.Create(Self);
      fRelCopiaCheque3.RLReport1.Preview;
      fRelCopiaCheque3.RLReport1.Free;
      Dm1.tCheque.Filtered := False;
    end
  else
    ShowMessage('Histórico não pago com cheque!');
end;

end.

