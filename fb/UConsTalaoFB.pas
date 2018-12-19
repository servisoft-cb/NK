unit UConsTalaoFB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit,
  RxLookup, Buttons, Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, DBTables;

type
  TfConsTalaoFB = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Talao: TSQLDataSet;
    TalaoTALAO: TIntegerField;
    TalaoCODPRODUTO: TIntegerField;
    TalaoCODCOR: TIntegerField;
    TalaoCODGRADE: TIntegerField;
    TalaoQUANTIDADE: TIntegerField;
    TalaoPEDIDO: TIntegerField;
    TalaoITEMPEDIDO: TIntegerField;
    TalaoPEDIDOCLIENTE: TStringField;
    TalaoPEDCLIDIF: TStringField;
    TalaoCODCLIENTE: TIntegerField;
    TalaoPRODUZIDO: TStringField;
    TalaoNUMMOVEST: TIntegerField;
    TalaoDTBAIXA: TDateField;
    TalaoQTDPRODUZIDA: TIntegerField;
    TalaoCANCELADO: TStringField;
    TalaoMOTIVOCANCELADO: TStringField;
    TalaoDTCANCELADO: TDateField;
    TalaoDTGERADO: TDateField;
    TalaoIMPRIMIR: TStringField;
    TalaoENCERRADO: TStringField;
    TalaoIMPRESSODATA: TDateField;
    TalaoIMPRESSOHORA: TTimeField;
    TalaoIMPRESSOUSUARIO: TStringField;
    TalaoPROCESSO: TStringField;
    pTalao: TDataSetProvider;
    tTalao: TClientDataSet;
    tTalaoTALAO: TIntegerField;
    tTalaoCODPRODUTO: TIntegerField;
    tTalaoCODCOR: TIntegerField;
    tTalaoCODGRADE: TIntegerField;
    tTalaoQUANTIDADE: TIntegerField;
    tTalaoPEDIDO: TIntegerField;
    tTalaoITEMPEDIDO: TIntegerField;
    tTalaoPEDIDOCLIENTE: TStringField;
    tTalaoPEDCLIDIF: TStringField;
    tTalaoCODCLIENTE: TIntegerField;
    tTalaoPRODUZIDO: TStringField;
    tTalaoNUMMOVEST: TIntegerField;
    tTalaoDTBAIXA: TDateField;
    tTalaoQTDPRODUZIDA: TIntegerField;
    tTalaoCANCELADO: TStringField;
    tTalaoMOTIVOCANCELADO: TStringField;
    tTalaoDTCANCELADO: TDateField;
    tTalaoDTGERADO: TDateField;
    tTalaoIMPRIMIR: TStringField;
    tTalaoENCERRADO: TStringField;
    tTalaoIMPRESSODATA: TDateField;
    tTalaoIMPRESSOHORA: TTimeField;
    tTalaoIMPRESSOUSUARIO: TStringField;
    tTalaoPROCESSO: TStringField;
    dsTalao: TDataSource;
    TalaoNOMECLIENTE: TStringField;
    TalaoFANTASIA: TStringField;
    TalaoREFERENCIA: TStringField;
    TalaoNOMEPRODUTO: TStringField;
    tTalaoNOMECLIENTE: TStringField;
    tTalaoFANTASIA: TStringField;
    tTalaoREFERENCIA: TStringField;
    tTalaoNOMEPRODUTO: TStringField;
    tPedidoItem2: TTable;
    tPedidoItem2Pedido: TIntegerField;
    tPedidoItem2Item: TIntegerField;
    tPedidoItem2DtReprogramacao: TDateField;
    tPedidoItem2Obs: TStringField;
    TalaoDIAMETRO: TStringField;
    TalaoCOMPRIMENTO: TStringField;
    TalaoROSCA: TStringField;
    TalaoCABECA: TStringField;
    tTalaoDIAMETRO: TStringField;
    tTalaoCOMPRIMENTO: TStringField;
    tTalaoROSCA: TStringField;
    tTalaoCABECA: TStringField;
    Panel2: TPanel;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Shape3: TShape;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    TalaoTOTALHORAS: TFloatField;
    TalaoHORASPRODUCAO: TFloatField;
    TalaoHORASPARADA: TFloatField;
    tTalaoTOTALHORAS: TFloatField;
    tTalaoHORASPRODUCAO: TFloatField;
    tTalaoHORASPARADA: TFloatField;
    TalaoQTDEMPROCESSO: TIntegerField;
    TalaoQTDQUEBRAS: TIntegerField;
    TalaoENDFOTOTALAO: TStringField;
    tTalaoQTDEMPROCESSO: TIntegerField;
    tTalaoQTDQUEBRAS: TIntegerField;
    tTalaoENDFOTOTALAO: TStringField;
    Shape4: TShape;
    Label7: TLabel;
    Shape5: TShape;
    Label8: TLabel;
    TalaoHORASTERCEIRO: TFloatField;
    tTalaoHORASTERCEIRO: TFloatField;
    BitBtn5: TBitBtn;
    CheckBox1: TCheckBox;
    TalaoHRGERADO: TTimeField;
    tTalaoHRGERADO: TTimeField;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label9: TLabel;
    Label10: TLabel;
    tTalaoclOcioso: TFloatField;
    TalaoMov: TSQLDataSet;
    pTalaoMov: TDataSetProvider;
    tTalaoMov: TClientDataSet;
    dsTalaoMov: TDataSource;
    TalaoMovDTENTRADA: TDateField;
    TalaoMovHRENTRADA: TTimeField;
    tTalaoMovDTENTRADA: TDateField;
    tTalaoMovHRENTRADA: TTimeField;
    TalaoMovDTSAIDA: TDateField;
    TalaoMovHRSAIDA: TTimeField;
    tTalaoMovDTSAIDA: TDateField;
    tTalaoMovHRSAIDA: TTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure tTalaoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    ctTalaoAux : String;

    function Posiciona_Talao: Boolean;
    function calculaOcioso(talao: Integer): Real;

    procedure Monta_Talao;
  public
    { Public declarations }

  end;

var
  fConsTalaoFB: TfConsTalaoFB;

implementation

uses UDM1, URelTalaoFB, UConsTalaoFBDet, UCancelaTalaoFB, UDMTalao;

{$R *.dfm}

Function TfConsTalaoFB.Posiciona_Talao : Boolean;
begin
  Result := False;
  if not(tTalao.Active) or (tTalaoTALAO.AsInteger < 1) then
    begin
      ShowMessage('Não existe registro!');
      exit;
    end;
  DmTalao.tTalao.Close;
  DmTalao.Talao.CommandText := ctTalao
                              + ' WHERE TALAO = ' + tTalaoTALAO.AsString;
  DmTalao.tTalao.Open;
  Result := True;
end;

procedure TfConsTalaoFB.Monta_Talao;
begin
  tTalao.Close;
  Talao.CommandText := ctTalaoAux;
  if CurrencyEdit1.AsInteger > 0 then
    Talao.CommandText := Talao.CommandText + ' AND TALAO = ' + CurrencyEdit1.Text;
  if CurrencyEdit2.AsInteger > 0 then
    Talao.CommandText := Talao.CommandText + ' AND PEDIDO = ' + CurrencyEdit2.Text;
  if RxDBLookupCombo1.Text <> '' then
    Talao.CommandText := Talao.CommandText + ' AND CODCLIENTE = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if DateEdit1.Date > 1 then
    Talao.CommandText := Talao.CommandText + ' AND DTGERADO >= ''' + FormatDateTime('MM/DD/YYYY',DateEdit1.Date)+ ''' ';
  if DateEdit2.Date > 1 then
    Talao.CommandText := Talao.CommandText + ' AND DTGERADO <= ''' + FormatDateTime('MM/DD/YYYY',DateEdit2.Date)+ ''' ';
  Talao.CommandText := Talao.CommandText + ' ORDER BY TALAO ';
  tTalao.Open;
end;

procedure TfConsTalaoFB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DmTalao.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DmTalao);
  Action := Cafree;
end;

procedure TfConsTalaoFB.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsTalaoFB.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsTalaoFB.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  BitBtn4.Enabled := DM1.tUsuarioTalaoCancelar.AsBoolean;

  if not Assigned(DMTalao) then
    DMTalao := TDMTalao.Create(Self);

  ctTalaoAux := Talao.CommandText;
  DateEdit2.Date := Date;
end;

procedure TfConsTalaoFB.BitBtn1Click(Sender: TObject);
begin
  Monta_Talao;
end;

procedure TfConsTalaoFB.BitBtn2Click(Sender: TObject);
begin
  if not tTalao.Active then
    begin
      ShowMessage('Consulta não foi realizada!');
      exit;
    end;

  fRelTalaoFB := TfRelTalaoFB.Create(Self);
  fRelTalaoFB.RLReport1.Preview;
  fRelTalaoFB.RLReport1.Free;
  FreeAndNil(fRelTalaoFB);
end;

procedure TfConsTalaoFB.SMDBGrid1DblClick(Sender: TObject);
begin
  if not Posiciona_Talao then
    exit;
  fConsTalaoFBDet := TfConsTalaoFBDet.Create(Self);
  fConsTalaoFBDet.cdsTalaoTerceiro.Close;
  fConsTalaoFBDet.sdsTalaoTerceiro.ParamByName('TALAO').AsInteger := tTalaoTALAO.AsInteger;
  fConsTalaoFBDet.cdsTalaoTerceiro.Open;  
  fConsTalaoFBDet.ShowModal;
end;

procedure TfConsTalaoFB.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  //if (tTalaoPROCESSO.AsString = 'A') and (SMDBGrid1.SelectedRows.CurrentRowSelected) then
  if (tTalaoPROCESSO.AsString = 'A') then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end
  else
  if tTalaoPROCESSO.AsString = 'E' then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if tTalaoPROCESSO.AsString = 'P' then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end
  else
  if tTalaoPROCESSO.AsString = 'T' then
    begin
      Background  := $0080FF80;
      AFont.Color := clBlack;
    end;
end;

procedure TfConsTalaoFB.BitBtn4Click(Sender: TObject);
begin
  if not Posiciona_Talao then
    exit;

  fCancelaTalaoFB := TfCancelaTalaoFB.Create(Self);
  fCancelaTalaoFB.ShowModal;
end;

procedure TfConsTalaoFB.tTalaoCalcFields(DataSet: TDataSet);
begin
  if CheckBox1.Checked then
    tTalaoclOcioso.AsFloat := calculaOcioso(tTalaoTALAO.AsInteger);
end;

function TfConsTalaoFB.calculaOcioso(talao: Integer): Real;
var
  vTempo, vData, vHora: Real;
  vTempo2: Real;
begin
  tTalaoMov.Close;
  TalaoMov.ParamByName('T1').AsInteger := talao;
  tTalaoMov.Open;
  while not tTalaoMov.Eof do
  begin
    if tTalaoMov.Bof then
    begin
      vTempo := ((tTalaoMovDTENTRADA.AsDateTime + tTalaoMovHRENTRADA.AsDateTime) - (tTalaoDTGERADO.AsDateTime + tTalaoHRGERADO.AsDateTime)) * 24;
      if tTalaoDTGERADO.AsDateTime < tTalaoMovDTENTRADA.AsDateTime then
      vTempo2 := ((tTalaoMovDTENTRADA.AsDateTime + dm1.tParametrosHrEnt1.AsDateTime) - (tTalaoDTGERADO.AsDateTime + dm1.tParametrosHrSai2.AsDateTime));
        vTempo := vTempo - vTempo2 * 24;
    end
    else
    begin
      vTempo := vTempo + ((tTalaoMovDTENTRADA.AsDateTime + tTalaoMovHRENTRADA.AsDateTime) - (vData + vHora)) * 24;
      if vData < tTalaoMovDTENTRADA.AsDateTime then
      begin
        vTempo2 := ((tTalaoMovDTENTRADA.AsDateTime + dm1.tParametrosHrEnt1.AsDateTime) - (vData + dm1.tParametrosHrSai2.AsDateTime)) * 24;
        vTempo := vTempo - vTempo2;
      end;
    end;
    vData := tTalaoMovDTSAIDA.AsDateTime;
    vHora := tTalaoMovHRSAIDA.AsDateTime;
    tTalaoMov.Next;
  end;
  if vTempo > 0 then
    Result := vTempo;
end;

end.
