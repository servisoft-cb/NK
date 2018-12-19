unit URelContFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelContFornecedores = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    Mes1: TQRLabel;
    Mes2: TQRLabel;
    Mes3: TQRLabel;
    Mes4: TQRLabel;
    Mes5: TQRLabel;
    Mes6: TQRLabel;
    Mes7: TQRLabel;
    Mes8: TQRLabel;
    Mes9: TQRLabel;
    Mes10: TQRLabel;
    Mes11: TQRLabel;
    Mes12: TQRLabel;
    qrsmes2: TQRShape;
    qrsMes1: TQRShape;
    qrsmes3: TQRShape;
    qrsmes4: TQRShape;
    qrsmes5: TQRShape;
    qrsmes6: TQRShape;
    qrsmes7: TQRShape;
    qrsmes8: TQRShape;
    qrsmes9: TQRShape;
    qrsmes10: TQRShape;
    qrsmes11: TQRShape;
    qrsmes12: TQRShape;
    Mes13: TQRLabel;
    qrsmes13: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel17: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel18: TQRLabel;
    QRSysData4: TQRSysData;
    qrsVlr2: TQRShape;
    qrsVlr1: TQRShape;
    qrsVlr3: TQRShape;
    qrsVlr4: TQRShape;
    qrsVlr5: TQRShape;
    qrsVlr6: TQRShape;
    qrsVlr7: TQRShape;
    qrsVlr8: TQRShape;
    qrsVlr9: TQRShape;
    qrsVlr10: TQRShape;
    qrsVlr11: TQRShape;
    qrsVlr12: TQRShape;
    qrsVlr13: TQRShape;
    QRDBText2: TQRDBText;
    Vlr1: TQRDBText;
    Vlr2: TQRDBText;
    Vlr3: TQRDBText;
    Vlr4: TQRDBText;
    Vlr5: TQRDBText;
    Vlr6: TQRDBText;
    Vlr7: TQRDBText;
    Vlr8: TQRDBText;
    Vlr9: TQRDBText;
    Vlr10: TQRDBText;
    Vlr11: TQRDBText;
    Vlr12: TQRDBText;
    Vlr13: TQRDBText;
    ChildBand1: TQRChildBand;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    qrsTotal9: TQRShape;
    qrsTotal8: TQRShape;
    qrsTotal7: TQRShape;
    qrsTotal5: TQRShape;
    qrsTotal4: TQRShape;
    qrsTotal3: TQRShape;
    qrsTotal1: TQRShape;
    qrsTotal2: TQRShape;
    QRDBText12: TQRDBText;
    qrsTotal10: TQRShape;
    qrsTotal12: TQRShape;
    qrsTotal13: TQRShape;
    qrsTotal11: TQRShape;
    QRLabel4: TQRLabel;
    qrsTotal6: TQRShape;
    QRETotal1: TQRExpr;
    QRETotal2: TQRExpr;
    QRETotal3: TQRExpr;
    QRETotal4: TQRExpr;
    QRETotal5: TQRExpr;
    QRETotal6: TQRExpr;
    QRETotal7: TQRExpr;
    QRETotal8: TQRExpr;
    QRETotal9: TQRExpr;
    QRETotal10: TQRExpr;
    QRETotal11: TQRExpr;
    QRETotal12: TQRExpr;
    QRETotal13: TQRExpr;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRSGeral9: TQRShape;
    QRSGeral8: TQRShape;
    QRSGeral7: TQRShape;
    QRSGeral5: TQRShape;
    QRSGeral4: TQRShape;
    QRSGeral3: TQRShape;
    QRSGeral1: TQRShape;
    QRSGeral2: TQRShape;
    QRSGeral6: TQRShape;
    QREGeral1: TQRExpr;
    QREGeral2: TQRExpr;
    QREGeral3: TQRExpr;
    QREGeral4: TQRExpr;
    QREGeral5: TQRExpr;
    QREGeral6: TQRExpr;
    QREGeral7: TQRExpr;
    QREGeral8: TQRExpr;
    QREGeral9: TQRExpr;
    QRSGeral10: TQRShape;
    QREGeral10: TQRExpr;
    QRSGeral11: TQRShape;
    QREGeral11: TQRExpr;
    QREGeral12: TQRExpr;
    QRSGeral12: TQRShape;
    QRSGeral13: TQRShape;
    QREGeral13: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelContFornecedores: TfRelContFornecedores;
  vCustoFixo : Boolean;

implementation

uses UPrevContFornecedores, UDM1;

{$R *.DFM}

procedure TfRelContFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelContFornecedores.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  posicao : Integer;
begin
  QRLabel2.Caption := 'Controle de Fornecedores  - ' + fPrevContFornecedores.DateEdit1.Text + ' a ' + fPrevContFornecedores.DateEdit2.Text;
  for posicao := 1 to 13 do
    begin
      TQRLabel(FindComponent('Mes'+IntToStr(Posicao))).Enabled      := False;
      TQRShape(FindComponent('qrsMes'+IntToStr(Posicao))).Enabled   := False;
      TQRShape(FindComponent('qrsVlr'+IntToStr(Posicao))).Enabled   := False;
      TQRDBText(FindComponent('Vlr'+IntToStr(Posicao))).Enabled     := False;

      TQRShape(FindComponent('qrsTotal'+IntToStr(Posicao))).Enabled   := False;
      TQRExpr(FindComponent('QRETotal'+IntToStr(Posicao))).Enabled    := False;

      TQRShape(FindComponent('qrsGeral'+IntToStr(Posicao))).Enabled   := False;
      TQRExpr(FindComponent('QREGeral'+IntToStr(Posicao))).Enabled    := False;
    end;
  for posicao := 1 to 13 do
    begin
      if vMes[posicao] > 0 then
        begin
          TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Enabled    := True;
          TQRShape(FindComponent('qrsMes'+IntToStr(vMes[posicao]))).Enabled := True;
          TQRShape(FindComponent('qrsVlr'+IntToStr(vMes[posicao]))).Enabled := True;
          TQRDBText(FindComponent('Vlr'+IntToStr(vMes[posicao]))).Enabled   := True;

          TQRShape(FindComponent('qrsTotal'+IntToStr(vMes[posicao]))).Enabled := True;
          TQRExpr(FindComponent('QRETotal'+IntToStr(vMes[posicao]))).Enabled  := True;

          TQRShape(FindComponent('qrsGeral'+IntToStr(vMes[posicao]))).Enabled := True;
          TQRExpr(FindComponent('QREGeral'+IntToStr(vMes[posicao]))).Enabled  := True;
          case Posicao of
            1 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Janeiro';
            2 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Fevereiro';
            3 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Março';
            4 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Abril';
            5 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Maio';
            6 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Junho';
            7 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Julho';
            8 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Agosto';
            9 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Setembro';
           10 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Outubro';
           11 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Novembro';
           12 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'Dezembro';
           13 : TQRLabel(FindComponent('Mes'+IntToStr(vMes[posicao]))).Caption := 'TOTAL';
          end;
        end;
    end;
end;

procedure TfRelContFornecedores.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  vCustoFixo := fPrevContFornecedores.mFornecedorCustoFixo.AsBoolean;
end;

procedure TfRelContFornecedores.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if fPrevContFornecedores.mFornecedorCustoFixo.AsBoolean then
    QRLabel4.Caption := 'CUSTO FIXO'
  else
    QRLabel4.Caption := 'VARIÁVEL';
end;

procedure TfRelContFornecedores.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  vCustoFixo := fPrevContFornecedores.mFornecedorCustoFixo.AsBoolean;
end;

procedure TfRelContFornecedores.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if fPrevContFornecedores.mFornecedor.RecordCount = fPrevContFornecedores.mFornecedor.RecNo then
    PrintBand := True
  else
    begin
      fPrevContFornecedores.mFornecedor.Next;
      if vCustoFixo <> fPrevContFornecedores.mFornecedorCustoFixo.AsBoolean then
        PrintBand := True
      else
        PrintBand := False;
      fPrevContFornecedores.mFornecedor.Prior;
    end;
  if PrintBand then
    QRLabel3.Caption := 'Total ' + QRLabel4.Caption;
end;

end.
