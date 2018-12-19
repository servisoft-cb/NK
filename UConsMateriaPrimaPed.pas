unit UConsMateriaPrimaPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, RzTabs;

type
  TfConsMateriaPrimaPed = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsMateriaPrimaPed: TfConsMateriaPrimaPed;

implementation

uses UConsPedidoBR, UConsMateriaPrima;

{$R *.dfm}

procedure TfConsMateriaPrimaPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsMateriaPrimaPed.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
