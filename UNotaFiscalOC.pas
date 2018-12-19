unit UNotaFiscalOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Buttons;

type
  TfNotaFiscalOC = class(TForm)
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
  fNotaFiscalOC: TfNotaFiscalOC;

implementation

uses UDM1;

{$R *.DFM}

procedure TfNotaFiscalOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalOC.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
