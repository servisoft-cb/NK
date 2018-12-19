unit URelPedidosNaoFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelPedidosNaoFat = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel14: TQRLabel;
    QuickRep2: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape4: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText11: TQRDBText;
    QRShape5: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    SummaryBand2: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedidosNaoFat: TfRelPedidosNaoFat;

implementation

uses UPrevPedidosNaoFat, UDM1;

{$R *.DFM}

procedure TfRelPedidosNaoFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedidosNaoFat.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if fPrevPedidosNaoFat.DateEdit2.Date > 1 then
    QRLabel1.Caption := 'Pedidos não Faturados - ' + fPrevPedidosNaoFat.DateEdit1.Text + ' a ' +
                        fPrevPedidosNaoFat.DateEdit2.Text
  else
  if fPrevPedidosNaoFat.DateEdit1.Date > 1 then
    QRLabel1.Caption := 'Pedidos ATRAZADOS - até' + fPrevPedidosNaoFat.DateEdit1.Text
  else
    QRLabel1.Caption := 'Pedidos Em Aberto (Geral)';

  if fPrevPedidosNaoFat.RxDBLookupCombo1.Text = '' then
    QRLabel5.Caption := fPrevPedidosNaoFat.RxDBLookupCombo1.Text
  else
    QRLabel5.Caption := 'Todos';
end;

procedure TfRelPedidosNaoFat.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if fPrevPedidosNaoFat.DateEdit2.Date > 1 then
    QRLabel1.Caption := 'Previsão do Faturamento - ' + fPrevPedidosNaoFat.DateEdit1.Text + ' a ' +
                        fPrevPedidosNaoFat.DateEdit2.Text
  else
  if fPrevPedidosNaoFat.DateEdit1.Date > 1 then
    QRLabel1.Caption := 'Previsão do Faturamento ATRAZADO - até ' + fPrevPedidosNaoFat.DateEdit1.Text
  else
    QRLabel1.Caption := 'Previsão do Faturamento (Geral)' + fPrevPedidosNaoFat.DateEdit1.Text;
  if fPrevPedidosNaoFat.RxDBLookupCombo1.Text = '' then
    QRLabel5.Caption := fPrevPedidosNaoFat.RxDBLookupCombo1.Text
  else
    QRLabel5.Caption := 'Todos';
end;

end.
