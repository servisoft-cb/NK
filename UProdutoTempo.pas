unit UProdutoTempo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Grids, DBGrids, RXDBCtrl, Mask, ToolEdit,
  CurrEdit, Buttons, Db, DBTables;

type
  TfProdutoTempo = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBGrid2: TRxDBGrid;
    BitBtn6: TBitBtn;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdutoTempo: TfProdutoTempo;

implementation

uses UDM1;

{$R *.dfm}

procedure TfProdutoTempo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProdutoTempo.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfProdutoTempo.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
end;

procedure TfProdutoTempo.FormShow(Sender: TObject);
begin
  if DM1.tProdutoCodigo.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
end;

procedure TfProdutoTempo.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

end.
