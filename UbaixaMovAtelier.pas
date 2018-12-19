unit UbaixaMovAtelier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RXCtrls, Buttons, DB,
  DBTables, Grids, DBGrids, SMDBGrid, rsDBUtils, DBFilter;

type
  TfBaixaMovAtelier = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    RxLabel1: TRxLabel;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    RxDBFilter1: TRxDBFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBaixaMovAtelier: TfBaixaMovAtelier;

implementation

uses UDM1;

{$R *.dfm}

procedure TfBaixaMovAtelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  RxDBFilter1.Active := False;
  Action := Cafree;
end;

procedure TfBaixaMovAtelier.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaMovAtelier.BitBtn1Click(Sender: TObject);
begin
  if DateEdit1.Date < 10 then
    ShowMessage('É obrigatório informar a data!')
  else
  if DateEdit1.Date < DM1.tMovAtelierDtEmissao.AsDateTime then
    ShowMessage('Data menor que a data de emissão!')
  else
    begin
      DM1.tMovAtelierItens.First;
      while not DM1.tMovAtelierItens.Eof do
        begin
          if SMDBGrid2.SelectedRows.CurrentRowSelected then
            begin
              DM1.tMovAtelierItens.Edit;
              DM1.tMovAtelierItensDtBaixa.AsDateTime := DateEdit1.Date;
              DM1.tMovAtelierItens.Post;
            end
          else
            DM1.tMovAtelierItens.Next;
        end;
      DM1.tMovAtelier.Edit;
      if DM1.tMovAtelierItens.RecordCount > 0 then
        DM1.tMovAtelierBaixado.AsBoolean := False
      else
        DM1.tMovAtelierBaixado.AsBoolean := True;
      DM1.tMovAtelier.Post;
      Close;
    end;
end;

procedure TfBaixaMovAtelier.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  RxDBFilter1.Active := True;
end;

end.
