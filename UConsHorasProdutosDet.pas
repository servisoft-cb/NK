unit UConsHorasProdutosDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, RXCtrls, Grids, DBGrids,
  RXDBCtrl, Buttons, SMDBGrid, Mask, ToolEdit, CurrEdit;

type
  TfConsHorasProdutosDet = class(TForm)
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaCodProduto: TIntegerField;
    qConsultaHrEntrada1: TTimeField;
    qConsultaHrSaida1: TTimeField;
    qConsultaHrEntrada2: TTimeField;
    qConsultaHrSaida2: TTimeField;
    qConsultaHrEntrada3: TTimeField;
    qConsultaHrSaida3: TTimeField;
    qConsultaData: TDateField;
    qConsultaQtdProduzida: TFloatField;
    qConsultaTalao: TIntegerField;
    RxLabel1: TRxLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    qConsultaclTotalHoras: TFloatField;
    qConsultaCodFuncionario: TIntegerField;
    qConsultaNomeFuncionario: TStringField;
    qConsultaCodSetor: TIntegerField;
    qConsultaNomeSetor: TStringField;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qConsultaCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1FilterChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsHorasProdutosDet: TfConsHorasProdutosDet;

implementation

uses UDM1, UPrevHorasProdutos;

{$R *.dfm}

procedure TfConsHorasProdutosDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qConsulta.Close;
  Action := Cafree;
end;

procedure TfConsHorasProdutosDet.FormShow(Sender: TObject);
begin
  qConsulta.Close;
  qConsulta.ParamByName('Data1').AsDate         := fPrevHorasProdutos.DateEdit1.Date;
  qConsulta.ParamByName('Data2').AsDate         := fPrevHorasProdutos.DateEdit2.Date;
  qConsulta.ParamByName('CodProduto').AsInteger := fPrevHorasProdutos.mProdutoCodProduto.AsInteger;
  qConsulta.Open;
  BitBtn2Click(Sender);
end;

procedure TfConsHorasProdutosDet.qConsultaCalcFields(DataSet: TDataSet);
var
  vQtdHoras : Currency;
  vAux : Currency;
begin
  vQtdHoras   := 0;
  if (qConsultaHrEntrada1.AsDateTime > 0) and (qConsultaHrSaida1.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qConsultaHrSaida1.AsDateTime - qConsultaHrEntrada1.AsDateTime) * 24);
  if (qConsultaHrEntrada2.AsDateTime > 0) and (qConsultaHrSaida2.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qConsultaHrSaida2.AsDateTime - qConsultaHrEntrada2.AsDateTime) * 24);
  if (qConsultaHrEntrada3.AsDateTime > 0) and (qConsultaHrSaida3.AsDateTime > 0) then
    vQtdHoras := vQtdHoras + ((qConsultaHrSaida3.AsDateTime - qConsultaHrEntrada3.AsDateTime) * 24);
  vAux := vQtdHoras - Int(vQtdHoras);
  vAux := (vAux * 60) / 100;
  vQtdHoras := Int(vQtdHoras) + vAux;
  qConsultaclTotalHoras.AsCurrency := vQtdHoras;
end;

procedure TfConsHorasProdutosDet.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsHorasProdutosDet.BitBtn2Click(Sender: TObject);
var
  vQtdAux : Real;
  vMinuto, vMinutoAux : Currency;
  vHora : Currency;
begin
  vQtdAux := 0;
  SMDBGrid1.DisableScroll;
  vMinuto := 0;
  vHora   := 0; 
  qConsulta.First;
  while not qConsulta.Eof do
  begin
    //vQtdAux := vQtdAux + qConsultaclTotalHoras.AsFloat;

    vHora      := vHora + Int(qConsultaclTotalHoras.AsFloat);
    vMinutoAux := StrToFloat(FormatFloat('0.00',(qConsultaclTotalHoras.AsFloat - Int(qConsultaclTotalHoras.AsFloat)) * 100));
    vMinuto    := vMinuto + vMinutoAux;

    qConsulta.Next;
  end;

  vMinutoAux := vMinuto / 60;
  vHora      := vHora + Int(vMinutoAux);
  vMinutoAux := StrToFloat(FormatFloat('0.00',(vMinutoAux - Int(vMinutoAux)) * 60));
  vMinutoAux := StrToFloat(FormatFloat('0.00',vMinutoAux / 100));
  vHora      := StrToFloat(FormatFloat('0.00',vHora + vMinutoAux));

  SMDBGrid1.EnableScroll;
  //CurrencyEdit1.Value := vQtdAux;
  CurrencyEdit1.Value := vHora;
end;

procedure TfConsHorasProdutosDet.SMDBGrid1FilterChanged(Sender: TObject);
begin
  BitBtn2Click(Sender);
end;

end.
