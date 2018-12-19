unit UConsHistMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Db, DBTables,
  DBFilter, RXDBCtrl, RxLookup, DBClient, Mask, ToolEdit, CurrEdit;

type
  TfConsHistMat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    qMaterial: TQuery;
    qsMaterial: TDataSource;
    qMaterialCodMaterial: TIntegerField;
    qMaterialNomeMaterial: TStringField;
    qMaterialNumMov: TIntegerField;
    qMaterialNomeCor: TStringField;
    qMaterialLargura: TStringField;
    qMaterialDtMov: TDateField;
    qMaterialES: TStringField;
    qMaterialTipoMov: TStringField;
    qMaterialNumNota: TIntegerField;
    qMaterialVlrUnitario: TFloatField;
    qMaterialQtd: TFloatField;
    qMaterialUnidade: TStringField;
    qMaterialCodCor: TIntegerField;
    Label2: TLabel;
    qCor: TQuery;
    qsCor: TDataSource;
    qCorNome: TStringField;
    qCorCodigo: TIntegerField;
    qMaterialPercIcms: TFloatField;
    RxDBFilter1: TRxDBFilter;
    RadioGroup1: TRadioGroup;
    Label9: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    msMaterial: TDataSource;
    mMaterial: TClientDataSet;
    mMaterialData: TDateField;
    mMaterialNumMov: TIntegerField;
    mMaterialUnidade: TStringField;
    mMaterialLargura: TStringField;
    mMaterialES: TStringField;
    mMaterialTipoMov: TStringField;
    mMaterialNumNota: TIntegerField;
    mMaterialQtd: TFloatField;
    mMaterialSaldo: TFloatField;
    mMaterialVlrUnitario: TFloatField;
    mMaterialPercIcms: TFloatField;
    mMaterialNome: TStringField;
    qMaterialCodCliForn: TIntegerField;
    Label10: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Shape1: TShape;
    Label8: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Saldo: Real;
    vCalcula : Boolean;
    Passada: Integer;
    procedure Gera_Totais;
    procedure Monta_SqlMaterial;
  public
    { Public declarations }
  end;

var
  fConsHistMat: TfConsHistMat;
  vEntrada, vSaida, vSaldo : Real;

implementation

uses UDM1, UAgendaTelef;

{$R *.DFM}

procedure TfConsHistMat.Gera_Totais;
begin
  vSaldo   := 0;
  vEntrada := 0;
  vSaida   := 0;
  mMaterial.EmptyDataSet;
  qMaterial.First;
  while not qMaterial.Eof do
  begin
    if qMaterialES.AsString = 'E' then
    begin
      vEntrada := vEntrada + qMaterialQtd.AsFloat;
      Saldo := Saldo + qMaterialQtd.AsFloat
    end
    else
    if qMaterialES.AsString = 'S' then
    begin
      vSaida := vSaida + qMaterialQtd.AsFloat;
      Saldo := Saldo - qMaterialQtd.AsFloat;
    end;
    mMaterial.Insert;
    mMaterialData.AsDateTime   := qMaterialDtMov.AsDateTime;
    mMaterialES.AsString       := qMaterialES.AsString;
    mMaterialLargura.AsString  := qMaterialLargura.AsString;
    mMaterialNumMov.AsInteger  := qMaterialNumMov.AsInteger;
    mMaterialNumNota.AsInteger := qMaterialNumNota.AsInteger;
    mMaterialPercICMS.AsFloat  := qMaterialPercIcms.AsFloat;
    mMaterialQtd.AsFloat       := qMaterialQtd.AsFloat;
    mMaterialSaldo.AsFloat     := Saldo;
    mMaterialTipoMov.AsString  := qMaterialTipoMov.AsString;
    mMaterialUnidade.AsString  := qMaterialUnidade.AsString;
    mMaterialVlrUnitario.AsFloat := qMaterialVlrUnitario.AsFloat;
    if qMaterialCodCliForn.AsInteger > 0 then
    begin
      if (qMaterialTipoMov.AsString = 'NTS') or (qMaterialTipoMov.AsString = 'VAL') or
         (qMaterialTipoMov.AsString = 'TAL') or (qMaterialTipoMov.AsString = 'PED') then
      begin
        DM1.tCliente.IndexFieldNames := 'Codigo';
        DM1.tCliente.SetKey;
        DM1.tClienteCodigo.AsInteger := qMaterialCodCliForn.AsInteger;
        if DM1.tCliente.GotoKey then
          mMaterialNome.AsString := DM1.tClienteNome.AsString;
      end
      else
      begin
        DM1.tFornecedores.IndexFieldNames := 'CodForn';
        DM1.tFornecedores.SetKey;
        DM1.tFornecedoresCodForn.AsInteger := qMaterialCodCliForn.AsInteger;
        if DM1.tFornecedores.GotoKey then
          mMaterialNome.AsString := DM1.tFornecedoresNomeForn.AsString;
      end;
    end;
    mMaterial.Post;
    qMaterial.Next;
  end;
  mMaterial.IndexFieldNames := 'Data';  
  vSaldo := vEntrada - vSaida;
  Label4.Caption := FormatFloat('#,###,###,###,##0.00000',vEntrada);
  Label6.Caption := FormatFloat('#,###,###,###,##0.00000',vSaida);
  Label8.Caption := FormatFloat('#,###,###,###,##0.00000',vSaldo);
end;

procedure TfConsHistMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);

  RxDBFilter1.Active := False;
  qMaterial.Active   := False;
  qCor.Active        := False;
  Action             := Cafree;
end;

procedure TfConsHistMat.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsHistMat.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    vCalcula := true;
    Saldo    := 0;
    Passada  := 0;
    Screen.Cursor := crHourGlass;
    Monta_SqlMaterial;
    Gera_Totais;
    Screen.Cursor := crDefault;
  end
  else
  begin
    ShowMessage('Selecione um material para consultar!');
    RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfConsHistMat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = ([ssAlt])) and (Key = 65) then
    begin
      fAgendaTelef := TfAgendaTelef.Create(Self);
      fAgendaTelef.ShowModal;
    end;
end;

procedure TfConsHistMat.RadioGroup1Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  case RadioGroup1.ItemIndex of
    0 : begin
          RxDBFilter1.Filter.Clear;
          RxDBFilter1.Filter.Add('ProdMat = ''P''');
        end;
    1 : begin
          RxDBFilter1.Filter.Clear;
          RxDBFilter1.Filter.Add('ProdMat = ''M''');
        end;
  end;
  RxDBFilter1.Active := True;
end;

procedure TfConsHistMat.RxDBLookupCombo3Enter(Sender: TObject);
begin
  if RxDBLookupCombo1.Value <> '' then
    begin
      qCor.Active := False;
      qCor.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      qCor.Active := True;
    end;
end;

procedure TfConsHistMat.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfConsHistMat.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      CurrencyEdit1.AsInteger   := RxDBLookupCombo1.KeyValue;
      RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
    end;
end;

procedure TfConsHistMat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsHistMat.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      CurrencyEdit1.AsInteger   := RxDBLookupCombo2.KeyValue;
      RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
   end;

  RxDBLookupCombo3Enter(Sender);
end;

procedure TfConsHistMat.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
    begin
      Dm1.tProduto.IndexFieldNames := 'Codigo';
      Dm1.tProduto.SetKey;
      Dm1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if Dm1.tProduto.GotoKey then
        begin
          RxDBLookupCombo1.KeyValue := Dm1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo2.KeyValue := Dm1.tProdutoCodigo.AsInteger;
        end;
    end;
end;

procedure TfConsHistMat.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tCliente,Name);
  oDBUtils.ActiveDataSet(True,dm1.tFornecedores,Name);

  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  vCalcula := False;
  if RxDBLookupCombo1.Text = '' then
    RxDBFilter1.Active := True;
  qMaterial.Close;
  if RxDBLookupCombo1.Text <> '' then
    BitBtn1Click(Sender);
end;

procedure TfConsHistMat.Monta_SqlMaterial;
begin
  qMaterial.Close;
  qMaterial.SQL.Clear;
  qMaterial.SQL.Add('SELECT Dbestoquematmov.CodMaterial, Dbproduto.Nome NomeMaterial, Dbestoquematmov.NumMov, ');
  qMaterial.SQL.Add(' Dbcor.Nome NomeCor, Dbestoquematmov.Largura, Dbestoquematmov.DtMov, Dbestoquematmov.ES, ');
  qMaterial.SQL.Add(' Dbestoquematmov.TipoMov, Dbestoquematmov.NumNota, Dbestoquematmov.VlrUnitario, ');
  qMaterial.SQL.Add(' Dbestoquematmov.Qtd, Dbestoquematmov.Unidade, Dbestoquematmov.CodCor, Dbestoquematmov.PercIcms, ');
  qMaterial.SQL.Add(' Dbestoquematmov.CodCliForn ');
  qMaterial.SQL.Add('FROM "dbProduto.DB" Dbproduto ');
  qMaterial.SQL.Add('   INNER JOIN "dbEstoqueMatMov.DB" Dbestoquematmov ');
  qMaterial.SQL.Add('   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo) ');
  qMaterial.SQL.Add('   FULL JOIN "Dbcor.db" Dbcor ');
  qMaterial.SQL.Add('   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo) ');
  qMaterial.SQL.Add('WHERE   (Dbestoquematmov.CodMaterial = :CodMaterial) ');
  qMaterial.SQL.Add('   AND  (Dbestoquematmov.CodCor = :CodCor) ');
  qMaterial.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
  if RxDBLookupCombo3.KeyValue > 0 then
    qMaterial.Params[1].AsInteger := RxDBLookupCombo3.KeyValue
  else
    qMaterial.Params[1].AsInteger := 0;
  if DateEdit1.Date > 10 then
  begin
    qMaterial.SQL.Add('   AND  (Dbestoquematmov.DtMov >= :DtInicial) ');
    qMaterial.ParamByName('DtInicial').AsDate := DateEdit1.Date;
  end;
  if DateEdit2.Date > 10 then
  begin
    qMaterial.SQL.Add('   AND  (Dbestoquematmov.DtMov <= :DtFinal) ');
    qMaterial.ParamByName('DtFinal').AsDate := DateEdit2.Date;
  end;
  qMaterial.SQL.Add('ORDER BY Dbestoquematmov.DtMov, Dbestoquematmov.ES, Dbproduto.Nome ');
  qMaterial.Open;
end;

end.
