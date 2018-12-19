unit UDtReprog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ToolEdit, CurrEdit, DBCtrls, Buttons, RXDBCtrl,
  Db, DBTables;

type
  TfDtReprog = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    BitBtn4: TBitBtn;
    DateEdit1: TDateEdit;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDtReprog: TfDtReprog;

implementation

uses UDM1, UEmissaoNotaFiscal;

{$R *.DFM}

procedure TfDtReprog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM1.tPedidoItem.State in [dsEdit] then
    DM1.tPedidoItem.Cancel;
  Action := Cafree;
end;

procedure TfDtReprog.BitBtn1Click(Sender: TObject);
begin
  if DateEdit1.Text = '  /  /    ' then
    DM1.tPedidoItemDtReprogramacao.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime
  else
    DM1.tPedidoItemDtReprogramacao.AsDateTime := DateEdit1.Date;
  Dm1.tPedidoItemReprogramacao.AsBoolean := CheckBox1.Checked;
  DM1.tPedidoItem.Post;
  Close;
end;

procedure TfDtReprog.BitBtn4Click(Sender: TObject);
begin
  DM1.tPedidoItem.Cancel;
  Close;
end;

procedure TfDtReprog.FormCreate(Sender: TObject);
begin
  DateEdit1.Date    := DM1.tPedidoItemDtReprogramacao.AsDateTime;
  CheckBox1.Checked := Dm1.tPedidoItemReprogramacao.AsBoolean;
end;

end.
