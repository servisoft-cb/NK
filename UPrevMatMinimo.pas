unit UPrevMatMinimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, Menus, StdCtrls, Buttons, Db, DBTables, MemTable;

type
  TfPrevMatMinimo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    BitBtn1: TBitBtn;
    qEstoque: TQuery;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueCodCor: TIntegerField;
    qEstoqueEstMinimo: TFloatField;
    qEstoqueNomeMaterial: TStringField;
    qEstoqueNomeCor: TStringField;
    qEstoqueSaldo: TFloatField;
    qEstoqueReferencia: TStringField;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevMatMinimo: TfPrevMatMinimo;

implementation

uses UDM1, URelMatMinimo;

{$R *.DFM}

procedure TfPrevMatMinimo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qEstoque.Close;
  Action := Cafree;
end;

procedure TfPrevMatMinimo.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevMatMinimo.RxSpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor   := crHourGlass;
  qEstoque.Close;
  qEstoque.SQL.Clear;
  qEstoque.SQL.Add('SELECT Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.Nome NomeMaterial, Dbproduto.Referencia, Dbcor.Nome NomeCor, SUM( Dbestoquematmov.Qtd2 ) Saldo');
  qEstoque.SQL.Add('FROM "dbEstoqueMatMov.DB" Dbestoquematmov');
  qEstoque.SQL.Add('   INNER JOIN "Dbproduto.DB" Dbproduto');
  qEstoque.SQL.Add('   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)');
  qEstoque.SQL.Add('   FULL OUTER JOIN "Dbcor.DB" Dbcor');
  qEstoque.SQL.Add('   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)');
  case RadioGroup1.ItemIndex of
    0 : qEstoque.SQL.Add('WHERE Dbproduto.ProdMat = ''P''');
    1 : qEstoque.SQL.Add('WHERE Dbproduto.ProdMat = ''M''');
    2 : ;
  end;
  qEstoque.SQL.Add('GROUP BY Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.Nome, Dbproduto.Referencia, Dbcor.Nome');
  qEstoque.SQL.Add('ORDER BY NomeMaterial, NomeCor');
  qEstoque.Open;
  Screen.Cursor := crDefault;
  fRelMatMinimo := TfRelMatMinimo.Create(Self);
  fRelMatMinimo.QuickRep1.Preview;
  fRelMatMinimo.QuickRep1.Free;
  qEstoque.Close;
end;

end.
