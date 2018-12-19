unit UTalaoHor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, Grids, DBGrids, RXDBCtrl,
  RxLookup, Buttons, ComCtrls;

type
  TfTalaoHor = class(TForm)
    StaticText1: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    Bevel2: TBevel;
    Label1: TLabel;
    RxDBGrid1: TRxDBGrid;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Bevel3: TBevel;
    Bevel4: TBevel;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    StaticText2: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    StaticText7: TStaticText;
    StaticText4: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    StaticText12: TStaticText;
    StaticText14: TStaticText;
    StaticText13: TStaticText;
    StaticText15: TStaticText;
    MaskEdit6: TMaskEdit;
    MaskEdit5: TMaskEdit;
    BitBtn9: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn8: TBitBtn;
    StaticText6: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Bevel1: TBevel;
    StaticText8: TStaticText;
    BitBtn1: TBitBtn;
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vHoraOk : Boolean;
    procedure Verificar_Hora;
  public
    { Public declarations }
  end;

var
  fTalaoHor: TfTalaoHor;

implementation

uses UDM1, rsDBUtils;

{$R *.DFM}

procedure TfTalaoHor.Verificar_Hora;
var
  i, i2 : Integer;
  flag : Boolean;
begin
  vHoraOk := True;
  i  := 1;
  i2 := 2;
  flag := True;
  while flag do
    begin
      if ((TMaskEdit(FindComponent('MaskEdit'+IntToStr(i))).Text <> '  :  ') and
         (TMaskEdit(FindComponent('MaskEdit'+IntToStr(i2))).Text = '  :  ')) or
         ((TMaskEdit(FindComponent('MaskEdit'+IntToStr(i))).Text = '  :  ') and
         (TMaskEdit(FindComponent('MaskEdit'+IntToStr(i2))).Text <> '  :  ')) then
        vHoraOK := False
      else
      if (TMaskEdit(FindComponent('MaskEdit'+IntToStr(i))).Text <> '  :  ') and
         (TMaskEdit(FindComponent('MaskEdit'+IntToStr(i2))).Text <> '  :  ') then
        if FormatDateTime('HH:MM',StrToTime(TMaskEdit(FindComponent('MaskEdit'+IntToStr(i))).Text)) >
           FormatDateTime('HH:MM',StrToTime(TMaskEdit(FindComponent('MaskEdit'+IntToStr(i2))).Text)) then
          vHoraOk := False;
      if not vHoraOk then
        i := 7;
      i  := i + 2;
      i2 := i2 + 2;
      if i > 5 then
        flag := False;
    end;
  if not vHoraOk then
    ShowMessage('Esta faltando completar a hora, ou a hora de saída é menor que a de entrada!');
end;

procedure TfTalaoHor.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfTalaoHor.DateEdit1Exit(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (RxDBLookupCombo1.Text <> '') then
    begin
      DM1.tTalaoHor.SetKey;
      DM1.tTalaoHorNumTalao.AsInteger       := CurrencyEdit1.AsInteger;
      DM1.tTalaoHorCodFuncionario.AsInteger := RxDBLookupCombo1.KeyValue;
      DM1.tTalaoHorData.AsDateTime          := DateEdit1.Date;
      if DM1.tTalaoHor.GotoKey then
        begin
          MaskEdit1.Text := DM1.tTalaoHorHrEntrada1.AsString;
          MaskEdit2.Text := DM1.tTalaoHorHrSaida1.AsString;
          MaskEdit3.Text := DM1.tTalaoHorHrEntrada2.AsString;
          MaskEdit4.Text := DM1.tTalaoHorHrSaida2.AsString;
          MaskEdit5.Text := DM1.tTalaoHorHrEntrada3.AsString;
          MaskEdit6.Text := DM1.tTalaoHorHrSaida3.AsString;
        end;
    end;

end;

procedure TfTalaoHor.BitBtn7Click(Sender: TObject);
begin
  if (CurrencyEdit1.AsInteger = 0) or (RxDBLookupCombo1.Text = '') or (DateEdit1.Text = '  /  /    ') then
    ShowMessage('Falta informar <Talão>, <Funcionário> ou <Data>!')
  else
    begin
      //Verificar a hora
      Verificar_Hora;
      if vHoraOk then
        begin
          DM1.tTalao.SetKey;
          DM1.tTalaoTalao.AsInteger := CurrencyEdit1.AsInteger;
          if DM1.tTalao.GotoKey then
            begin
              DM1.tTalaoHor.SetKey;
              DM1.tTalaoHorNumTalao.AsInteger       := CurrencyEdit1.AsInteger;
              DM1.tTalaoHorCodFuncionario.AsInteger := RxDBLookupCombo1.KeyValue;
              DM1.tTalaoHorData.AsDateTime          := DateEdit1.Date;
              if RxDBLookupCombo2.Text <> '' then
                DM1.tTalaoHorCodSetor.AsInteger     := RxDBLookupCombo2.KeyValue
              else
                DM1.tTalaoHorCodSetor.AsInteger     := 0;
              if DM1.tTalaoHor.GotoKey then
                DM1.tTalaoHor.Edit
              else
                begin
                  DM1.tTalaoHor.Insert;
                  DM1.tTalaoHorNumTalao.AsInteger       := CurrencyEdit1.AsInteger;
                  DM1.tTalaoHorCodFuncionario.AsInteger := RxDBLookupCombo1.KeyValue;
                  DM1.tTalaoHorData.AsDateTime          := DateEdit1.Date;
                  if RxDBLookupCombo2.Text <> '' then
                    DM1.tTalaoHorCodSetor.AsInteger     := RxDBLookupCombo2.KeyValue
                  else
                    DM1.tTalaoHorCodSetor.AsInteger     := 0;
                end;
              if MaskEdit1.Text <> '  :  ' then
                DM1.tTalaoHorHrEntrada1.AsString      := MaskEdit1.Text
              else
                DM1.tTalaoHorHrEntrada1.Clear;
              if MaskEdit2.Text <> '  :  ' then
                DM1.tTalaoHorHrSaida1.AsString        := MaskEdit2.Text
              else
                DM1.tTalaoHorHrSaida1.Clear;
              if MaskEdit3.Text <> '  :  ' then
                DM1.tTalaoHorHrEntrada2.AsString      := MaskEdit3.Text
              else
                DM1.tTalaoHorHrEntrada2.Clear;
              if MaskEdit4.Text <> '  :  ' then
                DM1.tTalaoHorHrSaida2.AsString        := MaskEdit4.Text
              else
                DM1.tTalaoHorHrSaida2.Clear;
              if MaskEdit5.Text <> '  :  ' then
                DM1.tTalaoHorHrEntrada3.AsString      := MaskEdit5.Text
              else
                DM1.tTalaoHorHrEntrada3.Clear;
              if MaskEdit6.Text <> '  :  ' then
                DM1.tTalaoHorHrSaida3.AsString        := MaskEdit6.Text
              else
                DM1.tTalaoHorHrSaida3.Clear;
              DM1.tTalaoHor.Post;
            BitBtn8Click(Sender);
            end;
        end;
    end;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfTalaoHor.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  DateEdit1.Clear;
  MaskEdit1.Clear;
  MaskEdit2.Clear;
  MaskEdit3.Clear;
  MaskEdit4.Clear;
  MaskEdit5.Clear;
  MaskEdit6.Clear;
end;

procedure TfTalaoHor.BitBtn16Click(Sender: TObject);
begin
  if DM1.tTalaoHorNumTalao.AsInteger > 0 then
    begin
      RxDBLookupCombo1.KeyValue := DM1.tTalaoHorCodFuncionario.AsInteger;
      DateEdit1.Date            := DM1.tTalaoHorData.AsDateTime;
      MaskEdit1.Text            := DM1.tTalaoHorHrEntrada1.AsString;
      MaskEdit2.Text            := DM1.tTalaoHorHrSaida1.AsString;
      MaskEdit3.Text            := DM1.tTalaoHorHrEntrada2.AsString;
      MaskEdit4.Text            := DM1.tTalaoHorHrSaida2.AsString;
      MaskEdit5.Text            := DM1.tTalaoHorHrEntrada3.AsString;
      MaskEdit6.Text            := DM1.tTalaoHorHrSaida3.AsString;
      if DM1.tTalaoHorCodSetor.AsInteger > 0 then
        RxDBLookupCombo2.KeyValue := DM1.tTalaoHorCodSetor.AsInteger
      else
        RxDBLookupCombo2.ClearValue;
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfTalaoHor.BitBtn9Click(Sender: TObject);
begin
  if DM1.tTalaoHorNumTalao.AsInteger > 0 then
    if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
      DM1.tTalaoHor.Delete;
end;

procedure TfTalaoHor.Panel1Enter(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger = 0 then
    begin
      ShowMessage('Falta informar o talão!');
      CurrencyEdit1.SetFocus;
    end;
end;

procedure TfTalaoHor.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfTalaoHor.CurrencyEdit1Change(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  RxDBGrid1.DataSource := Nil;
  Panel1.Enabled       := False;
  StaticText8.Visible  := False;
  BitBtn1.Enabled      := False;
  CheckBox1.Checked    := False;
end;

procedure TfTalaoHor.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Panel1.Enabled       := False;
  RxDBGrid1.DataSource := Nil;
  StaticText8.Visible  := False;
  BitBtn1.Enabled      := False;
  if (Key = Vk_Return) and (CurrencyEdit1.AsInteger > 0) then
    begin
      DM1.tTalao.SetKey;
      DM1.tTalaoTalao.AsInteger := CurrencyEdit1.AsInteger;
      if DM1.tTalao.GotoKey then
        begin
          Edit1.Text := DM1.tTalaoPedidoCliente.AsString;
          Edit2.Text := DM1.tTalaolkNomeCliente.AsString;
          Edit3.Text := DM1.tTalaolkReferencia.AsString;
          Edit4.Text := DM1.tTalaoQtdProduzida.AsString;
          RxDBGrid1.DataSource := DM1.dsTalaoHor;
          if DM1.tTalaoEncerrado.AsBoolean then
            StaticText8.Caption := 'TALÃO ENCERRADO'
          else
            StaticText8.Caption := 'TALÃO NÃO ENCERRADO';
          StaticText8.Visible  := True;
          BitBtn1.Enabled      := True;
          Panel1.Enabled       := True;
          CheckBox1.Checked    := DM1.tTalaoEncerrado.AsBoolean;
          RxDBLookupCombo1.SetFocus;
        end
      else
        begin
          ShowMessage('Talão não cadastrado!');
          CurrencyEdit1.Clear;
        end;
    end;
end;

procedure TfTalaoHor.BitBtn1Click(Sender: TObject);
begin
  if (CurrencyEdit1.AsInteger > 0) and (CurrencyEdit1.AsInteger = DM1.tTalaoTalao.AsInteger) then
    begin
      DM1.tTalao.Edit;
      DM1.tTalaoEncerrado.AsBoolean := CheckBox1.Checked;
      DM1.tTalao.Post;
      if DM1.tTalaoEncerrado.AsBoolean then
        StaticText8.Caption := 'TALÃO ENCERRADO'
      else
        StaticText8.Caption := 'TALÃO NÃO ENCERRADO';
      StaticText8.Visible  := True;
    end;
end;

procedure TfTalaoHor.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tTalao,Name);
end;

procedure TfTalaoHor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

end.
