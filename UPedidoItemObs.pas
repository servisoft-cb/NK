unit UPedidoItemObs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TfPedidoItemObs = class(TForm)
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPedidoItemObs: TfPedidoItemObs;

implementation

uses UDM1;

{$R *.DFM}

procedure TfPedidoItemObs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACtion := Cafree;
end;

procedure TfPedidoItemObs.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

end.
