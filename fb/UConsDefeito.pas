unit UConsDefeito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, SMDBGrid, DB, DBClient, Provider,
  SqlExpr, RxLookup, ToolEdit, StdCtrls, Mask, CurrEdit, Buttons, ExtCtrls;

type
  TfConsDefeito = class(TForm)
    Defeitos: TSQLDataSet;
    pDefeitos: TDataSetProvider;
    tDefeitos: TClientDataSet;
    dsDefeitos: TDataSource;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    DefeitosCODIGO: TIntegerField;
    DefeitosNOME: TStringField;
    tDefeitosCODIGO: TIntegerField;
    tDefeitosNOME: TStringField;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_Defeitos;
  public
    { Public declarations }
  end;

var
  fConsDefeito: TfConsDefeito;

implementation

uses DmdDatabase, UDefeito, URelListagemDefeito;

{$R *.dfm}

procedure TfConsDefeito.Monta_Defeitos;
begin
  tDefeitos.Close;
  Defeitos.CommandText := 'SELECT * '
                       + ' FROM DEFEITOS '
                       + ' WHERE 0 = 0 ';
  if CurrencyEdit1.AsInteger > 0 then
    Defeitos.CommandText := Defeitos.CommandText + ' AND CODIGO = ' + CurrencyEdit1.Text;
  if Edit1.Text <> '' then
    Defeitos.CommandText := Defeitos.CommandText + ' AND (NOME LIKE ''%' + Edit1.Text + '%'')';
  Defeitos.CommandText := Defeitos.CommandText + ' ORDER BY NOME';
  tDefeitos.Open;
end;

procedure TfConsDefeito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsDefeito.BitBtn1Click(Sender: TObject);
begin
  Monta_Defeitos;
end;

procedure TfConsDefeito.SMDBGrid1DblClick(Sender: TObject);
begin
  if (tDefeitos.Active) and (tDefeitosCodigo.AsInteger > 0) then
    fDefeito.Abre_Defeitos(tDefeitosCodigo.AsInteger);
  Close;
end;

procedure TfConsDefeito.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1Click(Sender);
end;

procedure TfConsDefeito.BitBtn7Click(Sender: TObject);
begin
  fRelListagemDefeito := TfRelListagemDefeito.Create(Self);
  fRelListagemDefeito.RLReport1.Preview;
end;

end.
