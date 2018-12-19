unit UBaixaProducaoPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons,
  ExtCtrls, DB, dmdCadFuncionario, dmdCadSetor, SqlExpr, dbXPress, dmdCadDefeitos, dmdCadParadas, FMTBcd, DBClient, Provider, Math, 
  RzEdit, Grids, DBGrids, rsDBUtils, SMDBGrid, DateUtils;

type
  TfBaixaProducaoPC = class(TForm)
    BitBtn2: TBitBtn;
    Label1: TLabel;
    lbFuncionario: TLabel;
    Label2: TLabel;
    lbSetor: TLabel;
    edFuncionario: TEdit;
    edSetor: TEdit;
    lblTalao: TLabel;
    edTalao: TEdit;
    BitBtn3: TBitBtn;
    TalaoSetor2: TSQLDataSet;
    TalaoSetor2CODSETOR: TIntegerField;
    pTalaoSetor2: TDataSetProvider;
    tTalaoSetor2: TClientDataSet;
    tTalaoSetor2CODSETOR: TIntegerField;
    dsTalaoSetor2: TDataSource;
    Label5: TLabel;
    ceOcorrencia: TCurrencyEdit;
    lblQtd: TLabel;
    ceQtd: TCurrencyEdit;
    btnConfirmar: TBitBtn;
    lbMensagem: TLabel;
    Label3: TLabel;
    lblOcorrencia: TLabel;
    Label4: TLabel;
    deData: TDateEdit;
    Label6: TLabel;
    rzdtHora: TRzDateTimeEdit;
    TalaoSetor3: TSQLDataSet;
    pTalaoSetor3: TDataSetProvider;
    tTalaoSetor3: TClientDataSet;
    TalaoSetor3TALAO: TIntegerField;
    tTalaoSetor3TALAO: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edTalaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edFuncionarioChange(Sender: TObject);
    procedure edFuncionarioExit(Sender: TObject);
    procedure edFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSetorChange(Sender: TObject);
    procedure edSetorExit(Sender: TObject);
    procedure edSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure ceOcorrenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceQtdExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FDMCadFuncionario: TdmCadFuncionario;
    FDMCadSetor: TdmCadSetor;
    FDMCadDefeitos: TdmCadDefeitos;
    FDMCadParadas: TDMCadParadas;

    vQtdHoras, vQtdHorasParadas: Real;
    vCodOcorrencia: Integer; //1=Entrada 2=Saída 3=Parada   0=Cancela Processo
    vQtdDefeito: Integer;
    vQtd: Integer;

    function Filtra_Talao: Boolean;
    function Verifica_Setor: Boolean;
    function Verifica_Qtd: Boolean;
    function Testa_Data: Boolean;

    //function Verifica_Ocorrencia: Boolean;
    procedure Grava_Processo;
    procedure Grava_Paradas(Tipo: String); //E= Entrada  S=Saida;
    procedure Grava_Quebras;

    procedure Testa_Menu;
  public
    { Public declarations }
    vCodParada: Integer;
    vCodDefeito: Integer;
    vComplemento: string;
  end;

var
  fBaixaProducaoPC: TfBaixaProducaoPC;

implementation

uses UDM1, UBaixaProducaoItem, UDMTalao, DmdDatabase, URelMenuBaixaProdTed;

{$R *.dfm}

procedure TfBaixaProducaoPC.Grava_Quebras;
var
  vItemAux : Integer;
begin
  DMTalao.tTalaoQuebras.Last;
  vItemAux := DMTalao.tTalaoQuebrasITEM.AsInteger;

  DMTalao.tTalaoQuebras.Insert;
  DMTalao.tTalaoQuebrasTALAO.AsInteger      := DMTalao.tTalaoTALAO.AsInteger;
  DMTalao.tTalaoQuebrasCODSETOR.AsInteger   := DMTalao.tTalaoSetorCODSETOR.AsInteger;
  DMTalao.tTalaoQuebrasITEM.AsInteger       := vItemAux + 1;
  DMTalao.tTalaoQuebrasCODDEFEITO.AsInteger := vCodDefeito;

  //DMTalao.tTalaoQuebrasDATA.AsDateTime      := Date;
  //DMTalao.tTalaoQuebrasHORA.AsDateTime      := Now;

  DMTalao.tTalaoQuebrasDATA.AsDateTime          := deData.Date;
  DMTalao.tTalaoQuebrasHORA.AsDateTime          := rzdtHora.Time;
  DMTalao.tTalaoQuebrasCOMPLEMENTO.AsString     := '';
  DMTalao.tTalaoQuebrasQTD.AsInteger            := vQtdDefeito;
  DMTalao.tTalaoQuebrasCODFUNCIONARIO.AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
  DMTalao.tTalaoQuebras.Post;
end;

procedure TfBaixaProducaoPC.Testa_Menu;
begin
  if (ceOcorrencia.AsInteger > 4) then
    begin
      ShowMessage('Evento inválido!');
      ceOcorrencia.SetFocus;
      exit;
    end;
  if ceOcorrencia.AsInteger = 4 then
    begin
      if MessageDlg('Cancelar o processo?',mtconfirmation,[mbok,mbno],0)=mrNo then
        ceOcorrencia.SetFocus
      else
        begin
          edFuncionario.Clear;
          edSetor.Clear;
          edTalao.Clear;
          ceQtd.Clear;
          ceOcorrencia.Clear;
          edFuncionario.SetFocus;
        end;
    end;
  lblTalao.Visible := ((ceOcorrencia.AsInteger > 0) and (ceOcorrencia.AsInteger < 4));
  edTalao.Visible  := ((ceOcorrencia.AsInteger > 0) and (ceOcorrencia.AsInteger < 4));
  if edTalao.Visible then
    edTalao.SetFocus;
end;

procedure TfBaixaProducaoPC.Grava_Paradas(Tipo: String); //E= Entrada  S=Saida;
var
  dias, i, vItemAux: Integer;
begin
  if (vCodParada <= 0) and (Tipo = 'E') then
    Exit;

  DMTalao.tTalaoParadas.Last;
  if Tipo = 'E' then
    begin
      vItemAux := DMTalao.tTalaoParadasITEM.AsInteger;

      DMTalao.tTalaoParadas.Insert;
      DMTalao.tTalaoParadasTALAO.AsInteger      := DMTalao.tTalaoTALAO.AsInteger;
      DMTalao.tTalaoParadasCODSETOR.AsInteger   := DMTalao.tTalaoSetorCODSETOR.AsInteger;
      DMTalao.tTalaoParadasITEM.AsInteger       := vItemAux + 1;
      DMTalao.tTalaoParadasCODPARADA.AsInteger  := vCodParada;
      DMTalao.tTalaoParadasDTENTRADA.AsDateTime := deData.Date;
      DMTalao.tTalaoParadasHRENTRADA.AsDateTime := rzdtHora.Time;
      DMTalao.tTalaoParadasCOMPLEMENTO.AsString := '';
    end
  else
    begin
      DMTalao.tTalaoParadas.Edit;
      DMTalao.tTalaoParadasDTSAIDA.AsDateTime := deData.Date;
      DMTalao.tTalaoParadasHRSAIDA.AsDateTime := rzdtHora.Time;

      if DMTalao.tTalaoParadasDTSAIDA.AsDateTime > DMTalao.tTalaoParadasDTENTRADA.AsDateTime then
      begin
        vQtdHorasParadas := 24 - DMTalao.tTalaoParadasHRENTRADA.AsDateTime * 24;
        dias := DaysBetween(DMTalao.tTalaoParadasDTSAIDA.AsDateTime,DMTalao.tTalaoParadasDTENTRADA.AsDateTime);
        for i := 1 to dias - 1 do
          vQtdHorasParadas := vQtdHorasParadas + 24;
        vQtdHorasParadas := vQtdHorasParadas + DMTalao.tTalaoParadasHRSAIDA.AsDateTime * 24;
      end
      else
        vQtdHorasParadas := (DMTalao.tTalaoParadasHRSAIDA.AsDateTime - DMTalao.tTalaoParadasHRENTRADA.AsDateTime);
      DMTalao.tTalaoParadasTOTALHORAS.AsFloat := vQtdHorasParadas;

    end;
  DMTalao.tTalaoParadas.Post;
end;

procedure TfBaixaProducaoPC.Grava_Processo;
var
  vItem: Integer;
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vQtd2: Integer;
begin
  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID  := 999;  // --
    ID.IsolationLevel := xilREADCOMMITTED;          //--

    dmDatabase.scoDados.StartTransaction(ID);

    try //--
      vQtdHoras        := 0;
      vQtdHorasParadas := 0;
      vQtd2            := vQtd;
      vQtdDefeito      := 0;
      DMTalao.tTalaoMov.Last;
      if vCodOcorrencia = 1 then
      begin
        if DMTalao.tTalaoSetorPROCESSO.AsString = 'P' then
          Grava_Paradas('S');

        vItem := DMTalao.tTalaoMovItem.AsInteger;
        DMTalao.tTalaoMov.Insert;
        DMTalao.tTalaoMovTalao.AsInteger          := DMTalao.tTalaoTALAO.AsInteger;
        DMTalao.tTalaoMovCodSetor.AsInteger       := FDMCadSetor.cdsSetorCODIGO.AsInteger;
        DMTalao.tTalaoMovItem.AsInteger           := vItem + 1;
        DMTalao.tTalaoMovQTDQUEBRA.AsInteger      := 0;
        DMTalao.tTalaoMovCODFUNCIONARIO.AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
        DMTalao.tTalaoMovDtEntrada.AsDateTime     := deData.Date;
        DMTalao.tTalaoMovHrEntrada.AsDateTime     := rzdtHora.Time;
      end
      else
        DMTalao.tTalaoMov.Edit;
      if vCodOcorrencia > 1 then
      begin
        DMTalao.tTalaoMovDtSaida.AsDateTime     := deData.Date;
        DMTalao.tTalaoMovHrSaida.AsDateTime     := rzdtHora.Time;
        DMTalao.tTalaoMovQtdProduzido.AsInteger := vQtd;
        if vCodOcorrencia = 2 then
        begin
          DMTalao.tTalaoMovTIPOSAIDA.AsString := 'N';
          vQtdDefeito                         := DMTalao.tTalaoMovQTDENTRADA.AsInteger - DMTalao.tTalaoMovQtdProduzido.AsInteger;
          if vQtdDefeito < 0 then
            vQtdDefeito := 0;
          DMTalao.tTalaoMovQTDQUEBRA.AsInteger := vQtdDefeito;
          if vQtdDefeito > 0 then
            Grava_Quebras;
        end
        else
          DMTalao.tTalaoMovTIPOSAIDA.AsString := 'P';

        vQtdHoras := StrToFloat(FormatFloat('0.00',((DMTalao.tTalaoMovHRSAIDA.AsDateTime - DMTalao.tTalaoMovHRENTRADA.AsDateTime) * 24)));
        DMTalao.tTalaoMovTOTALHORAS.AsFloat := vQtdHoras;
      end
      else
        DMTalao.tTalaoMovQtdEntrada.AsInteger := vQtd;

      DMTalao.tTalaoMovCODPRODUTO.AsInteger := DMTalao.tTalaoCODPRODUTO.AsInteger;
      DMTalao.tTalaoMov.Post;

      DMTalao.tTalaoSetor.Edit;
      if DMTalao.tTalaoSetorPROCESSO.AsString = 'N' then
      begin
        DMTalao.tTalaoSetorPROCESSO.AsString    := 'A';
        DMTalao.tTalaoSetorQTDENTRADA.AsInteger := vQtd;
      end
      else
      if vCodOcorrencia = 2 then
      begin
        DMTalao.tTalaoSetorPROCESSO.AsString      := 'E';
        DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger := DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger + vQtd;
        DMTalao.tTalaoSetorTOTALHORAS.AsFloat     := DMTalao.tTalaoSetorTOTALHORAS.AsFloat     + vQtdHoras;
        DMTalao.tTalaoSetorQTDQUEBRAS.AsInteger   := DMTalao.tTalaoSetorQTDENTRADA.AsInteger   - DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger;
        if DMTalao.tTalaoSetorQTDQUEBRAS.AsInteger < 0 then
          DMTalao.tTalaoSetorQTDQUEBRAS.AsInteger := 0;

        vQtd2 := DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger;
      end
      else
      if vCodOcorrencia = 3 then
      begin
        DMTalao.tTalaoSetorPROCESSO.AsString      := 'P';
        DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger := DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger + vQtd;
        DMTalao.tTalaoSetorTOTALHORAS.AsFloat     := DMTalao.tTalaoSetorTOTALHORAS.AsFloat     + vQtdHoras;
        vQtd2 := DMTalao.tTalaoSetorQTDENTRADA.AsInteger - DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger;
        Grava_Paradas('E');
      end
      else
      begin
        DMTalao.tTalaoSetorPROCESSO.AsString    := 'A';
        DMTalao.tTalaoSetorHORASPARADAS.AsFloat := DMTalao.tTalaoSetorHORASPARADAS.AsFloat + vQtdHorasParadas;
      end;
      DMTalao.tTalaoSetorHORASPRODUCAO.AsFloat := DMTalao.tTalaoSetorTOTALHORAS.AsFloat - DMTalao.tTalaoSetorHORASPARADAS.AsFloat;
      DMTalao.tTalaoSetor.Post;

      DMTalao.tTalao.Edit;
      if (vCodOcorrencia = 2) and (FDMCadSetor.cdsSetorFINAL.AsString = 'S') then
      begin
        DMTalao.tTalaoPROCESSO.AsString      := 'E';
        DMTalao.tTalaoQTDPRODUZIDA.AsInteger := DMTalao.tTalaoQTDPRODUZIDA.AsInteger + vQtd;
        DMTalao.tTalaoTOTALHORAS.AsFloat     := DMTalao.tTalaoTOTALHORAS.AsFloat     + vQtdHoras;
        DMTalao.tTalaoHORASPARADA.AsFloat    := DMTalao.tTalaoHORASPARADA.AsFloat    + vQtdHorasParadas;
        DMTalao.tTalaoHORASPRODUCAO.AsFloat  := DMTalao.tTalaoTOTALHORAS.AsFloat     - DMTalao.tTalaoHORASPARADA.AsFloat;
        DMTalao.tTalaoQTDQUEBRAS.AsInteger   := DMTalao.tTalaoQUANTIDADE.AsInteger   - DMTalao.tTalaoQTDPRODUZIDA.AsInteger;
        if DMTalao.tTalaoQTDQUEBRAS.AsInteger <= 0 then
          DMTalao.tTalaoQTDQUEBRAS.AsInteger := 0;
      end
      else
      if (vCodOcorrencia = 2) or (vCodOcorrencia = 1) then
        DMTalao.tTalaoPROCESSO.AsString := 'A'
      else
      if (vCodOcorrencia = 3) then
        DMTalao.tTalaoPROCESSO.AsString := 'P';

      DMTalao.tTalaoQTDEMPROCESSO.AsInteger := vQtd2;
      DMTalao.tTalao.Post;
      DMTalao.tTalao.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);

      lbMensagem.Visible := True;
      lbMensagem.Refresh;
      Sleep(500);
      lbMensagem.Visible := False;
      lbMensagem.Refresh;
    except //--
      dmDatabase.scoDados.Rollback(ID);  //--
      raise; //--
    end;   //--
  finally
    FreeAndNil(sds);

    ceOcorrencia.Clear;
    ceQtd.Clear;
    edTalao.Clear;
    ceOcorrencia.SetFocus;
    vCodOcorrencia := 0;
    vQtd           := 0;
    vCodParada     := 0;
    vCodDefeito    := 0;

    ceQtd.Visible        := False;
    lblQtd.Visible       := False;
    lblTalao.Visible     := False;
    edTalao.Visible      := False;
    btnConfirmar.Enabled := False;
  end;

  {sds := TSQLDataSet.Create(nil);
  try

    ID.TransactionID  := 999;  // --
    ID.IsolationLevel := xilREADCOMMITTED;          //--

    dmDatabase.scoDados.StartTransaction(ID);

    try //--
      vQtdHoras        := 0;
      vQtdHorasParadas := 0;
      DMTalao.tTalaoMov.Last;
      if vCodOcorrencia = 1 then
      begin
        if DMTalao.tTalaoSetorPROCESSO.AsString = 'P' then
          Grava_Paradas('S');

        vItem := DMTalao.tTalaoMovItem.AsInteger;
        DMTalao.tTalaoMov.Insert;
        DMTalao.tTalaoMovTalao.AsInteger          := DMTalao.tTalaoTALAO.AsInteger;
        DMTalao.tTalaoMovCodSetor.AsString        := edSetor.Text;
        DMTalao.tTalaoMovItem.AsInteger           := vItem + 1;
        DMTalao.tTalaoMovQTDQUEBRA.AsInteger      := 0;
        DMTalao.tTalaoMovCODFUNCIONARIO.AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
      end
      else
        DMTalao.tTalaoMov.Edit;
      DMTalao.tTalaoMovDtEntrada.AsDateTime := Date;
      DMTalao.tTalaoMovHrEntrada.AsDateTime := Now;
      if vCodOcorrencia > 1 then
      begin
        DMTalao.tTalaoMovDtSaida.AsDateTime     := Date;
        DMTalao.tTalaoMovHrSaida.AsDateTime     := Now;
        DMTalao.tTalaoMovQtdProduzido.AsInteger := ceQtd.AsInteger;
        if vCodOcorrencia = 2 then
          DMTalao.tTalaoMovTIPOSAIDA.AsString := 'N'
        else
          DMTalao.tTalaoMovTIPOSAIDA.AsString := 'P';

        vQtdHoras := ((DMTalao.tTalaoMovHRSAIDA.AsDateTime - DMTalao.tTalaoMovHRENTRADA.AsDateTime) * 24);
        DMTalao.tTalaoMovTOTALHORAS.AsFloat := vQtdHoras;
      end
      else
        DMTalao.tTalaoMovQtdEntrada.AsInteger := ceQtd.AsInteger;
      DMTalao.tTalaoMov.Post;

      DMTalao.tTalaoSetor.Edit;
      if DMTalao.tTalaoSetorPROCESSO.AsString = 'N' then
        begin
          DMTalao.tTalaoSetorPROCESSO.AsString    := 'A';
          DMTalao.tTalaoSetorQTDENTRADA.AsInteger := ceQtd.AsInteger;
        end
      else
      if vCodOcorrencia = 2 then
        begin
          DMTalao.tTalaoSetorPROCESSO.AsString      := 'E';
          DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger := ceQtd.AsInteger;

          DMTalao.tTalaoSetorTOTALHORAS.AsFloat     := DMTalao.tTalaoSetorTOTALHORAS.AsFloat + vQtdHoras;
        end
      else
      if vCodOcorrencia = 3 then
        begin
          DMTalao.tTalaoSetorPROCESSO.AsString := 'P';
          Grava_Paradas('E');
        end
      else
        begin
          DMTalao.tTalaoSetorPROCESSO.AsString    := 'A';
          DMTalao.tTalaoSetorHORASPARADAS.AsFloat := DMTalao.tTalaoSetorHORASPARADAS.AsFloat + vQtdHorasParadas;
        end;
      DMTalao.tTalaoSetorHORASPRODUCAO.AsFloat := DMTalao.tTalaoSetorTOTALHORAS.AsFloat - DMTalao.tTalaoSetorHORASPARADAS.AsFloat;
      DMTalao.tTalaoSetor.Post;
      //DMTalao.tTalaoSetor.ApplyUpdates(0);

      if (DMTalao.tTalaoPROCESSO.AsString = 'N') or
         ((vCodOcorrencia = 2) and (FDMCadSetor.cdsSetorFINAL.AsString = 'S'))  then
        begin
          DMTalao.tTalao.Edit;
          if ceOcorrencia.AsInteger = 2 then
            DMTalao.tTalaoPROCESSO.AsString := 'E'
          else
            DMTalao.tTalaoPROCESSO.AsString := 'A';
          DMTalao.tTalaoTOTALHORAS.AsFloat    := DMTalao.tTalaoTOTALHORAS.AsFloat + vQtdHoras;
          DMTalao.tTalaoHORASPARADA.AsFloat   := DMTalao.tTalaoHORASPARADA.AsFloat + vQtdHorasParadas;
          DMTalao.tTalaoHORASPRODUCAO.AsFloat := DMTalao.tTalaoTOTALHORAS.AsFloat - DMTalao.tTalaoHORASPARADA.AsFloat;
        end;
       DMTalao.tTalao.Post;
       DMTalao.tTalao.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);

      lbMensagem.Visible := True;
      lbMensagem.Refresh;
      Sleep(500);
      lbMensagem.Visible := False;
      lbMensagem.Refresh;
    except //--
      dmDatabase.scoDados.Rollback(ID);  //--
      raise; //--
    end;   //--
  finally
    FreeAndNil(sds);
    ceOcorrencia.Clear;
    ceQtd.Clear;
    edTalao.Clear;
    ceOcorrencia.SetFocus;
    vCodOcorrencia := 0;

    ceQtd.Visible        := False;
    lblQtd.Visible       := False;
    lblTalao.Visible     := False;
    edTalao.Visible      := False;
    btnConfirmar.Enabled := False;
  end;}
end;

{function TfBaixaProducaoPC.Verifica_Ocorrencia: Boolean;
var
  vTexto: string;
begin
  vTexto := '';
  Result := False;
  DMTalao.tTalaoMov.Last;
  if (ceOcorrencia.AsInteger = 1) and
     ((DMTalao.tTalaoMov.IsEmpty) or (DMTalao.tTalaoMovDTENTRADA.AsDateTime < 10)) then
    begin
      Result := True;
      exit;
    end;

  if (ceOcorrencia.AsInteger = 1) and (DMTalao.tTalaoMovDtSaida.AsDateTime < 10) then
  begin
    ShowMessage('Este talão já esta em processo de produção!');
    exit;
  end;
  if ((ceOcorrencia.AsInteger = 2) or (ceOcorrencia.AsInteger = 3))
    and (DMTalao.tTalaoMov.IsEmpty) then
  begin
    ShowMessage('Este talão não foi dada a entrada neste setor!');
    exit;
  end;
  if ((ceOcorrencia.AsInteger = 2) or (ceOcorrencia.AsInteger = 3))
    and (DMTalao.tTalaoMovDtSaida.AsDateTime > 10) then
  begin
    ShowMessage('Este talão já foi dada a Saída!');
    exit;
  end;

  if (ceOcorrencia.AsInteger = 3) and (DMTalao.tTalaoSetorPROCESSO.AsString = 'P') then
    begin
      ShowMessage('Este registro já se encontra Parado');
      exit;
    end;

  tTalaoSetor2.Close;
  TalaoSetor2.ParamByName('TALAO').AsInteger := vTalaoAux;
  tTalaoSetor2.Open;
  if not(tTalaoSetor2.IsEmpty) and (ceOcorrencia.AsInteger = 1) and (tTalaoSetor2CODSETOR.AsInteger <> FDMCadSetor.cdsSetorCODIGO.AsInteger) then
    begin
      ShowMessage('Setor ' + tTalaoSetor2CODSETOR.AsString + ' Aberto');
      tTalaoSetor2.Close;
      exit;
    end;

  if ceOcorrencia.AsInteger = 3 then
  begin
    vCodParada_Defeito := 0;
    vComplemento       := '';
    fBaixaProducaoItem := TfBaixaProducaoItem.Create(Self);
    fBaixaProducaoItem.Tag := 1; //Tag = 1 vai identificar que o cadastro que vai abrir é de paradas
    fBaixaProducaoItem.Label2.Caption := 'Informar o motivo da PARADA';
    fBaixaProducaoItem.ShowModal;
    if vCodParada_Defeito = 0 then
      exit;
  end;
  Result := True;
end;}

function TfBaixaProducaoPC.Verifica_Setor: Boolean;
var
  vTexto: string;
begin
  Result := False;
  vTexto := '';
  FDMCadSetor.cdsSetor.Close;
  FDMCadSetor.sdsSetor.CommandText := ctSetor
                                    + ' WHERE CODIGO = ' + edSetor.Text;
  FDMCadSetor.cdsSetor.Open;
  if FDMCadSetor.cdsSetor.IsEmpty then
    begin
      ShowMessage('Setor não encontrado!');
      exit;
    end;
  Result := True;
  lbSetor.Caption := FDMCadSetor.cdsSetorNOME.AsString;
end;

function TfBaixaProducaoPC.Filtra_Talao: Boolean;
var
  vTalaoAux: Integer;
begin
  Result := False;

  {if Length(edTalao.Text) > 11 then
    vTalaoAux := StrToInt(copy(edTalao.Text,7,6))
  else
    vTalaoAux := StrToInt(edTalao.Text);

  DMTalao.tTalao.Close;
  DMTalao.Talao.CommandText := ctTalao
                             + ' WHERE TALAO = ' + IntToStr(vTalaoAux);
  DMTalao.tTalao.Open;
  if DMTalao.tTalao.IsEmpty then
    begin
      ShowMessage('Talão não encontrado!');
      edTalao.SelectAll;
      exit;
    end;
  if DMTalao.tTalaoPROCESSO.AsString = 'S' then
    begin
      ShowMessage('Talão já encerrado!');
      exit;
    end;
  if not DMTalao.tTalaoSetor.Locate('CODSETOR', StrToInt(edSetor.Text), [loCaseInsensitive]) then
    begin
      ShowMessage('Setor não encontrado!');
      exit;
    end;
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'E' then
    begin
      ShowMessage('Setor já foi encerrado!');
      exit;
    end;
  if (DMTalao.tTalaoSetorPROCESSO.AsString = 'P') or (DMTalao.tTalaoSetorPROCESSO.AsString = 'N') then
    ceOcorrencia.AsInteger := 1
  else
  if (DMTalao.tTalaoSetorPROCESSO.AsString = 'A') then
    ceOcorrencia.AsInteger := 2;}

  vCodOcorrencia  := 0;
  ceQtd.AsInteger := 0;
  vQtd            := 0;
  
  if Length(edTalao.Text) > 11 then
    vTalaoAux := StrToInt(Copy(edTalao.Text,7,6))
  else
    vTalaoAux := StrToInt(edTalao.Text);

  DMTalao.tTalao.Close;
  DMTalao.Talao.CommandText := ctTalao
                             + ' WHERE TALAO = ' + IntToStr(vTalaoAux);
  DMTalao.tTalao.Open;
  if DMTalao.tTalao.IsEmpty then
    Raise Exception.Create('Talão não encontrado')
  else
  if DMTalao.tTalaoPROCESSO.AsString = 'E' then
    Raise Exception.Create('Talão já encerrado');

  if not DMTalao.tTalaoSetor.Locate('CODSETOR', FDMCadSetor.cdsSetorCODIGO.AsInteger, [loCaseInsensitive]) then
    Raise Exception.Create('Setor não encontrado');

  if DMTalao.tTalaoSetorPROCESSO.AsString = 'E' then
    Raise Exception.Create('Setor já foi encerrado');

  if (ceOcorrencia.AsInteger = 2) and ((DMTalao.tTalaoSetorPROCESSO.AsString = 'P') or (DMTalao.tTalaoSetorPROCESSO.AsString = 'N')) then
    Raise Exception.Create('Opção inválida')
  else
    begin
      if (DMTalao.tTalaoSetorPROCESSO.AsString = 'P') or (DMTalao.tTalaoSetorPROCESSO.AsString = 'N') then
      begin
        vCodOcorrencia  := 1;
        vQtd            := DMTalao.tTalaoQTDEMPROCESSO.AsInteger;
      end
      else
      if (DMTalao.tTalaoSetorPROCESSO.AsString = 'A') then
      begin
        if ceOcorrencia.AsInteger = 2 then
          vCodOcorrencia := 3
        else
          vCodOcorrencia := 2;
      end;
    end;
  //Foi anulado este bloco dia 24/01/2011
  {if vCodOcorrencia = 1 then
    begin
      tTalaoSetor3.Close;
      TalaoSetor3.ParamByName('CODSETOR').AsString := edSetor.Text;
      tTalaoSetor3.Open;
      if not tTalaoSetor3.IsEmpty then
        begin
          if tTalaoSetor3TALAO.AsInteger <> vTalaoAux then
            begin
              ShowMessage('Setor está com o talão ' + tTalaoSetor3Talao.AsString + ' em aberto!');
              vCodOcorrencia := 0;
              vQtd           := 0;
              exit;
            end;
        end;
    end;}

  case vCodOcorrencia of
    1 : lblOcorrencia.Caption := 'Entrada';
    2 : lblOcorrencia.Caption := 'Saida';
    3 : lblOcorrencia.Caption := 'Parada';
  end;

  lblQtd.Visible       := (vCodOcorrencia <> 1);
  ceQtd.Visible        := (vCodOcorrencia <> 1);
  btnConfirmar.Enabled := (vCodOcorrencia <> 0);
  ceQtd.AsInteger      := vQtd;

  Result := True;
end;

procedure TfBaixaProducaoPC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FDmCadSetor);
  FreeAndNil(FDmCadFuncionario);
  FreeAndNil(FDmCadParadas);
  FreeAndNil(FDmCadDefeitos);
  FreeAndNil(DMTalao);
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBaixaProducaoPC.edTalaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and ((edTalao.Text <> '') or (edTalao.Text <> '0')) then
    begin
      if Filtra_Talao then
        begin
          if vCodOcorrencia = 3 then
            begin
              vCodParada := 0;
              fBaixaProducaoItem := TfBaixaProducaoItem.Create(Self);
              fBaixaProducaoItem.Tag := 1; //Tag = 1 vai identificar que o cadastro que vai abrir é de paradas
              fBaixaProducaoItem.Label2.Caption := 'Informar o motivo da PARADA';
              fBaixaProducaoItem.ShowModal;
            end;
          if ceQtd.Visible then
            ceQtd.SetFocus
          else
            btnConfirmar.SetFocus;
        end;
    end;
end;

procedure TfBaixaProducaoPC.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaProducaoPC.btnConfirmarClick(Sender: TObject);
begin
  if (deData.Date < 10) or (rzdtHora.Time = 0) then
    begin
      ShowMessage('Não foi informada a data e a hora!');
      deData.SetFocus;
      exit;
    end;

  if ceQtd.AsInteger = 0 then
  begin
    ShowMessage('Quantidade não foi informada!');
    ceQtd.SetFocus;
  end
  else
  if (vCodOcorrencia = 3) and (vCodParada <= 0) then
    begin
      ShowMessage('Não foi informada o motivo da parada!');
      ceOcorrencia.SetFocus;
    end
  else
    begin
      if Testa_Data then
        Grava_Processo;
    end;
end;

procedure TfBaixaProducaoPC.edFuncionarioChange(Sender: TObject);
begin
  lbFuncionario.Caption := '';
end;

procedure TfBaixaProducaoPC.edFuncionarioExit(Sender: TObject);
begin
  lbFuncionario.Caption := '';
  if Trim(edFuncionario.Text) <> '' then
    begin
      FDMCadFuncionario.cdsFuncionario.Close;
      FDMCadFuncionario.sdsFuncionario.CommandText := ctFuncionario
                                                    + ' WHERE NUMMATRICULA = ' + edFuncionario.Text;
      FDMCadFuncionario.cdsFuncionario.Open;
      if FDMCadFuncionario.cdsFuncionario.IsEmpty then
        begin
          ShowMessage('Funcionário não encontrado!');
          edFuncionario.SetFocus;
          exit;
        end;
      lbFuncionario.Caption := FDMCadFuncionario.cdsFuncionarioNOME.AsString;
    end;
end;

procedure TfBaixaProducaoPC.edFuncionarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(edFuncionario.Text) <> '') then
    edSetor.SetFocus;
end;

procedure TfBaixaProducaoPC.edSetorChange(Sender: TObject);
begin
  lbSetor.Caption := '';
end;

procedure TfBaixaProducaoPC.edSetorExit(Sender: TObject);
begin
  lbSetor.Caption := '';
  if Trim(edSetor.Text) <> '' then
    if not Verifica_Setor then
      edSetor.SetFocus;
end;

procedure TfBaixaProducaoPC.edSetorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(edSetor.Text) <> '') then
    ceOcorrencia.SetFocus;
end;

procedure TfBaixaProducaoPC.BitBtn3Click(Sender: TObject);
begin
  edFuncionario.Clear;
  edSetor.Clear;
  edTalao.Clear;
  ceOcorrencia.Clear;
  ceQtd.Clear;
end;

procedure TfBaixaProducaoPC.ceOcorrenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    Testa_Menu;
end;

procedure TfBaixaProducaoPC.ceQtdExit(Sender: TObject);
begin
  if not Verifica_Qtd then
    ceQtd.SetFocus;
end;

function TfBaixaProducaoPC.Verifica_Qtd: Boolean;
begin
  Result := False;
  vQtd   := ceQtd.AsInteger;
  if (vCodOcorrencia = 2) and (ceQtd.AsInteger > 0) then
    begin
      vCodDefeito := 0;
      DMTalao.tTalaoMov.Last;
      vQtdDefeito := DMTalao.tTalaoMovQTDENTRADA.AsInteger - ceQtd.AsInteger;
      if vQtdDefeito > 0 then
        begin
          fBaixaProducaoItem := TfBaixaProducaoItem.Create(Self);
          fBaixaProducaoItem.Tag := 2; //Tag = 2 vai identificar que o cadastro que vai abrir é de quebras
          fBaixaProducaoItem.Label2.Caption := 'Informar o motivo das QUEBRAS';
          fBaixaProducaoItem.ShowModal;
          if vCodDefeito > 0 then
            Result := True;
        end
      else
        Result := True;
    end
  else
    Result := True;
end;

function TfBaixaProducaoPC.Testa_Data: Boolean;
begin
  Result := True;
  if (vCodOcorrencia = 2) or (vCodOcorrencia = 3) then
  begin
    DMTalao.tTalaoMov.Last;
    if deData.Date <> DMTalao.tTalaoMovDTENTRADA.AsDateTime then
      Result := False
    else
    if rzdtHora.Time <= DMTalao.tTalaoMovHRENTRADA.AsDateTime then
      Result := False;
    if not Result then
      ShowMessage('Data de saída diferente da data de entrada ou ' +#13 +
                  'hora saída menor ou igual a hora de entrada!' )
    else
      deData.SetFocus;
  end;
end;

procedure TfBaixaProducaoPC.BitBtn1Click(Sender: TObject);
begin
  fRelMenuBaixaProdTed := TfRelMenuBaixaProdTed.Create(Self);
  fRelMenuBaixaProdTed.RLReport1.Preview;
end;

procedure TfBaixaProducaoPC.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  FDmCadSetor := TDmCadSetor.Create(nil);
  FDmCadFuncionario := TDmCadFuncionario.Create(nil);
  FDmCadDefeitos    := TDmCadDefeitos.Create(nil);
  FDmCadParadas     := TDmCadParadas.Create(nil);
  DMTalao           := TDMTalao.Create(nil);
end;

end.

