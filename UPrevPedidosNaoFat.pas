unit UPrevPedidosNaoFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, Db, DBTables,
  MemTable, RXLookup, DBFilter, ComCtrls, Grids, DBGrids;

type
  TfPrevPedidosNaoFat = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Bevel1: TBevel;
    qPedidos: TQuery;
    qPedidosNomeCliente: TStringField;
    qPedidosNomeProduto: TStringField;
    qPedidosQtdParesRest: TFloatField;
    qPedidosNomeCor: TStringField;
    qPedidosNumOS: TStringField;
    qPedidosVlrTotal: TFloatField;
    dsqPedidos: TDataSource;
    qPrevisaoFat: TQuery;
    CheckBox1: TCheckBox;
    dsqPrevisaoFat: TDataSource;
    qPrevisaoFatQtdParesRest: TFloatField;
    qPrevisaoFatVlrTotal: TFloatField;
    qPrevisaoFatDesconto: TFloatField;
    qPrevisaoFatDtReprogramacao: TDateField;
    qPedidosDtReprogramacao: TDateField;
    qPedidosReferencia: TStringField;
    qPedidosPedidoCliente: TStringField;
    CheckBox2: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevPedidosNaoFat: TfPrevPedidosNaoFat;
  linha, pagina : Integer;
  F: TextFile;
  TextoDet : string;
  vVlrNormal, vVlrNormalCom, vVlrSuspenso, vVlrSuspensoCom : Real;
  vQtdNormal, vQtdSuspenso : Integer;

implementation

uses UDM1, UEscImpressora, URelPedidosNaoFat, rsDBUtils;

{$R *.DFM}

procedure TfPrevPedidosNaoFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevPedidosNaoFat.BitBtn6Click(Sender: TObject);
begin
  //if (DateEdit1.Text = '  /  /    ') or (DateEdit2.Text = '  /  /    ') then
  {if (DateEdit1.Text = '  /  /    ') then
    ShowMessage('É obrigatório informar a data !')
  else
  if ((DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ')) and
     (DateEdit1.Date > DateEdit2.Date) then
    ShowMessage('Data inicial maior que data final!')
  else}
    begin
      Screen.Cursor := crHourglass;
      if CheckBox1.Checked then
        begin
          //*** Imprime a previsão do faturamento
          qPrevisaoFat.Close;
          qPrevisaoFat.SQL.Clear;
          qPrevisaoFat.SQL.Add('SELECT Dbpedidoitem.DtReprogramacao, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM (Dbpedidoitem.Preco * DbpedidoItem.QtdParesRest) VlrTotal, SUM(DbpedidoItem.VlrDesconto) Desconto');
          qPrevisaoFat.SQL.Add('FROM dbPedido Dbpedido');
          qPrevisaoFat.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
          qPrevisaoFat.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
          qPrevisaoFat.SQL.Add('WHERE   ( (Dbpedido.Cancelado IS NULL)  OR  (Dbpedido.Cancelado = FALSE) )');
          qPrevisaoFat.SQL.Add('   AND  ( (Dbpedido.Suspenso IS NULL)  OR  (Dbpedido.Suspenso = FALSE) )');
          if not CheckBox2.Checked then
            qPrevisaoFat.SQL.Add('   AND  ((Dbpedido.Estoque = False) OR  (Dbpedido.Estoque = FALSE))');
          qPrevisaoFat.SQL.Add('   AND  ( (Dbpedidoitem.Cancelado IS NULL)  OR  (Dbpedidoitem.Cancelado = FALSE) )');
          qPrevisaoFat.SQL.Add('   AND  (Dbpedidoitem.QtdParesRest > 0)');
          if DateEdit2.Date > 1 then
            begin
              qPrevisaoFat.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao BETWEEN :Data1 AND :Data2)');
              qPrevisaoFat.Params[0].AsDate := DateEdit1.Date;
              qPrevisaoFat.Params[1].AsDate := DateEdit2.Date;
            end
          else
          if DateEdit1.Date > 1 then
            begin
              qPrevisaoFat.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao <= :Data1)');
              qPrevisaoFat.Params[0].AsDate := DateEdit1.Date;
            end;

          if fPrevPedidosNaoFat.RxDBLookupCombo1.Text <> '' then
            begin
              qPrevisaoFat.SQL.Add('   AND  (Dbpedido.CodVendedor = :Codigo)');
              qPrevisaoFat.ParamByName('Codigo').AsInteger := fPrevPedidosNaoFat.RxDBLookupCombo1.KeyValue;
            end;
          qPrevisaoFat.SQL.Add('GROUP BY Dbpedidoitem.DtReprogramacao');
          qPrevisaoFat.SQL.Add('ORDER BY Dbpedidoitem.DtReprogramacao');
          qPrevisaoFat.Open;
          Screen.Cursor := crDefault;
          qPrevisaoFat.First;
          if qPrevisaoFat.RecordCount > 0 then
            begin
              fRelPedidosNaoFat := TfRelPedidosNaoFat.Create(Self);
              fRelPedidosNaoFat.QuickRep2.Preview;
              fRelPedidosNaoFat.QuickRep2.Free;
            end
          else
            ShowMessage('Não há registros para imprimir!');
          qPrevisaoFat.Close;
        end
      else
        begin
          //*** Imprime os pedidos não faturados
          qPedidos.Close;
          qPedidos.SQL.Clear;
          qPedidos.SQL.Add('SELECT Dbproduto.Referencia, Dbcliente.Nome NomeCliente, Dbproduto.Nome NomeProduto, Dbpedidoitem.QtdParesRest, Dbcor.Nome NomeCor, Dbpedidoitem.DtReprogramacao, Dbpedidoitem.NumOS, Dbpedido.PedidoCliente, Dbpedidoitem.VlrTotal');
          qPedidos.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
          qPedidos.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido ON (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
          qPedidos.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto ON (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
          qPedidos.SQL.Add('   FULL JOIN "Dbcor.DB" Dbcor ON (Dbpedidoitem.CodCor = Dbcor.Codigo)');
          qPedidos.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente ON (Dbpedido.CodCliente = Dbcliente.Codigo)');
          qPedidos.SQL.Add('WHERE ((Dbpedidoitem.Cancelado IS NULL) OR (Dbpedidoitem.Cancelado = FALSE))');
          if not CheckBox2.Checked then
            qPedidos.SQL.Add('   AND  ((Dbpedido.Estoque = False) OR (Dbpedido.Estoque is Null))');
          qPedidos.SQL.Add('   AND  ( (Dbpedido.Cancelado IS NULL)  OR  (Dbpedido.Cancelado = FALSE) )');
          qPedidos.SQL.Add('   AND  (Dbpedidoitem.QtdParesRest > 0)');
          if DateEdit2.Date > 1 then
            begin
              qPedidos.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao BETWEEN :Data1 AND :Data2)');
              qPedidos.Params[0].AsDate := DateEdit1.Date;
              qPedidos.Params[1].AsDate := DateEdit2.Date;
            end
          else
          if DateEdit1.Date > 1 then
            begin
              qPedidos.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao <= :Data1)');
              qPedidos.Params[0].AsDate := DateEdit1.Date;
            end;
          if fPrevPedidosNaoFat.RxDBLookupCombo1.Text <> '' then
            begin
              qPedidos.SQL.Add('   AND  (Dbpedido.CodVendedor = :Codigo)');
              qPedidos.ParamByName('Codigo').AsInteger := fPrevPedidosNaoFat.RxDBLookupCombo1.KeyValue;
            end;
          qPedidos.SQL.Add('ORDER BY dbCliente.Nome, Dbpedidoitem.DtReprogramacao, Dbpedido.PedidoCliente, Dbpedidoitem.NumOS');
          qPedidos.Open;
          Screen.Cursor := crDefault;
          qPedidos.First;
          if qPedidos.RecordCount > 0 then
            begin
              fRelPedidosNaoFat := TfRelPedidosNaoFat.Create(Self);
              fRelPedidosNaoFat.QuickRep1.Preview;
              fRelPedidosNaoFat.QuickRep1.Free;
            end
          else
            ShowMessage('Não há registros para imprimir!');
          qPedidos.Close;
        end;
      Screen.Cursor := crDefault;
      BitBtn1.SetFocus;
    end;
end;

procedure TfPrevPedidosNaoFat.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPedidosNaoFat.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfPrevPedidosNaoFat.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfPrevPedidosNaoFat.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
