unit URelProgramacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelProgramacao = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel16: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText18: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel18: TQRLabel;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRExpr2: TQRExpr;
    QRLabel20: TQRLabel;
    Qtd1: TQRLabel;
    Qtd2: TQRLabel;
    Qtd3: TQRLabel;
    Qtd4: TQRLabel;
    Qtd5: TQRLabel;
    Qtd6: TQRLabel;
    Qtd7: TQRLabel;
    Qtd8: TQRLabel;
    Qtd9: TQRLabel;
    Qtd10: TQRLabel;
    Qtd11: TQRLabel;
    Qtd12: TQRLabel;
    Qtd13: TQRLabel;
    Qtd14: TQRLabel;
    Qtd15: TQRLabel;
    Qtd16: TQRLabel;
    Qtd17: TQRLabel;
    Qtd18: TQRLabel;
    Qtd19: TQRLabel;
    Qtd20: TQRLabel;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRLabel3: TQRLabel;
    Tam1: TQRLabel;
    Tam2: TQRLabel;
    Tam3: TQRLabel;
    Tam4: TQRLabel;
    Tam5: TQRLabel;
    Tam7: TQRLabel;
    Tam6: TQRLabel;
    Tam8: TQRLabel;
    Tam9: TQRLabel;
    Tam10: TQRLabel;
    Tam11: TQRLabel;
    Tam12: TQRLabel;
    Tam13: TQRLabel;
    Tam14: TQRLabel;
    Tam15: TQRLabel;
    Tam16: TQRLabel;
    Tam17: TQRLabel;
    Tam18: TQRLabel;
    Tam19: TQRLabel;
    Tam20: TQRLabel;
    TD1: TQRLabel;
    TD2: TQRLabel;
    TD3: TQRLabel;
    TD4: TQRLabel;
    TD5: TQRLabel;
    TD6: TQRLabel;
    TD7: TQRLabel;
    TD8: TQRLabel;
    TD9: TQRLabel;
    TD10: TQRLabel;
    TD11: TQRLabel;
    TD12: TQRLabel;
    TD13: TQRLabel;
    TD14: TQRLabel;
    TD15: TQRLabel;
    TD16: TQRLabel;
    TD17: TQRLabel;
    TD18: TQRLabel;
    TD19: TQRLabel;
    TD20: TQRLabel;
    TR1: TQRLabel;
    TR2: TQRLabel;
    TR3: TQRLabel;
    TR4: TQRLabel;
    TR5: TQRLabel;
    TR6: TQRLabel;
    TR7: TQRLabel;
    TR8: TQRLabel;
    TR9: TQRLabel;
    TR10: TQRLabel;
    TR11: TQRLabel;
    TR12: TQRLabel;
    TR13: TQRLabel;
    TR14: TQRLabel;
    TR15: TQRLabel;
    TR16: TQRLabel;
    TR17: TQRLabel;
    TR18: TQRLabel;
    TR19: TQRLabel;
    TR20: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProgramacao: TfRelProgramacao;
  vImpBand2 : Boolean;
  vPaginaNova : Boolean;
  vQtdDia, vQtdRef : Array [1..20] of Integer;

implementation

uses UPrevProgramacao, UDM1;

{$R *.DFM}

procedure TfRelProgramacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProgramacao.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vData : TDateTime;
  vCodProduto : Integer;
  vCodGradeAux : Integer;
  i : Integer;
begin
  vPaginaNova := False;
  vImpBand2   := False;
  vData       := fPrevProgramacao.mRelProgDtReprogramacao.AsDateTime;
  vCodProduto := fPrevProgramacao.mRelProgCodProduto.AsInteger;
  vCodGradeAux := fPrevProgramacao.mRelProgCodGrade.AsInteger;
  if fPrevProgramacao.mRelProg.RecNo = fPrevProgramacao.mRelProg.RecordCount then
    begin
      PrintBand := True;
      vImpBand2 := True;
    end
  else
    begin
      fPrevProgramacao.mRelProg.Next;
      if vCodGradeAux <> fPrevProgramacao.mRelProgCodGrade.AsInteger then
        begin
          PrintBand := True;
          vImpBand2 := True;
          fPrevProgramacao.mRelProg.Prior;
          vPaginaNova := True;
        end
      else
      if vCodProduto <> fPrevProgramacao.mRelProgCodProduto.AsInteger then
        begin
          PrintBand := True;
          vImpBand2 := True;
          fPrevProgramacao.mRelProg.Prior;
        end
      else
      if vData <> fPrevProgramacao.mRelProgDtReprogramacao.AsDateTime then
        begin
          PrintBand := True;
          fPrevProgramacao.mRelProg.Prior;
        end
      else
        begin
          PrintBand := False;
          fPrevProgramacao.mRelProg.Prior;
        end;
    end;
  //*** Imprime os totais por tamanho
  if PrintBand then
    begin
      for i := 1 to 20 do
        begin
          if vQtdDia[i] > 0 then
            begin
              TQRLabel(FindComponent('TD'+IntToStr(i))).Enabled := True;
              TQRLabel(FindComponent('TD'+IntToStr(i))).Caption := IntToStr(vQtdDia[i]);
            end
          else
            TQRLabel(FindComponent('TD'+IntToStr(i))).Enabled := False;
          vQtdDia[i] := 0;
        end;
    end;

//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  {if fPrevProgramacao.mRelProg.Eof then
    begin
      PrintBand := True;
      vImpBand2 := True;
    end
  else
    begin
      fPrevProgramacao.mRelProg.Next;
      if fPrevProgramacao.mRelProg.Eof then
        begin
          PrintBand := True;
          vImpBand2 := True;
        end
      else
      if vCodProduto <> fPrevProgramacao.mRelProgCodProduto.AsInteger then
        begin
          PrintBand := True;
          vImpBand2 := True;
        end
      else
      if vData <> fPrevProgramacao.mRelProgDtEmbarque.AsDateTime then
        begin
          PrintBand := True;
          fPrevProgramacao.mRelProg.Prior;
        end
      else
        begin
          PrintBand := False;
          fPrevProgramacao.mRelProg.Prior;
        end;
    end;}
end;

procedure TfRelProgramacao.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i : Integer;
begin
  PrintBand := vImpBand2;

  if PrintBand then
    begin
      for i := 1 to 20 do
        begin
          if vQtdRef[i] > 0 then
            begin
              TQRLabel(FindComponent('TR'+IntToStr(i))).Enabled := True;
              TQRLabel(FindComponent('TR'+IntToStr(i))).Caption := IntToStr(vQtdRef[i]);
            end
          else
            TQRLabel(FindComponent('TR'+IntToStr(i))).Enabled := False;
          vQtdRef[i] := 0;
        end;
    end;
end;

procedure TfRelProgramacao.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i : Integer;
begin
//  if fPrevProgramacao.mRelProgDtEmbarque.AsDateTime = fPrevProgramacao.mRelProgDtReprogramacao.AsDateTime then
  QRDBText2.Enabled := fPrevProgramacao.mRelProgReprogramacao.AsBoolean;

  if vPaginaNova then
    DetailBand1.ForceNewPage := vPaginaNova;

  if fPrevProgramacao.mRelProgCodGrade.AsInteger < 1 then
    DetailBand1.Height := 20
  else
  if fPrevProgramacao.mRelProgCodGrade.AsInteger > 0 then
    begin
      DetailBand1.Height := 53;

      for i := 1 to 20 do
        begin
          TQRLabel(FindComponent('Tam'+IntToStr(i))).Enabled := False;
          TQRLabel(FindComponent('Qtd'+IntToStr(i))).Enabled := False;
        end;

      i := 0;
      fPrevProgramacao.tPedidoGrade.First;
      while not fPrevProgramacao.tPedidoGrade.EOF do
        begin
          Inc(i);
          TQRLabel(FindComponent('Tam' + IntToStr(i))).Enabled  := True;
          TQRLabel(FindComponent('Tam' + IntToStr(i))).Caption  := fPrevProgramacao.tPedidoGradelkTamanho.AsString;
          TQRLabel(FindComponent('Qtd' + IntToStr(i))).Enabled  := True;
          TQRLabel(FindComponent('Qtd' + IntToStr(i))).Caption  := fPrevProgramacao.tPedidoGradeQtdParesRest.AsString;
          vQtdDia[i] := vQtdDia[i] + fPrevProgramacao.tPedidoGradeQtdParesRest.AsInteger;
          vQtdRef[i] := vQtdRef[i] + fPrevProgramacao.tPedidoGradeQtdParesRest.AsInteger;
          fPrevProgramacao.tPedidoGrade.Next;
        end;
    end;
end;

procedure TfRelProgramacao.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  vPaginaNova := False;
  for i := 1 to 20 do
    begin
      vQtdDia[i] := 0;
      vQtdRef[i] := 0;
    end;
end;

procedure TfRelProgramacao.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  DetailBand1.ForceNewPage := False;
end;

procedure TfRelProgramacao.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  {for i := 1 to 20 do
    TQRLabel(FindComponent('Tam'+IntToStr(i))).Enabled := False;

  DM1.tGrade.SetKey;
  DM1.tGradeCodigo.AsInteger := fPrevProgramacao.mRelProgCodGrade.AsInteger;
  if DM1.tGrade.GotoKey then
    begin
      i := 0;
      DM1.tGradeItem.First;
      while not DM1.tGradeItem.Eof do
        begin
          Inc(i);
          TQRLabel(FindComponent('Tam' + IntToStr(i))).Enabled  := True;
          TQRLabel(FindComponent('Tam' + IntToStr(i))).Caption  := DM1.tGradeItemTamanho.AsString;
          DM1.tGradeItem.Next;
        end;
    end;}
end;

end.
