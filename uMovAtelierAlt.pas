unit uMovAtelierAlt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ExtCtrls, DBCtrls;

type
  TfMovAtelierAlt = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel1: TBevel;
    Label5: TLabel;
    DBText3: TDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovAtelierAlt: TfMovAtelierAlt;

implementation

uses UDM1;

{$R *.dfm}

procedure TfMovAtelierAlt.BitBtn2Click(Sender: TObject);
begin
  DM1.tMovAtelierItens.Cancel;
  Close;
end;

procedure TfMovAtelierAlt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovAtelierAlt.FormShow(Sender: TObject);
begin
  CurrencyEdit1.Value := DM1.tMovAtelierItensVlrUnitario.AsFloat;
  CurrencyEdit2.Value := DM1.tMovAtelierItensVlrTotal.AsFloat;
end;

procedure TfMovAtelierAlt.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value * DM1.tMovAtelierItensQtd.AsFloat));
end;

procedure TfMovAtelierAlt.BitBtn1Click(Sender: TObject);
begin
  DM1.tMovAtelierVlrTotal.AsFloat := (DM1.tMovAtelierVlrTotal.AsFloat - DM1.tMovAtelierItensVlrTotal.AsFloat) + CurrencyEdit2.Value;
  DM1.tMovAtelierItens.Edit;
  DM1.tMovAtelierItensVlrUnitario.AsFloat := CurrencyEdit1.Value;
  DM1.tMovAtelierItensVlrTotal.AsFloat    := CurrencyEdit2.Value;
  DM1.tMovAtelierItens.Post;
  Close;
end;

end.
