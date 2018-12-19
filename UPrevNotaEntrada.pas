unit UPrevNotaEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RxLookup, Mask, ToolEdit, Menus, RXCtrls, Buttons,
  Db, DBTables;

type
  TfPrevNotaEntrada = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    BitBtn6: TBitBtn;
    qNotaEntrada: TQuery;
    qNotaEntradaNumNEntr: TIntegerField;
    qNotaEntradaMaterial: TStringField;
    qNotaEntradaQtd: TFloatField;
    qNotaEntradaVlrUnit: TFloatField;
    qNotaEntradaVlrTotalNEntr: TFloatField;
    qNotaEntradaCodMaterial: TIntegerField;
    qNotaEntradaCor: TStringField;
    qNotaEntradaCodForn: TIntegerField;
    qNotaEntradaGrade: TQuery;
    qNotaEntradaGradeNumNEntr: TIntegerField;
    qNotaEntradaGradeCodForn: TIntegerField;
    qNotaEntradaGradeQtd: TFloatField;
    qNotaEntradaGradeItem: TIntegerField;
    qNotaEntradaGradeTamanho: TStringField;
    qNotaEntradaNomeForn: TStringField;
    qNotaEntradaItem: TSmallintField;
    qNotaEntradaVlrTotalItens: TFloatField;
    qNotaEntradaDtEntrada: TDateField;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Imprime_Cabecalho;
    procedure Imprime_Cab_Nota;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
  public
    { Public declarations }
  end;

var
  fPrevNotaEntrada: TfPrevNotaEntrada;
  linha, pagina : Integer;
  F: TextFile;
  vTotalGeral : Real;

implementation

uses UDM1, UEscImpressora;

{$R *.DFM}

procedure TfPrevNotaEntrada.Imprime_Cabecalho;
var
 i : Integer;
 texto1 : String;
begin
  pagina := pagina + 1;
  if Pagina > 1 then
    begin
      while linha < 66 do
        begin
          Linha := Linha + 1;
          Writeln(F);
        end;
    end;
  texto1 := DM1.tEmpresaEmpresa.AsString;
  for i := 1 to 113 - Length(Texto1) do
    texto1 := texto1 + ' ';
  texto1 := texto1 + 'Pagina.: ' + IntToStr(pagina);
  Writeln(F,Texto1);

  texto1 := '                                            RELATORIO DE NOTA DE ENTRADA  -  ' + DateEdit1.Text + ' a ' + DateEdit2.Text + '             Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Codigo Material                                 Cor                    Quantidade             Vlr.Unitario                 Vlr.Total');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Linha := 5;
  Imprime_Cab_Nota;
end;

procedure TfPrevNotaEntrada.Imprime_Cab_Nota;
var
  texto1 : String;
begin
  texto1 := 'Nro. Nota: ' + IntToStr(qNotaEntradaNumNEntr.AsInteger) + '     Fornecedor: ' + qNotaEntradaNomeForn.AsString + '     Dt.Emissao: ' + qNotaEntradaDtEntrada.AsString;
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := linha + 2;
end;

procedure TfPrevNotaEntrada.Imprime_Detalhe;
var
 i : Integer;
 texto1, texto2 : string;
begin
  texto2 := qNotaEntradaCodMaterial.AsString;
  for i  := 1 to 6 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto2 + ' ';
  texto2 := qNotaEntradaMaterial.AsString;
  for i := 1 to 40 - Length(Texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';
  texto2 := qNotaEntradaCor.AsString;
  for i := 1 to 15 - Length(Texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '     ';
  texto2 := FormatFloat('###,##0.00000',qNotaEntradaQtd.AsFloat);
  for i := 1 to 13 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '            ';
  texto2 := FormatFloat('##,###,##0.00',qNotaEntradaVlrUnit.AsFloat);
  for i := 1 to 13 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '             ';
  texto2 := FormatFloat('##,###,##0.00',qNotaEntradaVlrTotalItens.AsFloat);
  for i := 1 to 13 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;
  Writeln(F,Texto1);
  Linha := Linha + 1;
  vTotalGeral := vTotalGeral + qNotaEntradaVlrTotalItens.AsFloat;

  //Tirado temporariamente pelo Cleomar
  {qNotaEntradaGrade.Close;
  qNotaEntradaGrade.Params[0].AsInteger := qNotaEntradaCodForn.AsInteger;
  qNotaEntradaGrade.Params[1].AsInteger := qNotaEntradaNumNEntr.AsInteger;
  qNotaEntradaGrade.Params[2].AsInteger := qNotaEntradaItem.AsInteger;
  qNotaEntradaGrade.Open;
  if qNotaEntradaGrade.RecordCount > 0 then
    begin
      Texto2 := '';
      Texto3 := '       Tam.:';
      Texto4 := '       Qtd.:';
      qNotaEntradaGrade.First;
      while not qNotaEntradaGrade.Eof do
        begin
          if qNotaEntradaGradeQtd.AsFloat > 0 then
            begin
              Texto2 := qNotaEntradaGradeTamanho.AsString;
              for i := 1 to 6 - length(Texto2) do
                texto2 := ' ' + texto2;
              Texto3 := Texto3 + ' ' + Texto2;
              Texto2 := qNotaEntradaGradeQtd.AsString;
              for i := 1 to 6 - length(texto2) do
                Texto2 := ' ' + texto2;
              texto4 := texto4 + ' ' + texto2;
            end;
          qNotaEntradaGrade.Next;
        end;
      Writeln(F,texto3);
      Writeln(F,texto4);
      //Writeln(F);
      linha := linha + 2;
    end;
  qNotaEntradaGrade.Close;}
end;

procedure TfPrevNotaEntrada.Imprime_Rodape;
var
  texto1, texto2 : String;
  i : Integer;
begin
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  texto1 := '                                                                                                  Total Geral.:   ';
  texto2 := FormatFloat('###,###,###,##0.00',vTotalGeral);
  for i := 1 to 18 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;
  Writeln(F,Texto1);
  Linha := Linha + 2;
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
  vTotalGeral := 0;    
end;

procedure TfPrevNotaEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tFornecedores.IndexFieldNames := 'CodForn';
  qNotaEntrada.Active      := False;
  qNotaEntradaGrade.Active := False;
  Action := Cafree;
end;

procedure TfPrevNotaEntrada.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevNotaEntrada.BitBtn1Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfPrevNotaEntrada.BitBtn6Click(Sender: TObject);
var
  Texto : String;
  vNumNota, vCodForn : Integer;
begin
  vTotalGeral := 0;
  //*** Monta o Sql
  qNotaEntrada.Close;
  qNotaEntrada.SQL.Clear;
  qNotaEntrada.SQL.Add('SELECT Dbnentrada.NumNEntr, Dbnentradaitens.CodMaterial, Dbproduto.Nome Material, Dbcor.Nome Cor, Dbnentradaitens.Qtd, Dbnentradaitens.VlrUnit, Dbnentrada.VlrTotalNEntr, Dbnentrada.CodForn,');
  qNotaEntrada.SQL.Add(' Dbnentrada.DtEntrada, Dbfornecedores.NomeForn, DbNEntradaItens.Item, DbNEntradaItens.VlrTotalItens');
  qNotaEntrada.SQL.Add('FROM "dbNEntrada.DB" Dbnentrada');
  qNotaEntrada.SQL.Add('   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens');
  qNotaEntrada.SQL.Add('   ON  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)');
  qNotaEntrada.SQL.Add('   AND  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)');
  qNotaEntrada.SQL.Add('   FULL OUTER JOIN "dbProduto.DB" Dbproduto');
  qNotaEntrada.SQL.Add('   ON  (Dbnentradaitens.CodMaterial = Dbproduto.Codigo)');
  qNotaEntrada.SQL.Add('   FULL OUTER JOIN "Dbcor.db" Dbcor');
  qNotaEntrada.SQL.Add('   ON  (Dbnentradaitens.CodCor = Dbcor.Codigo)');
  qNotaEntrada.SQL.Add('   FULL OUTER JOIN "dbFornecedores.DB" Dbfornecedores');
  qNotaEntrada.SQL.Add('   ON  (Dbnentradaitens.CodForn = Dbfornecedores.CodForn)');
{  qNotaEntrada.SQL.Add('WHERE  (Dbnentrada.DtEntrada BETWEEN :D1 AND :D2)');
  if RxDBLookupCombo1.Text <> '' then
    qNotaEntrada.SQL.Add('  AND (Dbnentrada.CodForn = :CodForn)');}
  qNotaEntrada.SQL.Add('ORDER BY Dbnentrada.DtEntrada, Dbnentrada.CodForn, Dbnentrada.NumNEntr, DbnentradaItens.Item');
{  qNotaEntrada.Params[0].AsDate := DateEdit1.Date;
  qNotaEntrada.Params[1].AsDate := DateEdit2.Date;
  if RxDBLookupCombo1.Text <> '' then
    qNotaEntrada.Params[2].AsDate := RxDBLookupCombo1.KeyValue;}
  qNotaEntrada.Open;
  qNotaEntrada.Filtered := False;
  if RxDBLookupCombo1.Text <> '' then
    qNotaEntrada.Filter := 'DtEntrada >= '''+DateEdit1.Text+''' and DtEntrada <= '''+DateEdit2.Text+''' and CodForn = '''+IntToStr(RxDBLookupCombo1.KeyValue)+''''
  else
    qNotaEntrada.Filter := 'DtEntrada >= '''+DateEdit1.Text+''' and DtEntrada <= '''+DateEdit2.Text+'''';
  qNotaEntrada.Filtered := True;
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  linha  := 99;
  pagina := 0;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  vNumNota := 0;
  vCodForn := 0;
  if qNotaEntrada.RecordCount > 0 then
    begin
      qNotaEntrada.First;
      while not qNotaEntrada.Eof do
        begin
          if Linha > 61 then
            Imprime_Cabecalho
          else
          if (vNumNota <> qNotaEntradaNumNEntr.AsInteger) or (vCodForn <> qNotaEntradacodForn.AsInteger) then
            begin
              Writeln(F);
              Linha := Linha + 1;
              Imprime_Cab_Nota;
            end;
          Imprime_Detalhe;
          vNumNota := qNotaEntradaNumNEntr.AsInteger;
          vCodForn := qNotaEntradaCodForn.AsInteger;
          qNotaEntrada.Next;
        end;
    end;
  Imprime_Rodape;
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;
  qNotaEntrada.Filtered := False;
end;

procedure TfPrevNotaEntrada.FormCreate(Sender: TObject);
begin
  qNotaEntrada.Open;
  qNotaEntradaGrade.Open;
end;

procedure TfPrevNotaEntrada.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

end.
