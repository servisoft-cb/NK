unit UPrevRelCReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, Buttons, Menus, RXCtrls, Printers,
  Db, DBTables, Grids, DBGrids, RxLookup, ShellApi;

type
  TfPrevRelCReceber = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    StaticText1: TStaticText;
    DateEdit1: TDateEdit;
    StaticText2: TStaticText;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu2: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    Bevel1: TBevel;
    Query1: TQuery;
    tCReceberParc2: TTable;
    Bevel2: TBevel;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    tCReceberParc2NumCReceber: TIntegerField;
    tCReceberParc2ParcCReceber: TIntegerField;
    tCReceberParc2VlrParcCReceber: TFloatField;
    tCReceberParc2DtVencCReceber: TDateField;
    tCReceberParc2QuitParcCReceber: TBooleanField;
    tCReceberParc2JurosParcCReceber: TFloatField;
    tCReceberParc2DtPagParcCReceber: TDateField;
    tCReceberParc2CodCli: TIntegerField;
    tCReceberParc2NumNota: TIntegerField;
    tCReceberParc2Desconto: TFloatField;
    tCReceberParc2PgtoParcial: TFloatField;
    tCReceberParc2RestParcela: TFloatField;
    tCReceberParc2ContaDupl: TSmallintField;
    tCReceberParc2Selecionado: TBooleanField;
    tCReceberParc2CodVendedor: TIntegerField;
    tCReceberParc2Baixada: TBooleanField;
    tCReceberParc2PercComissao: TFloatField;
    tCReceberParc2VlrComissao: TFloatField;
    tCReceberParc2PlanoContas: TIntegerField;
    tCReceberParc2Agencia: TStringField;
    tCReceberParc2TitPortador: TStringField;
    tCReceberParc2CodTipoCobranca: TIntegerField;
    tCReceberParc2Despesas: TFloatField;
    tCReceberParc2Abatimentos: TFloatField;
    tCReceberParc2CodConta: TIntegerField;
    tCReceberParc2PgCartorio: TBooleanField;
    tCReceberParc2DiasAtraso: TFloatField;
    tCReceberParc2LetraCambio: TBooleanField;
    tCReceberParc2NroLancExtComissao: TIntegerField;
    tCReceberParc2JurosPagos: TFloatField;
    Query1Nota: TIntegerField;
    Query1Parcela: TIntegerField;
    Query1Data: TDateField;
    Query1ValorParc: TFloatField;
    Query1ValorRestante: TFloatField;
    Query1CodConta: TIntegerField;
    Query1DtPgto: TDateField;
    Query1CodCli: TIntegerField;
    Query1NumCReceber: TIntegerField;
    Query1ValorPago: TFloatField;
    Query1JurosPagos: TFloatField;
    Query1Abatimentos: TFloatField;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Filtra_Calcula2;
    procedure Muda_DataSet;
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Total_Dia;
    procedure Imprime_Total_Mes;
    procedure Imprime_Rodape;
  public
    { Public declarations }
  end;

var
  fPrevRelCReceber: TfPrevRelCReceber;
  F: TextFile;
  linha, pagina : Integer;
  vVlrTotalDia, vVlrTotalMes, vVlrTotal : Real;
  vDtVecto : TDateTime;

implementation

uses URelCReceber, UDM1, UEscImpressora;

{$R *.DFM}

procedure TfPrevRelCReceber.Imprime_Cabecalho;
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
  texto1 := texto1 + 'Pagina.: ';
  texto1 := texto1 + IntToStr(pagina);
  Writeln(F,Texto1);

  texto1 := '';
  if RadioGroup1.ItemIndex = 0 then
    texto1 := 'Dt.Referencia: ' + DateEdit1.Text
  else
    texto1 := 'Periodo: ' + DateEdit1.Text + ' a ' + DateEdit2.Text;
  for i := 1 to 60  - Length(Texto1) do
    texto1 := texto1 + ' ';
  texto1 := texto1 + 'CONTAS A RECEBER POR PERIODO                         Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Dt.Vencimento  Num. Nota      Cliente                      Vlr. Parc.  Abatimento   Juros    Vlr. Pago     Vlr.Rest.');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;
end;

procedure TfPrevRelCReceber.Imprime_Detalhe;
var
 i : Integer;
 texto1, texto2 : string;
begin
  texto1 := '  ' + Query1Data.AsString;;
  for i := 1 to 9 - Length(Texto1) do
    texto1 := texto1 + ' ';
  texto2 := Query1Nota.AsString + '/' + Query1Parcela.AsString;
  for i := 1 to 8 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '     ';

  texto2 := '';
  if Query1CodCli.AsInteger > 0 then
    if DM1.tCliente2.Locate('Codigo',Query1CodCli.AsInteger,([Locaseinsensitive])) then
      texto2 := copy(DM1.tCliente2Nome.AsString,1,29);
  for i := 1 to 29 - Length(Texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  texto2 := FormatFloat('###,###,##0.00',Query1ValorParc.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    texto2 := ' ' + Texto2;
  texto1 := texto1 + texto2;

  texto2 := FormatFloat('###,###,##0.00',Query1Abatimentos.AsFloat);
  for i := 1 to 12 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;

  texto2 := FormatFloat('###,###,##0.00',Query1JurosPagos.AsFloat);
  for i := 1 to 9 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;

  texto2 := FormatFloat('###,###,##0.00',Query1ValorPago.AsFloat);
  for i := 1 to 13 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;

  texto2 := FormatFloat('###,###,##0.00',Query1ValorRestante.AsFloat);
  for i := 1 to 13 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;

  Writeln(F,texto1);
  linha := linha + 1;
//  vQtdTitulosDia := vQtdTitulosDia + 1;
  vVlrTotalDia   := vVlrTotalDia + Query1ValorRestante.AsFloat;
//  vQtdTitulosMes := vQtdTitulosMes + 1;
  vVlrTotalMes   := vVlrTotalMes + Query1ValorRestante.AsFloat;
//  vQtdTitulos    := vQtdTitulos + 1;
  vVlrTotal      := vVlrTotal + Query1ValorRestante.AsFloat;
end;

procedure TfPrevRelCReceber.Imprime_Total_Dia;
var
 i : Integer;
 texto1, texto2 : String;
begin
  Writeln(F,'               ----------------------------------------------------------------------');
  texto1 := '               ......................TOTAL DO DIA.: ';
{  texto2 := IntToStr(vQtdTitulosDia);
  for i := 1 to 5 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;}
  texto2 := FormatFloat('##,###,###,##0.00',vVlrTotalDia);
  for i := 1 to 17 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;
  Writeln(F,texto1);
  Linha := Linha + 2;
//  vQtdTitulosDia := 0;
  vVlrTotalDia   := 0;
end;

procedure TfPrevRelCReceber.Imprime_Total_Mes;
var
 i : Integer;
 texto1, texto2 : String;
begin
  texto1 := '               ......................TOTAL DO MES.: ';
{  texto2 := IntToStr(vQtdTitulosMes);
  for i := 1 to 5 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ' + 'TITULO(S) ';}
  texto2 := FormatFloat('##,###,###,##0.00',vVlrTotalMes);
  for i := 1 to 17 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;
  Writeln(F,texto1);
  Linha := Linha + 1;
//  vQtdTitulosMes := 0;
  vVlrTotalMes   := 0;
end;

procedure TfPrevRelCReceber.Imprime_Rodape;
var
 i : Integer;
 texto1, texto2 : String;
begin
  Writeln(F,'               ----------------------------------------------------------------------');
  texto1 := '               ......................TOTAL GERAL..: ';
{  texto2 := IntToStr(vQtdTitulos);
  for i := 1 to 5 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ' + 'TITULO(S) ';}
  texto2 := FormatFloat('##,###,###,##0.00',vVlrTotal);
  for i := 1 to 17 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;
  Writeln(F,texto1);
  Linha := Linha + 2;
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfPrevRelCReceber.Imprimir;
var
  Texto : String;
  dia, mes, ano : word;
  dia2, mes2, ano2 : word;
begin
//  vQtdTitulosDia := 0;
  vVlrTotalDia   := 0;
//  vQtdTitulosMes := 0;
  vVlrTotalMes   := 0;
//  vQtdTitulos    := 0;
  vVlrTotal      := 0;
  vDtVecto       := 0;
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  //Filtra_Calcula2;
  linha  := 99;
  pagina := 0;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  Query1.First;
  while not Query1.EOF do
    begin
      if linha > 61 then
        Imprime_Cabecalho;
      if CheckBox1.Checked = True then
        begin
          if (vDtVecto > 1) and (vDtVecto <> Query1Data.AsDateTime) then
            begin
              Imprime_Total_Dia;
              DecodeDate(vDtVecto, Ano, Mes, Dia);
              DecodeDate(Query1Data.AsDateTime, Ano2, Mes2, Dia2);
              if (mes <> mes2) or ((mes = mes2) and (ano <> ano2)) then
                Imprime_Total_Mes;
              Writeln(F);
              linha := linha + 1;
            end;
        end;
      Imprime_Detalhe;
      vDtVecto := Query1Data.AsDateTime;
      Query1.Next;
    end;
  if CheckBox1.Checked = True then
    begin
      Imprime_Total_Dia;
      Imprime_Total_Mes;
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

procedure TfPrevRelCReceber.Filtra_Calcula2;
var
  vData1, vData2 : String;
begin
  vData1 := DateEdit1.Text;
  vData2 := DateEdit2.Text;
  Query1.Active := False;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT A.NumNota AS Nota, A.ParcCReceber AS Parcela, A.DtVencCReceber AS Data, A.VlrParcCReceber AS ValorParc, A.JurosPagos AS JurosPagos , A.PgtoParcial AS ValorPago, A.RestParcela AS ValorRestante,');
  Query1.SQL.Add('A.CodConta AS CodConta, A.DtPagParcCReceber AS DtPgto, A.CodCli, A.NumCReceber, A.Abatimentos As Abatimentos');
  Query1.SQL.Add('FROM dbCReceberParc A');
  case RadioGroup1.ItemIndex of
    0 : Begin
          if vData1 <> '' then
            begin
              Query1.SQL.Add('WHERE (A.RestParcela > 0) AND A.DtVencCReceber <= :D1 AND ((A.Cancelado = FALSE) OR (A.Cancelado IS NULL))');
              Query1.ParamByName('D1').AsDate := StrToDate(vData1);
              if RxDBLookupCombo1.Text <> '' then
                begin
                  Query1.SQL.Add(' and CodConta = :C1');
                  Query1.ParamByName('C1').AsInteger := RxDBLookupCombo1.KeyValue;
                end;
            end
          else
            Begin
              ShowMessage('Não foi preenchido Data Referência!');
              DateEdit1.SetFocus;
            end;
        end;
    1 : Begin
          if (vData1 <> '') and (vData2 <> '') then
            begin
              Query1.SQL.Add('WHERE (A.RestParcela > 0) AND ((A.Cancelado = FALSE) OR (A.Cancelado IS NULL)) AND (A.DtVencCReceber BETWEEN :D1 AND :D2)');
              Query1.ParamByName('D1').AsDate := StrToDate(vData1);
              Query1.ParamByName('D2').AsDate := StrToDate(vData2);
              if RxDBLookupCombo1.Text <> '' then
                begin
                  Query1.SQL.Add(' and CodConta = :C1');
                  Query1.ParamByName('C1').AsInteger := RxDBLookupCombo1.KeyValue;
                end;
            end
          else
            begin
              Query1.SQL.Add('WHERE (A.RestParcela > 0) AND (cancelado <> TRUE)');
              if RxDBLookupCombo1.Text <> '' then
                begin
                  Query1.SQL.Add(' and CodConta = :C1');
                  Query1.ParamByName('C1').AsInteger := RxDBLookupCombo1.KeyValue;
                end;
            end;
        end;
    2 : begin
          if (vData1 <> '') and (vData2 <> '') then
            begin
              Query1.SQL.Add('WHERE (A.RestParcela <= 0) AND ((A.Cancelado = FALSE) OR (A.Cancelado IS NULL)) AND (A.DtPagParcCReceber BETWEEN :D1 AND :D2)');
              Query1.ParamByName('D1').AsDate := StrToDate(vData1);
              Query1.ParamByName('D2').AsDate := StrToDate(vData2);
              if RxDBLookupCombo1.Text <> '' then
                begin
                  Query1.SQL.Add(' and CodConta = :C1');
                  Query1.ParamByName('C1').AsInteger := RxDBLookupCombo1.KeyValue;
                end;
            end
          else
            begin
              Query1.SQL.Add('WHERE (A.RestParcela <= 0) AND ((A.Cancelado = FALSE) OR (A.Cancelado IS NULL))');
              if RxDBLookupCombo1.Text <> '' then
                begin
                  Query1.SQL.Add(' and CodConta = :C1');
                  Query1.ParamByName('C1').AsInteger := RxDBLookupCombo1.KeyValue;
                end;
            end;
        end;
    3 : begin
          if (vData1 <> '') and (vData2 <> '') then
            begin
              Query1.SQL.Add('WHERE ((A.Cancelado = FALSE) OR (A.Cancelado IS NULL)) AND (A.DtVencCReceber BETWEEN :D1 AND :D2)');
              Query1.ParamByName('D1').AsDate := StrToDate(vData1);
              Query1.ParamByName('D2').AsDate := StrToDate(vData2);
              if RxDBLookupCombo1.Text <> '' then
                begin
                  Query1.SQL.Add(' and CodConta = :C1');
                  Query1.ParamByName('C1').AsInteger := RxDBLookupCombo1.KeyValue;
                end;
            end
          else
            begin
              Query1.SQL.Add('WHERE ((A.Cancelado = FALSE) OR (A.Cancelado IS NULL))');
              if RxDBLookupCombo1.Text <> '' then
                begin
                  Query1.SQL.Add(' and CodConta = :C1');
                  Query1.ParamByName('C1').AsInteger := RxDBLookupCombo1.KeyValue;
                end;
            end
        end;
  end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      Query1.SQL.Add(' and A.CodCli = :Cliente');
      Query1.ParamByName('Cliente').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  Query1.SQL.Add('ORDER BY A.DtVencCReceber');
  Query1.Active := True;
end;

procedure TfPrevRelCReceber.Muda_DataSet;
begin
  fRelCReceber.QuickRep1.DataSet := Query1;
  fRelCReceber.QRDBText1.DataSet := Query1;
  fRelCReceber.QRDBText2.DataSet := Query1;
  fRelCReceber.QRDBText3.DataSet := Query1;
  fRelCReceber.QRDBText4.DataSet := Query1;
  fRelCReceber.QRDBText6.DataSet := Query1;
  fRelCReceber.QRDBText7.DataSet := Query1;
  fRelCReceber.QRDBText8.DataSet := Query1;
  fRelCReceber.QRDBText9.DataSet := Query1;
end;

procedure TfPrevRelCReceber.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    begin
      StaticText1.Caption := 'Data Referência:';
      StaticText2.Visible := False;
      DateEdit2.Visible   := False;
    end
  else
    begin
      StaticText1.Caption := 'Data Inicial:';
      StaticText2.Visible := True;
      DateEdit2.Visible   := True;
    end;
end;

procedure TfPrevRelCReceber.Imprimir1Click(Sender: TObject);
begin
  Filtra_Calcula2;
  case RadioGroup2.ItemIndex of
    0 : Imprimir;
    1 : begin
          Application.CreateForm(TfRelCReceber, fRelCReceber);
          Muda_DataSet;
          fRelCReceber.QuickRep1.Print;
          fRelCReceber.QuickRep1.Free;
        end;
  end;       
end;

procedure TfPrevRelCReceber.Visualizar1Click(Sender: TObject);
begin
  Filtra_Calcula2;
  Application.CreateForm(TfRelCReceber, fRelCReceber);
  Muda_DataSet;
  fRelCReceber.QuickRep1.Preview;
  fRelCReceber.QuickRep1.Free;
end;

procedure TfPrevRelCReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfPrevRelCReceber.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

end.
