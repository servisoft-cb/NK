unit URelCReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, DB, DBTables;

type
  TfRelCReceber = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel13: TQRLabel;
    QRShape26: TQRShape;
    QRLabel21: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel22: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel23: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel19: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel15: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCReceber: TfRelCReceber;

implementation

uses UDM1, UPrevRelCReceber;

{$R *.DFM}

procedure TfRelCReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCReceber.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i      : Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfPrevRelCReceber) and (fPrevRelCReceber.Showing) then
        begin
          fPrevRelCReceber.tCReceberParc2.Filtered := False;
          fPrevRelCReceber.tCReceberParc2.Filter   := 'NumNota = '''+IntToStr(fPrevRelCReceber.Query1Nota.AsInteger)+''' AND NumCReceber = '''+IntToStr(fPrevRelCReceber.Query1NumCReceber.AsInteger)+'''';
          fPrevRelCReceber.tCReceberParc2.Filtered := True;
          fPrevRelCReceber.tCReceberParc2.Filtered := False;
          QRLabel16.Caption := '';
          if DM1.tCliente2.Locate('Codigo',fPrevRelCReceber.Query1CodCli.AsInteger,[loCaseInsensitive]) then
            QRLabel16.Caption := DM1.tCliente2Nome.AsString;
        end;
    end;
end;

procedure TfRelCReceber.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i : Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfPrevRelCReceber) and (fPrevRelCReceber.Showing) then
        begin
          case fPrevRelCReceber.RadioGroup1.ItemIndex of
            0 : QRLabel13.Caption := '(Vencidas) Referência: ' + fPrevRelCReceber.DateEdit1.Text;
            1 : QRLabel13.Caption := '(Pendetes) Período ' + fPrevRelCReceber.DateEdit1.Text + ' à ' + fPrevRelCReceber.DateEdit2.Text;
            2 : QRLabel13.Caption := '(Pagas) Período ' + fPrevRelCReceber.DateEdit1.Text + ' à ' + fPrevRelCReceber.DateEdit2.Text;
            3 : QRLabel13.Caption := '(Todas) Período ' + fPrevRelCReceber.DateEdit1.Text + ' à ' + fPrevRelCReceber.DateEdit2.Text;
          end;
        end;
    end;
end;

procedure TfRelCReceber.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
 vData : TDateTime;
 i     : Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfPrevRelCReceber) and (fPrevRelCReceber.Showing) then
        begin
          if fPrevRelCReceber.CheckBox1.Checked = False then
            PrintBand := False
          else
            begin
              vData := fPrevRelCReceber.Query1Data.AsDateTime;
              if fPrevRelCReceber.Query1.Eof then
                PrintBand := True
              else
                begin
                  fPrevRelCReceber.Query1.Next;
                  if fPrevRelCReceber.Query1.Eof then
                    PrintBand := True
                  else
                  if vData <> fPrevRelCReceber.Query1Data.AsDateTime then
                    begin
                      PrintBand := True;
                      fPrevRelCReceber.Query1.Prior;
                    end
                  else
                    begin
                      PrintBand := False;
                      fPrevRelCReceber.Query1.Prior;
                    end;
                end;
            end;
        end;
    end;
end;




end.
