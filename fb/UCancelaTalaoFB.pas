unit UCancelaTalaoFB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, StdCtrls, DBCtrls, ExtCtrls, Mask, ToolEdit, RXDBCtrl, Buttons, Db, DBTables,
  UDMTalao;

type
  TfCancelaTalaoFB = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
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
  fCancelaTalaoFB: TfCancelaTalaoFB;

implementation

uses UConsTalaoFB;

{$R *.DFM}

procedure TfCancelaTalaoFB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfCancelaTalaoFB.BitBtn5Click(Sender: TObject);
begin
  if DmTalao.tTalaoTalao.AsInteger > 0 then
    begin
      if DmTalao.tTalaoDTCANCELADO.AsDateTime < 1 then
        begin
          DmTalao.tTalaoCANCELADO.AsString     := 'N';
          DmTalao.tTalaoMOTIVOCANCELADO.Clear;
        end
      else
        DmTalao.tTalaoCANCELADO.AsString := 'S';
      DmTalao.tTalao.Post;
    end;
  Close;
end;

procedure TfCancelaTalaoFB.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfCancelaTalaoFB.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DmTalao.tTalao.State in [dsEdit] then
    DmTalao.tTalao.Cancel;
end;

procedure TfCancelaTalaoFB.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  DmTalao.tTalao.Edit;
end;

end.
