unit UPrevCliNCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, ExtCtrls, Grids,
  DBGrids, RXDBCtrl, DB, DBClient, RxLookup, ComCtrls, DBTables;

type
  TfPrevCliNCompra = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    mPedido: TClientDataSet;
    mPedidoNomeCliente: TStringField;
    mPedidoNumPedido: TIntegerField;
    mPedidoValorTotal: TFloatField;
    mPedidoDtEmissao: TDateField;
    msPedido: TDataSource;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ProgressBar1: TProgressBar;
    mPedidoCodCliente: TIntegerField;
    mPedidoFone: TStringField;
    qPedido: TQuery;
    qPedidodtemissao: TDateField;
    qPedidocodcliente: TIntegerField;
    qPedidovlrtotal: TFloatField;
    qPedidopedido: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevCliNCompra: TfPrevCliNCompra;

implementation

uses UDM1, URelCliNCompra, rsDBUtils;

{$R *.dfm}

procedure TfPrevCliNCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevCliNCompra.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevCliNCompra.BitBtn3Click(Sender: TObject);
var
  vCodCidade : Integer;
  vFlag : Boolean;
begin
  vCodCidade := 0;
  if RxDBLookupCombo1.Text <> '' then
    vCodCidade := RxDBLookupCombo1.KeyValue;

  if CurrencyEdit1.Value > 0 then
    begin
      qPedido.Close;
      qPedido.Open;
      ProgressBar1.Max      := DM1.tCliente.RecordCount;
      ProgressBar1.Position := 0;
      Screen.Cursor         := crHourGlass;
      mPedido.EmptyDataSet;
      Dm1.tCliente.First;
      while not Dm1.tCliente.Eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if not DM1.tClienteFornecedor.AsBoolean then
        begin
          vFlag := True;
          if (vCodCidade > 0) and (vCodCidade <> DM1.tClienteCodCidade.AsInteger) then
            vFlag := False;

          if vFlag then
          begin
            qPedido.Filtered := False;
            qPedido.Filter   := 'CodCliente = ''' + IntToStr(Dm1.tClienteCodigo.AsInteger)+'''';
            qPedido.Filtered := True;
            qPedido.Last;
            if qPedido.RecordCount > 0 then
            begin
              if qPedidoDtEmissao.AsDateTime < (Date - CurrencyEdit1.AsInteger)then
              begin
                mPedido.Insert;
                mPedidoDtEmissao.AsDateTime := qPedidodtemissao.AsDateTime;
                mPedidoNomeCliente.AsString := DM1.tClienteNome.AsString;
                mPedidoNumPedido.AsInteger  := qPedidopedido.AsInteger;
                mPedidoValorTotal.AsFloat   := qPedidovlrtotal.AsFloat;
                mPedidoCodCliente.AsInteger := qPedidocodcliente.AsInteger;
                mPedidoFone.AsString        := DM1.tClienteTelefone.AsString;
                if DM1.tClienteDDDFone1.AsInteger > 0 then
                  mPedidoFone.AsString      := DM1.tClienteDDDFone1.AsString + '-' + DM1.tClienteTelefone.AsString;
                mPedido.Post;
              end
            end
            else
            begin
              mPedido.Insert;
              mPedidoNomeCliente.AsString := Dm1.tClienteNome.AsString;
              mPedidoCodCliente.AsInteger := DM1.tClienteCodigo.AsInteger;
              mPedidoFone.AsString        := DM1.tClienteTelefone.AsString;
              mPedido.Post;
            end;
          end;
        end;
        Dm1.tCliente.Next;
      end;
      Screen.Cursor   := crDefault;
      fRelCliNCompra := TfRelCliNCompra.Create(Self);
      fRelCliNCompra.QuickRep1.Preview;
      fRelCliNCompra.QuickRep1.Free;
      Dm1.tCliente.Filtered := False;
      qPedido.Close;
      qPedido.Filtered      := False;
    end
  else
    ShowMessage('Qtd. de dias deve ser maior que "0"');
end;

procedure TfPrevCliNCompra.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tCliente,Name);
end;

procedure TfPrevCliNCompra.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

end.
