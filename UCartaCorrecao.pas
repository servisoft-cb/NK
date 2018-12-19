unit UCartaCorrecao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, Buttons, Grids, DBGrids, RXDBCtrl, StdCtrls, DBCtrls, Mask, ToolEdit, Db,
  DBTables, RxLookup, ExtCtrls;

type
  TfCartaCorrecao = class(TForm)
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
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qsClientes: TDataSource;
    qCliente: TQuery;
    qClienteCodigo: TIntegerField;
    qClienteNome: TStringField;
    qClienteEndereco: TStringField;
    qClienteBairro: TStringField;
    qClienteCidade: TStringField;
    qClienteUf: TStringField;
    qClienteCep: TStringField;
    qClienteTelefone: TStringField;
    qClienteTelefone2: TStringField;
    qClienteFax: TStringField;
    qClientePessoa: TStringField;
    qClienteCgcCpf: TStringField;
    qClienteInscrEst: TStringField;
    qClienteContato: TStringField;
    qClienteObs: TMemoField;
    qClienteAprovCredito: TStringField;
    qClienteTipoAprov: TStringField;
    qClienteEndEntrega: TStringField;
    qClienteBairroEntrega: TStringField;
    qClienteCidEntrega: TStringField;
    qClienteCepEntrega: TStringField;
    qClienteUfEntrega: TStringField;
    qClienteCgcCpfEntrega: TStringField;
    qClienteInscEntrega: TStringField;
    qClienteEndPgto: TStringField;
    qClienteBairroPgto: TStringField;
    qClienteCidPgto: TStringField;
    qClienteCepPgto: TStringField;
    qClienteUfPgto: TStringField;
    qClienteFantasia: TStringField;
    qClienteDtCadastro: TDateField;
    qClienteCodVendedor: TIntegerField;
    qClienteObsCtas: TMemoField;
    qClienteLojas: TIntegerField;
    qClienteSelecionado: TBooleanField;
    qClienteCaixaPostal: TStringField;
    qClienteRg: TStringField;
    qClienteCodCidade: TIntegerField;
    qClienteCodCidadeE: TIntegerField;
    qClienteCodCidadeP: TIntegerField;
    qClienteEmail: TStringField;
    qClientePercTransf: TFloatField;
    Label4: TLabel;
    DBDateEdit1: TDBDateEdit;
    SpeedButton9: TSpeedButton;
    SpeedButton23: TSpeedButton;
    tCartaCorrecao: TTable;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    BitBtn7: TBitBtn;
    tCartaCorrecaoNumMovimento: TIntegerField;
    tCartaCorrecaoCodCliente: TIntegerField;
    tCartaCorrecaoDataEmissao: TDateField;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    RxDBGrid1: TRxDBGrid;
    SpeedButton2: TSpeedButton;
    tCartaCorrecaoDescricao: TStringField;
    tCartaCorrecaoCop: TTable;
    dsCartaCorrecaoCop: TDataSource;
    tCartaCorrecaoCopNumMovimento: TIntegerField;
    tCartaCorrecaoCopCodCliente: TIntegerField;
    tCartaCorrecaoCopDataEmissao: TDateField;
    tCartaCorrecaoCopDescricao: TStringField;
    tCartaCorrecaoItCop: TTable;
    dsCartaCorrecaoItCop: TDataSource;
    tCartaCorrecaoItCopNumMovimento: TIntegerField;
    tCartaCorrecaoItCopCodigo: TIntegerField;
    tCartaCorrecaoItCopCodCorrecao: TIntegerField;
    tCartaCorrecaoItCopCorrecao: TMemoField;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton10: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fCartaCorrecao: TfCartaCorrecao;

implementation

uses UDM1, UDM2, URelCartaCorrecao, UIrregularidade;

{$R *.DFM}

procedure TfCartaCorrecao.Habilita;
begin
  Panel2.Enabled       := not(Panel2.Enabled);
  Panel4.Enabled       := not(Panel4.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  SpeedButton1.Enabled := not SpeedButton1.Enabled;
  SpeedButton2.Enabled := not SpeedButton2.Enabled;
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
end;

procedure TfCartaCorrecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfCartaCorrecao.BitBtn1Click(Sender: TObject);
begin
  //if DM1.tUsuarioInsCartaCorrecao.AsBoolean then
    //begin
      tCartaCorrecao.IndexFieldNames     := 'NumMovimento';
      DM1.tCartaCorrecao.IndexFieldNames := 'NumMovimento';
      tCartaCorrecao.Refresh;
      tCartaCorrecao.Last;
      DM1.tCartaCorrecao.Refresh;
      DM1.tCartaCorrecao.Insert;
      DM1.tCartaCorrecaoNumMovimento.AsInteger := tCartaCorrecaoNumMovimento.AsInteger + 1;
      DM1.tCartaCorrecaoDataEmissao.AsDateTime := Date;
      DM1.tCartaCorrecao.Post;
      DM1.tCartaCorrecao.Edit;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    //end
  //else
    //ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfCartaCorrecao.BitBtn2Click(Sender: TObject);
begin
  //if DM1.tUsuarioAltCartaCorrecao.AsBoolean then
  //  begin
      DM1.tCartaCorrecao.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      RxDBLookupCombo2.SetFocus;
   // end
//  else
  //  ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfCartaCorrecao.BitBtn3Click(Sender: TObject);
begin
  //if DM1.tUsuarioExcCartaCorrecao.AsBoolean then
  //  begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        Dm1.tCartaCorrecaoIt.First;
        while not Dm1.tCartaCorrecaoIt.Eof do
          Dm1.tCartaCorrecaoIt.Delete;
        DM1.tCartaCorrecao.Delete;
//    end
  //else
    //ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfCartaCorrecao.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tCartaCorrecao.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tCartaCorrecao.Cancel;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfCartaCorrecao.BitBtn5Click(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      DM1.tCartaCorrecao.Post;
      BitBtn2.Tag := 0;
      Habilita;
      BitBtn1.SetFocus;
    end
  else
    ShowMessage('Deve haver cliente selecionado!');    
end;

procedure TfCartaCorrecao.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfCartaCorrecao.BitBtn7Click(Sender: TObject);
var
  vCodAux : Integer;
begin
  if (RxDBLookupCombo3.Text <> '') and (Memo1.Text <> '') then
    begin
      Dm1.tCartaCorrecaoIt.Refresh;
      Dm1.tCartaCorrecaoIt.Last;
      vCodAux := DM1.tCartaCorrecaoItCodigo.AsInteger;

      Dm1.tCartaCorrecaoIt.Insert;
      Dm1.tCartaCorrecaoItNumMovimento.AsInteger := Dm1.tCartaCorrecaoNumMovimento.AsInteger;
      Dm1.tCartaCorrecaoItCodigo.AsInteger       := vCodAux + 1;
      Dm1.tCartaCorrecaoItCodCorrecao.AsInteger  := RxDBLookupCombo3.KeyValue;
      DM1.tCartaCorrecaoItCorrecao.AsString      := Memo1.Text;
      Dm1.tCartaCorrecaoIt.Post;
      RxDBLookupCombo3.ClearValue;
      RxDBLookupCombo3.SetFocus;
      Memo1.Clear;
    end
  else
    ShowMessage('Deve haver uma irregularidade selecionada e a correção!');
end;

procedure TfCartaCorrecao.SpeedButton9Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    Dm1.tCartaCorrecaoIt.Delete;
end;

procedure TfCartaCorrecao.SpeedButton23Click(Sender: TObject);
begin
  if DM1.tCartaCorrecaoItCodCorrecao.AsInteger > 0 then
    begin
      Memo1.Text := Dm1.tCartaCorrecaoItCorrecao.AsString;
      RxDBLookupCombo3.KeyValue := DM1.tCartaCorrecaoItCodCorrecao.AsInteger;
      Dm1.tCartaCorrecaoIt.Delete;
    end;
end;

procedure TfCartaCorrecao.SpeedButton1Click(Sender: TObject);
var
  vNumCarta : Integer;
begin
  vNumCarta := Dm1.tCartaCorrecaoNumMovimento.AsInteger;
  Dm1.tCartaCorrecao.Filtered := False;
  Dm1.tCartaCorrecao.Filter   := 'NumMovimento = ''' + IntToStr(vNumCarta) + '''';
  Dm1.tCartaCorrecao.Filtered := True;
  fRelCartaCorrecao := TfRelCartaCorrecao.Create(Self);
  fRelCartaCorrecao.RLReport1.Preview;
  fRelCartaCorrecao.RLReport1.Free;
  Dm1.tCartaCorrecao.Filtered := False;
end;

procedure TfCartaCorrecao.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja fazer uma copia desta carta de correção?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      tCartaCorrecaoCop.SetKey;
      tCartaCorrecaoCopNumMovimento.AsInteger := DM1.tCartaCorrecaoNumMovimento.AsInteger;
      if tCartaCorrecaoCop.GotoKey then
        begin
          tCartaCorrecao.IndexFieldNames     := 'NumMovimento';
          DM1.tCartaCorrecao.IndexFieldNames := 'NumMovimento';
          tCartaCorrecao.Refresh;
          tCartaCorrecao.Last;
          DM1.tCartaCorrecao.Refresh;
          DM1.tCartaCorrecao.Insert;
          DM1.tCartaCorrecaoNumMovimento.AsInteger := tCartaCorrecaoNumMovimento.AsInteger + 1;
          DM1.tCartaCorrecaoDataEmissao.AsDateTime := Date;
          DM1.tCartaCorrecaoCodCliente.AsInteger   := tCartaCorrecaoCopCodCliente.AsInteger;
          DM1.tCartaCorrecaoDescricao.AsString     := tCartaCorrecaoCopDescricao.AsString;
          DM1.tCartaCorrecao.Post;
          tCartaCorrecaoItCop.First;
          while not tCartaCorrecaoItCop.Eof do
            begin
              DM1.tCartaCorrecaoIt.Insert;
              DM1.tCartaCorrecaoItNumMovimento.AsInteger := DM1.tCartaCorrecaoNumMovimento.AsInteger;
              DM1.tCartaCorrecaoItCodigo.AsInteger       := tCartaCorrecaoItCopCodigo.AsInteger;
              DM1.tCartaCorrecaoItCodCorrecao.AsInteger  := tCartaCorrecaoItCopCodCorrecao.AsInteger;
              DM1.tCartaCorrecaoItCorrecao.AsString      := tCartaCorrecaoItCopCorrecao.AsString;
              DM1.tCartaCorrecaoIt.Post;
              tCartaCorrecaoItCop.Next;
            end;
        end;
      DM1.tCartaCorrecaoIt.Refresh;
      DM1.tCartaCorrecao.Refresh;
      DM1.tCartaCorrecao.Last;
    end;
end;

procedure TfCartaCorrecao.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tIrregularidade.IndexFieldNames := 'Codigo';
end;

procedure TfCartaCorrecao.SpeedButton10Click(Sender: TObject);
begin
  fIrregularidade := TfIrregularidade.Create(Self);
  fIrregularidade.ShowModal;
  DM1.tIrregularidade.Refresh;
end;

procedure TfCartaCorrecao.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
