unit URelExtComissao2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelExtComissao2 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    ChildBand1: TQRChildBand;
    QRShape3: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
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
  fRelExtComissao2: TfRelExtComissao2;
  vEntradas, vSaidas, vDevolucao, vSaldoAnterior, vSaldo : Currency;

implementation

uses UPrevExtComissao2, UDM1;

{$R *.DFM}

procedure TfRelExtComissao2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelExtComissao2.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel4.Caption := 'De  '+fPrevExtComissao2.DateEdit1.Text+'  até  '+fPrevExtComissao2.DateEdit2.Text;
end;

procedure TfRelExtComissao2.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vEntradas                               := 0;
  vSaidas                                 := 0;
  vDevolucao                              := 0;
  vSaldoAnterior                          := 0;
  vSaldo                                  := 0;
  fPrevExtComissao2.tExtComissao.Filtered := False;
  fPrevExtComissao2.tExtComissao.Filter   := 'CodVendedor = '''+IntToStr(fPrevExtComissao2.Query1CodVendedor.AsInteger)+''' and DtReferencia < '''+fPrevExtComissao2.DateEdit1.Text+''' and Suspensa <> True';
  fPrevExtComissao2.tExtComissao.Filtered := True;
  fPrevExtComissao2.tExtComissao.First;
  while not fPrevExtComissao2.tExtComissao.EOF do
    begin
      if fPrevExtComissao2.tExtComissaoFuncao.AsString = 'E' then
        vSaldoAnterior := vSaldoAnterior + fPrevExtComissao2.tExtComissaoVlrComissao.AsFloat
      else
      if fPrevExtComissao2.tExtComissaoFuncao.AsString = 'S' then
        vSaldoAnterior := vSaldoAnterior - fPrevExtComissao2.tExtComissaoVlrComissao.AsFloat
      else
      if fPrevExtComissao2.tExtComissaoFuncao.AsString = 'D' then
        vSaldoAnterior := vSaldoAnterior - fPrevExtComissao2.tExtComissaoVlrComissao.AsFloat;
      fPrevExtComissao2.tExtComissao.Next;
    end;
  QRlabel7.Caption := FormatFloat('#,###,###,###,##0.00',vSaldoAnterior);
  fPrevExtComissao2.qComissao2.Close;
  fPrevExtComissao2.qComissao2.Params[0].AsInteger := fPrevExtComissao2.Query1CodVendedor.AsInteger;
  fPrevExtComissao2.qComissao2.Params[1].AsDate    := fPrevExtComissao2.DateEdit1.Date;
  fPrevExtComissao2.qComissao2.Params[2].AsDate    := fPrevExtComissao2.DateEdit2.Date;
  fPrevExtComissao2.qComissao2.Open;
  fPrevExtComissao2.qComissao2.First;
end;

procedure TfRelExtComissao2.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel26.Caption := FormatFloat('#,###,###,###,##0.00',vEntradas);
  QRLabel28.Caption := FormatFloat('#,###,###,###,##0.00',vSaidas);
  QRLabel30.Caption := FormatFloat('#,###,###,###,##0.00',vDevolucao);
  QRLabel32.Caption := FormatFloat('#,###,###,###,##0.00',vSaldo);
  QRLabel34.Caption := FormatFloat('#,###,###,###,##0.00',(vSaldoAnterior + vSaldo));
end;

procedure TfRelExtComissao2.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fPrevExtComissao2.qComissao2Funcao.AsString = 'E' then
    begin
      QRLabel19.Caption := 'Entr.';
      vEntradas         := vEntradas + fPrevExtComissao2.qComissao2VlrComissao.AsFloat;
      vSaldo            := vSaldo    + fPrevExtComissao2.qComissao2VlrComissao.AsFloat;
    end
  else
  if fPrevExtComissao2.qComissao2Funcao.AsString = 'S' then
    begin
      QRLabel19.Caption := 'Saída';
      vSaidas           := vSaidas + fPrevExtComissao2.qComissao2VlrComissao.AsFloat;
      vSaldo            := vSaldo  - fPrevExtComissao2.qComissao2VlrComissao.AsFloat;
    end
  else
  if fPrevExtComissao2.qComissao2Funcao.AsString = 'D' then
    begin
      QRLabel19.Caption := 'Devol.';
      vDevolucao        := vDevolucao + fPrevExtComissao2.qComissao2VlrComissao.AsFloat;
      vSaldo            := vSaldo     - fPrevExtComissao2.qComissao2VlrComissao.AsFloat;
    end;
  if fPrevExtComissao2.qComissao2.RecordCount = fPrevExtComissao2.qComissao2.RecNo then
    ChildBand1.Height := 115
  else
    ChildBand1.Height := 0;

 ChildBand1.ParentBand := QRSubDetail1;
end;

end.
