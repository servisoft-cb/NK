unit URelTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, DB, DBTables;

type
  TfRelTalao = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRShape9: TQRShape;
    QRLabel13: TQRLabel;
    QRShape10: TQRShape;
    QRLabel14: TQRLabel;
    QRShape11: TQRShape;
    QRLabel15: TQRLabel;
    QRShape12: TQRShape;
    QRLabel16: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRSetor1: TQRLabel;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRSetor2: TQRLabel;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRSetor3: TQRLabel;
    QRShape139: TQRShape;
    QRSetor5: TQRLabel;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRSetor6: TQRLabel;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRSetor7: TQRLabel;
    QRShape145: TQRShape;
    QRSetor9: TQRLabel;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRSetor10: TQRLabel;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRSetor11: TQRLabel;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRSetor4: TQRLabel;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRSetor8: TQRLabel;
    QRShape166: TQRShape;
    QRShape167: TQRShape;
    QRSetor12: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText7: TQRDBText;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRShape168: TQRShape;
    Setor1: TQRLabel;
    QRShape169: TQRShape;
    Tempo1: TQRLabel;
    QRShape170: TQRShape;
    TempoReg1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape171: TQRShape;
    Setor2: TQRLabel;
    QRShape172: TQRShape;
    Tempo2: TQRLabel;
    QRShape173: TQRShape;
    TempoReg2: TQRLabel;
    QRShape174: TQRShape;
    Setor3: TQRLabel;
    QRShape175: TQRShape;
    Tempo3: TQRLabel;
    QRShape176: TQRShape;
    TempoReg3: TQRLabel;
    QRShape177: TQRShape;
    Setor4: TQRLabel;
    QRShape178: TQRShape;
    Tempo4: TQRLabel;
    QRShape179: TQRShape;
    TempoReg4: TQRLabel;
    QRShape180: TQRShape;
    Setor5: TQRLabel;
    QRShape181: TQRShape;
    Tempo5: TQRLabel;
    QRShape182: TQRShape;
    TempoReg5: TQRLabel;
    QRShape183: TQRShape;
    Setor6: TQRLabel;
    QRShape184: TQRShape;
    Tempo6: TQRLabel;
    QRShape185: TQRShape;
    TempoReg6: TQRLabel;
    QRShape186: TQRShape;
    Setor7: TQRLabel;
    QRShape187: TQRShape;
    Tempo7: TQRLabel;
    QRShape188: TQRShape;
    TempoReg7: TQRLabel;
    QRShape189: TQRShape;
    Setor8: TQRLabel;
    QRShape190: TQRShape;
    Tempo8: TQRLabel;
    QRShape191: TQRShape;
    TempoReg8: TQRLabel;
    QRShape192: TQRShape;
    Setor9: TQRLabel;
    QRShape193: TQRShape;
    Tempo9: TQRLabel;
    QRShape194: TQRShape;
    TempoReg9: TQRLabel;
    QRShape195: TQRShape;
    Setor10: TQRLabel;
    QRShape196: TQRShape;
    Tempo10: TQRLabel;
    QRShape197: TQRShape;
    TempoReg10: TQRLabel;
    QRShape198: TQRShape;
    Setor11: TQRLabel;
    QRShape199: TQRShape;
    Tempo11: TQRLabel;
    QRShape200: TQRShape;
    TempoReg11: TQRLabel;
    QRShape201: TQRShape;
    Setor12: TQRLabel;
    QRShape202: TQRShape;
    Tempo12: TQRLabel;
    QRShape203: TQRShape;
    TempoReg12: TQRLabel;
    tProdutoSetor: TTable;
    tProdutoSetorCodProduto: TIntegerField;
    tProdutoSetorItem: TIntegerField;
    tProdutoSetorCodSetor: TIntegerField;
    tProdutoSetorTempo: TIntegerField;
    tProdutoSetorTempoRegMaquina: TIntegerField;
    tProdutoSetorlkNomeSetor: TStringField;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    Hora1: TQRLabel;
    Hora2: TQRLabel;
    Hora3: TQRLabel;
    Hora4: TQRLabel;
    Hora5: TQRLabel;
    Hora6: TQRLabel;
    Hora7: TQRLabel;
    Hora8: TQRLabel;
    Hora9: TQRLabel;
    Hora10: TQRLabel;
    Hora11: TQRLabel;
    Hora12: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelTalao: TfRelTalao;

implementation

uses UDM1, UTalao;

{$R *.DFM}

procedure TfRelTalao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTalao.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i : integer;  
begin
  QRLabel9.Caption := DM1.tTalaolkReferencia.AsString + ' - ' + DM1.tTalaolkDescMaterial.AsString + ' - ' + DM1.tTalaolkNomeProduto.AsString + DM1.tTalaolkNomeCor.AsString;
  for i := 1 to 12 do
    TQRLabel(FindComponent('QRSetor'+IntToStr(i))).Caption := '';
  i := 0;
  DM1.tSetor.First;
  while not DM1.tSetor.Eof do
    begin
      inc(i);
      if i > 12 then
        DM1.tSetor.Last
      else
      if DM1.tSetorImpTalao.AsBoolean then
        TQRLabel(FindComponent('QRSetor'+IntToStr(i))).Caption := DM1.tSetorNome.AsString;
      DM1.tSetor.Next;
    end;
end;

procedure TfRelTalao.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i, vTempo : Integer;
  vQtd : Integer;
  vQtdHora : Currency;
  vQtdAux : Currency;
begin
  i := 0;
  for i := 1 to 12 do
    begin
      TQRLabel(FindComponent('Setor'+IntToStr(i))).Caption    := '';
      TQRLabel(FindComponent('Tempo'+IntToStr(i))).Caption    := '';
      TQRLabel(FindComponent('Hora'+IntToStr(i))).Caption     := '';
      TQRLabel(FindComponent('TempoReg'+IntToStr(i))).Caption := '';
    end;
  i := 0;
  tProdutoSetor.First;
  while not tProdutoSetor.Eof do
    begin
      inc(i);
      if i < 13 then
        begin
          vQtdAux := 0;
          TQRLabel(FindComponent('Setor'+IntToStr(i))).Caption    := tProdutoSetorlkNomeSetor.AsString;
          vTempo :=  tProdutoSetorTempo.AsInteger * DM1.tTalaoQuantidade.AsInteger;
          vQtd := vTempo div 100;
          if vTempo mod 100 > 0 then
            vQtd := vQtd + 1;
          TQRLabel(FindComponent('Tempo'+IntToStr(i))).Caption    := FormatFloat('0.00',vQtd);
          vQtdHora := vQtd div 60;
          if vQtd mod 60 > 0 then
            vQtdAux := StrToCurr(FormatCurr('0.00',(vQtd mod 60)));
          if vQtdAux > 0 then
            TQRLabel(FindComponent('Hora'+IntToStr(i))).Caption    := FormatCurr('0',vQtdHora) + ',' + FormatCurr('0',vQtdAux)
          else
            TQRLabel(FindComponent('Hora'+IntToStr(i))).Caption    := FormatCurr('0',vQtdHora);
          if tProdutoSetorTempoRegMaquina.AsInteger > 0 then
            TQRLabel(FindComponent('TempoReg'+IntToStr(i))).Caption := tProdutoSetorTempoRegMaquina.AsString;
        end;
      tProdutoSetor.Next;
    end;
  QRLabel20.Caption := 'Talão : ' + DM1.tTalaoTalao.AsString;
end;

end.
