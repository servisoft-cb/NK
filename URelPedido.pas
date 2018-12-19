unit URelPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls;

type
  TfRelPedido = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel37: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel38: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel39: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel19: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText33: TQRDBText;
    ChildBand1: TQRChildBand;
    Tam1: TQRLabel;
    Tam2: TQRLabel;
    Tam3: TQRLabel;
    Tam4: TQRLabel;
    Tam5: TQRLabel;
    Tam6: TQRLabel;
    Tam7: TQRLabel;
    Tam8: TQRLabel;
    Tam9: TQRLabel;
    Tam10: TQRLabel;
    Tam11: TQRLabel;
    Tam12: TQRLabel;
    Tam13: TQRLabel;
    Par1: TQRLabel;
    Par2: TQRLabel;
    Par3: TQRLabel;
    Par4: TQRLabel;
    Par5: TQRLabel;
    Par6: TQRLabel;
    Par7: TQRLabel;
    Par8: TQRLabel;
    Par9: TQRLabel;
    Par10: TQRLabel;
    Par11: TQRLabel;
    Par12: TQRLabel;
    Par13: TQRLabel;
    Par14: TQRLabel;
    Tam14: TQRLabel;
    Par15: TQRLabel;
    Tam15: TQRLabel;
    Par16: TQRLabel;
    Tam16: TQRLabel;
    Par17: TQRLabel;
    Tam17: TQRLabel;
    Par18: TQRLabel;
    Tam18: TQRLabel;
    Tam19: TQRLabel;
    Par19: TQRLabel;
    Par20: TQRLabel;
    Tam20: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape8: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText34: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedido: TfRelPedido;

implementation

uses UDM1, UPedido;

{$R *.DFM}

procedure TfRelPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fPedido.RadioGroup2.ItemIndex = 0 then
    begin
      QRLabel16.Enabled := True;
      QRLabel17.Enabled := True;
    end
  else
    begin
      QRLabel16.Enabled := False;
      QRLabel17.Enabled := False;
    end;
  if DM1.tPedidoSituacao.AsInteger = 1 then
    QRLabel41.Caption := 'Normal'
  else
    if DM1.tPedidoSituacao.AsInteger = 2 then
      QRLabel41.Caption := 'C 200'
  else
    if DM1.tPedidoSituacao.AsInteger = 3 then
      QRLabel41.Caption := 'C 400';
end;

procedure TfRelPedido.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vDesc : String;
begin
  vDesc := ' ';
  DM1.tPedidoDesconto.First;
  while not DM1.tPedidoDesconto.EOF do
    begin
      if vDesc = ' ' then
        vDesc := vDesc + DM1.tPedidoDescontoPercDesconto.AsString
      else
        vDesc := vDesc + '+' + DM1.tPedidoDescontoPercDesconto.AsString;
      DM1.tPedidoDesconto.Next;
    end;
  QRLabel50.Caption := vDesc;
  if fPedido.RadioGroup2.ItemIndex = 0 then
    begin
      QRLabel46.Enabled  := True;
      QRLabel47.Enabled  := True;
      QRLabel49.Enabled  := True;
      QRLabel50.Enabled  := True;
      QRLabel38.Enabled  := True;
      QRDBText20.Enabled := True;
      QRDBText25.Enabled := True;
      QRDBText26.Enabled := True;
    end
  else
    begin
      QRLabel46.Enabled  := False;
      QRLabel47.Enabled  := False;
      QRLabel49.Enabled  := False;
      QRLabel50.Enabled  := False;
      QRLabel38.Enabled  := False;
      QRDBText20.Enabled := False;
      QRDBText25.Enabled := False;
      QRDBText26.Enabled := False;
    end;
end;

procedure TfRelPedido.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var posicao : integer;
begin
  if DM1.tPedidoGrade.RecordCount > 0 then
    begin
      PrintBand := True;
      for posicao := 1 to 20 do
        begin
          TQRLabel(FindComponent('Tam'+IntToStr(Posicao))).Enabled := False;
          TQRLabel(FindComponent('Par'+IntToStr(Posicao))).Enabled := False;
        end;
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
      DM1.tPedidoGrade.First;
      Posicao := 0;
      while not DM1.tPedidoGrade.EOF do
        begin
          Inc(Posicao);
          if Posicao > 20 then
            begin
              ShowMessage('Imprime no máximo 20 tamanhos por item, favor verificar!');
              DM1.tPedidoGrade.Last;
            end
          else
            begin
              TQRLabel(FindComponent('Tam' + IntToStr(Posicao))).Enabled  := True;
              TQRLabel(FindComponent('Tam' + IntToStr(Posicao))).Caption  := DM1.tPedidoGradelkTamanho.AsString;
              TQRLabel(FindComponent('Par' + IntToStr(Posicao))).Enabled  := True;
              TQRLabel(FindComponent('Par' + IntToStr(Posicao))).Caption  := DM1.tPedidoGradeQtd.AsString;
            end;
          DM1.tPedidoGrade.Next;
        end;
    end
  else
    PrintBand := False;
end;

procedure TfRelPedido.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fPedido.RadioGroup2.ItemIndex = 0 then
    begin
      QRDBText23.Enabled := True;
      QRDBText24.Enabled := True;
    end
  else
    begin
      QRDBText23.Enabled := False;
      QRDBText24.Enabled := False;
    end;
  if DM1.tPedidoGrade.RecordCount > 0 then
    QRShape9.Enabled := False
  else
    QRShape9.Enabled := True;
end;

end.
