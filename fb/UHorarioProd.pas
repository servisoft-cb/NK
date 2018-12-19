unit UHorarioProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, StdCtrls, Buttons;

type
  TfHorarioProd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fHorarioProd: TfHorarioProd;

implementation

uses UDMHorarioProd;

{$R *.dfm}

procedure TfHorarioProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMHorarioProd.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMHorarioProd);
  Action := Cafree;
end;

procedure TfHorarioProd.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfHorarioProd.Habilita;
begin
  Panel2.Enabled  := not(Panel2.Enabled);
  BitBtn1.Enabled := not(BitBtn1.Enabled);
  BitBtn2.Enabled := not(BitBtn2.Enabled);
  BitBtn4.Enabled := not(BitBtn4.Enabled);
end;

procedure TfHorarioProd.BitBtn2Click(Sender: TObject);
begin
  DMHorarioProd.cdsHorarioProd.Post;
  DMHorarioProd.cdsHorarioProd.ApplyUpdates(0);
  Habilita;
end;

procedure TfHorarioProd.BitBtn4Click(Sender: TObject);
begin
  DMHorarioProd.cdsHorarioProd.CancelUpdates;
  Habilita;
end;

procedure TfHorarioProd.BitBtn1Click(Sender: TObject);
begin
  Habilita;
  SMDBGrid1.SetFocus;
end;

procedure TfHorarioProd.FormShow(Sender: TObject);
begin
  if not Assigned(DMHorarioProd) then
    DMHorarioProd := TDMHorarioProd.Create(Self);
    
  DMHorarioProd.cdsHorarioProd.Close;
  DMHorarioProd.cdsHorarioProd.Open;
end;

end.
