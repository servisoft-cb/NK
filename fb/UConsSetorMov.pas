unit UConsSetorMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, FMTBcd,
  DB, DBClient, Provider, SqlExpr, RzTabs, Mask, ToolEdit;

type
  TfConsSetorMov = class(TForm)
    sdsTalaoSetor: TSQLDataSet;
    dspTalaoSetor: TDataSetProvider;
    cdsTalaoSetor: TClientDataSet;
    dsTalaoSetor: TDataSource;
    mSetor: TClientDataSet;
    mSetorCodSetor: TIntegerField;
    mSetorNomeSetor: TStringField;
    dsmSetor: TDataSource;
    sdsTalaoSetorTALAO: TIntegerField;
    sdsTalaoSetorCODSETOR: TIntegerField;
    sdsTalaoSetorPROCESSO: TStringField;
    cdsTalaoSetorTALAO: TIntegerField;
    cdsTalaoSetorCODSETOR: TIntegerField;
    cdsTalaoSetorPROCESSO: TStringField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    sdsSetor_Tempo: TSQLDataSet;
    sdsSetor_TempoCODSETOR: TIntegerField;
    sdsSetor_TempoDATA: TDateField;
    sdsSetor_TempoTOTALHORAS: TFloatField;
    sdsSetor_TempoTOTALHORASPARADA: TFloatField;
    sdsSetor_TempoTOTALHORASPROD: TFloatField;
    dspSetor_Tempo: TDataSetProvider;
    cdsSetor_Tempo: TClientDataSet;
    cdsSetor_TempoCODSETOR: TIntegerField;
    cdsSetor_TempoDATA: TDateField;
    cdsSetor_TempoTOTALHORAS: TFloatField;
    cdsSetor_TempoTOTALHORASPARADA: TFloatField;
    cdsSetor_TempoTOTALHORASPROD: TFloatField;
    dsSetor_Tempo: TDataSource;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    mSetorTempo: TClientDataSet;
    dsmSetorTempo: TDataSource;
    mSetorTempoCodSetor: TIntegerField;
    mSetorTempoNomeSetor: TStringField;
    mSetorTempoTotalHoras: TFloatField;
    mSetorTempoTotalHorasParada: TFloatField;
    mSetorTempoTotalHorasProd: TFloatField;
    sdsSetor_TempoNOME: TStringField;
    cdsSetor_TempoNOME: TStringField;
    sdsTalaoMov: TSQLDataSet;
    cdsTalaoMov: TClientDataSet;
    dspTalaoMov: TDataSetProvider;
    dsTalaoMov: TDataSource;
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
    sdsTalaoMovNOMEFUNCIONARIO: TStringField;
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
    cdsTalaoMovNOMEFUNCIONARIO: TStringField;
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
    mMovimentoNomeFuncionario: TStringField;
    mMovimentoNomeProduto: TStringField;
    mMovimentoNomeParada: TStringField;
    sdsTalaoMovNOMEPRODUTO: TStringField;
    sdsTalaoMovNOMEPARADA: TStringField;
    cdsTalaoMovNOMEPRODUTO: TStringField;
    cdsTalaoMovNOMEPARADA: TStringField;
    SMDBGrid3: TSMDBGrid;
    Panel3: TPanel;
    mSetorProcesso: TStringField;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    mSetorProcesso2: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mSetorTempoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure Le_tTalaoSetor;
    procedure Monta_SetorTempo;
    procedure Le_cdsSetorTempo;
    procedure Grava_Movimento;
  public
    { Public declarations }
  end;

var
  fConsSetorMov: TfConsSetorMov;

implementation

uses DmdDatabase, UDM1;

{$R *.dfm}

procedure TfConsSetorMov.Monta_SetorTempo;
begin
  cdsSetor_Tempo.Close;
  sdsSetor_Tempo.ParamByName('DATAI').AsDate := DateEdit1.Date;
  sdsSetor_Tempo.ParamByName('DATAF').AsDate := DateEdit2.Date;
  cdsSetor_Tempo.Open;
end;

procedure TfConsSetorMov.Le_tTalaoSetor;
var
  vFlag : String;
begin
  cdsTalaoSetor.Close;
  sdsTalaoSetor.ParamByName('CODSETOR').AsInteger := mSetorCodSetor.AsInteger;
  cdsTalaoSetor.Open;
  vFlag := '';

  cdsTalaoSetor.First;
  while not cdsTalaoSetor.Eof do
    begin
      if cdsTalaoSetorPROCESSO.AsString = 'A' then
        vFlag := 'A'
      else
      if (cdsTalaoSetorPROCESSO.AsString = 'N') and (vFlag = '') then
        vFlag := 'N'
      else
      if (cdsTalaoSetorPROCESSO.AsString = 'P') and (vFlag = 'A') then
        vFlag := 'AP'
      else
      if cdsTalaoSetorPROCESSO.AsString = 'P' then
        vFlag := 'P';
      Grava_Movimento;
      cdsTalaoSetor.Next;
    end;
  if vFlag = '' then
    vFlag := 'N';
  if (vFlag = '') or (vFlag = 'N') then
    mSetorProcesso.AsString := 'Sem Movimento'
  else
  if vFlag = 'A' then
    mSetorProcesso.AsString := 'Em Produção'
  else
  if vFlag = 'AP' then
    mSetorProcesso.AsString := 'Em Produção / Parado'
  else
  if vFlag = 'P' then
    mSetorProcesso.AsString := 'Com Talão Parado';
  mSetorProcesso2.AsString := vFlag;
end;

procedure TfConsSetorMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsSetorMov.BitBtn1Click(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  SMDBGrid3.DataSource := nil;

  mSetor.First;
  while not mSetor.Eof do
    begin
      mMovimento.First;
      while not mMovimento.Eof do
        mMovimento.Delete;
      mSetor.Delete;
    end;

  DM1.tParametrosSetor.First;
  while not DM1.tParametrosSetor.Eof do
    begin
      mSetor.Insert;
      mSetorCodSetor.AsInteger := DM1.tParametrosSetorCodSetor.AsInteger;
      mSetorNomeSetor.AsString := DM1.tParametrosSetorlkNomeSetor.AsString;
      mSetorProcesso.AsString  := '';
      Le_tTalaoSetor;
      mSetor.Post;
      DM1.tParametrosSetor.Next;
    end;

  SMDBGrid1.DataSource := dsmSetor;
  SMDBGrid3.DataSource := dsmMovimento;
end;

procedure TfConsSetorMov.BitBtn2Click(Sender: TObject);
begin
  mSetorTempo.EmptyDataSet;
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) or (DateEdit1.Date > DateEdit2.Date) then
    begin
      ShowMessage('Data inválida!');
      exit;
    end;

  Monta_SetorTempo;
  Le_cdsSetorTempo;
end;

procedure TfConsSetorMov.Le_cdsSetorTempo;
begin
  mSetorTempo.IndexFieldNames := 'CodSetor';

  cdsSetor_Tempo.First;
  while not cdsSetor_Tempo.Eof do
    begin
      if mSetorTempo.FindKey([cdsSetor_TempoCODSETOR.AsInteger]) then
        mSetorTempo.Edit
      else
        begin
          mSetorTempo.Insert;
          mSetorTempoCodSetor.AsInteger       := cdsSetor_TempoCODSETOR.AsInteger;
          mSetorTempoNomeSetor.AsString       := cdsSetor_TempoNOME.AsString;
        end;
      mSetorTempoTotalHoras.AsFloat       := mSetorTempoTotalHoras.AsFloat + cdsSetor_TempoTOTALHORAS.AsFloat;
      mSetorTempoTotalHorasParada.AsFloat := mSetorTempoTotalHorasParada.AsFloat + cdsSetor_TempoTOTALHORASPARADA.AsFloat;
      mSetorTempoTotalHorasProd.AsFloat   := mSetorTempoTotalHorasProd.AsFloat + cdsSetor_TempoTOTALHORASPROD.AsFloat;
      mSetorTempo.Post;

      cdsSetor_Tempo.Next;
    end;

end;

procedure TfConsSetorMov.mSetorTempoNewRecord(DataSet: TDataSet);
begin
  mSetorTempoTotalHoras.AsFloat       := 0;
  mSetorTempoTotalHorasParada.AsFloat := 0;
  mSetorTempoTotalHorasProd.AsFloat   := 0;
end;

procedure TfConsSetorMov.Grava_Movimento;
begin
  cdsTalaoMov.Close;
  sdsTalaoMov.ParamByName('TALAO').AsInteger    := cdsTalaoSetorTALAO.AsInteger;
  sdsTalaoMov.ParamByName('CODSETOR').AsInteger := cdsTalaoSetorCODSETOR.AsInteger;
  cdsTalaoMov.Open;
  cdsTalaoMov.First;

  while not cdsTalaoMov.Eof do
    begin
      mMovimento.Insert;
      mMovimentoCodSetor.AsInteger       := cdsTalaoMovCODSETOR.AsInteger;
      mMovimentoTalao.AsInteger          := cdsTalaoMovTALAO.AsInteger;
      mMovimentoDtEntrada.AsDateTime     := cdsTalaoMovDTENTRADA.AsDateTime;
      mMovimentoHrEntrada.AsDateTime     := cdsTalaoMovHRENTRADA.AsDateTime;
      if cdsTalaoMovDTSAIDA.AsDateTime > 10 then
      begin
        mMovimentoDtSaida.AsDateTime       := cdsTalaoMovDTSAIDA.AsDateTime;
        mMovimentoHrSaida.AsDateTime       := cdsTalaoMovHRSAIDA.AsDateTime;
      end;
      mMovimentoQtdEntrada.AsInteger     := cdsTalaoMovQTDENTRADA.AsInteger;
      mMovimentoQtdProduzido.AsInteger   := cdsTalaoMovQTDPRODUZIDO.AsInteger;
      mMovimentoQtdQuebra.AsInteger      := cdsTalaoMovQTDQUEBRA.AsInteger;
      mMovimentoCodFuncionario.AsInteger := cdsTalaoMovCODFUNCIONARIO.AsInteger;
      mMovimentoCodProduto.AsInteger     := cdsTalaoMovCODPRODUTO.AsInteger;
      mMovimentoCodParada.AsInteger      := cdsTalaoMovCODPARADA.AsInteger;
      mMovimentoTipoSaida.AsString       := cdsTalaoMovTIPOSAIDA.AsString;
      mMovimentoNomeFuncionario.AsString := cdsTalaoMovNOMEFUNCIONARIO.AsString;
      mMovimentoNomeParada.AsString      := cdsTalaoMovNOMEPARADA.AsString;
      mMovimentoNomeProduto.AsString     := cdsTalaoMovNOMEPRODUTO.AsString;
      mMovimento.Post;

      cdsTalaoMov.Next;
    end;
end;

procedure TfConsSetorMov.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;
end;

procedure TfConsSetorMov.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mSetorProcesso2.AsString = 'A' then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end
  else
  if mSetorProcesso2.AsString = 'P' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if mSetorProcesso2.AsString = 'AP' then
    Background  := clYellow;
end;

end.
