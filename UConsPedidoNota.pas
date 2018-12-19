unit UConsPedidoNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, DBCtrls, Buttons, Variants;

type
  TfConsPedidoNota = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    tPedidoNota: TTable;
    dsPedidoNota: TDataSource;
    tPedidoNotaPedido: TIntegerField;
    tPedidoNotaItem: TIntegerField;
    tPedidoNotaNumNota: TIntegerField;
    tPedidoNotaItemNota: TIntegerField;
    tPedidoNotaDtNota: TDateField;
    tPedidoNotaQtdPares: TIntegerField;
    Panel2: TPanel;
    StaticText1: TStaticText;
    DBText1: TDBText;
    BitBtn6: TBitBtn;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    tPedidoNotalkQtdPares: TIntegerField;
    tPedidoNotalkNumOS: TStringField;
    tPedidoNotaTipo: TStringField;
    tPedidoNotaNroLancExtComissao: TIntegerField;
    tPedidoNotaNroLancExtComissaoMod: TIntegerField;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    tPedidoNotaNumMovEst: TIntegerField;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedidoNota: TfConsPedidoNota;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsPedidoNota.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedidoNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;



procedure TfConsPedidoNota.FormShow(Sender: TObject);
var
  vQuant : Integer;
begin
  vQuant := 0;
  tPedidoNota.First;
  while not tPedidoNota.EOF do
    begin
      vQuant := vQuant + tPedidoNotaQtdPares.AsInteger;
      tPedidoNota.Next;
    end;
  if vQuant > 0 then
    StaticText3.Caption := FormatFloat('0.00',vQuant);
end;

procedure TfConsPedidoNota.BitBtn1Click(Sender: TObject);
begin
  if (tPedidoNotaTipo.AsString <> 'M') and (tPedidoNotaTipo.AsString <> 'A') then
    ShowMessage('Só exclui baixa do tipo "M" ou "A"!')
  else
    begin
      if MessageDlg('Deseja excluir esta baixa?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          if DM1.tPedidoItem.Locate('Item',tPedidoNotaItem.AsInteger,[loCaseInsensitive]) then
            begin
              if DM1.tPedidoNota.Locate('Pedido;Item;Tipo;NumNota;ItemNota',VarArrayOf([tPedidoNotaPedido.AsInteger,tPedidoNotaItem.AsInteger,tPedidoNotaTipo.AsString,
                                        tPedidoNotaNumNota.AsInteger,tPedidoNotaItemNota.AsInteger]),[locaseinsensitive]) then
                begin
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemQtdFatMan.AsFloat    := DM1.tPedidoItemQtdFatMan.AsFloat - DM1.tPedidoNotaQtdPares.AsFloat;
                  DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - DM1.tPedidoNotaQtdPares.AsFloat;
                  DM1.tPedidoItemQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.000',DM1.tPedidoItemQtdParesRest.AsFloat)) + StrToFloat(FormatFloat('0.000',DM1.tPedidoNotaQtdPares.AsFloat));
                  if DM1.tPedidoItemQtdParesRest.AsFloat > DM1.tPedidoItemQtdPares.AsFloat then
                    DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdPares.AsFloat;
                  DM1.tPedidoItemCopiado.AsBoolean := False;
                  DM1.tPedidoItem.Post;

                  DM1.tPedido.Edit;
                  DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - DM1.tPedidoNotaQtdPares.AsFloat;
                  DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + DM1.tPedidoNotaQtdPares.AsFloat;
                  DM1.tPedidoQtdFatMan.AsFloat    := DM1.tPedidoQtdFatMan.AsFloat - DM1.tPedidoNotaQtdPares.AsFloat;
                  DM1.tPedidoCopiado.AsBoolean    := False;
                  DM1.tPedido.Post;

                  if DM1.tPedidoNotaNumMovEst.AsInteger > 0 then
                    if DM1.tEstoqueMatMov.Locate('NumMov',DM1.tPedidoNotaNumMovEst.AsInteger,[loCaseInsensitive]) then
                      DM1.tEstoqueMatMov.Delete;

                  DM1.tPedidoNota.Delete;
                  DM1.tPedidoNota.Refresh;
                  tPedidoNota.Refresh;
                end;
            end;
        end;
    end;
end;

end.
