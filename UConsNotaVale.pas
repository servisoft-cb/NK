unit UConsNotaVale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, Grids, DBGrids, RXDBCtrl, DB, DBTables, StdCtrls,
  Buttons;

type
  TfConsNotaVale = class(TForm)
    RxDBGrid1: TRxDBGrid;
    RxLabel1: TRxLabel;
    qVale: TQuery;
    dsqVale: TDataSource;
    RxDBGrid2: TRxDBGrid;
    qValeItemNota: TIntegerField;
    qValeNumVale: TIntegerField;
    qValeItemVale: TIntegerField;
    qValeQtd: TFloatField;
    RxLabel2: TRxLabel;
    BitBtn1: TBitBtn;
    qValeNumSeq: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsNotaVale: TfConsNotaVale;

implementation

uses UDM1;

{$R *.dfm}

procedure TfConsNotaVale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qVale.Close;
  Action := Cafree;
end;

procedure TfConsNotaVale.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaVale.FormShow(Sender: TObject);
begin
  qVale.Close;
  qVale.ParamByName('NumSeq').AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
  qVale.ParamByName('Filial').AsInteger := DM1.tNotaFiscalFilial.AsInteger;
  qVale.Open;
end;

end.
