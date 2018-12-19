unit UTabPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons,
  Db, DBTables, RxLookup, Variants, ToolEdit, CurrEdit, Grids, DBGrids, RXDBCtrl, RXCtrls, Menus, rsDBUtils,
  SMDBGrid, DBClient;

type
  TfTabPreco = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    StaticText1: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText8: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText9: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText3: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    qMatRef: TQuery;
    dsqMatRef: TDataSource;
    qCorRef: TQuery;
    qCorRefCodCor: TIntegerField;
    qCorRefNome: TStringField;
    dsqCorRef: TDataSource;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    qTabelaPreco: TQuery;
    dsTabelaPreco: TDataSource;
    qTabelaPrecoCodCliente: TIntegerField;
    qTabelaPrecoCODPRODUTO: TIntegerField;
    qTabelaPrecoCODCOR: TIntegerField;
    qTabelaPrecoPreco: TFloatField;
    qTabelaPrecolkNomeProd: TStringField;
    qTabelaPrecolkReferencia: TStringField;
    qTabelaPrecolkNomeCor: TStringField;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    mTabPreco: TClientDataSet;
    dsmTabPreco: TDataSource;
    mTabPrecoCodCliente: TIntegerField;
    mTabPrecoCodProduto: TIntegerField;
    mTabPrecoCodCor: TIntegerField;
    mTabPrecoPreco: TFloatField;
    mTabPrecoReferencia: TStringField;
    mTabPrecoNomeProduto: TStringField;
    mTabPrecoNomeCor: TStringField;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure mTabPrecoAfterPost(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    vControlarPost : Boolean;
    procedure Habilita;
    procedure AbreTabela(vCliente: Integer);
    procedure prc_Gerar_mTabela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTabPreco: TfTabPreco;
  vDescMat: String;

implementation

uses UDM1, UDM2, URelTabPreco;

{$R *.DFM}

procedure TfTabPreco.Habilita;
begin
  RxDBLookupCombo1.Enabled      := not(RxDBLookupCombo1.Enabled);
  Panel4.Enabled                := not(Panel4.Enabled);
  BitBtn3.Enabled               := not(BitBtn3.Enabled);
  BitBtn2.Enabled               := not(BitBtn2.Enabled);
  BitBtn1.Enabled               := not(BitBtn1.Enabled);
  //SMDBGrid1.Columns[3].ReadOnly := not(SMDBGrid1.Columns[3].ReadOnly);
end;

procedure TfTabPreco.BitBtn6Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a tabela deste cliente?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    mTabPreco.EmptyDataSet;
    while not DM1.tTabPreco.IsEmpty do
      dm1.tTabPreco.Delete;
    AbreTabela(RxDBLookupCombo1.KeyValue);
  end;
end;

procedure TfTabPreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfTabPreco.BitBtn2Click(Sender: TObject);
begin
  if not DM1.tUsuarioInsTabPreco.AsBoolean then
  begin
    ShowMessage('Usuário não autorizada a digitar na tabela de preço');
    exit;
  end;
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('É obrigatório informar o cliente');
    RxDBLookupCombo1.SetFocus;
  end
  else
  begin
    vControlarPost := True;
    Habilita;
    RxDBLookupCombo2.SetFocus;
  end;
end;

procedure TfTabPreco.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tcor.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar a cor antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfTabPreco.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo4.ClearValue;
  CurrencyEdit1.Clear;
end;

procedure TfTabPreco.BitBtn9Click(Sender: TObject);
begin
  if not DM1.tUsuarioExcTabPreco.AsBoolean then
  begin
    ShowMessage('Usuário não autorizado a fazer exclusão');
    Exit;
  end;
  dm1.tTabPreco.IndexFieldNames := 'CODCLIENTE;CODPRODUTO;CODCOR';
  if dm1.tTabPreco.FindKey([mTabPrecoCodCliente.AsInteger, mTabPrecoCodProduto.AsInteger, mTabPrecoCodCor.AsInteger]) then
  begin
    if MessageDlg('Deseja realmente excluir esta referência?',mtConfirmation,
       [mbOK,mbNo],0) = mrOK then
    begin
      DM1.tTabPreco.Delete;
      mTabPreco.Delete;
      //AbreTabela(RxDBLookupCombo1.KeyValue);
    end;
  end;
end;

procedure TfTabPreco.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    qMatRef.Active             := False;
    qMatRef.Params[0].AsString := RxDBLookupCombo2.Text;
    qMatRef.Active             := True;
    RxDBLookupCombo3.SetFocus;
    DM1.tTabPreco.Locate('CodCliente;CodProduto',VarArrayOf([RxDBLookupCombo1.KeyValue,DM1.tProdutoCodigo.AsInteger]),[loCaseInsensitive]);
  end;
end;

procedure TfTabPreco.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    if DM1.tProduto.Locate('Referencia;DescMaterial',VarArrayOf([RxDBLookupCombo2.Text,RxDBLookupCombo3.Text]),[loCaseInsensitive]) then
    begin
      DM1.tProdutoCor.Refresh;
      qCorRef.Active              := False;
      qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qCorRef.Active              := True;
    end;
  end;
end;

procedure TfTabPreco.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfTabPreco.BitBtn7Click(Sender: TObject);
var
  vCodCorAux: Integer;
begin
  if (RxDBLookupCombo2.Text = '') or (CurrencyEdit1.Value <= 0) then
    begin
      ShowMessage('Falta "Referência" ou "Preço"');
      exit;
    end;

  if not DM1.tProduto.Locate('Referencia;DescMaterial',VarArrayOf([RxDBLookupCombo2.Text,RxDBLookupCombo3.Text]),[loCaseInsensitive]) then
    begin
      ShowMessage('Produto não cadastrado!');
      exit;
    end;

  if ((DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo4.Text = '')) or
     (not(DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo4.Text <> '')) then
    begin
      ShowMessage('Falta informar a cor ou esse produto não possue cor!');
      exit;
    end;
  vCodCorAux := 0;
  if RxDBLookupCombo4.Text <> '' then
    vCodCorAux := RxDBLookupCombo4.KeyValue;
  DM1.tTabPreco.SetKey;
  DM1.tTabPrecoCodCliente.AsInteger := RxDBLookupCombo1.KeyValue;
  DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
  DM1.tTabPrecoCodCor.AsInteger     := vCodCorAux;
  if DM1.tTabPreco.GotoKey then
    ShowMessage('Referência já cadastrada')
  else
    begin
      DM1.tTabPreco.Insert;
      DM1.tTabPrecoCodCliente.AsInteger := RxDBLookupCombo1.KeyValue;
      DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tTabPrecoCodCor.AsInteger     := vCodCorAux;
      DM1.tTabPrecoPreco.AsFloat        := CurrencyEdit1.Value;
      DM1.tTabPreco.Post;

      mTabPreco.Insert;
      mTabPrecoCodCliente.AsInteger := DM1.tTabPrecoCodCliente.AsInteger;
      mTabPrecoCodProduto.AsInteger := DM1.tTabPrecoCodProduto.AsInteger;
      mTabPrecoCodCor.AsInteger     := DM1.tTabPrecoCodCor.AsInteger;
      mTabPrecoPreco.AsFloat        := DM1.tTabPrecoPreco.AsFloat;
      mTabPrecoReferencia.AsString  := DM1.tProdutoReferencia.AsString;
      mTabPrecoNomeProduto.AsString := DM1.tProdutoNome.AsString;
      mTabPrecoNomeCor.AsString     := '';
      mTabPreco.Post;
    end;
  BitBtn8Click(Sender);
  RxDBLookupCombo2.SetFocus;

  AbreTabela(RxDBLookupCombo1.KeyValue);
end;

procedure TfTabPreco.BitBtn1Click(Sender: TObject);
begin
  Habilita;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfTabPreco.Imprimir1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      fRelTabPreco := TfRelTabPreco.Create(Self);
      fRelTabPreco.QuickRep1.Print;
      fRelTabPreco.QuickRep1.Free;
    end
  else
    ShowMessage('Você deve selecionar um cliente p/ gerar a impressão!');
end;

procedure TfTabPreco.Visualizar1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      fRelTabPreco := TfRelTabPreco.Create(Self);
      fRelTabPreco.QuickRep1.Preview;
      fRelTabPreco.QuickRep1.Free;
    end
  else
    ShowMessage('Você deve selecionar um cliente p/ gerar a impressão!');
end;

procedure TfTabPreco.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tProdutoCor,Name);
  oDBUtils.ActiveDataSet(True,DM1.tTabPreco,Name);

  DM1.tCliente.First;
  if DM1.tClienteCodigo.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := DM1.tClienteCodigo.AsInteger;
end;

procedure TfTabPreco.AbreTabela(vCliente: Integer);
begin
  qTabelaPreco.Close;
  qTabelaPreco.ParamByName('CLI').AsInteger := vCliente;
  qTabelaPreco.Open;
end;

procedure TfTabPreco.RxDBLookupCombo1Change(Sender: TObject);
begin
  //AbreTabela(RxDBLookupCombo1.KeyValue);
  qTabelaPreco.Close;
  mTabPreco.EmptyDataSet;
end;

procedure TfTabPreco.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfTabPreco.BitBtn3Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    ShowMessage('Cliente não especificado!');
    exit;
  end;
  AbreTabela(RxDBLookupCombo1.KeyValue);
  prc_Gerar_mTabela;
end;

procedure TfTabPreco.prc_Gerar_mTabela;
begin
  vControlarPost := False;
  mTabPreco.EmptyDataSet;
  qTabelaPreco.First;
  while not qTabelaPreco.Eof do
  begin
    mTabPreco.Insert;
    mTabPrecoCodCliente.AsInteger := qTabelaPrecoCodCliente.AsInteger;
    mTabPrecoCodProduto.AsInteger := qTabelaPrecoCODPRODUTO.AsInteger;
    mTabPrecoCodCor.AsInteger     := qTabelaPrecoCODCOR.AsInteger;
    mTabPrecoPreco.AsFloat        := StrToFloat(FormatFloat('0.00',qTabelaPrecoPreco.AsFloat));
    mTabPrecoReferencia.AsString  := qTabelaPrecolkReferencia.AsString;
    mTabPrecoNomeProduto.AsString := qTabelaPrecolkNomeProd.AsString;
    mTabPrecoNomeCor.AsString     := qTabelaPrecolkNomeCor.AsString;
    mTabPreco.Post;
    qTabelaPreco.Next;
  end;
  mTabPreco.IndexFieldNames := 'Referencia';
end;

procedure TfTabPreco.mTabPrecoAfterPost(DataSet: TDataSet);
begin
  if vControlarPost then
  begin
    if DM1.tTabPreco.Locate('CodCliente;CodProduto;CodCor',VarArrayOf([mTabPrecoCodCliente.AsInteger,mTabPrecoCodProduto.AsInteger,mTabPrecoCodCor.AsInteger]),[locaseinsensitive]) then
    begin
      DM1.tTabPreco.Edit;
      DM1.tTabPrecoPreco.AsFloat := StrToFloat(FormatFloat('0.00',mTabPrecoPreco.AsFloat));
      DM1.tTabPreco.Post;
    end;
  end;
end;

procedure TfTabPreco.CheckBox1Click(Sender: TObject);
begin
  BitBtn6.Enabled := CheckBox1.Checked;
end;

procedure TfTabPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    CheckBox1.Visible := not(CheckBox1.Visible);
end;

end.
