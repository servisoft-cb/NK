unit UVerificarPedVale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, ComCtrls, DB,
  DBClient;

type
  TfVerificarPedVale = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mPedido: TClientDataSet;
    mPedidoPedido: TIntegerField;
    mPedidoDtEmissao: TDateField;
    dsmPedido: TDataSource;
    mVale: TClientDataSet;
    mValeNumVale: TIntegerField;
    mValeDtEmissao: TDateField;
    dsmVale: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVerificarPedVale: TfVerificarPedVale;

implementation

uses UDM1;

{$R *.dfm}

procedure TfVerificarPedVale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfVerificarPedVale.BitBtn1Click(Sender: TObject);
var
  vFlag : Boolean;
begin
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;

  mPedido.EmptyDataSet;

  ProgressBar1.Max      := DM1.tPedido.RecordCount;
  ProgressBar1.Position := 0;

  DM1.tPedido.First;
  while not DM1.tPedido.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vFlag := False;
    DM1.tPedidoItem.First;
    while not DM1.tPedidoItem.Eof do
    begin
      if StrToFloat(FormatFloat('0.00',DM1.tPedidoItemQtdParesRest.AsFloat)) > 0 then
      begin
        vFlag := True;
        DM1.tPedidoItem.Last;
      end;
      DM1.tPedidoItem.Next;
    end;
    if not(vFlag) and (StrToFloat(FormatFloat('0.00',DM1.tPedidoQtdParesRest.AsFloat)) > 0)  then
    begin
      mPedido.Insert;
      mPedidoPedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
      mPedidoDtEmissao.AsDateTime := DM1.tPedidoDtEmissao.AsDateTime;
      mPedido.Post;
    end;

    DM1.tPedido.Next;
  end;

  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
end;

procedure TfVerificarPedVale.BitBtn2Click(Sender: TObject);
var
  vFlag : Boolean;
begin
  DM1.tVale.Open;
  DM1.tValeItens.Open;

  mVale.EmptyDataSet;

  ProgressBar1.Max      := DM1.tVale.RecordCount;
  ProgressBar1.Position := 0;

  DM1.tVale.First;
  while not DM1.tVale.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vFlag := False;
    DM1.tValeItens.First;
    while not DM1.tValeItens.Eof do
    begin
      if not DM1.tValeItensFaturado.AsBoolean then
      begin
        vFlag := True;
        DM1.tValeItens.Last;
      end;
      DM1.tValeItens.Next;
    end;
    if not vFlag then
    begin
      mVale.Insert;
      mValeNumVale.AsInteger    := DM1.tValeNumVale.AsInteger;
      mValeDtEmissao.AsDateTime := DM1.tValeDtEmissao.AsDateTime;
      mVale.Post;
    end;

    DM1.tVale.Next;
  end;

  DM1.tVale.Close;
  DM1.tValeItens.Close;
end;

end.
