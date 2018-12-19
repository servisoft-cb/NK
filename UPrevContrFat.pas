unit UPrevContrFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, Menus, Buttons, CurrEdit,
  Db, DBTables, MemTable, RxLookup, DBClient;

type
  TfPrevContrFat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    qAcumulado: TQuery;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qAcumuladoDtEmissao: TDateField;
    mAcumulado: TClientDataSet;
    mAcumuladoData: TDateField;
    qAcumuladoMaoObra: TBooleanField;
    qAcumuladoVlrFaturado: TFloatField;
    mAcumuladoVlrVenda: TFloatField;
    mAcumuladoVlrMObra: TFloatField;
    mAcumuladoVlrAcumVenda: TFloatField;
    mAcumuladoVlrAcumMObra: TFloatField;
    mAcumuladoVlrFaturadoTotal: TFloatField;
    mAcumuladoVlrAcumTotal: TFloatField;
    mAcumuladoVlrMediaVenda: TFloatField;
    mAcumuladoVlrMediaMObra: TFloatField;
    mAcumuladoVlrMediaTotal: TFloatField;
    dsmAcumulado: TDataSource;
    qDetalhado: TQuery;
    qDetalhadoNomeCliente: TStringField;
    qDetalhadoDtEmissao: TDateField;
    qDetalhadoNumNota: TIntegerField;
    qDetalhadoVlrTotalNota: TFloatField;
    qDetalhadoVlrTransf: TFloatField;
    qDetalhadoVlrTotalDupl: TFloatField;
    tNotaFiscalParc: TTable;
    dsqDetalhado: TDataSource;
    tNotaFiscalParcParcela: TSmallintField;
    tNotaFiscalParcDtVenc: TDateField;
    tNotaFiscalParcVlrVenc: TFloatField;
    tNotaFiscalParcCodTipoCobr: TIntegerField;
    qAcumuladopercdesc: TFloatField;
    qDetalhadoFilial: TIntegerField;
    qDetalhadoNumSeq: TIntegerField;
    tNotaFiscalParcFilial: TIntegerField;
    tNotaFiscalParcNumSeq: TIntegerField;
    tNotaFiscalParcCodConta: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure mAcumuladoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Gera_mAcumulado;
    procedure Monta_SQLDetalhado;
  public
    { Public declarations }
  end;

var
  fPrevContrFat: TfPrevContrFat;

implementation

uses UDM1, URelContrFat, URelContrFatAcumulado, rsDBUtils;

{$R *.DFM}

procedure TfPrevContrFat.Monta_SQLDetalhado;
begin
  qDetalhado.Close;
  qDetalhado.SQL.Clear;
  qDetalhado.SQL.Add('SELECT Dbcliente.Nome NomeCliente, Dbnotafiscal.DtEmissao, Dbnotafiscal.NumNota, Dbnotafiscal.VlrTotalNota, Dbnotafiscal.VlrTransf, Dbnotafiscal.VlrTotalDupl, ');
  qDetalhado.SQL.Add(' Dbnotafiscal.Filial, Dbnotafiscal.NumSeq ');
  qDetalhado.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qDetalhado.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qDetalhado.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qDetalhado.SQL.Add('WHERE   Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2');
  qDetalhado.SQL.Add('   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) )');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qDetalhado.SQL.Add(' AND Dbnotafiscal.CodCli = :CodCli');
      qDetalhado.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qDetalhado.ParamByName('Data1').AsDate := DateEdit1.Date;
  qDetalhado.ParamByName('Data2').AsDate := DateEdit2.Date;
  qDetalhado.SQL.Add('ORDER BY Dbnotafiscal.NumNota');
  qDetalhado.Open;
end;

procedure TfPrevContrFat.Monta_SQL;
begin
  qAcumulado.Close;
  qAcumulado.SQL.Clear;
  qAcumulado.SQL.Add('SELECT Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra,  SUM( Dbnotafiscalitens.VlrTotal ) + SUM( Dbnotafiscalitens.VlrIPI )  VlrFaturado, dbnotafiscal.percdesc');
  qAcumulado.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qAcumulado.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qAcumulado.SQL.Add('   ON  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qAcumulado.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qAcumulado.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');
  qAcumulado.SQL.Add('WHERE  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) )');
  qAcumulado.SQL.Add('   AND  (Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2)');
  qAcumulado.SQL.Add('   AND  (Dbnotafiscalitens.GeraDupl = TRUE)');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qAcumulado.SQL.Add(' AND Dbnotafiscal.CodCli = :CodCli');
      qAcumulado.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qAcumulado.ParamByName('Data1').AsDate := DateEdit1.Date;
  qAcumulado.ParamByName('Data2').AsDate := DateEdit2.Date;
  qAcumulado.SQL.Add('GROUP BY Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra, dbnotafiscal.percdesc');
  qAcumulado.SQL.Add('ORDER BY Dbnotafiscal.DtEmissao');
  qAcumulado.Open;
end;

procedure TfPrevContrFat.Gera_mAcumulado;
var
  vContador : Integer;
  vAcumVenda, vAcumMObra, vAcumTotal, vVlrDesc : Real;
begin
  vAcumVenda := 0;
  vAcumMObra := 0;
  vAcumTotal := 0;
  vContador  := 0;
  mAcumulado.EmptyDataSet;
  qAcumulado.First;
  while not qAcumulado.Eof do
    begin
      if mAcumulado.Locate('Data',qAcumuladoDtEmissao.AsDateTime,[loCaseInsensitive]) then
        mAcumulado.Edit
      else
        begin
          inc(vContador);
          mAcumulado.Insert;
          mAcumuladoData.AsDateTime := qAcumuladoDtEmissao.AsDateTime;
        end;
      vVlrDesc                   := 0;
      if qAcumuladoPercDesc.AsFloat > 0 then
        vVlrDesc := (qAcumuladoVlrFaturado.AsFloat * qAcumuladoPercDesc.AsFloat) / 100;



      if qAcumuladoMaoObra.AsBoolean then
        begin
          mAcumuladoVlrMObra.AsFloat      := mAcumuladoVlrMObra.AsFloat + qAcumuladoVlrFaturado.AsFloat - vVlrDesc;
          vAcumMObra := vAcumMObra + qAcumuladoVlrFaturado.AsFloat - vVlrDesc;
          mAcumuladoVlrAcumMObra.AsFloat  := vAcumMObra;
          mAcumuladoVlrMediaMObra.AsFloat := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumMObra.AsFloat / vContador));
        end
      else
        begin
          mAcumuladoVlrVenda.AsFloat      := mAcumuladoVlrVenda.AsFloat + qAcumuladoVlrFaturado.AsFloat - vVlrDesc;
          vAcumVenda := vAcumVenda + qAcumuladoVlrFaturado.AsFloat - vVlrDesc;
          mAcumuladoVlrAcumVenda.AsFloat  := vAcumVenda;
          mAcumuladoVlrMediaVenda.AsFloat := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumVenda.AsFloat / vContador));
        end;
      mAcumuladoVlrFaturadoTotal.AsFloat := mAcumuladoVlrFaturadoTotal.AsFloat + qAcumuladoVlrFaturado.AsFloat - vVlrDesc;
      vAcumTotal := vAcumTotal + qAcumuladoVlrFaturado.AsFloat - vVlrDesc;
      mAcumuladoVlrAcumTotal.AsFloat     := vAcumTotal;
      mAcumuladoVlrMediaTotal.AsFloat    := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumTotal.AsFloat / vContador));
      mAcumulado.Post;
      qAcumulado.Next;
    end;
end;

procedure TfPrevContrFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tNotaFiscal.Filtered := False;
  qAcumulado.Close;
  qDetalhado.Close;

  oDBUtils.OpenTables(False,Self);

  Action := Cafree;
end;

procedure TfPrevContrFat.BitBtn1Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
  DateEdit1.SetFocus;
end;

procedure TfPrevContrFat.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevContrFat.Imprimir1Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      Screen.Cursor := crHourGlass;
      if RadioGroup1.ItemIndex = 0 then
        begin
          Monta_SQLDetalhado;
          qDetalhado.First;
          
          Screen.Cursor := crDefault;
          fRelContrFat  := TfRelContrFat.Create(Self);
          fRelContrFat.QuickRep1.Print;
          fRelContrFat.QuickRep1.Free;
        end
      else
        begin
          Monta_SQL;
          Gera_mAcumulado;
          Screen.Cursor := crDefault;
          mAcumulado.First;
          fRelContrFatAcumulado := TfRelContrFatAcumulado.Create(Self);
          fRelContrFatAcumulado.RLReport1.Preview;
          fRelContrFatAcumulado.RLReport1.Free;
        end;
      RxDBLookupCombo2.SetFocus;
    end
  else
    begin
      ShowMessage('Deve ser informada as datas "Inicial" e "Final" p/ gerar o relatório!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevContrFat.Visualizar1Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      Screen.Cursor := crHourGlass;
      if RadioGroup1.ItemIndex = 0 then
        begin
          Monta_SQLDetalhado;
          qDetalhado.First;

          Screen.Cursor := crDefault;
          fRelContrFat  := TfRelContrFat.Create(Self);
          fRelContrFat.QuickRep1.Preview;
          fRelContrFat.QuickRep1.Free;
        end
      else
        begin
          Monta_SQL;
          Gera_mAcumulado;
          Screen.Cursor := crDefault;
          mAcumulado.First;
          fRelContrFatAcumulado := TfRelContrFatAcumulado.Create(Self);
          fRelContrFatAcumulado.RLReport1.Preview;
          fRelContrFatAcumulado.RLReport1.Free;
        end;
      RxDBLookupCombo2.SetFocus;
    end
  else
    begin
      ShowMessage('Deve ser informada as datas "Inicial" e "Final" p/ gerar o relatório!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevContrFat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevContrFat.mAcumuladoNewRecord(DataSet: TDataSet);
begin
  mAcumuladoVlrVenda.AsFloat         := 0;
  mAcumuladoVlrMObra.AsFloat         := 0;
  mAcumuladoVlrAcumMObra.AsFloat     := 0;
  mAcumuladoVlrAcumTotal.AsFloat     := 0;
  mAcumuladoVlrAcumVenda.AsFloat     := 0;
  mAcumuladoVlrFaturadoTotal.AsFloat := 0;
end;

procedure TfPrevContrFat.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tNotaFiscal,Name);
end;

end.
