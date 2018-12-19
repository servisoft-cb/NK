unit UBaixaProducaoMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ToolEdit, StdCtrls, Mask, CurrEdit, RzEdit, Buttons, rsDBUtils;

type
  TfBaixaProducaoMov = class(TForm)
    Label1: TLabel;
    ceQtdEntrada: TCurrencyEdit;
    Label2: TLabel;
    dteEntrada: TDateEdit;
    rzdtHrEntrada: TRzDateTimeEdit;
    Label3: TLabel;
    Label4: TLabel;
    dteSaida: TDateEdit;
    rzdtHrSaida: TRzDateTimeEdit;
    Label5: TLabel;
    Label6: TLabel;
    ceQtdProduzida: TCurrencyEdit;
    ceQtdQuebras: TCurrencyEdit;
    lblQuebras: TLabel;
    Label8: TLabel;
    ceFuncionario: TCurrencyEdit;
    Label9: TLabel;
    btnQuebras: TBitBtn;
    btnConfirmar: TBitBtn;
    Label10: TLabel;
    lblEvento: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    dteSaidaParada: TDateEdit;
    Label11: TLabel;
    rzdtHrSaidaParada: TRzDateTimeEdit;
    btnParada: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure ceQtdProduzidaExit(Sender: TObject);
    procedure ceQtdEntradaExit(Sender: TObject);
    procedure btnParadaClick(Sender: TObject);
    procedure btnQuebrasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    vQtdHoras, vQtdHorasParadas : Real;

    procedure Calcular_Quebras;
    procedure Grava_Quebras;
    procedure Grava_Paradas(Tipo : String); //E= Entrada  S=Saida;

  public
    { Public declarations }
    vCodParada_Defeito: Integer;
  end;

var
  fBaixaProducaoMov: TfBaixaProducaoMov;

implementation

uses Math, UDMTalao, UBaixaProducaoItem;

{$R *.dfm}

procedure TfBaixaProducaoMov.Grava_Paradas(Tipo : String); //E= Entrada  S=Saida;
var
  vItemAux : Integer;
begin
  if (vCodParada_Defeito <= 0) and (Tipo = 'E') then
    exit;

  DMTalao.tTalaoParadas.Last;
  if Tipo = 'E' then
    begin
      vItemAux := DMTalao.tTalaoParadasITEM.AsInteger;

      DMTalao.tTalaoParadas.Insert;
      DMTalao.tTalaoParadasTALAO.AsInteger      := DMTalao.tTalaoTALAO.AsInteger;
      DMTalao.tTalaoParadasCODSETOR.AsInteger   := DMTalao.tTalaoSetorCODSETOR.AsInteger;
      DMTalao.tTalaoParadasITEM.AsInteger       := vItemAux + 1;
      DMTalao.tTalaoParadasCODPARADA.AsInteger  := vCodParada_Defeito;
      DMTalao.tTalaoParadasDTENTRADA.AsDateTime := Date;
      DMTalao.tTalaoParadasHRENTRADA.AsDateTime := Now;
      DMTalao.tTalaoParadasCOMPLEMENTO.AsString := '';
    end
  else
    begin
      DMTalao.tTalaoParadas.Edit;
      DMTalao.tTalaoParadasDTSAIDA.AsDateTime := Date;
      DMTalao.tTalaoParadasHRSAIDA.AsDateTime := Now;

      vQtdHorasParadas := ((DMTalao.tTalaoParadasHRSAIDA.AsDateTime - DMTalao.tTalaoParadasHRENTRADA.AsDateTime) * 24);
      DMTalao.tTalaoParadasTOTALHORAS.AsFloat := vQtdHorasParadas;

    end;
  DMTalao.tTalaoParadas.Post;
end;

procedure TfBaixaProducaoMov.Grava_Quebras;
var
  vItemAux : Integer;
begin
  DMTalao.tTalaoQuebras.Last;
  vItemAux := DMTalao.tTalaoQuebrasITEM.AsInteger;

  DMTalao.tTalaoQuebras.Insert;
  DMTalao.tTalaoQuebrasTALAO.AsInteger      := DMTalao.tTalaoTALAO.AsInteger;
  DMTalao.tTalaoQuebrasCODSETOR.AsInteger   := DMTalao.tTalaoSetorCODSETOR.AsInteger;
  DMTalao.tTalaoQuebrasITEM.AsInteger       := vItemAux + 1;
  DMTalao.tTalaoQuebrasCODDEFEITO.AsInteger := vCodParada_Defeito;
  DMTalao.tTalaoQuebrasDATA.AsDateTime      := dteSaida.Date;
  DMTalao.tTalaoQuebrasHORA.AsDateTime      := rzdtHrSaida.Time;
  DMTalao.tTalaoQuebrasCOMPLEMENTO.AsString := '';
  DMTalao.tTalaoQuebrasQTD.AsInteger        := ceQtdQuebras.AsInteger;
  DMTalao.tTalaoQuebras.Post;
end;

procedure TfBaixaProducaoMov.Calcular_Quebras;
begin
  ceQtdQuebras.Clear;
  if not ceQtdQuebras.Visible then
    exit;

  if ceQtdProduzida.AsInteger < ceQtdEntrada.AsInteger then
    ceQtdQuebras.AsInteger := ceQtdEntrada.AsInteger - ceQtdProduzida.AsInteger;
end;

procedure TfBaixaProducaoMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfBaixaProducaoMov.btnConfirmarClick(Sender: TObject);
begin
  if ((dteSaida.Date > 10) and (rzdtHrSaida.Time <= 0)) or
     ((dteSaida.Date < 10) and (rzdtHrSaida.Time > 0)) then
    Raise Exception.Create('Falta informar a data ou a hora da saída do setor!');
  if (ceQtdProduzida.AsInteger > 0) and (dteSaida.Date < 10) then
    Raise Exception.Create('Falta informar a data ou a hora da saída do setor!');
  if (dteEntrada.Date < 10) or (rzdtHrEntrada.Time <= 0) or (ceQtdEntrada.AsInteger <= 0) then
    Raise Exception.Create('É obrigatório informar os dados de entrada!');
  if dteEntrada.Date <> dteSaida.Date then
    Raise Exception.Create('Data da saída não pode ser diferente da entrada!');
  if rzdtHrEntrada.Time > rzdtHrSaida.Time then
    Raise Exception.Create('Hora entrada não pode ser maior que hora saida!');

  if (btnParada.Visible) and (vCodParada_Defeito <= 0)  then
    Raise Exception.Create('Parada não foi informada!');

  if (btnQuebras.Visible) and (ceQtdQuebras.AsInteger > 0) and (vCodParada_Defeito <= 0)  then
    Raise Exception.Create('Quebra não foi informada!');

  if (btnQuebras.Visible) and (ceQtdQuebras.AsInteger > 0) then
    Grava_Quebras
  else
  if btnParada.Visible then
    begin
      if (dteSaidaParada.Date > 10) and (dteSaidaParada.Date <> dteSaida.Date ) then
        Raise Exception.Create('Data saida da parada menor que data da saida do setor!');
      if (dteSaidaParada.Date > 10) and (rzdtHrSaidaParada.Time <= rzdtHrSaida.Time) then
        Raise Exception.Create('Hora saida da parada menor que hora da saida do setor!');
      
      if dteSaidaParada.Date > 10 then
        Grava_Paradas('S')


    end;





  





end;

procedure TfBaixaProducaoMov.ceQtdProduzidaExit(Sender: TObject);
begin
  Calcular_Quebras;

end;

procedure TfBaixaProducaoMov.ceQtdEntradaExit(Sender: TObject);
begin
  ceQtdQuebras.Clear;
  if not(ceQtdQuebras.Visible) or (ceQtdProduzida.AsInteger <= 0) then
    exit;
  if ceQtdProduzida.AsInteger < ceQtdEntrada.AsInteger then
    ceQtdQuebras.AsInteger := ceQtdEntrada.AsInteger - ceQtdProduzida.AsInteger;
end;

procedure TfBaixaProducaoMov.btnParadaClick(Sender: TObject);
begin
  vCodParada_Defeito := 0;
  fBaixaProducaoItem := TfBaixaProducaoItem.Create(Self);
  fBaixaProducaoItem.Tag := 1; //Tag = 1 vai identificar que o cadastro que vai abrir é de paradas
  fBaixaProducaoItem.Label2.Caption := 'Informar o motivo da PARADA';
  fBaixaProducaoItem.ShowModal;
end;

procedure TfBaixaProducaoMov.btnQuebrasClick(Sender: TObject);
begin
  if ceQtdQuebras.AsInteger <= 0 then
    Raise Exception.Create('Movimento sem quebras!');

  vCodParada_Defeito := 0;
  fBaixaProducaoItem := TfBaixaProducaoItem.Create(Self);
  fBaixaProducaoItem.Tag := 2; //Tag = 2 vai identificar que o cadastro que vai abrir é de quebras
  fBaixaProducaoItem.Label2.Caption := 'Informar o motivo do Defeito/Quebra';
  fBaixaProducaoItem.ShowModal;
end;

procedure TfBaixaProducaoMov.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
