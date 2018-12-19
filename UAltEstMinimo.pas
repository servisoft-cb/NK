unit UAltEstMinimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl;

type
  TfAltEstMinimo = class(TForm)
    Label5: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAltEstMinimo: TfAltEstMinimo;

implementation

uses UDM1;

{$R *.DFM}

procedure TfAltEstMinimo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tProduto.Filtered := False;
  DM1.tProduto.Filter   := '';
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfAltEstMinimo.BitBtn1Click(Sender: TObject);
begin
  DM1.tProduto.Filtered := False;
  if Edit1.Text <> '' then
    begin
      DM1.tProduto.Filter   := 'Referencia = '+QuotedStr(Edit1.Text+'*');
      DM1.tProduto.Filtered := True;
    end;
end;

procedure TfAltEstMinimo.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfAltEstMinimo.FormShow(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfAltEstMinimo.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
