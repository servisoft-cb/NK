unit UContasPagarPag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask, ToolEdit, RXDBCtrl,
  RXLookup, Db, DBTables, CurrEdit, DBFilter, ValorPor, rsDBUtils, ShellApi;

type
  TfContasPagarPag = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBText4: TDBText;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    tCPagarParcHistIns: TTable;
    tCPagarParcHistInsNumCPagar: TIntegerField;
    tCPagarParcHistInsParcCPagar: TIntegerField;
    tCPagarParcHistInsItem: TIntegerField;
    tCPagarParcHistInsCodHistorico: TIntegerField;
    tCPagarParcHistInsDtHistorico: TDateField;
    tCPagarParcHistInsHistorico: TStringField;
    tCPagarParcHistInsDtUltPgto: TDateField;
    tCPagarParcHistInsVlrUltPgto: TFloatField;
    tCPagarParcHistInsVlrUltJuros: TFloatField;
    tCPagarParcHistInsVlrUltDescontos: TFloatField;
    tCPagarParcHistInsVlrUltDespesas: TFloatField;
    tCPagarParcHistInsVlrUltAbatimentos: TFloatField;
    tCPagarParcHistInsPgto: TBooleanField;
    tCPagarParcHistInsJurosPagos: TFloatField;
    Bevel1: TBevel;
    CurrencyEdit1: TCurrencyEdit;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    DateEdit1: TDateEdit;
    CurrencyEdit2: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit1: TEdit;
    tHistorico: TTable;
    dsHistorico: TDataSource;
    tHistoricoCodigo: TIntegerField;
    tHistoricoNome: TStringField;
    tHistoricoTipo: TStringField;
    RxDBFilter1: TRxDBFilter;
    DBText5: TDBText;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Bevel2: TBevel;
    Label13: TLabel;
    Label14: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    DateEdit2: TDateEdit;
    ValorPorExtenso1: TValorPorExtenso;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Label15: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
//    procedure Pgto_Total;
    procedure Pgto;
    procedure Grava_Historico;
    procedure Imprimir_Cheque;
  public
    { Public declarations }
  end;

var
  fContasPagarPag: TfContasPagarPag;
  ValorJuros : real;
  vHistorico : String;
  vNumMov, vNumMovJuros : Integer;

implementation

uses UDM1, UPlanoContas, UHistorico, UEscImpressora,
  DateUtils, URelCopiaCheque, URelRecibo;

{$R *.DFM}

procedure TfContasPagarPag.Imprimir_Cheque;
var
  Texto1, Texto2 : String;
  I, vCodigo : Integer;
  F : TextFile;
  vValor : String;
  vMes : Word;
begin
  fEscImpressora := TfEscImpressora.Create(self);
  fEscImpressora.ShowModal;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  Write(F,'0'#15);
  Texto2 := '##### ' + FormatFloat('###,###,##0.00',Dm1.tCPagarParcHistVlrUltPgto.AsFloat) + ' #####';
  for i := 1 to 116 - Length(Texto2)do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto2;
  Writeln(F,Texto1);
  Writeln(F);
  ValorPorExtenso1.Valor := DM1.tCPagarParcHistVlrUltPgto.AsFloat;
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
  if Dm1.tCPagarParcHistNominal.AsBoolean then
    Writeln(F, '        ' + Dm1.tCPagarParclkFornecedor.AsString)
  else
    Writeln(F);
  Writeln(F);
  Texto2 := ' ';
  for i := 1 to 72 - length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;
  Texto2 := Dm1.tEmpresaCidade.AsString + '  ' + Copy(DateEdit2.Text,1,2);
  for i := 1 to 24 -length(Texto2) do
    Texto2 := Texto2 + ' ';
  TExto1 := Texto1 + Texto2;
  vMes := MonthOf(DateEdit2.Date);
  ComboBox1.ItemIndex := vMes - 1;
  Texto2 := '     ' + ComboBox1.Text;
  for i := 1 to 24 - Length(Texto2) do
    TExto2 := Texto2 + ' ';
  TExto1 := Texto1 + Texto2 + Copy(DateEdit2.Text,9,2);
  Writeln(F,TExto1);
  for i := 1 to 15 do
    Writeln(F);
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto1 := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      //WinExec(PChar(Texto1),SW_MAXIMIZE);
      ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);      
    end;
  vCodigo := Dm1.tCPagarParcHistItem.AsInteger;
  Dm1.tCPagarParcHist.Filtered := False;
  Dm1.tCPagarParcHist.Filter   := 'Item = '''+IntToStr(vCodigo)+'''';
  Dm1.tCPagarParcHist.Filtered := True;
  fRelCopiaCheque := TfRelCopiaCheque.Create(Self);
  fRelCopiaCheque.QuickRep1.Preview;
  fRelCopiaCheque.QuickRep1.Free;
  Dm1.tCPagarParcHist.Filtered := False;
end;

procedure TfContasPagarPag.Grava_Historico;
begin
  DM1.tCPagarParcHist.Insert;
  tCPagarParcHistIns.Refresh;
  tCPagarParcHistIns.Last;
  DM1.tCPagarParcHistNumCPagar.AsInteger     := DM1.tCPagarParcNumCPagar.AsInteger;
  DM1.tCPagarParcHistParcCPagar.AsInteger    := DM1.tCPagarParcParcCPagar.AsInteger;
  DM1.tCPagarParcHistItem.AsInteger          := tCPagarParcHistInsItem.AsInteger + 1;
  DM1.tCPagarParcHistDtHistorico.AsDateTime  := Date;
  DM1.tCPagarParcHistCodHistorico.AsCurrency := 0;
  if Edit1.Text <> '' then
    DM1.tCPagarParcHistHistorico.AsString      := Edit1.Text
  else
    DM1.tCPagarParcHistHistorico.AsString      := vHistorico;
  DM1.tCPagarParcHistDtUltPgto.AsDateTime      := DM1.tCPagarParcDtPagParcCPagar.AsDateTime;
  DM1.tCPagarParcHistVlrUltPgto.AsCurrency     := CurrencyEdit2.Value;
  DM1.tCPagarParcHistVlrUltJuros.AsFloat       := CurrencyEdit3.Value;
  DM1.tCPagarParcHistVlrUltDescontos.AsFloat   := CurrencyEdit5.Value;
  DM1.tCPagarParcHistVlrUltDespesas.AsFloat    := DM1.tCPagarParcDespesas.AsFloat;
  DM1.tCPagarParcHistVlrUltAbatimentos.AsFloat := CurrencyEdit4.Value;
  DM1.tCPagarParcHistJurosPagos.AsFloat        := 0;
  DM1.tCPagarParcHistPgto.AsBoolean            := True;
  DM1.tCPagarParcHistNumMov.AsInteger          := vNumMov;
  DM1.tCPagarParcHistNumMovJuros.AsInteger     := vNumMovJuros;
  Dm1.tCPagarParcHistNumCheque.AsInteger       := CurrencyEdit6.AsInteger;
  Dm1.tCPagarParcHistDtPrevCheque.AsDateTime   := DateEdit2.Date;
  if CheckBox1.Checked then
    Dm1.tCPagarParcHistNominal.AsBoolean := True
  else
    Dm1.tCPagarParcHistNominal.AsBoolean := False;
  DM1.tCPagarParcHist.Post;
end;

procedure TfContasPagarPag.Pgto;
var
  NumCPagar, vNumCPagar, vParcCPagar : Integer;
  NumParcCPagar       : String[10];
  DataPagParcCPagar   : TDateTime;
  ValorParcCPagar     : Real;
  Texto1 : String;
  vGrava : Boolean;
procedure QuitaContaPagar;
var Achou : Boolean;
begin
  Achou := False;
  DM1.tCPagarParc.First;
  while not DM1.tCPagarParc.EOF do
    begin
      if not DM1.tCPagarParcQuitParcCPagar.AsBoolean then
        Achou := True;
      DM1.tCPagarParc.Next;
    end;
  if not Achou then
    begin
      DM1.tCPagar.Edit;
      DM1.tCPagarQuitado.AsBoolean := True;
      DM1.tCPagar.Post;
    end;
end;
begin
  vGrava := False;
  vNumMov      := 0;
  vNumMovJuros := 0;
  if RxDBLookupCombo2.Text <> '' then
    begin
      NumCPagar         := 0;
      NumParcCPagar     := '';
      DataPagParcCPagar := 0;
      ValorParcCPagar   := 0;
      vNumCPagar        := DM1.tCPagarParcNumCPagar.AsInteger;
      vParcCPagar       := DM1.tCPagarParcParcCPagar.AsInteger;
      DM1.tContas.IndexFieldNames                := 'CodConta';
      DM1.tContas.FindKey([RxDBLookupCombo2.KeyValue]);
      if CurrencyEdit6.Value > 0 then
        if Dm1.tContasTipoConta.AsString = 'B' then
          begin
            Dm1.tCheque.SetKey;
            Dm1.tChequeCodConta.AsInteger  := RxDBLookupCombo2.KeyValue;
            Dm1.tChequeNumCheque.AsInteger := CurrencyEdit6.AsInteger;
            if Dm1.tCheque.GotoKey then
              ShowMessage('Já existe este cheque!')
            else
              begin
                vGrava := True;
                Dm1.tCheque.Insert;
                Dm1.tChequeCodConta.AsInteger    := RxDBLookupCombo2.KeyValue;
                Dm1.tChequeNumCheque.AsInteger   := CurrencyEdit6.AsInteger;
                Dm1.tChequeVlrTotal.AsFloat      := CurrencyEdit2.Value + CurrencyEdit3.Value;
                Dm1.tChequeAutomatico.AsBoolean  := True;
                Dm1.tChequeDtEmissao.AsDateTime  := DateEdit1.Date;
                Dm1.tChequeDtPrevista.AsDateTime := DateEdit2.Date;
                Dm1.tChequeNominal.AsString      := Dm1.tCPagarParclkFornecedor.AsString;
                Dm1.tCheque.Post;

                DM1.tChequeCPagar.Insert;
                DM1.tChequeCPagarCodConta.AsInteger      := DM1.tChequeCodConta.AsInteger;
                DM1.tChequeCPagarNumCheque.AsInteger     := DM1.tChequeNumCheque.AsInteger;
                DM1.tChequeCPagarNumCPagar.AsInteger     := DM1.tCPagarParcNumCPagar.AsInteger;
                DM1.tChequeCPagarParcela.AsInteger       := DM1.tCPagarParcParcCPagar.AsInteger;
                DM1.tChequeCPagarNumNota.AsInteger       := DM1.tCPagarParcNroDuplicata.AsInteger;
                DM1.tChequeCPagarCodFornecedor.AsInteger := DM1.tCPagarParcCodForn.AsInteger;
                DM1.tChequeCPagarValor.AsFloat           := CurrencyEdit2.Value;
                DM1.tChequeCPagarVlrJuros.AsFloat        := CurrencyEdit3.Value;
                DM1.tChequeCPagarVlrDesconto.AsFloat     := CurrencyEdit4.Value + CurrencyEdit5.Value;
                DM1.tChequeCPagar.Post;
              end;
          end
        else
          ShowMessage('Tipo de conta deve ser banco para efetuar o pagamento em cheque!')
      else
        begin
          vGrava := True;
          DM1.tMovimentos.MasterSource.Enabled    := False;
          DM1.tMovimentos.Insert;
          DM1.tMovimentosCodConta.AsInteger       := RxDBLookupCombo2.KeyValue;
          DM1.tMovimentosNumCPagar.AsInteger      := DM1.tCPagarNumCPagar.AsInteger;
          DM1.tMovimentosDtMovimento.AsDateTime   := DateEdit1.Date;
//          DM1.tMovimentosDtMovimento.AsDateTime   := DM1.tCPagarParcDtPagParcCPagar.AsDateTime;
          DM1.tMovimentosNumNotaEnt.AsInteger     := DM1.tCPagarParcNumNotaEnt.AsInteger;
          Texto1 := '';
          if DM1.tCPagarParcNumNotaEnt.AsInteger > 0 then
            Texto1 := ' nf.nº ' + DM1.tCPagarNumNotaEnt.AsString
          else
          if DM1.tCPagarParcNroDuplicata.AsInteger > 0 then
            Texto1 := ' Dupl.nº ' + DM1.tCPagarNroDuplicata.AsString;
          DM1.tMovimentosCodForn.AsInteger        := DM1.tCPagarParcCodForn.AsInteger;
          if RxDBLookupCombo3.Text <> '' then
            DM1.tMovimentosPlanoContas.AsInteger    := RxDBLookupCombo3.KeyValue;;
//          DM1.tMovimentosPlanoContas.AsInteger    := DM1.tCPagarParcPlanoContas.AsInteger;
          DM1.tMovimentosVlrMovDebito.AsCurrency := CurrencyEdit2.Value;
          if CurrencyEdit2.Value = DM1.tCPagarParcVlrParcCPagar.AsCurrency then
            DM1.tMovimentosHistorico.AsString := 'Pg.Parc.nº '+ DM1.tCPagarParcParcCPagar.AsString +
                                                  Texto1 + ' de ' + DM1.tCPagarlkNomeForn.AsString
          else
            DM1.tMovimentosHistorico.AsString := 'Pg.Parc.Parcial nº '+ DM1.tCPagarParcParcCPagar.AsString +
                                                  Texto1 + ' de ' + DM1.tCPagarlkNomeForn.AsString;
          if CurrencyEdit3.Value > 0 then
            begin
              NumCPagar         := DM1.tCPagarNumCPagar.AsInteger;
              DataPagParcCPagar := DM1.tCPagarParcDtPagParcCPagar.AsDateTime;
              ValorParcCPagar   := CurrencyEdit3.Value;
              NumParcCPagar     := DM1.tCPagarParcParcCPagar.AsString;
            end;
          DM1.tMovimentos.Post;
          vNumMov := DM1.tMovimentosNumMovimento.AsInteger;
          if CurrencyEdit3.Value > 0 then
            begin
              DM1.tMovimentos.Insert;
              DM1.tMovimentosCodConta.AsInteger     := RxDBLookupCombo2.KeyValue;
              DM1.tMovimentosNumCPagar.AsInteger    := NumCPagar;
              DM1.tMovimentosDtMovimento.AsDateTime := DateEdit1.Date;
//              DM1.tMovimentosDtMovimento.AsDateTime := Dm1.tCPagarParcDtPagParcCPagar.AsDateTime;
              DM1.tMovimentosVlrMovDebito.AsFloat   := ValorParcCPagar;
              DM1.tMovimentosNumNotaEnt.AsInteger   := DM1.tCPagarParcNumNotaEnt.AsInteger;
              DM1.tMovimentosCodForn.AsInteger      := DM1.tCPagarParcCodForn.AsInteger;
              if RxDBLookupCombo3.Text <> '' then
                DM1.tMovimentosPlanoContas.AsInteger  := RxDBLookupCombo3.KeyValue;
//              DM1.tMovimentosPlanoContas.AsInteger  := DM1.tCPagarParcPlanoContas.AsInteger;
              if CurrencyEdit2.Value = DM1.tCPagarParcVlrParcCPagar.AsCurrency then
                DM1.tMovimentosHistorico.AsString := 'Pg.Juros s/Parc.nº '+ NumParcCPagar +
                                                     Texto1 + ' de ' + DM1.tCPagarlkNomeForn.AsString
              else
                 DM1.tMovimentosHistorico.AsString   := 'Pg.Juros s/Parc.nº '+ NumParcCPagar +
                                                         Texto1 + ' de ' + DM1.tCPagarlkNomeForn.AsString;
              DM1.tMovimentos.Post;
              vNumMovJuros := DM1.tMovimentosNumMovimento.AsInteger;
            end;
        end;
      if vGrava then
        begin
          DM1.tCPagarParcRestParcela.AsCurrency := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsCurrency - CurrencyEdit4.Value - CurrencyEdit5.Value));
          if CurrencyEdit2.Value >= StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsCurrency)) then
            vHistorico          := 'PAGAMENTO TOTAL'
          else
            vHistorico          := 'PAGAMENTO PARCIAL';
          DM1.tCPagarParcDtPagParcCPagar.AsDateTime  := DateEdit1.Date;
          DM1.tCPagarParcCodConta.AsInteger         := RxDBLookupCombo2.KeyValue;
          DM1.tCPagarParcDesconto.AsFloat           := DM1.tCPagarParcDesconto.AsFloat + CurrencyEdit5.Value;
          DM1.tCPagarParcAbatimentos.AsFloat        := DM1.tCPagarParcAbatimentos.AsFloat + CurrencyEdit4.Value;
          DM1.tCPagarParcRestParcela.AsCurrency     := DM1.tCPagarParcRestParcela.AsCurrency -
                                                       CurrencyEdit2.Value;
          if StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsFloat)) <= 0 then
            DM1.tCPagarParcRestParcela.AsFloat := StrToFloat(FormatFloat('0.00',0));
          if StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsFloat)) = 0 then
            DM1.tCPagarParcQuitParcCPagar.AsBoolean := True;
          DM1.tCPagarParcJurosParcCPagar.AsFloat    := ValorJuros +  CurrencyEdit3.Value;
          DM1.tCPagarParcDtPagParcCPagar.AsDateTime  := DateEdit1.Date;
          DM1.tCPagarParcDiasAtraso.AsFloat          := DM1.tCPagarParcDtPagParcCPagar.AsFloat - DM1.tCPagarParcDtVencCPagar.AsFloat;
          if DM1.tCPagarParcclDiasAtraso.AsFloat < 0 then
            DM1.tCPagarParcclDiasAtraso.AsFloat := 0;
          DM1.tCPagarParcPgtoParcial.AsCurrency := DM1.tCPagarParcPgtoParcial.AsCurrency + CurrencyEdit2.Value;
          DM1.tCPagarParc.Post;
          Grava_Historico;
          if CurrencyEdit6.Value > 0 then
            Imprimir_Cheque;
          QuitaContaPagar;
          DM1.tMovimentos.MasterSource.Enabled    := True;
          DM1.tCPagarParc.SetKey;
          DM1.tCPagarParcNumCPagar.AsInteger  := vNumCPagar;
          DM1.tCPagarParcParcCPagar.AsInteger := vParcCPagar;
          DM1.tCPagarParc.GotoKey;
          if MessageDlg('Deseja imprimir um recibo?',mtconfirmation,[mbok,mbno],0)=mrok then
            begin
              fRelRecibo := TfRelRecibo.Create(Self);
              fRelRecibo.QuickRep1.Preview;
              fRelRecibo.QuickRep1.Free;
            end;
          Close;
        end;
    end
  else
    ShowMessage('Você deve escolher uma conta!');
end;

procedure TfContasPagarPag.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfContasPagarPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfContasPagarPag.BitBtn1Click(Sender: TObject);
begin
  if CurrencyEdit2.Value > StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsFloat)) then
    ShowMessage('Valor do pagamento não pode ser maior que restante a pagar!')
  else
  if CurrencyEdit2.Value <= 0 then
    ShowMessage('Valor de pagamento não pode ser zero!')
  else
  if DateEdit1.Text = '  /  /    ' then
    ShowMessage('É obrigatório informar a data de pagamento')
  else
  if (CurrencyEdit6.Value > 0) and (DateEdit2.Date < 0) then
    ShowMessage('Deve haver data de previsão!')
  else
    Pgto;
end;

procedure TfContasPagarPag.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioPlanoCtas.AsBoolean then
    begin
      fPlanoContas := TfPlanoContas.Create(Self);
      fPlanoContas.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfContasPagarPag.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tPlanoContas.IndexFieldNames := 'Descricao';
end;

procedure TfContasPagarPag.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioHistoricos.AsBoolean then
    begin
      fHistorico := TfHistorico.Create(Self);
      fHistorico.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfContasPagarPag.CurrencyEdit1Enter(Sender: TObject);
begin
  DM1.tHistorico.IndexFieldNames := 'Codigo';
end;

procedure TfContasPagarPag.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Text <> '' then
    begin
      DM1.tHistorico.SetKey;
      DM1.tHistoricoCodigo.AsInteger := StrToInt(CurrencyEdit1.Text);
      if DM1.tHistorico.GotoKey then
        Edit1.Text := DM1.tHistoricoNome.AsString;
    end;
end;

procedure TfContasPagarPag.RxDBLookupCombo1Enter(Sender: TObject);
begin
  tHistorico.IndexFieldNames := 'Nome';
  Edit1.Text := RxDBLookupCombo1.Text;
  CurrencyEdit1.Text := tHistoricoCodigo.AsString;
end;

procedure TfContasPagarPag.RxDBLookupCombo1Exit(Sender: TObject);
begin
  tHistorico.IndexFieldNames := 'Codigo';
  Edit1.Text := RxDBLookupCombo1.Text;
  CurrencyEdit1.Text := tHistoricoCodigo.AsString;
end;

procedure TfContasPagarPag.RxDBLookupCombo1Change(Sender: TObject);
begin
  Edit1.Text := RxDBLookupCombo1.Text;
  CurrencyEdit1.Text := tHistoricoCodigo.AsString;
end;

procedure TfContasPagarPag.Edit1Change(Sender: TObject);
begin
  try
    tHistorico.IndexFieldNames := 'Nome';
    tHistorico.FindNearest([Edit1.Text]);
    CurrencyEdit1.Text := tHistoricoCodigo.AsString;
  except
//    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfContasPagarPag.CurrencyEdit2Exit(Sender: TObject);
var
 vAux : Real;
begin
  vAux := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsCurrency - CurrencyEdit4.Value - CurrencyEdit5.Value));
  //if CurrencyEdit2.Value > DM1.tCPagarParcRestParcela.AsCurrency then
  if CurrencyEdit2.Value > vAux then
    begin
      //CurrencyEdit3.Value := CurrencyEdit2.Value - DM1.tCPagarParcRestParcela.AsCurrency;
      CurrencyEdit3.Value := CurrencyEdit2.Value - vAux;
      CurrencyEdit2.Value := vAux;
    end;
end;

procedure TfContasPagarPag.CurrencyEdit4Exit(Sender: TObject);
begin
  CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsFloat - CurrencyEdit4.Value - CurrencyEdit5.Value));
end;

procedure TfContasPagarPag.CurrencyEdit5Exit(Sender: TObject);
begin
  CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcRestParcela.AsFloat - CurrencyEdit5.Value - CurrencyEdit4.Value));
end;

procedure TfContasPagarPag.RxDBLookupCombo4Enter(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo4.ReadOnly := False
  else
    RxDBLookupCombo4.ReadOnly := True;
end;

procedure TfContasPagarPag.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tMovimentos,Name);

  if DM1.tCPagar.MasterFields <> '' then
    DM1.tCPagar.MasterSource.Enabled := False;
  DM1.tCPagarParc.Edit;
  if DM1.tCPagarParcCodConta.AsInteger > 0 then
    RxDBLookupCombo2.KeyValue := DM1.tCPagarParcCodConta.AsInteger;
  ValorJuros  := DM1.tCPagarParcJurosParcCPagar.AsFloat;
  CurrencyEdit2.Value := DM1.tCPagarParcRestParcela.AsCurrency;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  DateEdit1.Date := Date();
end;

end.
