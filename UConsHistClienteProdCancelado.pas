unit UConsHistClienteProdCancelado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, StdCtrls, ComCtrls;

type
  TfConsHistClienteProdCancelado = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RxDBGrid1: TRxDBGrid;
    TabSheet2: TTabSheet;
    RxDBGrid2: TRxDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsHistClienteProdCancelado: TfConsHistClienteProdCancelado;

implementation

uses UConsHistCliente;

{$R *.DFM}

procedure TfConsHistClienteProdCancelado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
