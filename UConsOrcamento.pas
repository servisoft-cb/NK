unit UConsOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, Db, DBTables, Grids, DBGrids, RXDBCtrl,
  ExtCtrls, Buttons, ALed;

type
  TfConsOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    qOrcamento: TQuery;
    qsOrcamento: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    qOrcamentoNomeProduto: TStringField;
    qOrcamentoVlrUnitario: TFloatField;
    qOrcamentoQtd: TFloatField;
    qOrcamentoNomeCliente: TStringField;
    qOrcamentoNumOrcamento: TIntegerField;
    qOrcamentoData: TDateField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ALed1: TALed;
    ALed2: TALed;
    Label4: TLabel;
    Label5: TLabel;
    qOrcamentoReferencia: TStringField;
    qOrcamentoAprovado: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fConsOrcamento: TfConsOrcamento;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsOrcamento.Consulta;
var
  vSeparador : String;
begin
  qOrcamento.Close;
  qOrcamento.SQL.Clear;
  qOrcamento.SQL.Add('SELECT Dborcamentoitens.Referencia, Dborcamentoitens.NomeProduto, ');
  qOrcamento.SQL.Add('  Dborcamentoitens.VlrUnitario, Dborcamentoitens.Qtd, ');
  qOrcamento.SQL.Add('  Dborcamento.NomeCliente, Dborcamento.NumOrcamento, Dborcamento.Data, Dborcamento.Aprovado');
  qOrcamento.SQL.Add('FROM "dbOrcamento.DB" Dborcamento');
  qOrcamento.SQL.Add('LEFT JOIN "dbOrcamentoItens.DB" Dborcamentoitens');
  qOrcamento.SQL.Add(' ON  (Dborcamento.NumOrcamento = Dborcamentoitens.NumOrcamento)');
  vSeparador := 'WHERE';
  if Edit1.Text <> '' then
    begin
//      Where DborcamentoItens.Nomeproduto LIKE '%' +'TR' +'%'
      qOrcamento.SQL.Add(vSeparador + ' Dborcamento.NomeCliente LIKE ''%' + Edit1.Text + '%''');
//      qOrcamento.SQL.Add(vSeparador + ' Dborcamento.NomeCliente LIKE '+'%''' + Edit1.Text + ''' % ');
//      qOrcamento.ParamByName('Nome').AsString := Edit1.Text;
      vSeparador := ' AND ';
    end;
  if Edit2.Text <> '' then
    begin
      qOrcamento.SQL.Add(vSeparador + ' Dborcamentoitens.Referencia LIKE ''%' + Edit2.Text + '%''');
      vSeparador := ' AND ';
    end;
  if DateEdit1.Text <> '  /  /    ' then
    begin
      qOrcamento.SQL.Add(vSeparador + ' Dborcamento.Data = :Data');
      qOrcamento.ParamByName('Data').AsDate := DateEdit1.Date;
    end;
  qOrcamento.SQL.Add('ORDER BY Dborcamento.Data');
  qOrcamento.Open;
end;

procedure TfConsOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qOrcamentoNumOrcamento.AsInteger > 0 then
    DM1.tOrcamento.Locate('NumOrcamento',qOrcamentoNumOrcamento.AsInteger,[loCaseInsensitive]);
  Action := Cafree;
end;

procedure TfConsOrcamento.BitBtn1Click(Sender: TObject);
begin
  Consulta;
end;

procedure TfConsOrcamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsOrcamento.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qOrcamentoAprovado.AsBoolean then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
{  else
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;}
end;

procedure TfConsOrcamento.RxDBGrid1DblClick(Sender: TObject);
begin
  if Dm1.tOrcamento.GotoKey then
    Close;
end;

procedure TfConsOrcamento.FormShow(Sender: TObject);
begin
  qOrcamento.Open;
end;

end.
