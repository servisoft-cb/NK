unit UConsPedidoTalao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, RxLookup, CurrEdit,
  Buttons, DB, DBTables, Grids, DBGrids, SMDBGrid, DBClient;

type
  TfConsPedidoTalao = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    RxLabel7: TRxLabel;
    DateEdit1: TDateEdit;
    RxLabel8: TRxLabel;
    DateEdit2: TDateEdit;
    RxLabel1: TRxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    RxLabel2: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn2: TBitBtn;
    qPedido: TQuery;
    qPedidoPedido: TIntegerField;
    qPedidocodcliente: TIntegerField;
    qPedidoDtEmissao: TDateField;
    qPedidoQtdPares: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoQtdParesFat: TFloatField;
    qPedidoNomeCliente: TStringField;
    tTalao: TTable;
    dsqPedido: TDataSource;
    dsTalao: TDataSource;
    tTalaoTalao: TIntegerField;
    tTalaoCodProduto: TIntegerField;
    tTalaoQuantidade: TFloatField;
    tTalaoPedido: TIntegerField;
    tTalaoItemPedido: TIntegerField;
    tTalaoCodCor: TIntegerField;
    tTalaoCodGrade: TIntegerField;
    tTalaoPedidoCliente: TStringField;
    tTalaoPedCliDif: TStringField;
    tTalaoCodCliente: TIntegerField;
    tTalaoProduzido: TBooleanField;
    tTalaoNumMovEst: TIntegerField;
    tTalaoDtBaixa: TDateField;
    tTalaoQtdProduzida: TFloatField;
    tTalaoCancelado: TBooleanField;
    tTalaoMotivoCancelado: TStringField;
    tTalaoDtCancelado: TDateField;
    tTalaoDtGerado: TDateField;
    tTalaoImprimir: TBooleanField;
    tTalaoEncerrado: TBooleanField;
    tTalaoImpressoData: TDateField;
    tTalaoImpressoHora: TDateField;
    tTalaoImpressoUsuario: TStringField;
    tTalaoProcesso: TStringField;
    tTalaolkReferencia: TStringField;
    SMDBGrid1: TSMDBGrid;
    mConsulta: TClientDataSet;
    mConsultaPedido: TIntegerField;
    mConsultaDtEmissao: TDateField;
    mConsultaCodCliente: TIntegerField;
    mConsultaNomeCliente: TStringField;
    mConsultaQtdPares: TFloatField;
    mConsultaQtdParesRest: TFloatField;
    mConsultaQtdParesFat: TFloatField;
    dsmConsulta: TDataSource;
    mConsultaObsTalao: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vSqlPedido : String;
    procedure prc_Consultar;
    procedure prc_LeqPedido;

  public
    { Public declarations }
  end;

var
  fConsPedidoTalao: TfConsPedidoTalao;

implementation

uses UDM1, rsDBUtils, URelPedidoTalao;

{$R *.dfm}

procedure TfConsPedidoTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsPedidoTalao.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfConsPedidoTalao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsPedidoTalao.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
  prc_LeqPedido;
  mConsulta.IndexFieldNames := 'Pedido';
end;

procedure TfConsPedidoTalao.prc_Consultar;
begin
  qPedido.Close;
  qPedido.SQL.Text := vSqlPedido + ' WHERE 0 = 0';
  if DateEdit1.Date > 10 then
  begin
    qPedido.SQL.Add(' AND p.DtEmissao >= :DtInicial');
    qPedido.ParamByName('DtInicial').AsDate := DateEdit1.Date;
  end;
  if DateEdit2.Date > 10 then
  begin
    qPedido.SQL.Add(' AND p.DtEmissao <= :DtFinal');
    qPedido.ParamByName('DtFinal').AsDate := DateEdit2.Date;
  end;
  if RxDBLookupCombo1.Text <> '' then
  begin
    qPedido.SQL.Add(' AND p.CodCliente = :CodCliente');
    qPedido.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if CurrencyEdit1.AsInteger > 0 then
  begin
    qPedido.SQL.Add(' AND p.Pedido = :Pedido');
    qPedido.ParamByName('Pedido').AsInteger := CurrencyEdit1.AsInteger;
  end;
  qPedido.Open;
end;

procedure TfConsPedidoTalao.FormShow(Sender: TObject);
begin
  vSqlPedido := qPedido.SQL.Text;
end;

procedure TfConsPedidoTalao.prc_LeqPedido;
var
  vObs : String;
begin
  mConsulta.EmptyDataSet;
  qPedido.First;
  while not qPedido.Eof do
  begin
    mConsulta.Insert;
    mConsultaPedido.AsInteger     := qPedidoPedido.AsInteger;
    mConsultaDtEmissao.AsDateTime := qPedidoDtEmissao.AsDateTime;
    mConsultaCodCliente.AsInteger := qPedidocodcliente.AsInteger;
    mConsultaNomeCliente.AsString := qPedidoNomeCliente.AsString;
    mConsultaQtdPares.AsFloat     := qPedidoQtdPares.AsFloat;
    mConsultaQtdParesRest.AsFloat := qPedidoQtdParesRest.AsFloat;
    mConsultaQtdParesFat.AsFloat  := qPedidoQtdParesFat.AsFloat;

    tTalao.Filtered := False;
    tTalao.Filter   := 'Pedido = '''+qPedidoPedido.AsString+'''';
    tTalao.Filtered := True;
    vObs := '';
    tTalao.First;
    while not tTalao.Eof do
    begin
      vObs := '(Talão: ' + tTalaoTalao.AsString + '  Ref:' + tTalaolkReferencia.AsString;
      if tTalaoCancelado.AsBoolean then
        vObs := vObs + '  Cancelado';
      vObs := vObs + vObs + ') ';
      tTalao.Next;
    end;
    mConsultaObsTalao.Value := vObs;
    mConsulta.Post;
    qPedido.Next;
  end;
end;

procedure TfConsPedidoTalao.BitBtn2Click(Sender: TObject);
begin
  if mConsulta.RecordCount > 0 then
  begin
    mConsulta.First;
    fRelPedidoTalao := TfRelPedidoTalao.Create(Self);
    fRelPedidoTalao.RLReport1.Preview;
    fRelPedidoTalao.RLReport1.Free;
  end;
end;

end.
