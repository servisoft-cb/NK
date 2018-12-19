unit UConsTalaoHor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, RzTabs, DB,
  DBTables, MemTable, Mask, ToolEdit, CurrEdit, RXCtrls;

type
  TfConsTalaoHor = class(TForm)
    RxDBGrid1: TRxDBGrid;
    BitBtn6: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RxDBGrid2: TRxDBGrid;
    mHoras: TMemoryTable;
    mHorasCodFuncionario: TIntegerField;
    mHorasCodSetor: TIntegerField;
    mHorasNomeFuncionario: TStringField;
    mHorasNomeSetor: TStringField;
    RxDBGrid3: TRxDBGrid;
    dsmHoras: TDataSource;
    mHorasTotalHoras: TFloatField;
    RxLabel1: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsTalaoHor: TfConsTalaoHor;

implementation

uses UDM1;

{$R *.dfm}

procedure TfConsTalaoHor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsTalaoHor.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsTalaoHor.FormShow(Sender: TObject);
var
  vQtdHoras, vAux : Currency;
  vMinuto1, vMinuto2 : Currency;
  vQtdHoraGeral : Currency;
  vHora : Currency;
begin
  vQtdHoraGeral := 0;
  mHoras.EmptyTable;
  DM1.tTalaoHor.First;
  while not DM1.tTalaoHor.Eof do
    begin
      vQtdHoras := 0;
      if (DM1.tTalaoHorHrEntrada1.AsDateTime > 0) and (DM1.tTalaoHorHrSaida1.AsDateTime > 0) then
        vQtdHoras := (DM1.tTalaoHorHrSaida1.AsDateTime - DM1.tTalaoHorHrEntrada1.AsDateTime) * 24;
      if (DM1.tTalaoHorHrEntrada2.AsDateTime > 0) and (DM1.tTalaoHorHrSaida2.AsDateTime > 0) then
        vQtdHoras := vQtdHoras + ((DM1.tTalaoHorHrSaida2.AsDateTime - DM1.tTalaoHorHrEntrada2.AsDateTime) * 24);
      if (DM1.tTalaoHorHrEntrada3.AsDateTime > 0) and (DM1.tTalaoHorHrSaida3.AsDateTime > 0) then
        vQtdHoras := vQtdHoras + ((DM1.tTalaoHorHrSaida3.AsDateTime - DM1.tTalaoHorHrEntrada3.AsDateTime) * 24);
      vAux := vQtdHoras - Int(vQtdHoras);
      vAux := (vAux * 60) / 100;
      vQtdHoras := Int(vQtdHoras) + vAux;
      if mHoras.Locate('CodSetor;CodFuncionario',VarArrayOf([DM1.tTalaoHorCodSetor.AsInteger,DM1.tTalaoHorCodFuncionario.AsInteger]),[locaseinsensitive]) then
        mHoras.Edit
      else
        begin
          mHoras.Insert;
          mHorasCodSetor.AsInteger       := DM1.tTalaoHorCodSetor.AsInteger;
          mHorasCodFuncionario.AsInteger := DM1.tTalaoHorCodFuncionario.AsInteger;
          mHorasNomeSetor.AsString       := DM1.tTalaoHorlkNomeSetor.AsString;
          mHorasNomeFuncionario.AsString := DM1.tTalaoHorlkNomeFuncionario.AsString;
        end;
      //Bloco incluido dia 30/03/2007
      vHora    := Int(vQtdHoras);
      vMinuto1 := StrToFloat(FormatFloat('0.00',(vQtdHoras - Int(vQtdHoras)) * 100));
      vMinuto2 := StrToFloat(FormatFloat('0.00',(mHorasTotalHoras.AsFloat - Int(mHorasTotalHoras.AsFloat)) * 100));
      vAux     := vMinuto1 + vMinuto2;
      while vAux >= 60 do
        begin
          vAux := vAux - 60;
          vQtdHoras := Int(vQtdHoras) + 1;
        end;
      if vAux > 0 then
        vAux := vAux / 100;
      mHorasTotalHoras.AsFloat   := StrToFloat(FormatFloat('0.00',Int(mHorasTotalHoras.AsFloat) + Int(vQtdHoras) + vAux));
      //**********

      vMinuto2 := StrToFloat(FormatFloat('0.00',(vQtdHoraGeral - Int(vQtdHoraGeral)) * 100));
      vAux     := vMinuto1 + vMinuto2;
      while vAux >= 60 do
        begin
          vAux  := vAux - 60;
          vHora := Int(vHora) + 1;
        end;
      if vAux > 0 then
        vAux := vAux / 100;
      vQtdHoraGeral := StrToFloat(FormatFloat('0.00',Int(vQtdHoraGeral) + Int(vHora) + vAux));
      //******* Final

      mHoras.Post;
      DM1.tTalaoHor.Next;
    end;
  CurrencyEdit1.Value := vQtdHoraGeral;
end;

end.
