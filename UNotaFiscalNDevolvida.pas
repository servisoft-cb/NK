unit UNotaFiscalNDevolvida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl;

type
  TfNotaFiscalNDevolvida = class(TForm)
    RxDBGrid1: TRxDBGrid;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalNDevolvida: TfNotaFiscalNDevolvida;

implementation

uses UDM1;

{$R *.dfm}

procedure TfNotaFiscalNDevolvida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalNDevolvida.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
