unit UConsParadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, SMDBGrid, DB, DBClient, Provider,
  SqlExpr, RxLookup, ToolEdit, StdCtrls, Mask, CurrEdit, Buttons, ExtCtrls;

type
  TfConsParadas = class(TForm)
    Paradas: TSQLDataSet;
    pParadas: TDataSetProvider;
    tParadas: TClientDataSet;
    dsParadas: TDataSource;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    ParadasCODIGO: TIntegerField;
    ParadasNOME: TStringField;
    tParadasCODIGO: TIntegerField;
    tParadasNOME: TStringField;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_Paradas;
  public
    { Public declarations }
  end;

var
  fConsParadas: TfConsParadas;

implementation

uses DmdDatabase, UParadas, URelListagemParadas;

{$R *.dfm}

procedure TfConsParadas.Monta_Paradas;
begin
  tParadas.Close;
  Paradas.CommandText := 'SELECT * '
                       + ' FROM PARADAS '
                       + ' WHERE 0 = 0 ';
  if CurrencyEdit1.AsInteger > 0 then
    Paradas.CommandText := Paradas.CommandText + ' AND CODIGO = ' + CurrencyEdit1.Text;
  if Edit1.Text <> '' then
    Paradas.CommandText := Paradas.CommandText + ' AND (NOME LIKE ''%' + Edit1.Text + '%'')';
  Paradas.CommandText := Paradas.CommandText + ' ORDER BY NOME';
  tParadas.Open;
end;

procedure TfConsParadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsParadas.BitBtn1Click(Sender: TObject);
begin
  Monta_Paradas;
end;

procedure TfConsParadas.SMDBGrid1DblClick(Sender: TObject);
begin
  if (tParadas.Active) and (tParadasCodigo.AsInteger > 0) then
    fParadas.Abre_Paradas(tParadasCodigo.AsInteger);
  Close;
end;

procedure TfConsParadas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1Click(Sender);
end;

procedure TfConsParadas.BitBtn7Click(Sender: TObject);
begin
  fRelListagemParadas := TfRelListagemParadas.Create(Self);
  fRelListagemParadas.RLReport1.Preview;
end;

end.
