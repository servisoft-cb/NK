{Voltar depois com este SQL, só foi trocado para a Edilene poder informar os talões já baixados}
{**********************************************************************************************}
{SELECT Dbtalao.Talao, Dbtalao.CodProduto, Dbtalao.CodCor, Dbtalao.Quantidade, Dbtalao.Pedido, Dbtalao.ItemPedido, Dbtalao.PedidoCliente, Dbtalao.PedCliDif, Dbtalao.CodCliente, Dbtalao.DtBaixa, Dbtalao.QtdProduzida, Dbtalao.DtGerado, Dbproduto.Referencia, Dbcliente.Nome NomeCliente, Dbproduto.Nome NomeProduto
FROM "dbTalao.DB" Dbtalao
   INNER JOIN "dbCliente.DB" Dbcliente
   ON  (Dbtalao.CodCliente = Dbcliente.Codigo)
   INNER JOIN "dbProduto.DB" Dbproduto
   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)
WHERE  (Dbtalao.Encerrado = FALSE)
   AND  (Dbtalao.Cancelado = FALSE)
   AND  (Dbtalao.Produzido = FALSE)
ORDER BY dbTalao.Talao}

unit UBuscaTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Buttons, RXLookup, Grids, Variants,
  DBGrids, RXDBCtrl, Db, DbTables, Mask, ToolEdit, CurrEdit, DBFilter, ALed, DBVGrids, MemTable, SMDBGrid;

type
  TfBuscaTalao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SMDBGrid1: TSMDBGrid;
    qTalao: TQuery;
    qTalaoTalao: TIntegerField;
    qTalaoCodProduto: TIntegerField;
    qTalaoCodCor: TIntegerField;
    qTalaoQuantidade: TFloatField;
    qTalaoPedido: TIntegerField;
    qTalaoItemPedido: TIntegerField;
    qTalaoPedidoCliente: TStringField;
    qTalaoPedCliDif: TStringField;
    qTalaoCodCliente: TIntegerField;
    qTalaoDtBaixa: TDateField;
    qTalaoQtdProduzida: TFloatField;
    qTalaoDtGerado: TDateField;
    qTalaoReferencia: TStringField;
    qTalaoNomeCliente: TStringField;
    qTalaoNomeProduto: TStringField;
    dsqTalao: TDataSource;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Copia_Movimento;
  public
    { Public declarations }
  end;

var
  fBuscaTalao: TfBuscaTalao;

implementation

uses UDM1;

{$R *.DFM}

procedure TfBuscaTalao.Copia_Movimento;
var
  vItemAux : Integer;
begin
  DM1.tMovAtelierItens.Refresh;
  DM1.tMovAtelierItens.Last;
  vItemAux := DM1.tMovAtelierItensItem.AsInteger;
  DM1.tMovAtelierItens.Insert;
  DM1.tMovAtelierItensNumMov.AsInteger     := DM1.tMovAtelierNumMov.AsInteger;
  DM1.tMovAtelierItensItem.AsInteger       := vItemAux + 1;
  DM1.tMovAtelierItensTalao.AsInteger      := qTalaoTalao.AsInteger;
  DM1.tMovAtelierItensCodProduto.AsInteger := qTalaoCodProduto.AsInteger;
  DM1.tMovAtelierItensCodCor.AsInteger     := qTalaoCodCor.AsInteger;
  DM1.tMovAtelierItensQtd.AsFloat          := qTalaoQuantidade.AsFloat;
  DM1.tMovAtelierItens.Post;
end;

procedure TfBuscaTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qTalao.Close;
  oDBUtils.OpenTables(False,Self);
  Action := CaFree;
end;

procedure TfBuscaTalao.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfBuscaTalao.BitBtn4Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  qTalao.First;
  while not qTalao.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        Copia_Movimento;
      qTalao.Next;
    end;
  SMDBGrid1.EnableScroll;
  Close;
end;

procedure TfBuscaTalao.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  qTalao.Open;
end;

end.
