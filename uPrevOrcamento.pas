unit uPrevOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, RxLookup, Mask, ToolEdit, Buttons, DB, DBTables, rsDBUtils,
  Grids, DBGrids, RXDBCtrl, ExtCtrls, SMDBGrid;

type
  TfPrevOrcamento = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit1: TDateEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qOrcamento: TQuery;
    qOrcamentoNumOrcamento: TIntegerField;
    qOrcamentoData: TDateField;
    qOrcamentoCodCliente: TIntegerField;
    qOrcamentoNomeCliente: TStringField;
    qOrcamentoDtAprovado: TDateField;
    qOrcamentoVlrTotal: TFloatField;
    qOrcamentoMotivoNaoAprov: TMemoField;
    qOrcamentoSituacao: TStringField;
    qOrcamentoAprovado: TStringField;
    dsqOrcamento: TDataSource;
    tOrcamentoItens: TTable;
    tOrcamentoItensNumOrcamento: TIntegerField;
    tOrcamentoItensItem: TIntegerField;
    tOrcamentoItensReferencia: TStringField;
    tOrcamentoItensNomeProduto: TStringField;
    tOrcamentoItensVlrUnitario: TFloatField;
    tOrcamentoItensComMatriz: TBooleanField;
    tOrcamentoItensQtd: TFloatField;
    tOrcamentoItensVlrTotal: TFloatField;
    tOrcamentoItensDtEntrega: TDateField;
    dsOrcamentoItens: TDataSource;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure qOrcamentoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure MontaSQL;
  public
    { Public declarations }
  end;

var
  fPrevOrcamento: TfPrevOrcamento;

implementation

uses UDM1, uRelOrcamento2;

{$R *.dfm}

procedure TfPrevOrcamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevOrcamento.MontaSQL;
var
  sTipo: String;
begin

  qOrcamento.Close;
  qOrcamento.SQL.Clear;

  tOrcamentoItens.Close;

  sTipo := '';

  case ComboBox1.ItemIndex of
    0: sTipo := 'A';
    1: sTipo := 'P';
    2: sTipo := 'N';
  end;

  qOrcamento.SQL.Add(' select o.* from dborcamento o where 1=1');


  if sTipo <> '' then
    qOrcamento.SQL.Add(' and o.aprovado = ' + QuotedStr(sTipo));

  if (DateEdit1.Date > 0) and (DateEdit2.Date > 0) then
  begin
    qOrcamento.SQL.Add('   and o.data between :data1 and :data2 ' );
    qOrcamento.ParamByName('data1').AsDate := DateEdit1.Date;
    qOrcamento.ParamByName('data2').AsDate := DateEdit2.Date;
  end;

  if RxDBLookupCombo2.KeyValue > 0 then
    qOrcamento.SQL.Add('   and o.codcliente = ' + RxDBLookupCombo2.KeyValue );

  if (DateEdit3.Date > 0) and (DateEdit4.Date > 0) then
  begin
    qOrcamento.SQL.Add('   and o.dtaprovado between :data3 and :data4 ' );
    qOrcamento.ParamByName('data3').AsDate := DateEdit3.Date;
    qOrcamento.ParamByName('data4').AsDate := DateEdit4.Date;
  end;

  qOrcamento.Open;
  if qOrcamento.RecordCount > 0 then
    tOrcamentoItens.Open;

end;

procedure TfPrevOrcamento.BitBtn3Click(Sender: TObject);
begin
  MontaSQL;
  bitbtn1.Enabled := qOrcamento.RecordCount > 0;
end;

procedure TfPrevOrcamento.qOrcamentoCalcFields(DataSet: TDataSet);
begin

  case qOrcamentoAprovado.AsString[1] of
    'A': qOrcamentoSituacao.AsString := 'Aprovado';
    'P': qOrcamentoSituacao.AsString := 'Pendente';
    'N': qOrcamentoSituacao.AsString := 'Não Aprovado';
  end;

end;

procedure TfPrevOrcamento.BitBtn1Click(Sender: TObject);
begin
  fRelOrcamento2 := TfRelOrcamento2.Create(nil);
  try
    fRelOrcamento2.RLReport1.Preview;
  finally
    FreeAndNil(fRelOrcamento2);
  end;
end;  

procedure TfPrevOrcamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  dm1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevOrcamento.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  tOrcamentoItens.Close;
end;

procedure TfPrevOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

end.
