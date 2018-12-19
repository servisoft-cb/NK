unit UValeOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Buttons;

type
  TfValeOC = class(TForm)
    StaticText1: TStaticText;
    DBText1: TDBText;
    StaticText2: TStaticText;
    DBText2: TDBText;
    StaticText3: TStaticText;
    DBText3: TDBText;
    StaticText4: TStaticText;
    DBEdit1: TDBEdit;
    StaticText5: TStaticText;
    DBEdit2: TDBEdit;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fValeOC: TfValeOC;

implementation

uses UDM1;

{$R *.DFM}

procedure TfValeOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfValeOC.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
