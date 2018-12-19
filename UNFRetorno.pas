unit UNFRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit;

type
  TfNFRetorno = class(TForm)
    BitBtn6: TBitBtn;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNFRetorno: TfNFRetorno;

implementation

uses UDM1;

{$R *.dfm}

procedure TfNFRetorno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNFRetorno.BitBtn6Click(Sender: TObject);
begin
 if Edit1.Text <> '' then
   begin
     Dm1.tNEntrada.Edit;
     Dm1.tNEntradaNumNFRetorno.AsString := Edit1.Text;
     Dm1.tNEntrada.Post;
     Close;
   end
 else
   ShowMessage('Deve haver o número da nota para confirmar!');
end;

end.
