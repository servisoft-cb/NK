unit UPrevHorasProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, DB, DBTables,
  Grids, DBGrids, RXDBCtrl, DBClient, ComCtrls, SMDBGrid;

type
  TfPrevHorasProdutos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Bevel1: TBevel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    qTalaoHor: TQuery;
    dsTalaoHor: TDataSource;
    mProduto: TClientDataSet;
    mProdutoCodProduto: TIntegerField;
    mProdutoReferencia: TStringField;
    mProdutoNomeProduto: TStringField;
    mProdutoQtdHoras: TCurrencyField;
    mProdutoQtdProduto: TFloatField;
    dsmProduto: TDataSource;
    qTalaoHorCodProduto: TIntegerField;
    qTalaoHorReferencia: TStringField;
    qTalaoHorHrEntrada1: TTimeField;
    qTalaoHorNomeProduto: TStringField;
    qTalaoHorHrSaida1: TTimeField;
    qTalaoHorHrEntrada2: TTimeField;
    qTalaoHorHrSaida2: TTimeField;
    qTalaoHorHrEntrada3: TTimeField;
    qTalaoHorHrSaida3: TTimeField;
    qTalaoHorData: TDateField;
    qTalaoHorQtdProduzida: TFloatField;
    qTalaoHorTalao: TIntegerField;
    Label3: TLabel;
    Edit1: TEdit;
    ProgressBar1: TProgressBar;
    Label4: TLabel;
    StaticText1: TStaticText;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mProdutoNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Gera_Memo;
  public
    { Public declarations }
  end;

var
  fPrevHorasProdutos: TfPrevHorasProdutos;

implementation

uses URelHorasProdutos, UConsHorasProdutosDet, DateUtils, rsDBUtils;

{$R *.dfm}

procedure TfPrevHorasProdutos.Monta_SQL;
begin
  qTalaoHor.Close;
  qTalaoHor.SQL.Clear;
  qTalaoHor.SQL.Add('SELECT Dbtalao.CodProduto, Dbproduto.Referencia, Dbtalaohor.HrEntrada1, Dbproduto.Nome NomeProduto, Dbtalaohor.HrSaida1,');
  qTalaoHor.SQL.Add(' Dbtalaohor.HrEntrada2, Dbtalaohor.HrSaida2, Dbtalaohor.HrEntrada3, Dbtalaohor.HrSaida3, Dbtalaohor.Data, Dbtalao.QtdProduzida, dbTalao.Talao');
  qTalaoHor.SQL.Add('FROM "dbTalao.DB" Dbtalao');
  qTalaoHor.SQL.Add('   INNER JOIN "dbTalaoHor.DB" Dbtalaohor');
  qTalaoHor.SQL.Add('   ON  (Dbtalao.Talao = Dbtalaohor.NumTalao)');
  qTalaoHor.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qTalaoHor.SQL.Add('   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)');
  qTalaoHor.SQL.Add('WHERE  Dbtalaohor.Data BETWEEN :Data1 AND :Data2');
  qTalaoHor.ParamByName('Data1').AsDate := DateEdit1.Date;
  qTalaoHor.ParamByName('Data2').AsDate := DateEdit2.Date;
  if Edit1.Text <> '' then
    qTalaoHor.SQL.Add(' And Dbproduto.Referencia LIKE ''%' + Edit1.Text + '%''');
  qTalaoHor.SQL.Add('ORDER BY Dbtalao.Talao, Dbtalaohor.Data');
  qTalaoHor.Open;
end;

procedure TfPrevHorasProdutos.Gera_Memo;
var
  vQtdHoras : Currency;
  vTalao : Integer;
  vAux : Currency;
  vMinuto1, vMinuto2 : Currency;
begin
  mProduto.EmptyDataSet;
  vTalao := 0;
  ProgressBar1.Max      := qTalaoHor.RecordCount;
  ProgressBar1.Position := 0;
  qTalaoHor.First;
  while not qTalaoHor.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vQtdHoras := 0;
    if (qTalaoHorHrEntrada1.AsDateTime > 0) and (qTalaoHorHrSaida1.AsDateTime > 0) then
      vQtdHoras := (qTalaoHorHrSaida1.AsDateTime - qTalaoHorHrEntrada1.AsDateTime) * 24;
    if (qTalaoHorHrEntrada2.AsDateTime > 0) and (qTalaoHorHrSaida2.AsDateTime > 0) then
      vQtdHoras := vQtdHoras + ((qTalaoHorHrSaida2.AsDateTime - qTalaoHorHrEntrada2.AsDateTime) * 24);
    if (qTalaoHorHrEntrada3.AsDateTime > 0) and (qTalaoHorHrSaida3.AsDateTime > 0) then
      vQtdHoras := vQtdHoras + ((qTalaoHorHrSaida3.AsDateTime - qTalaoHorHrEntrada3.AsDateTime) * 24);
    vAux := vQtdHoras - Int(vQtdHoras);
    vAux := (vAux * 60) / 100;
    vQtdHoras := Int(vQtdHoras) + vAux;
    if mProduto.Locate('CodProduto',qTalaoHorCodProduto.AsInteger,[loCaseInsensitive]) then
      mProduto.Edit
    else
    begin
      mProduto.Insert;
      mProdutoCodProduto.AsInteger   := qTalaoHorCodProduto.AsInteger;
      mProdutoNomeProduto.AsString   := qTalaoHorNomeProduto.AsString;
      mProdutoReferencia.AsString    := qTalaoHorReferencia.AsString;
    end;
    //Bloco incluido dia 30/03/2007
    vMinuto1 := StrToFloat(FormatFloat('0.00',(vQtdHoras - Int(vQtdHoras)) * 100));
    vMinuto2 := StrToFloat(FormatFloat('0.00',(mProdutoQtdHoras.AsFloat - Int(mProdutoQtdHoras.AsFloat)) * 100));
    vAux     := vMinuto1 + vMinuto2;
    while vAux >= 60 do
    begin
      vAux := vAux - 60;
      vQtdHoras := Int(vQtdHoras) + 1;
    end;
    if vAux > 0 then
      vAux := vAux / 100;
    mProdutoQtdHoras.AsFloat   := StrToFloat(FormatFloat('0.00',Int(mProdutoQtdHoras.AsFloat) + Int(vQtdHoras) + vAux));
    //**********
    if vTalao <> qTalaoHorTalao.AsInteger then
      mProdutoQtdProduto.AsFloat := mProdutoQtdProduto.AsFloat + qTalaoHorQtdProduzida.AsFloat;
    mProduto.Post;
    vTalao := qTalaoHorTalao.AsInteger;
    qTalaoHor.Next;
  end;
end;

procedure TfPrevHorasProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qTalaoHor.Close;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevHorasProdutos.mProdutoNewRecord(DataSet: TDataSet);
begin
  mProdutoQtdHoras.AsFloat   := 0;
  mProdutoQtdProduto.AsFloat := 0;
end;

procedure TfPrevHorasProdutos.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      SMDBGrid1.DataSource := nil;
      Monta_SQL;
      Gera_Memo;
      SMDBGrid1.DataSource := dsmProduto;
      BitBtn2.Enabled := True;
    end
  else
    begin
      ShowMessage('Falta informar a data!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevHorasProdutos.BitBtn2Click(Sender: TObject);
begin
  if mProduto.RecordCount > 0 then
    begin
      fRelHorasProdutos := TfRelHorasProdutos.Create(Self);
      fRelHorasProdutos.RLReport1.Preview;
      fRelHorasProdutos.RLReport1.Free;
    end
  else
    ShowMessage('Não existe registro para a impressão!');
end;

procedure TfPrevHorasProdutos.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevHorasProdutos.SMDBGrid1DblClick(Sender: TObject);
begin
  if (mProduto.RecordCount > 0) and (mProdutoCodProduto.AsInteger > 0) then
  begin
    fConsHorasProdutosDet := TfConsHorasProdutosDet.Create(Self);
    fConsHorasProdutosDet.ShowModal;
  end;
end;

procedure TfPrevHorasProdutos.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
