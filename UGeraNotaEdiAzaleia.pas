unit UGeraNotaEdiAzaleia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, StdCtrls, Mask, ToolEdit, Buttons, Db, DBTables, MemTable, ExtCtrls,
  RxLookup, Grids, DBGrids, RXDBCtrl, CurrEdit, rsDBUtils;

type
  TfGeraNotaEdiAzaleia = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    DirectoryEdit1: TDirectoryEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Bevel1: TBevel;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tProdutoCli: TTable;
    DataSource1: TDataSource;
    tProdutoCliCodProduto: TIntegerField;
    tProdutoCliCodCor: TIntegerField;
    tProdutoCliCodCliente: TIntegerField;
    tProdutoCliCodProdCli: TStringField;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    Label7: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    RxDBGrid1: TRxDBGrid;
    qEDI: TQuery;
    qEDINumMov: TIntegerField;
    mPedido: TMemoryTable;
    tProdutoCliCodGrade: TIntegerField;
    tProdutoCliPosicao: TIntegerField;
    mPedidoPedidoCli: TStringField;
    Edit2: TEdit;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vCodProdCli : String;
    procedure Grava_Tipo1; //Cabecalho
    procedure Grava_Tipo2(Tipo : String) ; //Duplicatas
    procedure Grava_Tipo3; //Pedidos
    procedure Grava_Tipo4(Tamanho : String);
    function RemoveVirgula(Str:String): String;
  public
    { Public declarations }
  end;

var
  fGeraNotaEdiAzaleia: TfGeraNotaEdiAzaleia;
  F : TextFile;
  vCodNat2 : String;
  vBaseIPI : Real;
  vItem, vParcela : Integer;
  vPedidoCli : String;

implementation

uses UDM1;

{$R *.DFM}

function TfGeraNotaEdiAzaleia.RemoveVirgula(Str:String): String;
 Const ComVirgula = ', ';
       ComPonto   = '. ';
Var
  x : Integer;
Begin
  For x := 1 to Length(Str) do
    Begin
      if Pos(Str[x],ComVirgula)<>0 Then
        Str[x] := ComPonto[Pos(Str[x],ComVirgula)];
    end;
  Result := Str;
end;

procedure TfGeraNotaEdiAzaleia.Grava_Tipo1; //Cabecalho
var
  i : Integer;
  texto1, texto2, vAux : String;
  ano, mes, dia : Word;
begin
  //Identificação do Registro 1 até 1  (1 caracter)
  texto1 := '1';

  //Função 2 até 2  (1 caracter)
  texto1 := texto1 + '1';

  //CNPJ do cliente 3 até 16  (14 caracteres)
  texto2   := '';
  vAux     := DM1.tNotaFiscallkCgcCli.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Número da nota 17 até 22  (6 caracteres)
  texto2 := DM1.tNotaFiscalNumNota.AsString;
  for i := 1 to 6 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  //Série da Nota 23 até 26  (4 caracteres)
  texto1 := texto1 + '    ';

  //CNPJ da empresa emissora da nota 27 até 40  (14 caracteres)
  texto2   := '';
  vAux     := DM1.tEmpresaCgc.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Tipo da Nota Fiscal 41 até 42  (2 caracteres)
  texto1 := Texto1 + '01';

  //Data da emissão da nota 43 até 50  (8 caracteres)
  DecodeDate(DM1.tNotaFiscalDtEmissao.AsDateTime,Ano,Mes,Dia);
  texto1 := texto1 + IntToStr(Ano) + FormatFloat('00',Mes) + FormatFloat('00',Dia);

  //CNPJ da transportadora 51 até 64  (14 caracteres)
  texto2   := '';
  vAux     := DM1.tNotaFiscallkCgcTransp.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Condição de Entrega 65 até 67  (3 caracteres)
  if DM1.tNotaFiscalEmitDest.AsString = '1' then
    texto1 := Texto1 + 'CIF'
  else
  if DM1.tNotaFiscalEmitDest.AsString = '2' then
    texto1 := Texto1 + 'FOB'
  else
    texto1 := Texto1 + '   ';

  //Quantidade de volumes 68 até 72  (5 caracteres)
  texto1 := texto1 + FormatFloat('00000',DM1.tNotaFiscalQtd.AsInteger);

  //Peso bruto 73 até 83  (11 caracteres)
//  texto1 := texto1 + FormatFloat('0000000.000',DM1.tNotaFiscalPesoBruto.AsFloat);
  texto2 := FormatFloat('0000000.000',DM1.tNotaFiscalPesoBruto.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Peso líquido 84 até 94  (11 caracteres)
//  texto1 := texto1 + FormatFloat('0000000.000',DM1.tNotaFiscalPesoLiquido.AsFloat);
  texto2 := FormatFloat('0000000.000',DM1.tNotaFiscalPesoLiquido.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Unidade de Medida Peso 95 até 97  (3 caracteres)
  texto1 := texto1 + 'KG ';

  //Base de cálculo do ipi 98 até 116 (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',vBaseIPI);
  texto2 := FormatFloat('000000000000.000000',vBaseIPI);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor do ipi da nota fiscal 117 até 135 (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrIpi.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrIpi.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Base de cálculo do icms 136 até 154  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalBaseIcms.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalBaseIcms.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor do icms 155 até 173  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrIcms.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrIcms.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Base do ICMS Substituição 174 até 192  (19 caracteres)
  texto1 := texto1 + '000000000000.000000';

  //Valor do ICMS Substituição 193 até 211  (19 caracteres)
  texto1 := texto1 + '000000000000.000000';

  //Valor dos produtos 212 até 230  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrTotalItens.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrTotalItens.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor do desconto 231 até 249  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrTotalDesc.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrTotalDesc.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor de outras despesas e acessórios 250 até 268  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalOutrasDesp.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalOutrasDesp.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor despesas financeiras 269 até 287  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalCustoFinanc.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalCustoFinanc.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor do frete 288 até 306  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrFrete.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrFrete.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor do seguro 307 até 325  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrSeguro.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrSeguro.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Valor da seguridade social 326 até 344  (19 caracteres)
  texto1 := texto1 + '000000000000.000000';

  //Valor total 345 até 363  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrTotalNota.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrTotalNota.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  writeln(F,texto1);
end;

procedure TfGeraNotaEdiAzaleia.Grava_Tipo2(Tipo : String); //Duplicatas
var
  texto1, texto2 : String;
  ano, mes, dia : Word;
begin
  //Identificação do Registro 1 até 1  (1 caracter)
  texto1 := '2';

  //Número da duplicata 2 até 3  (2 caracter)
  inc(vParcela);
  texto1 := texto1 + FormatFloat('00',vParcela);

  //Data do vencimento 4 até 11  (8 caracter)
  if Tipo = 'P' then
    DecodeDate(DM1.tNotaFiscalParcDtVenc.AsDateTime,Ano,Mes,Dia)
  else
    DecodeDate(DM1.tNotaFiscalDtEmissao.AsDateTime,Ano,Mes,Dia);
  texto1 := texto1 + IntToStr(Ano) + FormatFloat('00',Mes) + FormatFloat('00',Dia);

  //Valor da duplicata 12 até 30  (19 caracteres)
  if Tipo = 'P' then
    texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalParcVlrVenc.AsFloat)
  else
    texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalVlrTotalDupl.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);
  writeln(F,texto1);
end;

procedure TfGeraNotaEdiAzaleia.Grava_Tipo3; //Pedidos
var
  texto1 : String;
  texto2 : String;
  i : Integer;
begin
  //Identificação do Registro 1 até 1  (1 caracter)
  texto1 := '3';

  //Número do pedido de compra 2 até 3  (2 caracter)
  texto2 := copy(mPedidoPedidoCli.AsString,1,8);
  for i := 1 to 8 do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  writeln(F,texto1);
end;

procedure TfGeraNotaEdiAzaleia.Grava_Tipo4(Tamanho : String);
var
  i : Integer;
  texto1, texto2 : String;
  vValor : Real;
begin
  //Identificação do Registro 1 até 1  (1 caracter)
  texto1 := '4';

  //Número do item da nota 2 até 4  (3 caracteres)
  inc(vitem);
  texto1 := texto1 + FormatFloat('000',vItem);

  //Número da Nota Fiscal 5 até 9  (5 caracteres)
  texto1 := texto1 + FormatFloat('00000',DM1.tNotaFiscalItenslkCodNatOper.AsInteger);

  //Número da Nota Fiscal 10 até 24  (15 caracteres)
  texto2 := vCodProdCli;
  for i := 1 to 15 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Unidade de medida 25 até 27  (3 caracteres)
  texto2 := DM1.tNotaFiscalItensUnidade.AsString;
  for i := 1 to 3 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Quantidade entregue 28 até 42  (15 caracteres)
{  if Tamanho = '' then
    texto1 := texto1 + FormatFloat('00000000000.000',DM1.tNotaFiscalItensQtd.AsFloat)
  else
    texto1 := texto1 + FormatFloat('00000000000.000',DM1.tNotaFiscalGradeQtd.AsFloat);}
  if Tamanho = '' then
    texto2 := FormatFloat('00000000000.000',DM1.tNotaFiscalItensQtd.AsFloat)
  else
    texto2 := FormatFloat('00000000000.000',DM1.tNotaFiscalGradeQtd.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //Quantidade Lote 43 até 57  (15 caracteres)
  texto1 := texto1 + '00000000000.000';

  //Preço unitário 58 até 76  (19 caracteres)
//  texto1 := texto1 + FormatFloat('000000000000.000000',DM1.tNotaFiscalItensVlrUnit.AsFloat);
  texto2 := FormatFloat('000000000000.000000',DM1.tNotaFiscalItensVlrUnit.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //% IPI 77 até 86  (10 caracteres)
//  texto1 := texto1 + FormatFloat('000.000000',DM1.tNotaFiscalItensIpi.AsFloat);
  texto2 := FormatFloat('000.000000',DM1.tNotaFiscalItensIpi.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //% ICMS 87 até 96  (10 caracteres)
//  texto1 := texto1 + FormatFloat('000.000000',DM1.tNotaFiscalItensIcms.AsFloat);
  texto2 := FormatFloat('000.000000',DM1.tNotaFiscalItensIcms.AsFloat);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //% Diferencial ICMS 97 até 106  (10 caracteres)
  texto1 := texto1 + '000.000000';

  //% Redução ICMS 107 até 116  (10 caracteres)
  vValor := 100 - StrToFloat(FormatFloat('0.000',DM1.tNotaFiscalItenslkPercSitTributaria.AsFloat));
//  texto1 := texto1 + FormatFloat('000.000000',vValor);
  texto2 := FormatFloat('000.000000',vValor);
  texto1 := texto1 + RemoveVirgula(Texto2);

  //% Seguridade Social 117 até 126  (10 caracteres)
  texto1 := texto1 + '000.000000';

  //Código EAN13 127 até 139  (13 caracteres)
  texto1 := texto1 + '             ';

  writeln(F,texto1);
end;

procedure TfGeraNotaEdiAzaleia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tNotaFiscal.Filtered := False;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfGeraNotaEdiAzaleia.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfGeraNotaEdiAzaleia.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfGeraNotaEdiAzaleia.DateEdit1Exit(Sender: TObject);
//var
//  ano, mes, dia : Word;
begin
//  DecodeDate(DateEdit1.Date,ano,mes,dia);
//  Edit1.Text := 'NF'+FormatFloat('00',Dia)+FormatFloat('00',Mes)+Copy(IntToStr(Ano),3,2)+'.INJ';
end;

procedure TfGeraNotaEdiAzaleia.BitBtn1Click(Sender: TObject);
var
  i : Integer;
  ano, mes, dia : Word;
  vFlag : Boolean;
begin
  if ((DateEdit1.Text = '  /  /    ') and (DateEdit2.Text = '  /  /    ') and (RxDBLookupCombo1.Text = '')) or
     ((CurrencyEdit1.Value <= 0) and (CurrencyEdit2.Value <= 0) and (RxDBLookupCombo1.Text = '')) then
    ShowMessage('Falta informações!')
  else
    begin
      qEDI.Close;
      qEDI.Params[0].AsDate := Date;
      qEDI.Params[1].AsInteger := RxDBLookupCombo1.KeyValue;
      qEDI.Open;
      i := qEDINumMov.AsInteger + 1;
      DecodeDate(Date,ano,mes,dia);
      Edit1.Text := 'NF'+FormatFloat('00',Dia)+FormatFloat('00',Mes)+FormatFloat('00',i)+'.TXT';
      AssignFile(F,DirectoryEdit1.Text + '\' +Edit1.Text);
      Rewrite(F);
      DM1.tNotaFiscal.IndexFieldNames := 'Serie;NumNota';
//      ShowMessage('Serie = '+Edit2.Text+' and NumNota >= '''+IntToStr(CurrencyEdit1.AsInteger)+''' and NumNota <= '''+IntToStr(CurrencyEdit2.AsInteger)+''' and CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue) +'''');
      DM1.tNotaFiscal.Filtered := False;
      case RadioGroup1.ItemIndex of
        0 : DM1.tNotaFiscal.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+''' and CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue) +'''';
        1 : DM1.tNotaFiscal.Filter   :=  'Serie = '+Edit2.Text+' and NumNota >= '''+IntToStr(CurrencyEdit1.AsInteger)+''' and NumNota <= '''+IntToStr(CurrencyEdit2.AsInteger)+''' and CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue) +'''';
      end;
      DM1.tNotaFiscal.Filtered := True;
      DM1.tNotaFiscal.First;
      while not DM1.tNotaFiscal.Eof do
        begin
          //Le os itens para somar a base do ipi e ver se tem mais de uma natureza de operação
          mPedido.EmptyTable;
          vBaseIPI := 0;
          DM1.tNotaFiscalItens.First;
          while not DM1.tNotaFiscalItens.Eof do
            begin
              if DM1.tNotaFiscalItensVlrIpi.AsFloat > 0 then
                vBaseIPI := vBaseIPI + DM1.tNotaFiscalItensVlrTotal.AsFloat;
              if not mPedido.Locate('PedidoCli',DM1.tNotaFiscalItensNumOC.AsString,[loCaseInsensitive]) then
                begin
                  mPedido.Insert;
                  mPedidoPedidoCli.AsString := DM1.tNotaFiscalItensNumOC.AsString;
                  mPedido.Post;
                end;
              DM1.tNotaFiscalItens.Next;
            end;

          //Cabecalho
          Grava_Tipo1;
          //Condição de pagamento
          if DM1.tNotaFiscalCondPgto.AsString = 'V' then
            Grava_Tipo2('V')
          else
            begin
              vParcela := 0;
              DM1.tNotaFiscalParc.First;
              while not DM1.tNotaFiscalParc.Eof do
                begin
                  Grava_Tipo2('P');
                  DM1.tNotaFiscalParc.Next;
                end;
            end;
          //Pedidos
          mPedido.First;
          while not mPedido.Eof do
            begin
              Grava_Tipo3;
              mPedido.Next;
            end;
          //Itens
          vItem    := 0;
          DM1.tNotaFiscalItens.First;
          while not DM1.tNotaFiscalItens.Eof do
            begin
              vCodProdCli := '';
              if not DM1.tNotaFiscalItensMaterial.AsBoolean then
                begin
                  if tProdutoCli.Locate('CodProduto;CodCor;CodCliente',
                     VarArrayOf([DM1.tNotaFiscalItensCodProduto.AsInteger,DM1.tNotaFiscalItensCodCor.AsInteger,
                                 DM1.tNotaFiscalCodCli.AsInteger]),[locaseinsensitive]) then
                    vCodProdCli := tProdutoCliCodProdCli.AsString
                end;
              vFlag := False;
              DM1.tNotaFiscalGrade.First;
              while not DM1.tNotaFiscalGrade.Eof do
                begin
                  if DM1.tNotaFiscalGradeQtd.AsFloat > 0 then
                    begin
                      if not DM1.tNotaFiscalItensMaterial.AsBoolean then
                        begin
                          if tProdutoCli.Locate('CodProduto;CodCor;CodCliente;CodGrade;Posicao',
                             VarArrayOf([DM1.tNotaFiscalItensCodProduto.AsInteger,DM1.tNotaFiscalItensCodCor.AsInteger,
                                         DM1.tNotaFiscalCodCli.AsInteger,DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                            vCodProdCli := tProdutoCliCodProdCli.AsString
                          else
                          if tProdutoCli.Locate('CodProduto;CodCor;CodCliente;CodGrade',
                             VarArrayOf([DM1.tNotaFiscalItensCodProduto.AsInteger,DM1.tNotaFiscalItensCodCor.AsInteger,
                                         DM1.tNotaFiscalCodCli.AsInteger,DM1.tNotaFiscalGradeCodGrade.AsInteger]),[locaseinsensitive]) then
                            vCodProdCli := tProdutoCliCodProdCli.AsString;
                        end;
                      Grava_Tipo4(DM1.tNotaFiscalGradelkTamanho.AsString);
                      vFlag := True;
                    end;
                  DM1.tNotaFiscalGrade.Next;
                end;
              if not vFlag then
                Grava_Tipo4('');
              DM1.tNotaFiscalItens.Next;
            end;
          Dm1.tArqEDI.Insert;
          Dm1.tArqEDIData.AsDateTime   := Date;
          Dm1.tArqEDICodCli.AsInteger  := Dm1.tNotaFiscalCodCli.AsInteger;
          Dm1.tArqEDINumMov.AsInteger  := i;
          Dm1.tArqEDINumNota.AsInteger := Dm1.tNotaFiscalNumNota.AsInteger;
          Dm1.tArqEDI.Post;
          DM1.tNotaFiscal.Next;
        end;
      ShowMessage('Arquivo gerado!');
      DM1.tNotaFiscal.Filtered := False;
      CloseFile(F);
    end;
end;

procedure TfGeraNotaEdiAzaleia.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
          DateEdit1.Enabled := True;
          DateEdit2.Enabled := True;
          CurrencyEdit1.Enabled := False;
          CurrencyEdit2.Enabled := False;
        end;
    1 : begin
          DateEdit1.Enabled := False;
          DateEdit2.Enabled := False;
          CurrencyEdit1.Enabled := True;
          CurrencyEdit2.Enabled := True;
        end;
  end;
end;

procedure TfGeraNotaEdiAzaleia.CurrencyEdit1Enter(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfGeraNotaEdiAzaleia.DateEdit1Enter(Sender: TObject);
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
end;

procedure TfGeraNotaEdiAzaleia.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  DirectoryEdit1.Text := DM1.tParametrosEnderecoNotaEDI.AsString;
  RadioGroup1Click(Sender);
end;

end.
