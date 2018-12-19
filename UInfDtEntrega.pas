unit UInfDtEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid;

type
  TfInfDtEntrega = class(TForm)
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInfDtEntrega: TfInfDtEntrega;

implementation

uses uPrevProdMinimo;

{$R *.dfm}

procedure TfInfDtEntrega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfInfDtEntrega.BitBtn2Click(Sender: TObject);
begin
  if fPrevProdMinimo.mAuxiliar.State in [dsEdit,dsInsert] then
    fPrevProdMinimo.mAuxiliar.Post;
  Close;
end;

procedure TfInfDtEntrega.BitBtn1Click(Sender: TObject);
begin
  if fPrevProdMinimo.mAuxiliar.RecordCount > 0 then
    fPrevProdMinimo.mAuxiliar.Delete;
end;

end.
