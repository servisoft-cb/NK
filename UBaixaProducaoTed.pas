{OBS: Todas as funções do TED retornam um número inteiro na DLL 32 bits}
{No caso da função ENVTMSG, a mesma retorna 1 se existe TED ligado e 0
se o TED não for encontrado. A função ENVTIMP retorna 0 se não existe}

unit UBaixaProducaoTed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, dmdCadFuncionario, Mask,
  dmdCadSetor, UDMTalao, dmdCadDefeitos, DateUtils, dmdCadParadas, SqlExpr, dbXPress, FMTBcd, DB, DBClient, Provider, rsDBUtils,
  ToolEdit, CurrEdit;

type
  TfBaixaProducaoTed = class(TForm)
    Edit2: TEdit;
    Timer1: TTimer;
    Button3: TButton;
    Button8: TButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    TalaoSetor2: TSQLDataSet;
    pTalaoSetor2: TDataSetProvider;
    tTalaoSetor2: TClientDataSet;
    dsTalaoSetor2: TDataSource;
    TalaoSetor2CODSETOR: TIntegerField;
    tTalaoSetor2CODSETOR: TIntegerField;
    TalaoSetor3: TSQLDataSet;
    TalaoSetor3TALAO: TIntegerField;
    pTalaoSetor3: TDataSetProvider;
    tTalaoSetor3: TClientDataSet;
    tTalaoSetor3TALAO: TIntegerField;
    Label1: TLabel;
    ceCanal: TCurrencyEdit;
    sdsTalaoRegFunc: TSQLDataSet;
    dspTalaoRegFunc: TDataSetProvider;
    cdsTalaoRegFunc: TClientDataSet;
    sdsTalaoRegFuncTALAO: TIntegerField;
    sdsTalaoRegFuncCODSETOR: TIntegerField;
    sdsTalaoRegFuncCODFUNCIONARIO: TIntegerField;
    sdsTalaoRegFuncDTMOV: TDateField;
    cdsTalaoRegFuncTALAO: TIntegerField;
    cdsTalaoRegFuncCODSETOR: TIntegerField;
    cdsTalaoRegFuncCODFUNCIONARIO: TIntegerField;
    cdsTalaoRegFuncDTMOV: TDateField;
    Label2: TLabel;
    sdsTalaoRegFuncPROCESSO: TStringField;
    cdsTalaoRegFuncPROCESSO: TStringField;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    FDMCadFuncionario : TdmCadFuncionario;
    FDMCadSetor : TdmCadSetor;
    FDMCadDefeitos : TdmCadDefeitos;
    FDMCadParadas : TDMCadParadas;

    scanal : shortstring ;
    stcan : shortstring;
    dado:shortstring;
    canal:integer;
    x : integer ;
    vCodigo : ShortString;
    vCodParada : Integer;
    vCodDefeito : Integer;
    vQtdDefeito : Integer;

    vCampo, vCampo2 : Integer;
    vMensagem, vMensagemTed : ShortString;

    vQtdHoras, vQtdHorasParadas : Real;

    vNomeCampo : array[1..8] of String;

    vCodOcorrencia : Integer;
    vQtd : Integer;
    vOpcaoMenu : Integer;
    vCodSetor : Integer;
    vTipoParada : String;
    vMenuParada : Boolean;
    vMenuConsExcluir : Boolean;
    vConsExcluir : Integer;

    procedure Testa_Funcionario; //Campo 1
    procedure Testa_Setor; //Campo 2
    procedure Testa_Talao; //Campo 4
    procedure Testa_Ocorrencia;
    procedure Testa_Quantidade; //Campo 5
    procedure Testa_Paradas; //Campo 6
    procedure Testa_Quebras; //Campo 7
    procedure Testa_ConfQtdMaior; //Campo 8
    procedure Testa_Erro; //Campo 99
    procedure Muda_Campo;
    procedure Grava_Processo;
    procedure Grava_Paradas(Tipo : String); //E= Entrada  S=Saida;

    procedure Monta_Menu;
    procedure Monta_MenuParada;
    procedure Monta_MenuConsExcluir;
    procedure Limpa_Tela;
    procedure Testa_Menu;
    procedure Testa_MenuParada;
    procedure Testa_MenuConsExcluir;

    function Verifica_TalaoReg : Boolean;
    procedure Verifica_TalaoRegT;

    procedure Grava_Quebras;
    procedure Grava_TalaoReg;
    procedure Grava_TalaoTerceiro;

    procedure Verifica_Consulta;

    function Verifica_CampoN(Campo : String) : Boolean;

  public
    { Public declarations }
  end;

var
  fBaixaProducaoTed: TfBaixaProducaoTed;

implementation

uses DmdDatabase;

{$R *.DFM}

//*********************************
//Funções externas da dll TedHub32
//*********************************

function setncan ( ncan :integer):integer;
external 'tedhub32.dll'

function setslow ( slow :integer):integer;
external 'tedhub32.dll'

function setspeed ( speed :integer):integer;
external 'tedhub32.dll'

function getcnt ( var dado:shortstring ; var canal:integer ; conj : integer ): integer;
external 'tedhub32.dll'

function envtmsg ( cnj,can :integer ; da : shortstring ):integer;
external 'tedhub32.dll'

function envtimp ( cnj,can :integer ; da : shortstring ):integer;
external 'tedhub32.dll'

function envbeep ( cnj,can,n :integer ):integer;
external 'tedhub32.dll'

function envldig ( cnj,can :integer ):integer;
external 'tedhub32.dll'

function envddig ( cnj,can :integer ):integer;
external 'tedhub32.dll'

function envlmtec ( cnj,can,n :integer ):integer;
external 'tedhub32.dll'

function envdelay ( cnj,can,n :integer ):integer;
external 'tedhub32.dll'

function envcmbeep ( cnj,can:integer ):integer;
external 'tedhub32.dll'

function leentrada ( cnj,can:integer ):integer;
external 'tedhub32.dll'

function envasenha ( cnj,can:integer ):integer;
external 'tedhub32.dll'

function envdsenha ( cnj,can:integer ):integer;
external 'tedhub32.dll'

function getserial ( conj:integer ; can : integer): integer;
external 'tedhub32.dll'

function closecom ( n:integer ):integer;
external 'tedhub32.dll'

function envcldisp ( conj:integer ; can : integer): integer;
external 'tedhub32.dll'

//*********************************
//*********************************
//*********************************

procedure TfBaixaProducaoTed.Verifica_Consulta;
begin
  //canal:=0;
  canal := ceCanal.AsInteger;
  Limpa_Tela;

  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'A' then
    x:=envtmsg ( 0,canal, 'Talao em        Producao        no setor ' + FormatFloat('0000',DMTalao.cdsTalaoRegCODSETOR.AsInteger) + '    Qtd:' + DMTalao.cdsTalaoRegQTD.AsString)
  else
  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'E' then
    x:=envtmsg ( 0,canal, 'Talao encerrado no setor  ' + DMTalao.cdsTalaoRegCODSETOR.AsString)
  else
  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'P' then
    x:=envtmsg ( 0,canal, 'Talao Parado    no setor  ' + DMTalao.cdsTalaoRegCODSETOR.AsString)
  else
  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'T' then
    x:=envtmsg ( 0,canal, 'Talao Terceiro');
  Sleep(3000);
end;

procedure TfBaixaProducaoTed.Monta_MenuConsExcluir;
begin
  //canal:=0;
  canal:=ceCanal.AsInteger;

  Limpa_Tela;

  x:=envtmsg ( 0,canal, '1 - Consulta    2 - Excluir     4 - Fim = ');
end;

procedure TfBaixaProducaoTed.Grava_TalaoTerceiro;
var
  vItemAux : Integer;
begin
  DMTalao.cdsTalaoTerceiro.Close;
  DMTalao.sdsTalaoTerceiro.ParamByName('TALAO').AsInteger := DMTalao.tTalaoTALAO.AsInteger;
  DMTalao.cdsTalaoTerceiro.Open;
  DMTalao.cdsTalaoTerceiro.Last;
  vItemAux := DMTalao.cdsTalaoTerceiroITEM.AsInteger;
  if not(DMTalao.cdsTalaoTerceiro.IsEmpty) and (DMTalao.cdsTalaoTerceiroDTSAIDA.AsDateTime < 10) then
  begin
    DMTalao.cdsTalaoTerceiro.Edit;
    DMTalao.cdsTalaoTerceiroDTSAIDA.AsDateTime     := Date;
    DMTalao.cdsTalaoTerceiroHRSAIDA.AsDateTime     := Now;
    if (DMTalao.cdsTalaoTerceiroHRSAIDA.AsDateTime > 0) and (DMTalao.cdsTalaoTerceiroHRENTRADA.AsDateTime > 0) then
      DMTalao.cdsTalaoTerceiroTOTALHORAS.AsFloat     := (MinutesBetween(DMTalao.cdsTalaoTerceiroHRSAIDA.AsDateTime,DMTalao.cdsTalaoTerceiroHRENTRADA.AsDateTime)  / 60) +
                                                        (DaysBetween(DMTalao.cdsTalaoTerceiroHRSAIDA.AsDateTime,DMTalao.cdsTalaoTerceiroHRENTRADA.AsDateTime) * 1440);
    DMTalao.cdsTalaoTerceiroQTDPRODUZIDO.AsInteger := vQtd;
    vQtdDefeito                                     := DMTalao.cdsTalaoTerceiroQTDENTRADA.AsInteger -
                                                       DMTalao.cdsTalaoTerceiroQTDPRODUZIDO.AsInteger;
    if vQtdDefeito < 0 then
      vQtdDefeito := 0;
    DMTalao.cdsTalaoTerceiroQTDQUEBRA.AsInteger  := vQtdDefeito;
  end
  else
  begin
    DMTalao.cdsTalaoTerceiro.Insert;
    DMTalao.cdsTalaoTerceiroTALAO.AsInteger             := DMTalao.tTalaoTALAO.AsInteger;
    DMTalao.cdsTalaoTerceiroITEM.AsInteger              := vItemAux + 1;
    DMTalao.cdsTalaoTerceiroDTENTRADA.AsDateTime        := Date;
    DMTalao.cdsTalaoTerceiroHRENTRADA.AsDateTime        := Now;
    DMTalao.cdsTalaoTerceiroCODFUNCIONARIOLIB.AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
    DMTalao.cdsTalaoTerceiroCODSETORLIB.AsInteger       := FDMCadSetor.cdsSetorCODIGO.AsInteger;
    DMTalao.cdsTalaoTerceiroQTDENTRADA.AsInteger        := vQtd;
    DMTalao.cdsTalaoTerceiroCODPARADA.AsInteger         := vCodParada;
    if (DMTalao.cdsTalaoTerceiroHRSAIDA.AsDateTime > 0) and (DMTalao.cdsTalaoTerceiroHRENTRADA.AsDateTime > 0) then
      DMTalao.cdsTalaoTerceiroTOTALHORAS.AsFloat     := (MinutesBetween(DMTalao.cdsTalaoTerceiroHRSAIDA.AsDateTime,DMTalao.cdsTalaoTerceiroHRENTRADA.AsDateTime)  / 60) +
                                                        (DaysBetween(DMTalao.cdsTalaoTerceiroHRSAIDA.AsDateTime,DMTalao.cdsTalaoTerceiroHRENTRADA.AsDateTime) * 1440);
  end;
  DMTalao.cdsTalaoTerceiro.Post;
  DMTalao.cdsTalaoTerceiro.ApplyUpdates(0);
end;

procedure TfBaixaProducaoTed.Verifica_TalaoRegT;
begin
  vMensagem := '';
  DMTalao.cdsTalaoReg.Last;
  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'P' then
  begin
    vMensagem := 'Talao Parado';
    exit;
  end;
  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'A' then
  begin
    vMensagem := 'Talao em Producao';
    exit;
  end;

  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'T' then
  begin
    vCodOcorrencia := 3;
    vCampo         := vCampo + 1;  //pedir a quantidade
  end
  else
  begin
    vCodOcorrencia := 3;
    vQtd           := DMTalao.tTalaoQTDEMPROCESSO.AsInteger;
    vcampo         := 6; //Pedir tipo da parada (terceiro)
  end;
end;

function TfBaixaProducaoTed.Verifica_TalaoReg : Boolean;
begin
  Result    := False;
  vMensagem := '';
  DMTalao.cdsTalaoReg.Last;
  if (vOpcaoMenu = 2) and (DMTalao.cdsTalaoReg.IsEmpty) then
  begin
    vMensagem := 'Sem Movimentacao';
    exit;
  end;
  if (vOpcaoMenu = 2) and (DMTalao.cdsTalaoRegPROCESSO.AsString = 'P') then
  begin
    vMensagem := 'Talao Parado';
    exit;
  end;
  if DMTalao.cdsTalaoRegPROCESSO.AsString = 'T' then
  begin
    vMensagem := 'Talao Terceiro';
    exit;
  end;
  if trim(vMensagem) = '' then
  begin
    DMTalao.qTalaoMov.Close;
    DMTalao.qTalaoMov.ParamByName('CODFUNCIONARIO').AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
    DMTalao.qTalaoMov.Open;
    if not DMTalao.qTalaoMov.IsEmpty then
    begin
      vMensagem := 'Func. ' + FDMCadFuncionario.cdsFuncionarioCODIGO.AsString + ' T.' + DMTalao.qTalaoMovTALAO.AsString + ' AB';
      exit;
    end;
  end;

  //Bloco inativado no dia 25/03/14
  {if not(DMTalao.cdsTalaoReg.IsEmpty) and ((DMTalao.cdsTalaoRegPROCESSO.AsString = 'A') or (DMTalao.cdsTalaoRegPROCESSO.AsString = 'P')) then
  begin
    if (vOpcaoMenu = 1) and (DMTalao.cdsTalaoRegCODSETOR.AsInteger <> FDMCadSetor.cdsSetorCODIGO.AsInteger) then
    begin
      vMensagem := 'Setor ' + DMTalao.cdsTalaoRegCODSETOR.AsString + ' Aberto';
      exit;
    end;
  end;}
  Result := True;
end;

procedure TfBaixaProducaoTed.Grava_TalaoReg;
var
  vItemAux : Integer;
begin
  DMTalao.cdsTalaoReg.Close;
  DMTalao.sdsTalaoReg.ParamByName('TALAO').AsInteger := DMTalao.tTalaoTALAO.AsInteger;
  DMTalao.cdsTalaoReg.Open;

  DMTalao.cdsTalaoReg.Last;
  vItemAux := DMTalao.cdsTalaoRegITEM.AsInteger;
  DMTalao.cdsTalaoReg.Insert;
  DMTalao.cdsTalaoRegTALAO.AsInteger          := DMTalao.tTalaoTALAO.AsInteger;
  DMTalao.cdsTalaoRegITEM.AsInteger           := vItemAux + 1;
  DMTalao.cdsTalaoRegCODSETOR.AsInteger       := DMTalao.tTalaoMovCODSETOR.AsInteger;
  DMTalao.cdsTalaoRegCODFUNCIONARIO.AsInteger := DMTalao.tTalaoMovCODFUNCIONARIO.AsInteger;
  if vCodOcorrencia = 1 then
  begin
    DMTalao.cdsTalaoRegPROCESSO.AsString := 'A';  //Aberto, colocado em produção
    DMTalao.cdsTalaoRegQTD.AsInteger     := DMTalao.tTalaoMovQTDENTRADA.AsInteger;
  end
  else
  if vCodOcorrencia = 2 then
  begin
    DMTalao.cdsTalaoRegPROCESSO.AsString   := 'E';  //Encerrado
    DMTalao.cdsTalaoRegQTD.AsInteger       := DMTalao.tTalaoMovQTDPRODUZIDO.AsInteger;
    DMTalao.cdsTalaoRegQTDQUEBRA.AsInteger := DMTalao.tTalaoMovQTDQUEBRA.AsInteger;
  end
  else
  if (vCodOcorrencia = 3) and (vTipoParada = 'F') then
  begin
    DMTalao.cdsTalaoRegPROCESSO.AsString := 'P';  //Parado
    DMTalao.cdsTalaoRegQTD.AsInteger     := DMTalao.tTalaoMovQTDPRODUZIDO.AsInteger;
  end
  else
  if (vCodOcorrencia = 3) and (vTipoParada = 'T') then
  begin
    if DMTalao.tTalaoPROCESSO.AsString = 'T' then
      DMTalao.cdsTalaoRegPROCESSO.AsString := 'T'  //Terceiro
    else
      DMTalao.cdsTalaoRegPROCESSO.AsString := 'E';  //Encerrado
    DMTalao.cdsTalaoRegCODSETOR.AsInteger       := FDMCadSetor.cdsSetorCODIGO.AsInteger;
    DMTalao.cdsTalaoRegCODFUNCIONARIO.AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
    DMTalao.cdsTalaoRegQTD.AsInteger     := vQtd;
  end;
  DMTalao.cdsTalaoRegDTMOV.AsDateTime := Date;
  DMTalao.cdsTalaoRegHRMOV.AsDateTime := Now;
  DMTalao.cdsTalaoReg.Post;
  DMTalao.cdsTalaoReg.ApplyUpdates(0);
end;

procedure TfBaixaProducaoTed.Grava_Quebras;
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
  DMTalao.tTalaoQuebrasDATA.AsDateTime      := Date;
  DMTalao.tTalaoQuebrasHORA.AsDateTime      := Now;
  DMTalao.tTalaoQuebrasCOMPLEMENTO.AsString := '';
  DMTalao.tTalaoQuebrasQTD.AsInteger        := vQtdDefeito;
  DMTalao.tTalaoQuebrasCODFUNCIONARIO.AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;

  DMTalao.tTalaoQuebras.Post;
end;

procedure TfBaixaProducaoTed.Testa_ConfQtdMaior;
var
  vBeep : Integer;
begin
  if (Length(Dado) > 1) or ((Dado <> '1') and (Dado <> '2')) then
    begin
      vBeep := 4;
      envbeep(2,0,vBeep);
    end
  else
  begin
    vMensagem := '';
    if Dado = '1' then
      vMensagem := '1'
    else
    if (Dado = '2') then
      vCampo := 5;
  end;
end;

procedure TfBaixaProducaoTed.Testa_Erro;
begin
  if (Length(Dado) > 1) or (Dado <> '1') then
    begin
      envbeep(2,0,2);
      envbeep(2,0,2);
      envbeep(2,0,2);
    end
  else
  begin
    vMensagem := '';
    if Dado = '1' then
      vMensagem := '1';
  end;
end;

procedure TfBaixaProducaoTed.Testa_MenuConsExcluir;
var
  vBeep : Integer;
  vAux : Integer;
begin
  if Length(Dado) > 4 then
  begin
    vMensagem := 'Dado Invalido';
    exit;
  end;

  vAux := StrToInt(Dado);

  vBeep   := 2;
  if vAux = 4 then
    vCampo := 3
  else
  if (vAux = 1) or (vAux = 2) then
  begin
    vConsExcluir := vAux;
    vCampo       := vCampo + 1;
  end
  else
  begin
    vMensagem := '';
    vBeep     := 4;
  end;
  envbeep(2,0,vBeep);
end;

procedure TfBaixaProducaoTed.Testa_MenuParada;
var
  vBeep : Integer;
  vAux : Integer;
begin
  if Length(Dado) > 4 then
  begin
    vMensagem := 'Dado Invalido';
    exit;
  end;

  vAux := StrToInt(Dado);

  vBeep       := 2;
  if vAux = 4 then
  begin
    vCampo      := 3;
    vMenuParada := False;
  end
  else
  if vAux = 1 then
  begin
    vTipoParada := 'F';
    vCampo      := vCampo + 1;
  end
  else
  if vAux = 2 then
  begin
    vTipoParada := 'T';
    vCampo      := vCampo + 1;
  end
  else
  begin
    vMensagem := '';
    vBeep     := 4;
  end;
  envbeep(2,0,vBeep);
end;

procedure TfBaixaProducaoTed.Testa_Menu;
var
  vBeep : Integer;
begin
  if Length(Dado) > 4 then
  begin
    vMensagem := 'Dado Invalido';
    exit;
  end;

  vOpcaoMenu       := StrToInt(Dado);
  vMenuParada      := False;
  vMenuConsExcluir := False;
  vBeep            := 2;
  if vOpcaoMenu = 4 then
    vCampo := 1
  else
  if vOpcaoMenu = 1 then
    vCampo := vCampo + 1
  else
  if vOpcaoMenu = 2 then
    vMenuParada := True
  else
  if vOpcaoMenu = 3 then
    vMenuConsExcluir := True
  else
    begin
      vMensagem := '';
      vBeep     := 4;
    end;
  envbeep(2,0,vBeep);
end;

procedure TfBaixaProducaoTed.Limpa_Tela;
begin
  //canal:=0;
  canal:=ceCanal.AsInteger;

  str (canal,scanal );
  x:=envcldisp ( 0,canal);
  //x:=envtmsg ( 0,canal, '                                                               ');
end;

procedure TfBaixaProducaoTed.Monta_Menu;
begin
  //canal:=0;
  canal:=ceCanal.AsInteger;
  
  Limpa_Tela;

  x:=envtmsg ( 0,canal, '1 - Marcar Talao2 - Ocorrencias 3 - Cons/Excluir4 - FIM  = ');
end;

procedure TfBaixaProducaoTed.Monta_MenuParada;
begin
  //canal:=0;
  canal:=ceCanal.AsInteger;
  
  Limpa_Tela;

  x:=envtmsg ( 0,canal, '1 - Fabrica     2 - Terceiro    4 - Fim = ');
end;

function TfBaixaProducaoTed.Verifica_CampoN(Campo : String) : Boolean;
var
  i : integer;
begin
  Result := True;
  for i := 1 to Length(Campo) do
    if not (campo[i] in ['0','1','2','3','4','5','6','7','8','9']) then
      Result := False;
end;

procedure TfBaixaProducaoTed.Grava_Paradas(Tipo : String); //E= Entrada  S=Saida;
var
  i, vItemAux : Integer;
  vAux : Integer;
begin
  if (vCodParada <= 0) and (Tipo = 'E') then
    exit;

  DMTalao.tTalaoParadas.Last;
  if Tipo = 'E' then
    begin
      vItemAux := DMTalao.tTalaoParadasITEM.AsInteger;

      DMTalao.tTalaoParadas.Insert;
      DMTalao.tTalaoParadasTALAO.AsInteger      := DMTalao.tTalaoTALAO.AsInteger;
      DMTalao.tTalaoParadasCODSETOR.AsInteger   := DMTalao.tTalaoSetorCODSETOR.AsInteger;
      DMTalao.tTalaoParadasITEM.AsInteger       := vItemAux + 1;
      DMTalao.tTalaoParadasCODPARADA.AsInteger  := vCodParada;
      DMTalao.tTalaoParadasDTENTRADA.AsDateTime := Date;
      DMTalao.tTalaoParadasHRENTRADA.AsDateTime := Now;
      DMTalao.tTalaoParadasCOMPLEMENTO.AsString := '';
    end
  else
    begin
      DMTalao.tTalaoParadas.Edit;
      DMTalao.tTalaoParadasDTSAIDA.AsDateTime := Date;
      DMTalao.tTalaoParadasHRSAIDA.AsDateTime := Now;
      if DMTalao.tTalaoParadasDTSAIDA.AsDateTime > DMTalao.tTalaoParadasDTENTRADA.AsDateTime then
      begin
        vQtdHorasParadas := 24 - DMTalao.tTalaoParadasHRENTRADA.AsDateTime;
        //26/01/2010
        //for i := 1 to DMTalao.tTalaoParadasDTSAIDA.AsInteger - DMTalao.tTalaoParadasDTENTRADA.AsInteger do
        vAux := StrToInt(FormatFloat('0',DMTalao.tTalaoParadasDTSAIDA.AsFloat - DMTalao.tTalaoParadasDTENTRADA.AsFloat));
        for i := 1 to vAux do
          vQtdHorasParadas := vQtdHorasParadas + 24;
        vQtdHorasParadas := vQtdHorasParadas + DMTalao.tTalaoParadasHRSAIDA.AsDateTime;
      end
      else
        vQtdHorasParadas := (DMTalao.tTalaoParadasHRSAIDA.AsDateTime - DMTalao.tTalaoParadasHRENTRADA.AsDateTime);
      DMTalao.tTalaoParadasTOTALHORAS.AsFloat := vQtdHorasParadas;
    end;
  DMTalao.tTalaoParadas.Post;
end;

procedure TfBaixaProducaoTed.Grava_Processo;
var                          
  vItem: Integer;
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vQtd2 : Integer;
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
      if (vCodOcorrencia = 3) and (vTipoParada = 'T') then
      begin
        Grava_TalaoTerceiro;
        if DMTalao.cdsTalaoTerceiroDTSAIDA.AsDateTime > 0 then
          vQtd2 := DMTalao.cdsTalaoTerceiroQTDPRODUZIDO.AsInteger;
      end
      else
      begin
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
//          DMTalao.tTalaoMovCODPARADA.AsInteger      := vCodParada;
          DMTalao.tTalaoMovDtEntrada.AsDateTime     := Date;
          DMTalao.tTalaoMovHrEntrada.AsDateTime     := Now;
          DMTalao.tTalaoMovCodProduto.AsInteger     := DMTalao.tTalaoCODPRODUTO.AsInteger;
        end
        else
          DMTalao.tTalaoMov.Edit;

        if vCodOcorrencia > 1 then
        begin
          DMTalao.tTalaoMovDtSaida.AsDateTime     := Date;
          DMTalao.tTalaoMovHrSaida.AsDateTime     := Now;
          DMTalao.tTalaoMovQtdProduzido.AsInteger := vQtd;
          if vCodOcorrencia = 2 then
            begin
              DMTalao.tTalaoMovTIPOSAIDA.AsString  := 'N';
              vQtdDefeito                           := DMTalao.tTalaoMovQTDENTRADA.AsInteger - DMTalao.tTalaoMovQtdProduzido.AsInteger;
              if vQtdDefeito < 0 then
                vQtdDefeito := 0;
              DMTalao.tTalaoMovQTDQUEBRA.AsInteger := vQtdDefeito;
            end
          else
            DMTalao.tTalaoMovTIPOSAIDA.AsString := 'P';

          vQtdHoras := ((DMTalao.tTalaoMovHRSAIDA.AsDateTime - DMTalao.tTalaoMovHRENTRADA.AsDateTime) * 24);
          DMTalao.tTalaoMovTOTALHORAS.AsFloat := vQtdHoras;
        end
        else
          DMTalao.tTalaoMovQtdEntrada.AsInteger := vQtd;

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

            DMTalao.tTalaoSetorTOTALHORAS.AsFloat     := DMTalao.tTalaoSetorTOTALHORAS.AsFloat + vQtdHoras;

            DMTalao.tTalaoSetorQTDQUEBRAS.AsInteger   := DMTalao.tTalaoSetorQTDENTRADA.AsInteger - DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger;
            if DMTalao.tTalaoSetorQTDQUEBRAS.AsInteger < 0 then
              DMTalao.tTalaoSetorQTDQUEBRAS.AsInteger := 0;

            vQtd2 := DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger;
          end
        else
        if vCodOcorrencia = 3 then
          begin
            DMTalao.tTalaoSetorPROCESSO.AsString      := 'P';
            DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger := DMTalao.tTalaoSetorQTDPRODUZIDO.AsInteger + vQtd;

            DMTalao.tTalaoSetorTOTALHORAS.AsFloat     := DMTalao.tTalaoSetorTOTALHORAS.AsFloat + vQtdHoras;

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
      end;

      vMensagem := '';
      DMTalao.tTalao.Edit;
      if (vCodOcorrencia = 2) and (FDMCadSetor.cdsSetorFINAL.AsString = 'S') then
        begin
          DMTalao.tTalaoPROCESSO.AsString      := 'E';
          DMTalao.tTalaoQTDPRODUZIDA.AsInteger := DMTalao.tTalaoQTDPRODUZIDA.AsInteger + vQtd;
          DMTalao.tTalaoTOTALHORAS.AsFloat     := DMTalao.tTalaoTOTALHORAS.AsFloat + vQtdHoras;
          DMTalao.tTalaoHORASPARADA.AsFloat    := DMTalao.tTalaoHORASPARADA.AsFloat + vQtdHorasParadas;
          DMTalao.tTalaoHORASPRODUCAO.AsFloat  := DMTalao.tTalaoTOTALHORAS.AsFloat - DMTalao.tTalaoHORASPARADA.AsFloat;
          DMTalao.tTalaoQTDQUEBRAS.AsInteger   := DMTalao.tTalaoQUANTIDADE.AsInteger - DMTalao.tTalaoQTDPRODUZIDA.AsInteger;
          DMTalao.tTalaoTOTALHORAS.AsFloat     := DMTalao.cdsTalaoTerceiroTOTALHORAS.AsFloat;
          if DMTalao.tTalaoQTDQUEBRAS.AsInteger <= 0 then
            DMTalao.tTalaoQTDQUEBRAS.AsInteger := 0;
          vMensagem := 'Encerrou Talao'
        end
      else
      if (vCodOcorrencia = 2) or (vCodOcorrencia = 1) then
        DMTalao.tTalaoPROCESSO.AsString := 'A'
      else
      if (vCodOcorrencia = 3) and (vTipoParada = 'F') then
        DMTalao.tTalaoPROCESSO.AsString := 'P'
      else
      if vCodOcorrencia = 3 then
      begin
        if DMTalao.tTalaoPROCESSO.AsString = 'T' then
          DMTalao.tTalaoPROCESSO.AsString := 'A'
        else
          DMTalao.tTalaoPROCESSO.AsString := 'T';
      end;

      DMTalao.tTalaoQTDEMPROCESSO.AsInteger := vQtd2;
      Grava_TalaoReg;
      DMTalao.tTalao.Post;
      DMTalao.tTalao.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);

      if vMensagem = '' then
        vMensagem := 'Talao GRAVADO';

      vCampo := 1; //para voltar ao menu
    except //--
      dmDatabase.scoDados.Rollback(ID);  //--
      raise; //--
    end;   //--
  finally
    FreeAndNil(sds);
    vCodOcorrencia   := 0;
    vQtd             := 0;
    vCodParada       := 0;
    vCodDefeito      := 0;
    vTipoParada      := '';
    vMenuParada      := False;
    vMenuConsExcluir := False;
  end;
end;

procedure TfBaixaProducaoTed.Muda_Campo;
begin
  //canal:=0;
  canal:= ceCanal.AsInteger;
  //str (canal,scanal );

  if vCampo < 99 then
    Limpa_Tela;

  if vCampo = 99 then
    x:=envtmsg ( 0,canal, 'ERRO(1)')
  else
  if vCampo = 3 then
  begin
    if vMenuParada then
      Monta_MenuParada
    else
    if vMenuConsExcluir then
      Monta_MenuConsExcluir
    else
      Monta_Menu;
  end
  else
    begin
      if (vCampo = 4) and ((vOpcaoMenu = 3) and (vConsExcluir = 1)) then
        x:=envtmsg ( 0,canal, 'Modo Consulta' );
      x:=envtmsg ( 0,canal, vNomeCampo[vCampo]);
      x:=envtmsg ( 0,canal,'');
      STR(X,DADO);
      //edit2.text := 'Envtmsg retornou '+DADO;
    end;
  if (x=0) then
    Edit2.Text := 'NAO EXISTE TED LIGADO NO CANAL '+scanal+' !!!'
  else
  if vCampo = 1 then
    Edit2.Text :='Conectado'
  else
  if vCampo <> 99 then
    edit2.text := vCodigo + ' - ' + vMensagem;
end;

procedure TfBaixaProducaoTed.Testa_Paradas;
begin
  if Length(Dado) > 4 then
  begin
    vMensagem := 'Dados Invalido';
    exit;
  end;
  vCodParada := StrToInt(Dado);

  vMensagem := '';
  try
    FDMCadParadas.cdsParadas.Close;
    FDMCadParadas.sdsParadas.CommandText := ctParadas + ' WHERE CODIGO = ' + dado;
    if vTipoParada = 'T' then
      FDMCadParadas.sdsParadas.CommandText := FDMCadParadas.sdsParadas.CommandText + ' AND TIPO = ' + '''T'''
    else
      FDMCadParadas.sdsParadas.CommandText := FDMCadParadas.sdsParadas.CommandText + ' AND TIPO = ' + '''F''';
    FDMCadParadas.cdsParadas.Open;
    if FDMCadParadas.cdsParadas.IsEmpty then
      vMensagem := 'Parada inválida!';
  Except
    vMensagem := 'Erro Cod.Parada!';
  end;
end;

procedure TfBaixaProducaoTed.Testa_Quebras;
begin
  if Length(Dado) > 4 then
  begin
    vMensagem := 'Dados Invalido';
    exit;
  end;
  vCodDefeito := StrToInt(dado);

  vMensagem := '';
  try
    FDMCadDefeitos.cdsDefeitos.Close;
    FDMCadDefeitos.sdsDefeitos.CommandText := ctDefeitos
                             + ' WHERE CODIGO = ' + dado;
    FDMCadDefeitos.cdsDefeitos.Open;
    if FDMCadDefeitos.cdsDefeitos.IsEmpty then
      vMensagem := 'Defeito inválido!';
  Except
    vMensagem := 'Erro Cod.Defeito';
  end;
end;

procedure TfBaixaProducaoTed.Testa_Quantidade;
var
  vQtdAux : Integer;
begin
  vMensagem := '';
  vQtd := StrToInt(dado);
  if vQtd <= 0 then
    vMensagem := 'Qtd. Invalida'
  else
  if (vCodOcorrencia = 3) then
  begin
    if DMTalao.tTalaoPROCESSO.AsString = 'T' then
    begin
      DMTalao.cdsTalaoTerceiro.Last;
      if vQtd > DMTalao.cdsTalaoTerceiroQTDENTRADA.AsInteger then
        vCampo := 8;
    end
    else
      vCampo := 6;
  end
  else
  if vCodOcorrencia = 2 then
    begin
      DMTalao.tTalaoMov.Last;
      vQtdDefeito := DMTalao.tTalaoMovQTDENTRADA.AsInteger - vQtd;
      if vQtd > DMTalao.tTalaoMovQTDENTRADA.AsInteger then
        vCampo := 8
      else
        begin
          if vQtdDefeito < 0 then
            vQtdDefeito := 0;
          if vQtdDefeito > 0 then
            vCampo := 7;
        end;
    end;

end;

procedure TfBaixaProducaoTed.Testa_Ocorrencia;
begin
  try
    vCodOcorrencia := StrToInt(dado);
    if vCodOcorrencia > 3 then
      vMensagem := 'Evento Invalido'
    else
    if vCodOcorrencia = 0 then
      begin
        vMensagem := 'Operacao cancelada';
        vCampo    := 1;
        exit;
      end
    else
      begin
        vMensagem := '';
        DMTalao.tTalaoMov.Last;
        if (vCodOcorrencia = 1) and
           ((DMTalao.tTalaoMov.IsEmpty) or (DMTalao.tTalaoMovDTENTRADA.AsDateTime < 10)) then
          begin
            vCampo := vCampo + 1;
            exit;
          end;

        if (vCodOcorrencia = 1) and (DMTalao.tTalaoMovDtSaida.AsDateTime < 10) then
          vMensagem := 'Esta na producao'
        else
        if ((vCodOcorrencia = 2) or (vCodOcorrencia = 3)) and (DMTalao.tTalaoMov.IsEmpty) then
          vMensagem := 'Setor sem entrada'
        else
        if ((vCodOcorrencia = 2) or (vCodOcorrencia = 3)) and (DMTalao.tTalaoMovDtSaida.AsDateTime > 10) then
          vMensagem := 'Mov.Encerrado';
        if (vCodOcorrencia = 3) and (DMTalao.tTalaoSetorPROCESSO.AsString = 'P') then
          vMensagem := 'Talao Parado';
        if vMensagem <> '' then
          exit
        else
          vCampo := vCampo + 1;
      end;
  except
    vMensagem := 'Evento Invalido';
  end;

end;

procedure TfBaixaProducaoTed.Testa_Talao;
var
  vTalaoAux : Integer;
begin
  if (Length(Dado) < 11) and (Length(Dado) > 6) then
  begin
    vMensagem := 'Talao Invalido';
    exit;
  end;

  try
    vCodOcorrencia := 0;
    vQtd           := 0;

    vMensagem := '';
    if Length(Dado) > 9 then
      vTalaoAux := StrToInt(Copy(dado,7,6))
    else
      vTalaoAux := StrToInt(dado);

    DMTalao.tTalao.Close;
    DMTalao.Talao.CommandText := ctTalao
                               + ' WHERE TALAO = ' + IntToStr(vTalaoAux);
    DMTalao.tTalao.Open;
    if DMTalao.tTalao.IsEmpty then
      vMensagem := 'Talao nao encontrado'
    else
    if DMTalao.tTalaoPROCESSO.AsString = 'E' then
      vMensagem := 'Talao ja encerrado';
    if vMensagem <> '' then
      exit;
    DMTalao.cdsTalaoReg.Close;
    DMTalao.sdsTalaoReg.ParamByName('TALAO').AsInteger := vTalaoAux;
    DMTalao.cdsTalaoReg.Open;
    DMTalao.cdsTalaoReg.Last;

    DMTalao.cdsTalaoTerceiro.Close;
    DMTalao.sdsTalaoTerceiro.ParamByName('TALAO').AsInteger := vTalaoAux;
    DMTalao.cdsTalaoTerceiro.Open;
    DMTalao.cdsTalaoTerceiro.Last;

    if vMenuConsExcluir then
    begin
      Verifica_Consulta;
      exit;
    end;

    if (vOpcaoMenu = 1) or ((vOpcaoMenu = 2) and (vTipoParada = 'F')) then
    begin
      if not DMTalao.tTalaoSetor.Locate('CODSETOR', FDMCadSetor.cdsSetorCODIGO.AsInteger, [loCaseInsensitive]) then
        vMensagem := 'Setor Nao Encontrado'
      else
      if DMTalao.tTalaoPROCESSO.AsString = 'T' then
        vMensagem := 'Talao Terceiro'
      else
      if DMTalao.tTalaoSetorPROCESSO.AsString = 'E' then
        vMensagem := 'Setor Encerrado';
    end;
    if vMensagem <> '' then
      exit;

    if (vOpcaoMenu = 1) or ((vOpcaoMenu = 2) and (vTipoParada = 'F')) then
      if not Verifica_TalaoReg then
        exit;
    if (vOpcaoMenu = 2) and (vTipoParada = 'T') then
    begin
      Verifica_TalaoRegT;
      exit;
    end;

    vCampo := vCampo + 1;
    if (DMTalao.tTalaoSetorPROCESSO.AsString = 'P') or (DMTalao.tTalaoSetorPROCESSO.AsString = 'N') then
      begin
        vCodOcorrencia := 1;
        vQtd           := DMTalao.tTalaoQTDEMPROCESSO.AsInteger;

        //Foi anulado este bloco (26/07/2010), pois não vai ter controle por setor, o mesmo setor pode ter mais de uma máquina
        {tTalaoSetor3.Close;
        TalaoSetor3.ParamByName('CODSETOR').AsInteger := vCodSetor;
        tTalaoSetor3.Open;
        if not tTalaoSetor3.IsEmpty then
        begin
          if tTalaoSetor3TALAO.AsInteger <> vTalaoAux then
            begin
              vMensagem := 'Talao ' + tTalaoSetor3Talao.AsString + ' aberto' ;
              vQtd      := 0;
              vCampo    := vCampo - 1;
            end;
        end;}

        //Foi incluido dia 26/07/2010
        cdsTalaoRegFunc.Close;
        sdsTalaoRegFunc.ParamByName('CodFuncionario').AsInteger := FDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
        cdsTalaoRegFunc.Open;
        cdsTalaoRegFunc.Last;
        if not cdsTalaoRegFunc.IsEmpty then
        begin
          if cdsTalaoRegFuncTALAO.AsInteger <> vTalaoAux then
          begin
            if cdsTalaoRegFuncPROCESSO.AsString = 'A' then
            begin
              vMensagem := 'Talao ' + cdsTalaoRegFuncTALAO.AsString + ' aberto' ;
              vQtd      := 0;
              vCampo    := vCampo - 1;
            end;
          end;
        end;
        ///////////////////////////andré
      end
    else
    if (DMTalao.tTalaoSetorPROCESSO.AsString = 'A') then
      begin
        if vOpcaoMenu = 2 then
          vCodOcorrencia := 3
        else
          vCodOcorrencia := 2;
      end;
  except
    begin
      vMensagem      := 'Talao com erro';
      vCodOcorrencia := 0;
      vQtd           := 0;
    end;
  end;
end;

procedure TfBaixaProducaoTed.Testa_Setor;
begin
  vCodSetor := StrToInt(Dado);
  try
    FDMCadSetor.cdsSetor.Close;
    FDMCadSetor.sdsSetor.CommandText := ctSetor
                                      + ' WHERE CODIGO = ' + Dado;
    FDMCadSetor.cdsSetor.Open;
    if FDMCadSetor.cdsSetor.IsEmpty then
      vMensagem := 'Setor nao encontrado'
    else
      begin
        vCampo    := vCampo + 1;
        vMensagem := FDMCadSetor.cdsSetorNOME.AsString;
      end;
  except
    vMensagem := 'Setor nao encontrado';
  end;
end;

procedure TfBaixaProducaoTed.Testa_Funcionario;
var
  vCodAux : Integer;
begin
  if (Length(Dado) > 10) and (Copy(Dado,1,1) = '2') then
  begin
    vMensagem := 'Dado Invalido';
    exit;
  end;
  vCodAux := StrToInt(Dado);
  try
    FDMCadFuncionario.cdsFuncionario.Close;
    FDMCadFuncionario.sdsFuncionario.CommandText := ctFuncionario
                                                  + ' WHERE NUMMATRICULA = ' + IntToStr(vCodAux);
    FDMCadFuncionario.cdsFuncionario.Open;
    if FDMCadFuncionario.cdsFuncionario.IsEmpty then
      vMensagem := 'Func.nao encontrado'
    else
      begin
        vCampo    := vCampo + 1;
        vMensagem := FDMCadFuncionario.cdsFuncionarioNOME.AsString;
      end;
  except
    vMensagem := 'Func.nao encontrado (erro)';
  end;
end;

procedure TfBaixaProducaoTed.Timer1Timer(Sender: TObject);
var
  vCampoAux : Integer;
  vTempo : Integer;
  i : Integer;
begin
  vMensagem := '';
  canal     :=100;
  dado      := 'dado inicial nao alterado .......................';

  if (getcnt (  dado,canal,0 ))=1 then
  begin
    str (canal,stcan);

    str ( canal,scanal );
    vCampoAux := vCampo;

    if dado = 'A' then
      begin
        if vCampo < 4 then
          vCampo := 1
        else
        begin
          if vCampo = 3 then
          begin
            vMenuParada      := False;
            vMenuConsExcluir := False;
          end;
          vCampo := 3;
        end;
      end
    else
    if ((vCampo = 2) or (vCampo = 6) or (vCampo = 7)) and
       (Length(Dado) > 4) then
      vMensagem := 'Dado invalido'
    else
    if (Trim(dado) = '') or not(Verifica_CampoN(Dado)) then
      vMensagem := 'Dado Invalido'
    else
    if (Trim(dado) <> '') then
    begin
      if vCampo < 3 then
      begin
        vMenuParada      := False;
        vMenuConsExcluir := False;
      end;
      if vCampo = 1 then
        Testa_Funcionario
      else
      if vCampo = 2 then
        Testa_Setor
      else
      if vCampo = 3 then
      begin
        if vMenuParada then
          Testa_MenuParada
        else
        if vMenuConsExcluir then
          Testa_MenuConsExcluir
        else
          Testa_Menu;
      end
      else
      if vCampo = 4 then
      begin
        Testa_Talao;
        if (vQtd > 0) and (vCodOcorrencia = 1) and (vCampo <> 6)  then
          Grava_Processo;
      end
      else
      if vCampo = 5 then
      begin
        if (vCodOcorrencia = 2) or (vOpcaoMenu = 2) then
          Testa_Quantidade;
        if (vMensagem = '') and (vCampo = 5) then
          Grava_Processo;
      end
      else
      if vCampo = 6 then
      begin
        Testa_Paradas;
        if (vMensagem = '') and (vCampo <> 7) then
          Grava_Processo;
      end
      else
      if vCampo = 7 then
      begin
        Testa_Quebras;
        if (vMensagem = '') then
          begin
            Grava_Quebras;
            Grava_Processo;
          end;
      end
      else
      if vCampo = 8 then  //Confirma quantidade maior
      begin
        Testa_ConfQtdMaior;
        if vMensagem = '1' then
          Grava_Processo;
      end
      else
      if vCampo = 99 then  //Tela do erro
      begin
        Testa_Erro;
        if vMensagem = '1' then
        begin
          vCampo    := vCampo2;
          vMensagem := '';
        end;
      end;
    end;
    //else
    //  vMensagem := 'Dado Invalido';

    vCodigo := Dado;

    if vMensagem <> '' then
      begin
        vTempo := 0;
        if vCampo <> vCampoAux then
        begin
          envbeep(2,0,2);
          envtmsg ( 2,canal,Copy(vMensagem,1,16));
          Sleep(1500);
        end
        else
        begin
          envbeep(2,0,2);
          //Sleep(50);
          envbeep(2,0,2);
          //Sleep(50);
          envbeep(2,0,2);
          //Sleep(50);
          envtmsg ( 2,canal,Copy(vMensagem,1,16));
          Sleep(1500);
          vCampo2 := vCampo;
          vCampo  := 99; //Erro
        end;
        //envtmsg ( 2,canal,Copy(vMensagem,1,16));
        //Sleep(500);
      end;
    Muda_Campo;
  end;

end;

procedure TfBaixaProducaoTed.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  vMensagem     := '';
  vNomeCampo[1] := 'Funcionario:';
  vNomeCampo[2] := 'Setor:';
  vNomeCampo[3] := 'Menu';
  vNomeCampo[4] := 'Talao:';
  vNomeCampo[5] := 'Quantidade:';
  vNomeCampo[6] := 'Cod.Parada:';
  vNomeCampo[7] := 'Quebra/Defeito:';
  vNomeCampo[8] := 'Qtd.Maior Conf? 1=Sim 2=Nao : ';

  FDmCadSetor       := TDmCadSetor.Create(nil);
  FDmCadFuncionario := TDmCadFuncionario.Create(nil);
  FDmCadDefeitos    := TDmCadDefeitos.Create(nil);
  FDmCadParadas     := TDmCadParadas.Create(nil);
  DMTalao           := TDMTalao.Create(nil);

  vCampo := 1;
  BitBtn3Click(Sender);
  BitBtn2Click(Sender);
{opcional : seta o numero de canais do HUB }
{para a varredura automática em busca de dados de cada canal}
{ DEFAULT sem chamar setncan = 8 }
{setncan(0);}

end;

procedure TfBaixaProducaoTed.Button3Click(Sender: TObject);
begin
setncan(0);
end;

procedure TfBaixaProducaoTed.Button8Click(Sender: TObject);
begin
setncan(16);
end;

procedure TfBaixaProducaoTed.BitBtn2Click(Sender: TObject);
begin
  vCampo := 1;
  Muda_Campo;
  {canal:=0;
  //str (canal,scanal );
  x:=envtmsg ( 0,canal,'Funcionario:');
  x:=envtmsg ( 0,canal,'');
  STR(X,DADO);
  //edit2.text := 'Envtmsg retornou '+DADO;
  if (x=0) then
    Edit2.Text := 'NAO EXISTE TED LIGADO NO CANAL '+scanal+' !!!'
  else
    Edit2.Text :='Conectado';}
end;

procedure TfBaixaProducaoTed.BitBtn3Click(Sender: TObject);
begin
  Timer1.Enabled := not(Timer1.Enabled);
end;

procedure TfBaixaProducaoTed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    BitBtn2.Visible := not(BitBtn2.Visible);
    BitBtn3.Visible := not(BitBtn3.Visible);
  end;
end;

procedure TfBaixaProducaoTed.BitBtn1Click(Sender: TObject);
begin
  envbeep(2,0,2);
  Monta_Menu;
end;

procedure TfBaixaProducaoTed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DmTalao);
  FreeAndNil(FDmCadSetor);
  FreeAndNil(FDmCadFuncionario);
  FreeAndNil(FDmCadDefeitos);
  FreeAndNil(FDmCadParadas);
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

end.
