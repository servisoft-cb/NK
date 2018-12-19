unit UImpOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons;

type
  TfImpOC = class(TForm)
    RxDBGrid1: TRxDBGrid;
    BitBtn14: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpOC: TfImpOC;

implementation

uses UEmissaoNotaFiscal;

{$R *.dfm}

procedure TfImpOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfImpOC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfImpOC.BitBtn14Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    fEmissaoNotaFiscal.mOC.Delete;
end;

end.
