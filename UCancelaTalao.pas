unit UCancelaTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, StdCtrls, DBCtrls, ExtCtrls, Mask,
  ToolEdit, RXDBCtrl, Buttons, Db, DBTables;

type
  TfCancelaTalao = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Bevel1: TBevel;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBText3: TDBText;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCancelaTalao: TfCancelaTalao;

implementation

uses UDM1;

{$R *.DFM}

procedure TfCancelaTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfCancelaTalao.BitBtn5Click(Sender: TObject);
begin
  if DM1.tTalaoTalao.AsInteger > 0 then
    begin
      if DM1.tTalaoDtCancelado.AsDateTime < 1 then
        begin
          DM1.tTalaoCancelado.AsBoolean := False;
          DM1.tTalaoMotivoCancelado.Clear;
        end
      else
        DM1.tTalaoCancelado.AsBoolean := True;
      DM1.tTalao.Post;
    end;
  Close;
end;

procedure TfCancelaTalao.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfCancelaTalao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tTalao.State in [dsEdit] then
    DM1.tTalao.Cancel;
end;

procedure TfCancelaTalao.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  DM1.tTalao.Edit;
end;

end.
