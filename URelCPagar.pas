unit URelCPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, ExtCtrls, Qrctrls;

type
  TfRelCPagar = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel17: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText5: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel23: TQRLabel;
    QRExpr7: TQRExpr;
    QRShape26: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape10: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCPagar: TfRelCPagar;
  vQtdTitulosDia, vQtdTitulosMes, vQtdTitulos : Integer;

implementation

uses UDM1, UPrevRelCPagar;

{$R *.DFM}

procedure TfRelCPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCPagar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vTexto : String;
  i      : Integer;
begin
  vQtdTitulosDia := vQtdTitulosDia + 1;
  vQtdTitulosMes := vQtdTitulosMes + 1;
  vQtdTitulos    := vQtdTitulos + 1;
  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfPrevRelCPagar) and (fPrevRelCPagar.Showing) then
        begin
          QRLabel8.Caption  := fPrevRelCPagar.Query1Duplicata.AsString;
          vTexto   := FormatFloat('00',fPrevRelCPagar.Query1Parcela.AsInteger) + '/';
          fPrevRelCPagar.tCPagarParc2.Filtered := False;
          fPrevRelCPagar.tCPagarParc2.Filter   := 'NroDuplicata = '''+IntToStr(fPrevRelCPagar.Query1Duplicata.AsInteger)+''' AND NumCPagar = '''+IntToStr(fPrevRelCPagar.Query1NumCPagar.AsInteger)+'''';
          fPrevRelCPagar.tCPagarParc2.Filtered := True;
          vTexto   := vTexto + FormatFloat('00',fPrevRelCPagar.tCPagarParc2.RecordCount);
          fPrevRelCPagar.tCPagarParc2.Filtered := False;
          QRLabel12.Caption := vTexto;
        end;
    end;
end;

procedure TfRelCPagar.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfPrevRelCPagar) and (fPrevRelCPagar.Showing) then
        begin
          case fPrevRelCPagar.RadioGroup1.ItemIndex of
            0 : begin
                  QRLabel17.Caption := '(Vencidas)';
                  QRLabel13.Caption := 'Referência: ' + fPrevRelCPagar.DateEdit1.Text;
                end;
            1 : begin
                  QRLabel17.Caption := '(Vcto.Período)';
                  QRLabel13.Caption := 'Período ' + fPrevRelCPagar.DateEdit1.Text + ' à ' + fPrevRelCPagar.DateEdit2.Text;
                end;
            2 : begin
                  QRLabel17.Caption := '(Pagas)';
                  QRLabel13.Caption := 'Período ' + fPrevRelCPagar.DateEdit1.Text + ' à ' + fPrevRelCPagar.DateEdit2.Text;
                end;
            3 : begin
                  QRLabel17.Caption := '(Todas)';
                  QRLabel13.Caption := 'Período ' + fPrevRelCPagar.DateEdit1.Text + ' à ' + fPrevRelCPagar.DateEdit2.Text;
                end;
          end;
          QRLabel17.Enabled := True;
        end;
    end;
end;

procedure TfRelCPagar.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
 vData : TDateTime;
 i     : Integer;
 dia, mes, ano : word;
 dia2, mes2, ano2 : word;
begin
  QrLabel14.Caption := IntToStr(vQtdTitulosDia);
  QrLabel20.Caption := IntToStr(vQtdTitulosMes);
  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfPrevRelCPagar) and (fPrevRelCPagar.Showing) then
        begin
          if fPrevRelCPagar.CheckBox1.Checked = False then
            PrintBand := False
          else
            begin
              vData := fPrevRelCPagar.Query1Data.AsDateTime;
              DecodeDate(vData, Ano, Mes, Dia);
              if fPrevRelCPagar.Query1.Eof then
                begin
                  PrintBand := True;
                  ChildBand1.Height := 50;
                end
              else
                begin
                  fPrevRelCPagar.Query1.Next;
                  DecodeDate(fPrevRelCPagar.Query1Data.AsDateTime, Ano2, Mes2, Dia2);
                  if fPrevRelCPagar.Query1.Eof then
                    begin
                      PrintBand := True;
                      ChildBand1.Height := 50;
                    end
                  else
                  if vData <> fPrevRelCPagar.Query1Data.AsDateTime then
                    begin
                      PrintBand := True;
                      if (mes <> mes2) or ((mes = mes2) and (ano <> ano2)) then
                        ChildBand1.Height := 50
                      else
                        ChildBand1.Height := 28;
                      fPrevRelCPagar.Query1.Prior;
                    end
                  else
                    begin
                      PrintBand := False;
                      fPrevRelCPagar.Query1.Prior;
                    end;
                end;
            end;
        end;
    end;
  if PrintBand = True then
    begin
      vQtdTitulosDia := 0;
      if ChildBand1.Height > 40 then
        begin
          QRExpr1.ResetAfterPrint := True;
          vQtdTitulosMes := 0;
        end
      else
        QRExpr1.ResetAfterPrint := False;
    end;
end;

procedure TfRelCPagar.FormShow(Sender: TObject);
begin
  vQtdTitulosDia := 0;
  vQtdTitulosMes := 0;
  vQtdTitulos    := 0;
  vVlrTotalDia   := 0;
  vVlrTotal      := 0;
end;

procedure TfRelCPagar.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrLabel16.Caption := IntToStr(vQtdTitulos);
  vQtdTitulos    := 0;
  vQtdTitulosDia := 0;
  vQtdTitulosMes := 0;
end;

procedure TfRelCPagar.ChildBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if BandPrinted = True then
    begin
      if ChildBand1.Height > 40 then
        QRExpr1.ResetAfterPrint := True
      else
        QRExpr1.ResetAfterPrint := False;
    end
  else
    QRExpr1.ResetAfterPrint := False;
end;

end.
