unit UPrevBalancoEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Buttons, RxLookup, Grids, DBGrids, Db,
  DBTables, Mask, ToolEdit, ComCtrls, ShellApi;

type
  TfPrevBalancoEst = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    qEstoqueCusto: TQuery;
    qEstoqueCustoCodMaterial: TIntegerField;
    qEstoqueCustoCodCor: TIntegerField;
    qEstoqueCustoLargura: TStringField;
    qEstoqueCustoDtMov: TDateField;
    qEstoqueCustoVlrUnitario: TFloatField;
    qEstoqueCustoQtd: TFloatField;
    qEstoqueCustoPercIcms: TFloatField;
    qEstoqueCustoPercIpi: TFloatField;
    qEstoqueCustoVlrDesconto: TFloatField;
    qEstoqueCustoTipoMov: TStringField;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    qEstoqueCustoES: TStringField;
    DataSource1: TDataSource;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Bevel1: TBevel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ProgressBar2: TProgressBar;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vCodCor  : Integer;
    vLargura : String;
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
    procedure Verifica_CustoMedio;
  public                          
    { Public declarations }
  end;

var
  fPrevBalancoEst: TfPrevBalancoEst;
  linha, pagina : Integer;
  TextoGrade, TextoHifen, TextoQtd : String;
  F: TextFile;
  vPrecoMedio, vSaldoFisico, vSaldoFinan : Real;
  vVlrTotal, vVlrTotalICMS, vVlrTotalIPI : Real;

implementation

uses UDM1, UEscImpressora, rsDBUtils;

{$R *.DFM}

procedure TfPrevBalancoEst.Verifica_CustoMedio;
var
  vVlrAux : Real;
  vQtdEntrada, vVlrEntrada : Real;
begin
  qEstoqueCusto.Filtered := False;
  qEstoqueCusto.Filter   := 'CodMaterial = '''+DM1.tProdutoCodigo.AsString+''' and DtMov <='''+DateEdit1.Text+'''';
  qEstoqueCusto.Filtered := True;
  if qEstoqueCusto.RecordCount > 0 then
    begin
      ProgressBar2.Position := 0;
      ProgressBar2.Max      := qEstoqueCusto.RecordCount;

      vSaldoFisico := 0;
      vSaldoFinan  := 0;
      vPrecoMedio  := 0;
      vQtdEntrada  := 0;
      vVlrEntrada  := 0;
      qEstoqueCusto.First;
      vCodCor  := qEstoqueCustoCodCor.AsInteger;
      vLargura := qEstoqueCustoLargura.AsString;
      while not qEstoqueCusto.Eof do
        begin
          if (qEstoqueCustoLargura.AsString <> vLargura) or (qEstoqueCustoCodCor.AsInteger <> vCodCor) then
            begin
              if (vSaldoFisico >= 0.00001) then
                begin
                  if Linha > 61 then
                    Imprime_Cabecalho;
                  if (vVlrEntrada > 0) and (vQtdEntrada > 0) then
                    vPrecoMedio := StrToFloat(FormatFloat('0.00',vVlrEntrada / vQtdEntrada))
                  else
                    vPrecoMedio := 0;
                  Imprime_Detalhe;
                end;
              vSaldoFisico := 0;
              vSaldoFinan  := 0;
              vPrecoMedio  := 0;
              vQtdEntrada  := 0;
              vVlrEntrada  := 0;
              vCodCor      := qEstoqueCustoCodCor.AsInteger;
              vLargura     := qEstoqueCustoLargura.AsString;
            end;
          if qEstoqueCustoES.AsString = 'E' then
            begin
              vQtdEntrada  := vQtdEntrada + qEstoqueCustoQtd.AsFloat;
              vVlrAux      := StrToFloat(FormatFloat('0.00',qEstoqueCustoQtd.AsFloat * qEstoqueCustoVlrUnitario.AsFloat));
              vVlrAux      := vVlrAux - qEstoqueCustoVlrDesconto.AsFloat;
              vVlrEntrada  := vVlrEntrada + vVlrAux;
              vSaldoFisico := StrToFloat(FormatFloat('0.00000',vSaldoFisico + qEstoqueCustoQtd.AsFloat));
            end;
          if qEstoqueCustoES.AsString = 'S' then
            vSaldoFisico := StrToFloat(FormatFloat('0.00000',vSaldoFisico - qEstoqueCustoQtd.AsFloat));
          vCodCor  := qEstoqueCustoCodCor.AsInteger;
          vLargura := qEstoqueCustoLargura.AsString;
          ProgressBar2.Position := ProgressBar2.Position + 1;
          qEstoqueCusto.Next;
        end;
      if (vVlrEntrada > 0) and (vQtdEntrada > 0) then
        vPrecoMedio := StrToFloat(FormatFloat('0.00',vVlrEntrada / vQtdEntrada))
      else
        vPrecoMedio := 0;
      if (vSaldoFisico >= 0.00001) then
        begin
          if Linha > 61 then
            Imprime_Cabecalho;
          Imprime_Detalhe;
        end;
    end;
  qEstoqueCusto.Filtered := False;
end;

procedure TfPrevBalancoEst.Imprime_Cabecalho;
var
  Texto1 : String;
  I : Integer;
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
  for i := 1 to 113 - Length(texto1) do
    texto1 := texto1 + ' ';
  texto1 := texto1 + 'Pagina.: ' + IntToStr(pagina);
  Writeln(F,Texto1);

  texto1 := '                                          BALANCO - Referencia: ' + DateEdit1.Text + '                                       Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,' Codigo Material                       Cor             Larg. UM     Saldo Fisico   Pr.Medio      Vlr.Total %ICMS    V.ICMS     V.IPI');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;
end;

procedure TfPrevBalancoEst.Imprime_Detalhe;
var
 i: Integer;
 texto1, Texto2: string;
 vVlrAux : Real;
begin
  Texto2 := DM1.tProdutoCodigo.AsString;
  for i := 1 to 7 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := texto2 + ' ';
  Texto2 := Copy(DM1.tProdutoNome.AsString,1,30);
  for i := 1 to 30 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';
  texto2 := '';
  if vCodCor > 0 then
    begin
      DM1.tCor.IndexFieldNames := 'Codigo';
      DM1.tCor.SetKey;
      DM1.tCorCodigo.AsInteger := vCodCor;
      if DM1.tCor.GotoKey then
        Texto2 := DM1.tCorNome.AsString;
    end;
  for i := 1 to 15 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + '  ';
  texto2 := vLargura;
  for i := 1 to 1 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + '    ';
  texto2 := DM1.tProdutoUnidade.AsString;
  for i := 1 to 3 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';
  texto2 := FormatFloat('#,###,##0.00000',vSaldoFisico);
  for i := 1 to 15 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';
  texto2 := FormatFloat('###,##0.00',vPrecoMedio);
  for i := 1 to 10 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';

  if vSaldoFisico > 0 then
    vVlrAux := StrToFloat(FormatFloat('0.00',vSaldoFisico * vPrecoMedio))
  else
    vVlrAux := 0;
  vVlrTotal := vVlrTotal + vVlrAux;
  texto2 := FormatFloat('###,###,##0.00',vVlrAux);
  for i := 1 to 14 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';

  texto2 := FormatFloat('#0.00',DM1.tProdutoAliqIcms.AsFloat);
  for i := 1 to 5 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';

  if (vSaldoFisico > 0) and (vPrecoMedio > 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00',(vSaldoFisico * vPrecoMedio) * DM1.tProdutoAliqIcms.AsFloat / 100))
  else
    vVlrAux := 0;
  vVlrTotalICMS := vVlrTotalICMS + vVlrAux;
  texto2 := FormatFloat('##,##0.00',vVlrAux);
  for i := 1 to 9 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';

  if (vSaldoFisico > 0) and (vPrecoMedio > 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00',(vSaldoFisico * vPrecoMedio) * DM1.tProdutoAliqIPI.AsFloat / 100))
  else
    vVlrAux := 0;
  vVlrTotalIPI := vVlrTotalIPI + vVlrAux;
  texto2 := FormatFloat('##,##0.00',vVlrAux);
  for i := 1 to 9 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;

  Writeln(F,Texto1);
  Linha := Linha + 1;
end;

procedure TfPrevBalancoEst.Imprime_Rodape;
var
 i: Integer;
 Texto1, Texto2 : string;
begin
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');

  texto1 := '      Valor Total: ';
  Texto2 := FormatFloat('###,###,###,##0.00',vVlrTotal);
  for i := 1 to 18 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '           Valor Total ICMS: ';

  Texto2 := FormatFloat('###,###,##0.00',vVlrTotalICMS);
  for i := 1 to 14 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '        Valor Total IPI: ';

  Texto2 := FormatFloat('###,###,##0.00',vVlrTotalIPI);
  for i := 1 to 14 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;
  Writeln(F,Texto1);

  linha := linha + 2;
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfPrevBalancoEst.Imprimir;
var
  Texto : String;
begin
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  linha  := 99;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);

  ProgressBar1.Position := 0;
  ProgressBar1.Max := DM1.tProduto.RecordCount;

  DM1.tProduto.First;
  while not DM1.tProduto.Eof do
    begin
      if DM1.tProdutoEstoque.AsBoolean then
        begin
          Edit1.Text := DM1.tProdutoCodigo.AsString;
          Edit2.Text := DM1.tProdutoNome.AsString;
          Edit1.Refresh;
          Edit2.Refresh;
          Verifica_CustoMedio;
        end;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      DM1.tProduto.Next;
    end;
  Imprime_Rodape;

  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      //WinExec(PChar(Texto),SW_MAXIMIZE);
      ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);      
    end;
end;

procedure TfPrevBalancoEst.BitBtn6Click(Sender: TObject);
begin
  qEstoqueCusto.Open;
  vVlrTotal     := 0;
  vVlrTotalICMS := 0;
  vVlrTotalIPI  := 0;
  DM1.tProduto.IndexFieldNames := 'Nome';
  Imprimir;
  BitBtn1.SetFocus;
  qEstoqueCusto.Close;
  Close;
end;

procedure TfPrevBalancoEst.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevBalancoEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevBalancoEst.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tProduto,Name);
  oDBUtils.ActiveDataSet(True,DM1.tEmpresa,Name);
  oDBUtils.ActiveDataSet(True,DM1.tCor,Name);
end;

end.
