unit UGeraNotaEdi;

interface

uses                 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, Buttons, Db, DBTables, MemTable, ExtCtrls,
  RxLookup, Grids, DBGrids, RXDBCtrl, CurrEdit, rsDBUtils;

type
  TfGeraNotaEdi = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Cabecalho;
    procedure Grava_itens(Tamanho : String);
    procedure Grava_Vencimentos(Tipo : String);
    
  public
    { Public declarations }
  end;

var
  fGeraNotaEdi: TfGeraNotaEdi;
  F : TextFile;
  vCodNat2 : String;
  vBaseIPI : Real;
  vItem : Integer;
  vCodProdCli : String;
  vPedidoCli : String;

implementation

uses UDM1;

{$R *.DFM}

procedure TfGeraNotaEdi.Grava_Cabecalho;
var                           
  i : Integer;
  texto1, texto2, vAux : String;
  ano, mes, dia : Word;
begin
  //Identificação do Registro 1 até 1  (1 caracter)
  texto1 := 'C';

  //Número da nota 2 até 7  (6 caracteres)
  texto2 := DM1.tNotaFiscalNumNota.AsString;
  for i := 1 to 6 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  //Série da Nota 8 até 10  (3 caracteres)
  texto1 := texto1 + '   ';

  //Cgc da empresa emissora da nota 11 até 24  (14 caracteres)
  texto2   := '';
  vAux     := DM1.tEmpresaCgc.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Cgc do cliente 25 até 38  (14 caracteres)
  texto2   := '';
  vAux     := DM1.tNotaFiscallkCgcCli.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Cgc do substituto tributário 39 até 52  (14 caracteres)
  texto1 := texto1 + '              ';

  //Data da emissão da nota 53 até 60  (8 caracteres)
  DecodeDate(DM1.tNotaFiscalDtEmissao.AsDateTime,Ano,Mes,Dia);
  texto1 := texto1 + IntToStr(Ano) + FormatFloat('00',Mes) + FormatFloat('00',Dia);

  //"V" Venda  ou  "B" Beneficiamento 61 até 61  (1 caracter)
  if vCodNat2 <> '' then
    texto1 := texto1 + 'B'
  else
    texto1 := texto1 + 'V';

  //Código da Natureza de Operação 62 até 65  (4 caracteres)
  texto1 := texto1 + DM1.tNotaFiscallkCodNatOper.AsString;

  //Segundo código da natureza de operação 66 até 69  (4 caracteres)
  texto2 := vCodNat2;
  for i := 1 to 4 - length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Valor total do icms da nota 70 até 81  (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrIcms.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Base de cálculo do icms da nota 82 até 93  (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalBaseIcms.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor isento do icms 94 até 105  (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTotalNota.AsFloat -  DM1.tNotaFiscalBaseIcms.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor não tributado de ICMS  106 até 117  (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Valor da transferência do icms 118 até 129 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTransf.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor do ipi da nota fiscal 130 até 141 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrIpi.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Base de cálculo do ipi da nota fiscal 142 até 153 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',vBaseIPI);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor isento do ipi 154 até 165 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTotalNota.AsFloat -  vBaseIPI);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor não tributado do ipi 166 até 177 (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Valor do frete 178 até 189 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrFrete.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor do icms sobre o frete 190 até 201 (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Cgc do transportador 202 até 215 (12 caracteres)
  texto2   := '';
  vAux     := DM1.tNotaFiscallkCgcTransp.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Valor de outras despesas 216 até 227 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalOutrasDesp.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor total do issqn 228 até 239 (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Valor total dos produtos 240 até 251 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTotalItens.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor total da nota fiscal 252 até 263 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTotalNota.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor que será faturado na nota fiscal 264 até 275 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Campo de uso livre 276 até 282 (7 caracteres)
  texto1 := texto1 + '       ';

  //Valor do seguro 283 até 294 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrSeguro.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor Embalagem 295 até 306 (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Valor desconto na nota 307 até 318 (12 caracteres)
  texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTotalDesc.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Código da transportadora 319 até 323 (5 caracteres)
  texto1 := texto1 + '     ';

  writeln(F,texto1);
end;

procedure TfGeraNotaEdi.Grava_Itens(Tamanho : String);
var
  i : Integer;
  texto1, texto2, vAux : String;
  vValor : Real;
begin
  //Identificação do Registro 1 até 1  (1 caracter)
  texto1 := 'I';

  //Número da Nota Fiscal 2 até 7  (6 caracteres)
  texto1 := texto1 + FormatFloat('000000',DM1.tNotaFiscalNumNota.AsInteger);

  //Série da Nota Fiscal 8 até 10  (3 caracteres)
  texto1 := texto1 + '   ';

  //Cgc da empresa emissora da nota 11 até 24  (14 caracteres)
  texto2   := '';
  vAux     := DM1.tEmpresaCgc.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Número do item da nota 25 até 26  (2 caracteres)
  inc(vitem);
  texto1 := texto1 + FormatFloat('00',vItem);

  //Código do produto do cliente 27 até 41  (15 caracteres)
  texto2 := vCodProdCli;
  if Tamanho <> '' then
    texto2 := texto2 + '-' + Tamanho;
  for i := 1 to 15 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Número da ordem de compra 42 até 51  (10 caracteres)
  texto2 := copy(DM1.tNotaFiscalItensNumOC.AsString,1,10);
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Quantidade do produto 52 até 61  (10 caracteres)
  if Tamanho = '' then
    texto2 := FormatFloat('000000.0000',DM1.tNotaFiscalItensQtd.AsFloat)
  else
    texto2 := FormatFloat('000000.0000',DM1.tNotaFiscalGradeQtd.AsFloat);
  Delete(Texto2,7,1);
  texto1 := texto1 + texto2;

  //Unidade de medida do produto 62 até 64  (3 caracteres)
  texto2 := DM1.tNotaFiscalItensUnidade.AsString;
  for i := 1 to 3 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Fábrica ou esteira do cliente 65 até 68  (4 caracteres)
  texto1 := texto1 + '    ';

  //Plano, remessa ou ficha do cliente 69 até 74  (6 caracteres)
  texto2 := copy(DM1.tNotaFiscalItenslkNumOS.AsString,1,6);
  for i := 1 to 6 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Valor unitário do produto 75 até 90  (16 caracteres)
  texto2 := FormatFloat('0000000000.000000',DM1.tNotaFiscalItensVlrUnit.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Valor do ipi do produto 91 até 102  (12 caracteres)
  texto2 := '0000000000.00';
  if DM1.tNotaFiscalItensIpi.AsFloat > 0 then
    begin
      if Tamanho = '' then
        texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalItensVlrIpi.AsFloat)
      else
        begin
          vValor := (DM1.tNotaFiscalGradeQtd.AsFloat * DM1.tNotaFiscalItensVlrUnit.AsFloat) * DM1.tNotaFiscalItensIpi.AsFloat / 100;
          texto2 := FormatFloat('0000000000.00',vValor);
        end
    end;
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Aliquota do icms do produtos 103 até 107  (5 caracteres)
  texto2 := FormatFloat('00.000',DM1.tNotaFiscalItensIcms.AsFloat);
  Delete(Texto2,3,1);
  texto1 := texto1 + texto2;

  //Código da situação tributária 108 até 109  (2 caracteres)
  texto2 := copy(DM1.tNotaFiscalItenslkSitTributaria.AsString,2,2);
  for i := 1 to 2 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Aliquota do ipi do produto 110 até 114  (5 caracteres)
  texto2 := FormatFloat('00.000',DM1.tNotaFiscalItensIpi.AsFloat);
  Delete(Texto2,3,1);
  texto1 := texto1 + texto2;

  //Tipo de classificação do ipi 115 até 115  (1 caracter)
  if DM1.tNotaFiscalItensIpi.AsFloat > 0 then
    texto1 := texto1 + 'T'
  else
    texto1 := texto1 + 'I';

  //Indica se a venda é drawback ou não 116 até 116  (1 caracter)
  texto1 := texto1 + 'N';

  //Número da Nota de retorno de beneficiamento (nota origem) 117 até 122  (6 caracteres)
  texto2 := DM1.tNotaFiscalItensNumNotaDevForn.AsString;
  for i := 1 to 6 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  //Série da Nota de retorno de beneficiamento (nota origem) 123 até 125  (3 caracteres)
  texto1 := texto1 + '   ';

  //Número do item da nota fiscal de retorno de beneficiamento 126 até 140  (15 caracteres)
  texto2 := DM1.tNotaFiscalItensItemDev.AsString;
  for i := 1 to 15 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Valor do desconto do item da nota 141 até 152  (12 caracteres)
  texto2 := '0000000000.00';
  if DM1.tNotaFiscalItensDesconto.AsFloat > 0 then
    begin
      if Tamanho = '' then
        texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalItensVlrDesconto.AsFloat)
      else
        begin
          vValor := DM1.tNotaFiscalGradeQtd.AsFloat * DM1.tNotaFiscalItensVlrUnit.AsFloat;
          vValor := vValor * DM1.tNotaFiscalItensDesconto.AsFloat / 100;
          texto2 := FormatFloat('0000000000.00',vValor);
        end;
    end;
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Código da natureza de operação 153 até 156  (4 caracteres)
  texto2 := DM1.tNotaFiscalItenslkCodNatOper.AsString;
  for i := 1 to 4 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Tipo da operação V=Venda  M=Mão de Obra  R=Retorno  D=Desconto  157 até 157  (1 caracter)
  if (DM1.tNotaFiscalItenslkCodNatOper.AsString = '5124') or (DM1.tNotaFiscalItenslkCodNatOper.AsString = '6124') then
    texto1 := texto1 + 'M'
  else
  if (DM1.tNotaFiscalItensMaterial.AsBoolean) and (DM1.tNotaFiscalItensNumNotaDevForn.AsInteger > 0) then
    texto1 := texto1 + 'R'
  else
    texto1 := texto1 + 'V';

  //Quantidade2  158 até 166  (9 caracteres)
  texto1 := texto1 + '000000000';

  //Valor2  167 até 178  (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Valor base de cálculo da substituição tributária 179 até 190  (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Valor da substituição tributária 191 até 202  (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Campo de uso Livre 203 até 288  (86 caracteres)
  for i := 1 to 86 do
    texto1 := texto1 + ' ';

  //Código do item no fornecedor 289 até 308  (20 caracteres)
  texto2 := DM1.tNotaFiscalItenslkReferencia.AsString;
  for i := 1 to 20 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Preço líquido do item 309 até 320  (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Valor de despesas do item 321 até 332  (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Cgc do emitente terceiro 333 até 346  (14 caracteres)
  texto1 := texto1 + '              ';

  //Número da nota terceiro 347 até 362  (16 caracteres)
  texto1 := texto1 + '                ';

  //Série da nota terceiro 363 até 367  (5 caracteres)
  texto1 := texto1 + '     ';

  //Classificação fiscal do item 368 até 377  (10 caracteres)
  texto1 := texto1 + '          ';

  //Número do lote do material 378 até 387  (10 caracteres)
  texto1 := texto1 + '          ';

  //Data de validade do materal 388 até 395  (8 caracteres)
  texto1 := texto1 + '        ';

  //Base de cálculo do ipi 396 até 407  (12 caracteres)
  texto2 := '0000000000.00';
  if DM1.tNotaFiscalItensIpi.AsFloat > 0 then
    begin
      if Tamanho = '' then
        vValor := DM1.tNotaFiscalItensVlrUnit.AsFloat * DM1.tNotaFiscalItensQtd.AsFloat
      else
        vValor := DM1.tNotaFiscalItensVlrUnit.AsFloat * DM1.tNotaFiscalGradeQtd.AsFloat;
      texto2 := FormatFloat('0000000000.00',vValor);
    end;
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;
  
  writeln(F,texto1);
end;

procedure TfGeraNotaEdi.Grava_Vencimentos(Tipo : String);
var                                                     
  i : Integer;
  texto1, texto2, vAux : String;
  ano, mes, dia : Word;
begin
  //Identificação do registro 1 até 1  (1 caracter)
  texto1 := 'V';

  //Número da Nota Fiscal 2 até 7  (6 caracteres)
  texto1 := texto1 + FormatFloat('000000',DM1.tNotaFiscalNumNota.AsInteger);

  //Série da Nota Fiscal 8 até 10  (3 caracteres)
  texto1 := texto1 + '   ';

  //Cgc da empresa emissora da nota 11 até 24  (14 caracteres)
  texto2   := '';
  vAux     := DM1.tEmpresaCgc.AsString;
  for i    := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := Texto1 + texto2;

  //Número da parcela da nota 25 até 26 (2 caracteres)
  texto1 := texto1 + FormatFloat('00',DM1.tNotaFiscalParcParcela.AsInteger);

  //Número da dúplicata 27 até 36 (10 caracteres)
  texto2 := DM1.tNotaFiscalNumNota.AsString;
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Valor da parcela 37 até 48 (12 caracteres)
  if Tipo = 'P' then
    texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalParcVlrVenc.AsFloat)
  else
    texto2 := FormatFloat('0000000000.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat);
  Delete(Texto2,11,1);
  texto1 := texto1 + texto2;

  //Data do vencimento da parcela 49 até 56 (8 caracteres)
  if Tipo = 'P' then
    begin
      DecodeDate(DM1.tNotaFiscalParcDtVenc.AsDateTime,ano,mes,dia);
      texto1 := texto1 + FormatFloat('0000',ano) + FormatFloat('00',mes) + FormatFloat('00',dia);
    end
  else
    texto1 := texto1 + '88888888';

  //Valor do desconto 57 até 68 (12 caracteres)
  texto1 := texto1 + '000000000000';

  //Data de vencimento da dúplicata com desconto 69 até 76 (8 caracteres)
  if Tipo = 'P' then
    texto1 := texto1 + '00000000'
  else
    texto1 := texto1 + '88888888';

  //Campo de uso livre 77 até 152 (76 caracteres)
  for i := 1 to 76 do
    texto1 := texto1 + ' ';

  writeln(F,texto1);
end;

procedure TfGeraNotaEdi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tNotaFiscal.Filtered := False;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfGeraNotaEdi.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfGeraNotaEdi.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfGeraNotaEdi.BitBtn1Click(Sender: TObject);
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
      DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumNota';
      DM1.tNotaFiscal.Filtered := False;
      case RadioGroup1.ItemIndex of
        0 : DM1.tNotaFiscal.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+''' and CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue) +'''';
        1 : DM1.tNotaFiscal.Filter   := 'NumNota >= '''+IntToStr(CurrencyEdit1.AsInteger)+''' and NumNota <= '''+IntToStr(CurrencyEdit2.AsInteger)+''' and CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue) +'''';
      end;
      DM1.tNotaFiscal.Filtered := True;
      DM1.tNotaFiscal.First;
      while not DM1.tNotaFiscal.Eof do
        begin
          //Le os itens para somar a base do ipi e ver se tem mais de uma natureza de operação
          vCodNat2 := '';
          vBaseIPI := 0;
          DM1.tNotaFiscalItens.First;
          while not DM1.tNotaFiscalItens.Eof do
            begin
              if DM1.tNotaFiscalItensVlrIpi.AsFloat > 0 then
                vBaseIPI := vBaseIPI + DM1.tNotaFiscalItensVlrTotal.AsFloat;
              if DM1.tNotaFiscalItensNatOper.AsInteger <> DM1.tNotaFiscalCodNatOper.AsInteger then
                vCodNat2 := DM1.tNotaFiscalItenslkCodNatOper.AsString;
              DM1.tNotaFiscalItens.Next;
            end;

          Grava_Cabecalho;
          vItem    := 0;
          //Le os itens
          DM1.tNotaFiscalItens.First;
          while not DM1.tNotaFiscalItens.Eof do
            begin
              //Le o produto para ver o código do produto do cliente
              vCodProdCli := '';
              if not DM1.tNotaFiscalItensMaterial.AsBoolean then
                begin
                  tProdutoCli.SetKey;
                  tProdutoCliCodProduto.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
                  tProdutoCliCodCor.AsInteger     := DM1.tNotaFiscalItensCodCor.AsInteger;
                  tProdutoCliCodCliente.AsInteger := DM1.tNotaFiscalCodCli.AsInteger;
                  if tProdutoCli.GotoKey then
                    vCodProdCli := tProdutoCliCodCliente.AsString;
                end;
              //***********

              vFlag := False;
              DM1.tNotaFiscalGrade.First;
              while not DM1.tNotaFiscalGrade.Eof do
                begin
                  if DM1.tNotaFiscalGradeQtd.AsFloat > 0 then
                    begin
                      Grava_Itens(DM1.tNotaFiscalGradelkTamanho.AsString);
                      vFlag := True;
                    end;
                  DM1.tNotaFiscalGrade.Next;
                end;
              if not vFlag then
                Grava_Itens('');
              DM1.tNotaFiscalItens.Next;
            end;
          //Le os vencimentos
          if DM1.tNotaFiscalParc.RecordCount > 0 then
            begin
              DM1.tNotaFiscalParc.First;
              while not DM1.tNotaFiscalParc.Eof do
                begin
                  Grava_Vencimentos('P');
                  DM1.tNotaFiscalParc.Next;
                end;
            end
          else
          if DM1.tNotaFiscalCondPgto.AsString = 'V' then
            Grava_Vencimentos('V');
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

procedure TfGeraNotaEdi.RadioGroup1Click(Sender: TObject);
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

procedure TfGeraNotaEdi.CurrencyEdit1Enter(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfGeraNotaEdi.DateEdit1Enter(Sender: TObject);
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
end;

procedure TfGeraNotaEdi.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);

  DirectoryEdit1.Text := DM1.tParametrosEnderecoNotaEDI.AsString;
  RadioGroup1Click(Sender);
end;

end.
