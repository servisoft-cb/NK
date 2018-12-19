unit USenhaControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit;

type
  TfSenhaControle = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSenhaControle: TfSenhaControle;

implementation

uses UDM1;

{$R *.dfm}

procedure TfSenhaControle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSenhaControle.BitBtn2Click(Sender: TObject);
begin
  DM1.vSenhaControle := '';
  Close;
end;

procedure TfSenhaControle.FormShow(Sender: TObject);
begin
  DM1.vSenhaControle := '';
end;

procedure TfSenhaControle.BitBtn1Click(Sender: TObject);
begin
  DM1.vSenhaControle := Edit1.Text;
  if DM1.vSenhaControle <> DM1.tParametrosSenhaExc.AsString then
    begin
      ShowMessage('Senha não confere!');
      DM1.vSenhaControle := '';
    end;
  Close;
end;

end.
