unit UPrevBoletos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, RSDBUtils, StdCtrls, Buttons, RxLookup, ExtCtrls, Grids, DBGrids, RXDBCtrl, Db,
  DBTables, MemTable, Mask, ToolEdit, CurrEdit, ShellApi;

type
  TfPrevBoletos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qsBoletos: TDataSource;
    qBoletos: TQuery;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Ed_Inst1: TEdit;
    Ed_Inst2: TEdit;
    Ed_Inst3: TEdit;
    Ed_Inst4: TEdit;
    mBoletos: TMemoryTable;
    msBoletos: TDataSource;
    mBoletosCliente: TStringField;
    mBoletosDtVencto: TDateField;
    mBoletosDtDoc: TDateField;
    mBoletosVlrDoc: TFloatField;
    mBoletosNumNotas: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    Ed_Inst5: TEdit;
    Ed_Inst6: TEdit;
    Label12: TLabel;
    Ed_Inst7: TEdit;
    Label13: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label14: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Bevel1: TBevel;
    Bevel2: TBevel;
    mBoletosInstrucao1: TStringField;
    mBoletosInstrucao2: TStringField;
    mBoletosInstrucao3: TStringField;
    mBoletosInstrucao4: TStringField;
    mBoletosInstrucao5: TStringField;
    mBoletosInstrucao6: TStringField;
    mBoletosInstrucao7: TStringField;
    mBoletosNumDoc: TStringField;
    mBoletosEspecie: TStringField;
    mBoletosCodCliente: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    F: TextFile;
    procedure Gera_dados;
    procedure Gera_dados2;
    procedure Opcoes;
    procedure Imprime_Boleto;
  public
    { Public declarations }
  end;

var
  fPrevBoletos: TfPrevBoletos;

implementation

uses UDM1, URelBoletos, UEscImpressora;

{$R *.DFM}

procedure TfPrevBoletos.Imprime_Boleto;
var
  Texto1, Texto2 : String;
  I : Integer;
begin
  fEscImpressora := TfEscImpressora.Create(self);
  fEscImpressora.ShowModal;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  mBoletos.First;
  while not mBoletos.Eof do
    begin
      Write(F,'0'#15);
      for i := 1 to 2 do
        Writeln(F);
      //Linha do local de pagamento e data do vencimento
      Texto2 := DM1.tContasLocalPagamento.AsString;
      for i := 1 to 91 - length(Texto2) do
 //      for i := 1 to DM1.tContasPosicaoColuna2.AsInteger - Length(texto2) do
        texto2 := texto2 + ' ';
      texto1 := texto2 + mBoletosDtVencto.AsString;
      Writeln(F,texto1);

      for i := 1 to 3 do
        Writeln(F);

      //Linha da data e o número do documento
      texto2 := mBoletosDtDoc.AsString;
      for i := 1 to 20 - length(texto2) do
        texto2 := texto2 + ' ';
      texto1 := texto2 + mBoletosNumDoc.AsString;
      Writeln(F,texto1);
      Writeln(F);

      //Linha do valor do documento
      texto2 := '';
      for i := 1 to 30 do
        texto2 := texto2 + ' ';
      texto2 := texto2 + DM1.tContasEspecie.AsString;
      for i := 1 to 69 do
        texto2 := ' ' + texto2;
      texto2 := texto2 + FormatFloat('###,###,##0.00',mBoletosVlrDoc.AsFloat);
      Writeln(F,texto2);
      Writeln(F);

      //Linha das instruções
      for i := 1 to 7 do
        Writeln(F,mBoletos.FieldByName('Instrucao'+IntToStr(I)).AsString);

      for i := 1 to 3 do
        Writeln(F);

      //Linha dos dados do cliente
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.SetKey;
      DM1.tClienteCodigo.AsInteger := mBoletosCodCliente.AsInteger;
      if DM1.tCliente.GotoKey then
        begin
          if DM1.tClientePessoa.AsString = 'J' then
            texto1 := DM1.tClienteNome.AsString + '  CNPJ: ' + DM1.tClienteCgcCpf.AsString
          else
            texto1 := DM1.tClienteNome.AsString + '   CPF: ' + DM1.tClienteCgcCpf.AsString;

          Writeln(F,texto1);

          Writeln(F,DM1.tClienteEndereco.AsString + ' - ' + dm1.tClienteBairro.AsString + ' Cep: ' + dm1.tClienteCEP.AsString);
          Writeln(F,DM1.tClientelkCidade.AsString + ' - ' + DM1.tClienteUf.AsString);
        end
      else
        begin
          for i := 1 to 3 do
            Writeln(F);
        end;
      for i := 1 to 9 do
        Writeln(F);
      mBoletos.Next;
    end;
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto1 := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      //WinExec(PChar(Texto1),SW_MAXIMIZE);
      ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);      
    end;
end;

procedure TfPrevBoletos.Opcoes;
var
  i : Integer;
begin
  for i := 1 to 7 do
    begin
      TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Clear;
      TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Enabled := False;
      TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Color   := clInfoBk;
    end;
  if DM1.tContasQtdLinhasInst.AsInteger > 0 then
    begin
      for i := 1 to DM1.tContasQtdLinhasInst.AsInteger do
        begin
          TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Enabled   := True;
          TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Color    := clWindow;
          if i < 5 then
            TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text     := DM1.tContas.FieldByName('Instrucao'+IntToStr(i)).AsString;
        end;
    end;
end;

procedure TfPrevBoletos.Gera_dados;
var
  texto1, texto2, vFiltro : String;
  i : Integer;
  vNota, vNota1, vAux : integer;

begin
  vFiltro := '';
  Dm1.tCReceber.Filtered := False;
  vFiltro   := 'NumNota >= '''+Edit1.Text+''' and NumNota <= '''+Edit2.Text+'''';
  if RxDBLookupCombo1.Text <> '' then
    vFiltro := vFiltro + ' and CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
  Dm1.tCReceber.Filter   := vFiltro;
  Dm1.tCReceber.Filtered := True;
  Dm1.tCReceber.IndexFieldNames := 'Filial;NumNota';
  Dm1.tCReceber.First;
  vNota1 := DM1.tCReceberNumNota.AsInteger;
  mBoletos.EmptyTable;
  mBoletos.Insert;
  texto1 := 'NFs:';
  texto2 := '';
  vNota  := 0;
  i      := 0;
  mBoletosCliente.AsString     := DM1.tCReceberlkNomeCliente.AsString;
  mBoletosCodCliente.AsInteger := DM1.tCReceberCodCli.AsInteger;
  while not Dm1.tCReceber.Eof do
    begin
      if not DM1.tCReceberCancelado.AsBoolean then
        begin
          mBoletosVlrDoc.AsFloat    := mBoletosVlrDoc.AsFloat + Dm1.tCReceberVlrTotal.AsFloat;
          mBoletosNumNotas.AsString := mBoletosNumNotas.AsString + ' ' + Dm1.tCReceberNumNota.AsString;
          if vNota > 0 then
            begin
              vAux := vNota + 1;
              if vAux <> Dm1.tCReceberNumNota.AsInteger then
                begin
                  if texto1 <> 'NFs:' then
                    texto2 := texto1 + ',' + IntToStr(vNota1) + ' a ' + IntToStr(vNota) + ' '
                  else
                    texto2 := texto1 + IntToStr(vNota1) + ' a ' + IntToStr(vNota) + ' ';
                  if length(texto2) > 63 then
                    begin
                      TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text := texto1;
                      inc(i);
                      texto1 := 'NFs:' + IntToStr(vNota1) + ' a ' + IntToStr(vNota);
                    end
                  else
                    begin
                      if texto1 <> 'NFs:' then
                        texto1 := texto1 + ', '+ IntToStr(vNota1) + ' a ' + IntToStr(vNota) + ' '
                      else
                        texto1 := texto1 + IntToStr(vNota1) + ' a ' + IntToStr(vNota) + ' ';
                    end;
                  vNota1 := DM1.tCReceberNumNota.AsInteger;
                end;
            end;
          vNota := DM1.tCReceberNumNota.AsInteger;
        end;
      Dm1.tCReceber.Next;
    end;
  inc(i);
  TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text := texto1 + ' ' + IntToStr(vNota1) + ' a ' + IntToStr(vNota);
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.SetKey;
  DM1.tClienteCodigo.AsInteger := DM1.tCReceberCodCli.AsInteger;
  if DM1.tCliente.GotoKey then
    begin
      if DM1.tClienteEndPgto.AsString <> '' then
        begin
          inc(i);
          TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text := 'End.Cob.: ' + DM1.tClienteEndPgto.AsString;
          inc(i);
          TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text := '          ' + DM1.tClienteBairroPgto.AsString + '  Cep: ' + DM1.tClienteCepPgto.AsString;
          inc(i);
          TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text := '          ' + DM1.tClientelkCidadeP.AsString + ' - ' + DM1.tClienteUfPgto.AsString;
        end;
    end;
  Dm1.tCReceber.Last;
  Dm1.tCReceberParc.Last;
  DateEdit2.Date := Dm1.tCReceberParcDtVencCReceber.AsDateTime;
  mBoletosDtVencto.AsDateTime := DateEdit2.Date;
  mBoletosDtDoc.AsDateTime    := DateEdit1.Date;
  mBoletosNumDoc.AsInteger    := Dm1.tCReceberNumNota.AsInteger;
  mBoletos.Post;
end;

procedure TfPrevBoletos.Gera_dados2;
var
  vFiltro : String;
  i : Integer;
begin
  vFiltro := '';
  Dm1.tCReceber.Filtered := False;
  vFiltro   := 'NumNota >= '''+Edit1.Text+''' and NumNota <= '''+Edit2.Text+'''';
  if RxDBLookupCombo1.Text <> '' then
    vFiltro := vFiltro + ' and CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
  Dm1.tCReceber.Filter   := vFiltro;
  Dm1.tCReceber.Filtered := True;
  Dm1.tCReceber.IndexFieldNames := 'Filial;NumNota';
  Dm1.tCReceber.First;
  mBoletos.EmptyTable;
  DM1.tCReceberParc.First;
  while not Dm1.tCReceberParc.Eof do
    begin
      if not DM1.tCReceberParcCancelado.AsBoolean then
        begin
          mBoletos.Insert;
          mBoletosVlrDoc.AsFloat       := DM1.tCReceberParcVlrParcCReceber.AsFloat;
          mBoletosDtVencto.AsDateTime  := DM1.tCReceberParcDtVencCReceber.AsDateTime;
          mBoletosDtDoc.AsDateTime     := DM1.tCReceberParcDtGerado.AsDateTime;
          mBoletosNumDoc.AsString      := DM1.tCReceberParcNumNota.AsString + '/' + DM1.tCReceberParcParcCReceber.AsString;
          mBoletosCliente.AsString     := DM1.tCReceberParclkNomeCliente.AsString;
          mBoletosCodCliente.AsInteger := DM1.tCReceberParcCodCli.AsInteger;
          for i := 1 to DM1.tContasQtdLinhasInst.AsInteger do
            mBoletos.FieldByName('Instrucao'+IntToStr(i)).AsString := TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text;
          mBoletos.Post;
        end;
      Dm1.tCReceberParc.Next;
    end;
  Dm1.tCReceber.Filtered := False;
end;

procedure TfPrevBoletos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevBoletos.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevBoletos.BitBtn3Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Ed_Inst1.Clear;
  Ed_Inst2.Clear;
  Ed_Inst3.Clear;
  Ed_Inst4.Clear;
  Ed_Inst5.Clear;
  Ed_Inst6.Clear;
  Ed_Inst7.Clear;
  DateEdit1.Date := Date;
  DateEdit2.Clear;
  RxDBLookupCombo1.ClearValue;
end;

procedure TfPrevBoletos.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  if DM1.tClienteCodBancoBoleto.AsInteger > 0 then
    begin
      RxDBLookupCombo2.KeyValue := DM1.tClienteCodBancoBoleto.AsInteger;
      DM1.tContas.IndexFieldNames := 'CodConta';
      DM1.tContas.SetKey;
      DM1.tContasCodConta.AsInteger := DM1.tClienteCodBancoBoleto.AsInteger;
      if DM1.tContas.GotoKey then
        Opcoes;
    end;
end;

procedure TfPrevBoletos.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevBoletos.BitBtn1Click(Sender: TObject);
begin
  Gera_dados;
  Ed_Inst1.Enabled := True;
  Ed_Inst2.Enabled := True;
  Ed_Inst3.Enabled := True;
  Ed_Inst4.Enabled := True;
  Ed_Inst5.Enabled := True;
  Ed_Inst6.Enabled := True;
  Ed_Inst7.Enabled := True;
end;

procedure TfPrevBoletos.BitBtn2Click(Sender: TObject);
var
  i : Integer;
begin
  if RxDBLookupCombo2.Text = '' then
    ShowMessage('Falta informar o banco!')
  else
  if not(CheckBox2.Checked) then
    begin
      Gera_dados2;
      if mBoletos.RecordCount > 0 then
        Imprime_Boleto
      else
        ShowMessage('Não existe documento para a impressão!');
      //fRelBoletos := TfRelBoletos.Create(Self);
      //fRelBoletos.QuickRep1.Preview;
      //fRelBoletos.QuickRep1.Free;
    end
  else
    begin
      case CheckBox1.Checked of
        False : begin
                  if (Edit1.Text <> '') and (Edit2.Text <> '') then
                    begin
                      mBoletos.First;
                      mBoletos.Edit;
                      mBoletosDtVencto.AsDateTime := DateEdit2.Date;
                      mBoletos.Post;

                      Imprime_Boleto;
                      
                      //fRelBoletos := TfRelBoletos.Create(Self);
                      //fRelBoletos.QuickRep1.Preview;
                      //fRelBoletos.QuickRep1.Free;
                    end
                  else
                    ShowMessage('Falta nº nota inicial e nº nota final!');
                end;
        True  : begin
                  if (Edit1.Text <> '') and (CurrencyEdit1.Value > 0) and (RxDBLookupCombo1.Text <> '') and
                     (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
                     begin
                       mBoletos.EmptyTable;
                       mBoletos.Insert;
                       mBoletosCliente.AsString := RxDBLookupCombo1.Text;
                       mBoletosDtDoc.AsDateTime := DateEdit1.Date;
                       mBoletosDtVencto.AsDateTime := DateEdit2.Date;
                       mBoletosNumDoc.AsInteger    := StrToInt(Edit1.Text);
                       mBoletosNumNotas.AsString   := Edit1.Text;
                       mBoletosVlrDoc.AsFloat      := CurrencyEdit1.Value;
                       mBoletos.Post;

                       Imprime_Boleto;

                       //fRelBoletos := TfRelBoletos.Create(Self);
                       //fRelBoletos.QuickRep1.Preview;
                       //fRelBoletos.QuickRep1.Free;
                     end
                  else
                    ShowMessage('Falta informações necessaria para impressão do boleto!');
                end;
      end;
      mBoletos.Edit;
      for i := 1 to 7 do
        mBoletos.FieldByName('Instrucao'+IntToStr(i)).AsString := TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Text;
      mBoletos.Post;
    end;
end;

procedure TfPrevBoletos.CheckBox1Click(Sender: TObject);
var
  i : Integer;
begin
  case CheckBox1.Checked of
    False : begin
              Edit2.Enabled         := True;
              Edit2.Color           := clWindow;
              CurrencyEdit1.Enabled := False;
              CurrencyEdit1.Color   := clInfoBk;
            end;
    True  : begin
              Edit2.Enabled         := False;
              Edit2.Color           := clInfoBk;
              CurrencyEdit1.Enabled := True;
              CurrencyEdit1.Color   := clWindow;
            end;
  end;

  for i := 1 to 7 do
    begin
      TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Enabled := CheckBox1.Checked;
      if not CheckBox1.Checked then
        TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Clear;
      if CheckBox1.Checked then
        TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Color := clWindow
      else
        TEdit(FindComponent('Ed_Inst'+IntToStr(i))).Color := clInfoBk;
    end;
end;

procedure TfPrevBoletos.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    Opcoes;
end;

procedure TfPrevBoletos.CheckBox2Click(Sender: TObject);
begin
  BitBtn1.Enabled    := CheckBox2.Checked;
  DateEdit1.ReadOnly := not(CheckBox2.Checked);
  DateEdit2.ReadOnly := not(CheckBox2.Checked);
  if DateEdit1.ReadOnly then
    DateEdit1.Color := clInfoBk
  else
    DateEdit1.Color := clWindow;
  if DateEdit2.ReadOnly then
    DateEdit2.Color := clInfoBk
  else
    DateEdit2.Color := clWindow;
  CheckBox1.Enabled := not(CheckBox2.Checked); 
end;

procedure TfPrevBoletos.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tContas,Name);

  CheckBox1Click(Sender);
  if DateEdit1.Text = '  /  /    ' then
    DateEdit1.Date := Date;
  if Edit1.Text <> '' then
    Edit1.SetFocus;
  Opcoes;
end;

end.
