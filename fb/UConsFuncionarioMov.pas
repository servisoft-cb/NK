unit UConsFuncionarioMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, FMTBcd,
  DB, DBClient, Provider, SqlExpr, RzTabs, Mask, ToolEdit, CurrEdit,
  RxLookup;

type
  TfConsFuncionarioMov = class(TForm)
    sdsTalaoFuncionario: TSQLDataSet;
    dspTalaoFuncionario: TDataSetProvider;
    cdsTalaoFuncionario: TClientDataSet;
    mFuncionario: TClientDataSet;
    dsmFuncionario: TDataSource;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    sdsSetor_Funcionario: TSQLDataSet;
    dspSetor_Funcionario: TDataSetProvider;
    cdsSetor_Funcionario: TClientDataSet;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    mSetorFuncionario: TClientDataSet;
    dsmSetorFuncionario: TDataSource;
    mSetorFuncionarioCodSetor: TIntegerField;
    mSetorFuncionarioNomeSetor: TStringField;
    mSetorFuncionarioTotalHoras: TFloatField;
    mSetorFuncionarioTotalHorasParada: TFloatField;
    mSetorFuncionarioTotalHorasProd: TFloatField;
    mMovimento: TClientDataSet;
    mMovimentoCodSetor: TIntegerField;
    mMovimentoTalao: TIntegerField;
    mMovimentoDtEntrada: TDateField;
    mMovimentoHrEntrada: TTimeField;
    mMovimentoDtSaida: TDateField;
    mMovimentoHrSaida: TTimeField;
    mMovimentoQtdEntrada: TIntegerField;
    mMovimentoQtdProduzido: TIntegerField;
    mMovimentoQtdQuebra: TIntegerField;
    mMovimentoCodFuncionario: TIntegerField;
    mMovimentoCodProduto: TIntegerField;
    mMovimentoCodParada: TIntegerField;
    mMovimentoTipoSaida: TStringField;
    dsmMovimento: TDataSource;
    mMovimentoNomeProduto: TStringField;
    SMDBGrid3: TSMDBGrid;
    Panel3: TPanel;
    mFuncionarioCodFuncionario: TIntegerField;
    mFuncionarioNomeFuncionario: TStringField;
    mFuncionarioProcesso: TStringField;
    mFuncionarioProcesso2: TStringField;
    sdsTalaoFuncionarioCODFUNCIONARIO: TIntegerField;
    sdsTalaoFuncionarioDTENTRADA: TDateField;
    sdsTalaoFuncionarioDTSAIDA: TDateField;
    sdsTalaoFuncionarioTALAO: TIntegerField;
    sdsTalaoFuncionarioCODSETOR: TIntegerField;
    cdsTalaoFuncionarioCODFUNCIONARIO: TIntegerField;
    cdsTalaoFuncionarioDTENTRADA: TDateField;
    cdsTalaoFuncionarioDTSAIDA: TDateField;
    cdsTalaoFuncionarioTALAO: TIntegerField;
    cdsTalaoFuncionarioCODSETOR: TIntegerField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioFUNCAO: TStringField;
    sdsFuncionarioNOME: TStringField;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioFUNCAO: TStringField;
    cdsFuncionarioNOME: TStringField;
    mMovimentoNomeSetor: TStringField;
    sdsTalaoFuncionarioHRENTRADA: TTimeField;
    sdsTalaoFuncionarioCODPRODUTO: TIntegerField;
    sdsTalaoFuncionarioCODPARADA: TIntegerField;
    sdsTalaoFuncionarioTIPOSAIDA: TStringField;
    sdsTalaoFuncionarioNOMESETOR: TStringField;
    sdsTalaoFuncionarioQTDENTRADA: TIntegerField;
    sdsTalaoFuncionarioQTDPRODUZIDO: TIntegerField;
    sdsTalaoFuncionarioQTDQUEBRA: TIntegerField;
    cdsTalaoFuncionarioHRENTRADA: TTimeField;
    cdsTalaoFuncionarioCODPRODUTO: TIntegerField;
    cdsTalaoFuncionarioCODPARADA: TIntegerField;
    cdsTalaoFuncionarioTIPOSAIDA: TStringField;
    cdsTalaoFuncionarioNOMESETOR: TStringField;
    cdsTalaoFuncionarioQTDENTRADA: TIntegerField;
    cdsTalaoFuncionarioQTDPRODUZIDO: TIntegerField;
    cdsTalaoFuncionarioQTDQUEBRA: TIntegerField;
    sdsTalaoFuncionarioHRSAIDA: TTimeField;
    cdsTalaoFuncionarioHRSAIDA: TTimeField;
    sdsTalaoFuncionarioNOMEPRODUTO: TStringField;
    sdsTalaoFuncionarioREFERENCIA: TStringField;
    cdsTalaoFuncionarioNOMEPRODUTO: TStringField;
    cdsTalaoFuncionarioREFERENCIA: TStringField;
    mMovimentoReferencia: TStringField;
    dsFuncionario: TDataSource;
    mFuncionarioNumMatricula: TIntegerField;
    sdsFuncionarioNUMMATRICULA: TIntegerField;
    cdsFuncionarioNUMMATRICULA: TIntegerField;
    BitBtn3: TBitBtn;
    sdsSetor_FuncionarioCODSETOR: TIntegerField;
    sdsSetor_FuncionarioCODFUNCIONARIO: TIntegerField;
    sdsSetor_FuncionarioDATA: TDateField;
    sdsSetor_FuncionarioTOTALHORAS: TFloatField;
    sdsSetor_FuncionarioTOTALHORASPARADA: TFloatField;
    sdsSetor_FuncionarioTOTALHORASPROD: TFloatField;
    sdsSetor_FuncionarioNOMESETOR: TStringField;
    sdsSetor_FuncionarioNOMEFUNCIONARIO: TStringField;
    cdsSetor_FuncionarioCODSETOR: TIntegerField;
    cdsSetor_FuncionarioCODFUNCIONARIO: TIntegerField;
    cdsSetor_FuncionarioDATA: TDateField;
    cdsSetor_FuncionarioTOTALHORAS: TFloatField;
    cdsSetor_FuncionarioTOTALHORASPARADA: TFloatField;
    cdsSetor_FuncionarioTOTALHORASPROD: TFloatField;
    cdsSetor_FuncionarioNOMESETOR: TStringField;
    cdsSetor_FuncionarioNOMEFUNCIONARIO: TStringField;
    Label5: TLabel;
    ComboBox1: TComboBox;
    mSetorFuncionarioCodFuncionario: TIntegerField;
    mSetorFuncionarioNomeFuncionario: TStringField;
    sdsTalaoMov: TSQLDataSet;
    dspTalaoMov: TDataSetProvider;
    cdsTalaoMov: TClientDataSet;
    cdsTalaoMovTALAO: TIntegerField;
    cdsTalaoMovCODSETOR: TIntegerField;
    cdsTalaoMovITEM: TIntegerField;
    cdsTalaoMovDTENTRADA: TDateField;
    cdsTalaoMovHRENTRADA: TTimeField;
    cdsTalaoMovDTSAIDA: TDateField;
    cdsTalaoMovHRSAIDA: TTimeField;
    cdsTalaoMovQTDENTRADA: TIntegerField;
    cdsTalaoMovQTDPRODUZIDO: TIntegerField;
    cdsTalaoMovQTDQUEBRA: TIntegerField;
    cdsTalaoMovCODFUNCIONARIO: TIntegerField;
    cdsTalaoMovTIPOSAIDA: TStringField;
    cdsTalaoMovTOTALHORAS: TFloatField;
    cdsTalaoMovCODPARADA: TIntegerField;
    cdsTalaoMovCODPRODUTO: TIntegerField;
    mSetorFuncionarioProcesso: TStringField;
    Panel4: TPanel;
    Shape3: TShape;
    Label7: TLabel;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    sdsSetorCODIGO: TIntegerField;
    sdsSetorNOME: TStringField;
    sdsSetorIMPTALAO: TStringField;
    sdsSetorATELIER: TStringField;
    sdsSetorMETADIA: TIntegerField;
    sdsSetorFINAL: TStringField;
    cdsSetorCODIGO: TIntegerField;
    cdsSetorNOME: TStringField;
    cdsSetorIMPTALAO: TStringField;
    cdsSetorATELIER: TStringField;
    cdsSetorMETADIA: TIntegerField;
    cdsSetorFINAL: TStringField;
    RzPageControl2: TRzPageControl;
    TabSheet3: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    TabSheet4: TRzTabSheet;
    mFuncionarioDia: TClientDataSet;
    mFuncionarioDiaCodFuncionario: TIntegerField;
    mFuncionarioDiaNomeFuncionario: TStringField;
    mFuncionarioDiaData: TDateField;
    mFuncionarioDiaTotalHorasGeral: TFloatField;
    mFuncionarioDiaTotalHorasProd: TFloatField;
    mFuncionarioDiaTotalHorasParada: TFloatField;
    dsmFuncionarioDia: TDataSource;
    SMDBGrid4: TSMDBGrid;
    sdsTalaoMovTALAO: TIntegerField;
    sdsTalaoMovCODSETOR: TIntegerField;
    sdsTalaoMovITEM: TIntegerField;
    sdsTalaoMovDTENTRADA: TDateField;
    sdsTalaoMovHRENTRADA: TTimeField;
    sdsTalaoMovDTSAIDA: TDateField;
    sdsTalaoMovHRSAIDA: TTimeField;
    sdsTalaoMovQTDENTRADA: TIntegerField;
    sdsTalaoMovQTDPRODUZIDO: TIntegerField;
    sdsTalaoMovQTDQUEBRA: TIntegerField;
    sdsTalaoMovCODFUNCIONARIO: TIntegerField;
    sdsTalaoMovTIPOSAIDA: TStringField;
    sdsTalaoMovTOTALHORAS: TFloatField;
    sdsTalaoMovCODPARADA: TIntegerField;
    sdsTalaoMovCODPRODUTO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mSetorFuncionarioNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure Le_tTalaoFuncionario;
    procedure Monta_SetorFuncionario;
    procedure Le_cdsSetorFuncionario;     
    procedure Grava_Movimento;
    procedure Grava_mFuncionarioDia;

  public
    { Public declarations }
  end;

var
  fConsFuncionarioMov: TfConsFuncionarioMov;

implementation

uses DmdDatabase, UDM1, UConsFuncionarioMovHist, dmdCadSetor,
  UDMHorarioProd;

{$R *.dfm}

procedure TfConsFuncionarioMov.Monta_SetorFuncionario;
begin
  cdsSetor_Funcionario.Close;
  sdsSetor_Funcionario.CommandText := 'select sf.*, S.NOME NOMESETOR, F.NOME NOMEFUNCIONARIO '
                                    + ' from setor_funcionario sf '
                                    + ' INNER JOIN SETOR S ON (S.CODIGO = SF.CODSETOR) '
                                    + ' INNER JOIN FUNCIONARIO F ON (F.CODIGO = SF.codfuncionario) '
                                    + ' where sf.data between :data1 and :data2 ';
  if RxDBLookupCombo1.Text <> '' then
    sdsSetor_Funcionario.CommandText := sdsSetor_Funcionario.CommandText
                                      + ' AND sf.CODFUNCIONARIO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    sdsSetor_Funcionario.CommandText := sdsSetor_Funcionario.CommandText
                                      + ' AND sf.CODSETOR = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  sdsSetor_Funcionario.ParamByName('DATA1').AsDate := DateEdit1.Date;
  sdsSetor_Funcionario.ParamByName('DATA2').AsDate := DateEdit2.Date;
  cdsSetor_Funcionario.Open;
end;

procedure TfConsFuncionarioMov.Le_tTalaoFuncionario;
var                                                
  vFlag : String;
begin
  cdsTalaoFuncionario.Close;
  sdsTalaoFuncionario.ParamByName('CODFUNCIONARIO').AsInteger := mFuncionarioCodFuncionario.AsInteger;
  cdsTalaoFuncionario.Open;
  vFlag := '';
  cdsTalaoFuncionario.First;
  while not cdsTalaoFuncionario.Eof do
    begin
      vFlag := 'A';
      Grava_Movimento;
      cdsTalaoFuncionario.Next;
    end;
  if vFlag = '' then
    vFlag := 'N';
  if (vFlag = '') or (vFlag = 'N') then
    mFuncionarioProcesso.AsString := 'Sem Movimento'
  else
  if vFlag = 'A' then
    mFuncionarioProcesso.AsString := 'Em Produção'
  else
  if vFlag = 'AP' then
    mFuncionarioProcesso.AsString := 'Em Produção / Parado'
  else
  if vFlag = 'P' then
    mFuncionarioProcesso.AsString := 'Com Talão Parado';
  mFuncionarioProcesso2.AsString := vFlag;
end;

procedure TfConsFuncionarioMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DMHorarioProd);
  Action := Cafree;
end;

procedure TfConsFuncionarioMov.BitBtn1Click(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  SMDBGrid3.DataSource := nil;

  mFuncionario.First;
  while not mFuncionario.Eof do
    begin
      mMovimento.First;
      while not mMovimento.Eof do
        mMovimento.Delete;
      mFuncionario.Delete;
    end;

  cdsFuncionario.First;
  while not cdsFuncionario.Eof do
    begin
      if (RxDBLookupCombo1.Text = '') or
         ((RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo1.KeyValue = cdsFuncionarioCODIGO.AsInteger)) then
      begin
        mFuncionario.Insert;
        mFuncionarioCodFuncionario.AsInteger := cdsFuncionarioCODIGO.AsInteger;
        mFuncionarioNomeFuncionario.AsString := cdsFuncionarioNOME.AsString;
        mFuncionarioNumMatricula.AsInteger   := cdsFuncionarioNUMMATRICULA.AsInteger;
        mFuncionarioProcesso.AsString        := '';
        mFuncionarioProcesso2.AsString       := '';
        Le_tTalaoFuncionario;
        mFuncionario.Post;
      end;
      cdsFuncionario.Next;
    end;

  SMDBGrid1.DataSource := dsmFuncionario;
  SMDBGrid3.DataSource := dsmMovimento;
end;

procedure TfConsFuncionarioMov.BitBtn2Click(Sender: TObject);
begin
  mSetorFuncionario.EmptyDataSet;
  mFuncionarioDia.EmptyDataSet;
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) or (DateEdit1.Date > DateEdit2.Date) then
    begin
      ShowMessage('Data inválida!');
      exit;
    end;

  Monta_SetorFuncionario;
  Le_cdsSetorFuncionario;
  
end;

procedure TfConsFuncionarioMov.Le_cdsSetorFuncionario;
begin
  mSetorFuncionario.IndexFieldNames := 'CodSetor';
                   
  cdsSetor_Funcionario.First;
  while not cdsSetor_Funcionario.Eof do
    begin
      if mSetorFuncionario.Locate('CodSetor;CodFuncionario',VarArrayOf([cdsSetor_FuncionarioCODSETOR.AsInteger,cdsSetor_FuncionarioCODFUNCIONARIO.AsInteger]),[loCaseInsensitive]) then
        mSetorFuncionario.Edit
      else
        begin
          mSetorFuncionario.Insert;
          mSetorFuncionarioCodSetor.AsInteger       := cdsSetor_FuncionarioCODSETOR.AsInteger;
          mSetorFuncionarioNomeSetor.AsString       := cdsSetor_FuncionarioNOMESETOR.AsString;
          mSetorFuncionarioCodFuncionario.AsInteger := cdsSetor_FuncionarioCODFUNCIONARIO.AsInteger;
          mSetorFuncionarioNomeFuncionario.AsString := cdsSetor_FuncionarioNOMEFUNCIONARIO.AsString;
        end;
      mSetorFuncionarioTotalHoras.AsFloat       := mSetorFuncionarioTotalHoras.AsFloat + cdsSetor_FuncionarioTOTALHORAS.AsFloat;
      //mSetorFuncionarioTotalHorasParada.AsFloat := mSetorFuncionarioTotalHorasParada.AsFloat + cdsSetor_FuncionarioTOTALHORASPARADA.AsFloat;
      mSetorFuncionarioTotalHorasProd.AsFloat   := mSetorFuncionarioTotalHorasProd.AsFloat + cdsSetor_FuncionarioTOTALHORASPROD.AsFloat;

      cdsTalaoMov.Close;
      sdsTalaoMov.ParamByName('CodFuncionario').AsInteger := cdsSetor_FuncionarioCODFUNCIONARIO.AsInteger;
      sdsTalaoMov.ParamByName('CodSetor').AsInteger       := cdsSetor_FuncionarioCODSETOR.AsInteger;
      cdsTalaoMov.Open;
      cdsTalaoMov.First;                      
      if cdsTalaoMov.IsEmpty then
        mSetorFuncionarioProcesso.AsString := 'Parado'
      else
        mSetorFuncionarioProcesso.AsString := 'Em Producao';
      mSetorFuncionario.Post;

      Grava_mFuncionarioDia;

      cdsSetor_Funcionario.Next;
    end;
end;

procedure TfConsFuncionarioMov.mSetorFuncionarioNewRecord(DataSet: TDataSet);
begin
  mSetorFuncionarioTotalHoras.AsFloat       := 0;
  mSetorFuncionarioTotalHorasParada.AsFloat := 0;
  mSetorFuncionarioTotalHorasProd.AsFloat   := 0;
end;

procedure TfConsFuncionarioMov.Grava_Movimento;
begin
  mMovimento.Insert;
  mMovimentoCodSetor.AsInteger       := cdsTalaoFuncionarioCODSETOR.AsInteger;
  mMovimentoTalao.AsInteger          := cdsTalaoFuncionarioTALAO.AsInteger;
  mMovimentoDtEntrada.AsDateTime     := cdsTalaoFuncionarioDTENTRADA.AsDateTime;
  mMovimentoHrEntrada.AsDateTime     := cdsTalaoFuncionarioHRENTRADA.AsDateTime;
  if cdsTalaoFuncionarioDTSAIDA.AsDateTime > 10 then
  begin
    mMovimentoDtSaida.AsDateTime       := cdsTalaoFuncionarioDTSAIDA.AsDateTime;
    mMovimentoHrSaida.AsDateTime       := cdsTalaoFuncionarioHRSAIDA.AsDateTime;
  end;
  mMovimentoQtdEntrada.AsInteger     := cdsTalaoFuncionarioQTDENTRADA.AsInteger;
  mMovimentoQtdProduzido.AsInteger   := cdsTalaoFuncionarioQTDPRODUZIDO.AsInteger;
  mMovimentoQtdQuebra.AsInteger      := cdsTalaoFuncionarioQTDQUEBRA.AsInteger;
  mMovimentoCodFuncionario.AsInteger := cdsTalaoFuncionarioCODFUNCIONARIO.AsInteger;
  mMovimentoCodProduto.AsInteger     := cdsTalaoFuncionarioCODPRODUTO.AsInteger;
  mMovimentoCodParada.AsInteger      := cdsTalaoFuncionarioCODPARADA.AsInteger;
  mMovimentoTipoSaida.AsString       := cdsTalaoFuncionarioTIPOSAIDA.AsString;
  mMovimentoNomeProduto.AsString     := cdsTalaoFuncionarioNOMEPRODUTO.AsString;
  mMovimentoReferencia.AsString      := cdsTalaoFuncionarioREFERENCIA.AsString;
  mMovimentoCodSetor.AsInteger       := cdsTalaoFuncionarioCODSETOR.AsInteger;
  mMovimentoNomeSetor.AsString       := cdsTalaoFuncionarioNOMESETOR.AsString;
  mMovimento.Post;
end;

procedure TfConsFuncionarioMov.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  cdsFuncionario.Close;
  cdsFuncionario.Open;
  cdsSetor.Close;
  cdsSetor.Open;

  DMHorarioProd := TDMHorarioProd.Create(nil);
end;

procedure TfConsFuncionarioMov.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mFuncionarioProcesso2.AsString = 'A' then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end
  else
  if mFuncionarioProcesso2.AsString = 'P' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if mFuncionarioProcesso2.AsString = 'AP' then
    Background  := clYellow;
end;

procedure TfConsFuncionarioMov.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    CurrencyEdit1.AsInteger := RxDBLookupCombo1.KeyValue;
end;

procedure TfConsFuncionarioMov.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
  begin
    if cdsFuncionario.Locate('NUMMATRICULA', CurrencyEdit1.AsInteger, [loCaseInsensitive]) then
      RxDBLookupCombo1.KeyValue := cdsFuncionarioCODIGO.AsInteger
    else
      RxDBLookupCombo1.ClearValue;
  end
  else
    RxDBLookupCombo1.ClearValue;
end;

procedure TfConsFuncionarioMov.BitBtn3Click(Sender: TObject);
begin
  if mMovimento.IsEmpty then
  begin
    ShowMessage('Não existe talão para consultar!');
    exit;
  end;
  fConsFuncionarioMovHist := TfConsFuncionarioMovHist.Create(Self);
  fConsFuncionarioMovHist.cdsTalaoMov.Close;
  fConsFuncionarioMovHist.sdsTalaoMov.ParamByName('Talao').AsInteger := mMovimentoTalao.AsInteger;
  fConsFuncionarioMovHist.cdsTalaoMov.Open;
  fConsFuncionarioMovHist.ShowModal;
end;

procedure TfConsFuncionarioMov.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mSetorFuncionarioProcesso.AsString = 'Em Producao' then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end;
end;

procedure TfConsFuncionarioMov.Grava_mFuncionarioDia;
begin
  if mFuncionarioDia.Locate('CodFuncionario;Data',VarArrayOf([cdsSetor_FuncionarioCODFUNCIONARIO.AsInteger,cdsSetor_FuncionarioDATA.AsDateTime]),[loCaseInsensitive]) then
    mFuncionarioDia.Edit
  else
  begin
    mFuncionarioDia.Insert;
    mFuncionarioDiaCodFuncionario.AsInteger := cdsSetor_FuncionarioCODFUNCIONARIO.AsInteger;
    mFuncionarioDiaNomeFuncionario.AsString := cdsSetor_FuncionarioNOMEFUNCIONARIO.AsString;
    mFuncionarioDiaData.AsDateTime          := cdsSetor_FuncionarioDATA.AsDateTime;

    DMHorarioProd.cdsHorarioProd.Close;
    DMHorarioProd.sdsHorarioProd.CommandText := ctHorarioProd
                                              + ' WHERE DIASEMANA = ' + IntToStr(DayOfWeek(cdsSetor_FuncionarioDATA.AsDateTime));
    DMHorarioProd.cdsHorarioProd.Open;
    if DMHorarioProd.cdsHorarioProd.IsEmpty then
      mFuncionarioDiaTotalHorasGeral.AsFloat := 0
    else
      mFuncionarioDiaTotalHorasGeral.AsFloat := DMHorarioProd.cdsHorarioProdQTDHORAS.AsFloat;
  end;

  mFuncionarioDiaTotalHorasProd.AsFloat   := mFuncionarioDiaTotalHorasProd.AsFloat + cdsSetor_FuncionarioTOTALHORAS.AsFloat;
  mFuncionarioDiaTotalHorasParada.AsFloat := mFuncionarioDiaTotalHorasGeral.AsFloat - mFuncionarioDiaTotalHorasProd.AsFloat;
  mFuncionarioDia.Post;
end;

end.
