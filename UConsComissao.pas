unit UConsComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, StdCtrls, Buttons, Mask, ToolEdit, RxLookup, Grids, DBGrids, RXDBCtrl, Variants,
  Db, DBTables, ExtCtrls, RXCtrls, CurrEdit, MemTable;

type
  TfConsComissao = class(TForm)
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    qComissao: TQuery;
    dsqComissao: TDataSource;
    qComissaoNome: TStringField;
    qComissaoDtReferencia: TDateField;
    qComissaoCodCliente: TIntegerField;
    qComissaoParcDoc: TIntegerField;
    qComissaoNroDoc: TIntegerField;
    qComissaoFuncao: TStringField;
    qComissaoVlrBase: TFloatField;
    qComissaoPercDescDupl: TFloatField;
    qComissaoPercComissao: TFloatField;
    qComissaoVlrComissao: TFloatField;
    qComissaoTipo: TStringField;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxLabel2: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    RxLabel3: TRxLabel;
    CurrencyEdit3: TCurrencyEdit;
    RxLabel4: TRxLabel;
    CurrencyEdit4: TCurrencyEdit;
    RxLabel5: TRxLabel;
    CurrencyEdit5: TCurrencyEdit;
    RxLabel6: TRxLabel;
    CurrencyEdit6: TCurrencyEdit;
    qSaldoAnt: TQuery;
    qSaldoAntFuncao: TStringField;
    qSaldoAntVlrComissao: TFloatField;
    qSaldoAntCodVendedor: TIntegerField;
    qSaldoAntNome: TStringField;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    mVerifica: TMemoryTable;
    mVerificaNumNota: TIntegerField;
    mVerificaParcela: TIntegerField;
    BitBtn4: TBitBtn;
    tCliente2: TTable;
    tCliente2Codigo: TIntegerField;
    tCliente2Nome: TStringField;
    qComissaolkNomeCliente: TStringField;
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsComissao: TfConsComissao;

implementation

uses UDM1, UPgtoComissao2;

{$R *.DFM}

procedure TfConsComissao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfConsComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qComissao.Active := False;
  DM1.tVendedor.IndexFieldNames := 'Codigo';
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfConsComissao.BitBtn3Click(Sender: TObject);
var
  vEntradas, vSaidas, vDevolucao, vSaldoTotal, vSaldoAnterior, vSaldoPeriodo  : Real;
begin                                                                    
  if (RxDBLookupCombo1.Text <> '') and ((DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ')) and (DateEdit1.Date <= DateEdit2.Date) then
    begin
      //*** Calcula o saldo anterior
      vEntradas      := 0;
      vSaidas        := 0;
      vDevolucao     := 0;
      vSaldoAnterior := 0;
      vSaldoPeriodo  := 0;
      qSaldoAnt.Active := False;
      qSaldoAnt.Params[0].AsDate    := DateEdit1.Date;
      qSaldoAnt.Params[1].AsInteger := RxDBLookupCombo1.KeyValue;
      qSaldoAnt.Active := True;
      qSaldoAnt.First;
      while not qSaldoAnt.Eof do
        begin
          if qSaldoAntFuncao.AsString = 'E' then
            vSaldoAnterior := vSaldoAnterior + qSaldoAntVlrComissao.AsFloat
          else
          if qSaldoAntFuncao.AsString = 'D' then
            vSaldoAnterior := vSaldoAnterior - qSaldoAntVlrComissao.AsFloat
          else
          if qSaldoAntFuncao.AsString = 'S' then
            vSaldoAnterior := vSaldoAnterior - qSaldoAntVlrComissao.AsFloat;
          qSaldoAnt.Next;
        end;
      qSaldoAnt.Active := False;

      //*** Monta o extrato
      qComissao.Active := False;
      qComissao.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      qComissao.Params[1].AsDate    := DateEdit1.Date;
      qComissao.Params[2].AsDate    := DateEdit2.Date;
      qComissao.Active := True;
      qComissao.First;
      while not qComissao.Eof do
        begin
          if qComissaoFuncao.AsString = 'E' then
            begin
              vEntradas := vEntradas + qComissaoVlrComissao.AsFloat;
              vSaldoPeriodo := vSaldoPeriodo + qComissaoVlrComissao.AsFloat;
            end
          else
          if qComissaoFuncao.AsString = 'S' then
            begin
              vSaidas := vSaidas + qComissaoVlrComissao.AsFloat;
              vSaldoPeriodo  := vSaldoPeriodo - qComissaoVlrComissao.AsFloat;
            end
          else
          if qComissaoFuncao.AsString = 'D' then
            begin
              vDevolucao := vDevolucao + qComissaoVlrComissao.AsFloat;
              vSaldoPeriodo  := vSaldoPeriodo - qComissaoVlrComissao.AsFloat;
            end;
          qComissao.Next;                                           
        end;
      vSaldoTotal := vSaldoAnterior + vSaldoPeriodo;
      CurrencyEdit1.Value := vSaldoAnterior;
      CurrencyEdit2.Value := vEntradas;
      CurrencyEdit3.Value := vSaidas;
      CurrencyEdit4.Value := vDevolucao;
      CurrencyEdit5.Value := vSaldoPeriodo;
      CurrencyEdit6.Value := vSaldoTotal;
    end;
end;

procedure TfConsComissao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsComissao.DateEdit2Exit(Sender: TObject);
begin
  RxLabel6.Caption := 'Saldo até a data ' + DateEdit2.Text;
end;

procedure TfConsComissao.BitBtn1Click(Sender: TObject);
begin
  if qComissao.RecordCount > 0 then
    begin
      mVerifica.EmptyTable;
      Label3.Visible := True;
      qComissao.First;
      while not qComissao.Eof do
        begin
          if qComissaoNroDoc.AsInteger > 0 then
            begin
              if mVerifica.Locate('NumNota;Parcela',VarArrayOf([qComissaoNroDoc.AsInteger,qComissaoParcDoc.AsInteger]),[locaseinsensitive]) then
                ShowMessage('O documento: ' + qComissaoNroDoc.AsString + '  esta repetido, verifica!')
              else
                begin
                  mVerifica.Insert;
                  mVerificaNumNota.AsInteger := qComissaoNroDoc.AsInteger;
                  mVerificaParcela.AsInteger := qComissaoParcDoc.AsInteger;
                  mVerifica.Post;
                end;
            end;
          qComissao.Next;
        end;
      Label3.Visible := False;
    end;
end;

procedure TfConsComissao.BitBtn4Click(Sender: TObject);
begin
  if DM1.tUsuarioComissao.AsBoolean then
    begin
      if (CurrencyEdit6.Value > 0) then
        begin
          fPgtoComissao2 := TfPgtoComissao2.Create(Self);
          fPgtoComissao2.CurrencyEdit1.Value := CurrencyEdit6.Value;
          fPgtoComissao2.ShowModal;
          BitBtn3Click(Sender);
        end
      else
        ShowMessage('Não existe valor para pagamento!!');
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer o pagto.!');
end;

procedure TfConsComissao.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
