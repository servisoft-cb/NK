unit UConsPedidoPendLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons;

type
  TfConsPedidoPendLotes = class(TForm)
    SMDBGrid1: TSMDBGrid;
    dsqPendencias: TDataSource;
    qPendencias: TQuery;
    qPendenciasPedido: TIntegerField;
    qPendenciasDtEmissao: TDateField;
    qPendenciasCodCliente: TIntegerField;
    qPendenciasNomeCliente: TStringField;
    qPendenciasPedidoCliente: TStringField;
    qPendenciasItem: TIntegerField;
    qPendenciasCodProduto: TIntegerField;
    qPendenciasReferencia: TStringField;
    qPendenciasNomeProduto: TStringField;
    qPendenciasQtdParesRest: TFloatField;
    qPendenciasQtdPares: TFloatField;
    qPendenciasNumOS: TStringField;
    qPendenciasDtReprogramacao: TDateField;
    BitBtn1: TBitBtn;
    qPendenciasCodCor: TIntegerField;
    StaticText1: TStaticText;
    qPendenciasFantasia: TStringField;
    qPendenciasDescMaterial: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedidoPendLotes: TfConsPedidoPendLotes;

implementation

uses UGerarTalao;

{$R *.dfm}

procedure TfConsPedidoPendLotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qPendencias.Close;
  Action := Cafree;
end;

procedure TfConsPedidoPendLotes.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedidoPendLotes.FormShow(Sender: TObject);
begin
  qPendencias.Open;
end;

procedure TfConsPedidoPendLotes.SMDBGrid1DblClick(Sender: TObject);
begin
  if (qPendencias.Active) and (qPendenciasPedido.AsInteger > 0) then
    begin
      fGerarTalao.CurrencyEdit1.AsInteger := qPendenciasPedido.AsInteger;
      Close;
    end;
end;

end.
