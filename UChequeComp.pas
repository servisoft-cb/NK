unit UChequeComp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, CurrEdit, StdCtrls, Mask, ToolEdit, Buttons, Grids, DBGrids, RXDBCtrl,
  RxLookup, Db, DBTables, Variants, ExtCtrls, SMDBGrid;

type
  TfChequeComp = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    qPendentes: TQuery;
    qPendentesCodConta: TIntegerField;
    qPendentesNomeConta: TStringField;
    qPendentesNumCheque: TIntegerField;
    qPendentesDtEmissao: TDateField;
    qPendentesDtPrevista: TDateField;
    qPendentesVlrTotal: TFloatField;
    qPendentesNominal: TStringField;
    qPendentesDtEntrada: TDateField;
    qPendentesNumConta: TStringField;
    qPendentesDigConta: TStringField;
    dsqPendentes: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vContador : Integer;
    procedure Grava_Compensacao;
  public
    { Public declarations }
  end;

var
  fChequeComp: TfChequeComp;

implementation

uses UDM1, Math;

{$R *.DFM}

procedure TfChequeComp.Grava_Compensacao;
var
  texto1 : String;
begin
  if Dm1.tCheque.Locate('CodConta;NumCheque',VarArrayOf([qPendentesCodConta.AsInteger,qPendentesNumCheque.AsInteger]),[locaseinsensitive]) then
    begin
      DM1.tContas.FindKey([Dm1.tChequeCodConta.AsInteger]);
      DM1.tMovimentos.MasterSource.Enabled       := False;
      DM1.tMovimentos.Insert;
      DM1.tMovimentosCodConta.AsInteger       := Dm1.tChequeCodConta.AsInteger;
      DM1.tMovimentosDtMovimento.AsDateTime   := DateEdit1.Date;
      DM1.tMovimentosNumChequePag.AsInteger   := DM1.tChequeNumCheque.AsInteger;
      Texto1 := 'CHEQUE COMPENSADO Nº ' + Dm1.tChequeNumCheque.AsString;
      if Dm1.tChequeNominal.AsString <> '' then
        Texto1 := Texto1 + ' ' + Dm1.tChequeNominal.AsString;
      Dm1.tMovimentosHistorico.AsString := Texto1;
      DM1.tMovimentosVlrMovDebito.AsCurrency := Dm1.tChequeVlrTotal.AsFloat;
      Dm1.tMovimentos.Post;
      DM1.tMovimentos.MasterSource.Enabled    := True;
      Dm1.tCheque.Edit;
      Dm1.tChequeDtEntrada.AsDateTime := DateEdit1.Date;
      Dm1.tCheque.Post;
      inc(vContador);
    end;
end;

procedure TfChequeComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfChequeComp.BitBtn1Click(Sender: TObject);
begin
  if DateEdit1.Date < 1 then
    begin
      ShowMessage('Falta informar a data!');
      exit;
    end;

  if MessageDlg('Deseja fazer a compensação dos cheques selecionados?',mtconfirmation,[mbok,mbno],0)=mrNo then
    exit;

  vContador := 0;
  qPendentes.First;
  while not qPendentes.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        Grava_Compensacao;
      qPendentes.Next;
    end;
  if vContador > 0 then
    ShowMessage(IntToStr(vContador) + ' cheque(s) compensado(s)!')
  else
    ShowMessage('Cheque não compensado!');
  qPendentes.Close;
  qPendentes.Open;
end;

procedure TfChequeComp.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfChequeComp.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tContas,Name);
  oDBUtils.ActiveDataSet(True,dm1.tMovimentos,Name);

  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  qPendentes.Open;
  DM1.tContas.IndexFieldNames := 'CodConta';
end;

end.
