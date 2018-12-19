unit UPrevContFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons, Db, DBTables, MemTable,
  Grids, DBGrids;

type
  TfPrevContFornecedores = class(TForm)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Bevel1: TBevel;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    mFornecedor: TMemoryTable;
    dsmFornecedores: TDataSource;
    qControle: TQuery;
    qControleNomeForn: TStringField;
    qControleDtVencCPagar: TDateField;
    qControleValor: TFloatField;
    qControleVlrDevolucao: TFloatField;
    mFornecedorCodFornecedor: TIntegerField;
    mFornecedorNomeFornecedor: TStringField;
    qControleCodForn: TIntegerField;
    mFornecedorValor1: TFloatField;
    mFornecedorValor2: TFloatField;
    mFornecedorValor3: TFloatField;
    mFornecedorValor4: TFloatField;
    mFornecedorValor5: TFloatField;
    mFornecedorValor6: TFloatField;
    mFornecedorValor7: TFloatField;
    mFornecedorValor8: TFloatField;
    mFornecedorValor9: TFloatField;
    mFornecedorValor10: TFloatField;
    mFornecedorValor11: TFloatField;
    mFornecedorValor12: TFloatField;
    mFornecedorValor13: TFloatField;
    mFornecedorCustoFixo: TBooleanField;
    qControleCustoFixo: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevContFornecedores: TfPrevContFornecedores;
  vMes : array[1..13] of Integer;

implementation

uses URelContFornecedores;

{$R *.DFM}

procedure TfPrevContFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qControle.Close;
  Action := Cafree;
end;

procedure TfPrevContFornecedores.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevContFornecedores.BitBtn6Click(Sender: TObject);
var
  dia,mes,ano,dia2,mes2,ano2 : Word;
  i : Integer;
  flag : Boolean;
begin
  if (DateEdit1.Text = '  /  /    ') or (DateEdit2.Text = '  /  /    ') then
    begin
      ShowMessage('Falta informar a data inicial ou a final!');
      DateEdit1.SetFocus;
    end
  else
    begin
      DecodeDate(DateEdit1.Date,ano,mes,dia);
      DecodeDate(DateEdit2.Date,ano2,mes2,dia2);
      for i := 1 to 13 do
        vMes[i] := 0;
      flag := True;
      i := 0;
      while flag do
        begin
          inc(i);
          vMes[Mes] := i;
          inc(mes);
          if mes > 12 then
            begin
              mes := 1;
              inc(ano);
            end;
          if (ano > ano2) or ((ano = ano2) and (mes > mes2)) then
            flag := false;
        end;
      if i > 12 then
        ShowMessage('Qtd. de meses não pode passar de 12!')
      else
        begin
          mFornecedor.EmptyTable;
          vMes[13] := i + 1;
          qControle.Close;
          qControle.SQL.Clear;
          qControle.SQL.Add('SELECT Dbfornecedores.CustoFixo, Dbfornecedores.CodForn, Dbfornecedores.NomeForn, Dbcpagarparc.DtVencCPagar, SUM( Dbcpagarparc.VlrParcCPagar ) Valor, SUM( Dbcpagarparc.VlrDevolucao ) VlrDevolucao');
          qControle.SQL.Add('FROM "DBCPAGARPARC.DB" Dbcpagarparc');
          qControle.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
          qControle.SQL.Add('   ON  (Dbcpagarparc.CodForn = Dbfornecedores.CodForn)');
          qControle.SQL.Add('WHERE  (Dbcpagarparc.DtVencCPagar between :Data1 and :Data2) ');
          case RadioGroup1.ItemIndex of
            0 : qControle.SQL.Add('  and (Dbfornecedores.CustoFixo = False)');
            1 : qControle.SQL.Add('  and (Dbfornecedores.CustoFixo = True)');
          end;                          
          qControle.SQL.Add('GROUP BY Dbfornecedores.CustoFixo, Dbfornecedores.CodForn, Dbfornecedores.NomeForn, Dbcpagarparc.DtVencCPagar');
          qControle.SQL.Add('ORDER BY Dbfornecedores.CustoFixo, Dbfornecedores.NomeForn, Dbcpagarparc.DtVencCPagar');
          qControle.Params[0].AsDate := DateEdit1.Date;
          qControle.Params[1].AsDate := DateEdit2.Date;
          qControle.Open;
          qControle.First;
          while not qControle.Eof do
            begin
              DecodeDate(qControleDtVencCPagar.AsDateTime,ano,mes,dia);
              if mFornecedor.Locate('CodFornecedor',qControleCodForn.AsInteger,[loCaseInsensitive]) then
                begin
                  mFornecedor.Edit;
                  mFornecedor.FieldByName('Valor'+IntToStr(vMes[mes])).AsFloat := mFornecedor.FieldByName('Valor'+IntToStr(vMes[mes])).AsFloat + (qControleValor.AsFloat - qControleVlrDevolucao.AsFloat);
                  mFornecedor.FieldByName('Valor'+IntToStr(vMes[13])).AsFloat  := mFornecedor.FieldByName('Valor'+IntToStr(vMes[13])).AsFloat + (qControleValor.AsFloat - qControleVlrDevolucao.AsFloat);
                  mFornecedor.Post;
                end
              else
                begin
                  mFornecedor.Insert;
                  mFornecedorCodFornecedor.AsInteger := qControleCodForn.AsInteger;
                  mFornecedorNomeFornecedor.AsString := qControleNomeForn.AsString;
                  mFornecedor.FieldByName('Valor'+IntToStr(vMes[mes])).AsFloat := qControleValor.AsFloat - qControleVlrDevolucao.AsFloat;
                  mFornecedor.FieldByName('Valor'+IntToStr(vMes[13])).AsFloat := qControleValor.AsFloat - qControleVlrDevolucao.AsFloat;
                  mFornecedorCustoFixo.AsBoolean     := qControleCustoFixo.AsBoolean;
                  mFornecedor.Post;
                end;
              qControle.Next;
            end;
          if qControle.RecordCount > 0 then
            begin
              fRelContFornecedores := TfRelContFornecedores.Create(Self);
              fRelContFornecedores.QuickRep1.Preview;
              fRelContFornecedores.QuickRep1.Free;
            end;
        end;
    end;

//*** Feito com a tabela local
{  if (DateEdit1.Text = '  /  /    ') or (DateEdit2.Text = '  /  /    ') then
    begin
      ShowMessage('Falta informar a data inicial ou final!');
      DateEdit1.SetFocus;
    end
  else
    begin
      DecodeDate(DateEdit1.Date,ano,mes,dia);
      DecodeDate(DateEdit2.Date,ano2,mes2,dia2);
      flag := True;
      i := 0;
      while flag do
        begin
          inc(i);
          inc(mes);
          if mes > 12 then
            begin
              mes := 1;
              inc(ano);
            end;
          if (ano > ano2) or ((ano = ano2) and (mes > mes2)) then
            flag := false;
        end;
      ShowMessage('Qtd. de Mês = ' + IntToStr(i));
      if i > 12 then
        begin
          ShowMessage('O controle tem que ser no máximo de 12 meses!');
          DateEdit1.SetFocus;
        end
      else
        begin
          tCPagarParc.IndexFieldNames := 'DtVencCPagar';
          tCPagarParc.Filtered := False;
          tCPagarParc.Filter   := 'DtVencCPagar >= '''+DateEdit1.Text+''' and DtVencCPagar <= '''+DateEdit2.Text+'''';
          tCPagarParc.Filtered := True;
          tCPagarParc.First;
          while not tCPagarParc.Eof do
            begin
              DecodeDate(tCPagarParcDtVencCPagar.AsDateTime,ano,mes,dia);
              if mFornecedor.Locate('CodFornecedor;Mes',VarArrayOf([tCPagarParcCodForn.AsInteger,Mes]),[locaseinsensitive]) then
                begin
                  mFornecedor.Edit;
                  mFornecedorValor.AsFloat := mFornecedorValor.AsFloat + (tCPagarParcVlrParcCPagar.AsFloat - tCPagarParcVlrDevolucao.AsFloat);
                  mFornecedor.Post;
                end
              else
                begin
                  mFornecedor.Insert;
                  mFornecedorCodFornecedor.AsInteger := tCPagarParcCodForn.AsInteger;
                  mFornecedorMes.AsInteger := Mes;
                  mFornecedorValor.AsFloat := tCPagarParcVlrParcCPagar.AsFloat - tCPagarParcVlrDevolucao.AsFloat;
                  mFornecedor.Post;
                end;
              tCPagarParc.Next;
            end;
          tCPagarParc.Filtered := False;
        end;
    end;}
end;

end.
