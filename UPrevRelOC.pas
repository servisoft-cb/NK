unit UPrevRelOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, ExtCtrls, StdCtrls, Mask, ToolEdit, Buttons, Db, DBTables, MemTable,
  Grids, DBGrids, RXDBCtrl, DBClient, ShellApi;

type
  TfPrevRelOC = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    msOC: TDataSource;
    RxDBGrid1: TRxDBGrid;
    mOC: TClientDataSet;
    mOCNumOC: TIntegerField;
    mOCDtEmissao: TDateField;
    mOCCodForn: TIntegerField;
    mOCVlrTotal: TFloatField;
    mOCVlrMercEntr: TFloatField;
    mOCVlrMercAberto: TFloatField;
    mOCDtEntrega: TDateField;
    mOClkFornecedor: TStringField;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Gera_Dados;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
  public
    { Public declarations }
  end;

var
  fPrevRelOC: TfPrevRelOC;
  linha, pagina : Integer;
  F: TextFile;
  vVlrTotal, vVlrMercEntr, vVlrMercAberto : Real;

implementation

uses UDM1, UEscImpressora;

{$R *.DFM}

procedure TfPrevRelOC.Gera_Dados;
begin
  mOC.EmptyDataSet;
  Case RadioGroup1.ItemIndex of
    0 : begin
          DM1.tOrdemCompra.Filtered := False;
          DM1.tOrdemCompra.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+'''';
          DM1.tOrdemCompra.Filtered := True;
        end;
    1 : begin
          DM1.tOrdemCompra.Filtered := False;
          DM1.tOrdemCompra.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+''' and Entregue <> True';
          DM1.tOrdemCompra.Filtered := True;
        end;
    2 : begin
          DM1.tOrdemCompra.Filtered := False;
          DM1.tOrdemCompra.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+''' and Entregue = True';
          DM1.tOrdemCompra.Filtered := True;
        end;
  end;
  DM1.tOrdemCompra.First;
  while not DM1.tOrdemCompra.Eof do
    begin
      if DM1.tOrdemCompraEntregue.AsBoolean then
        begin
          mOC.Insert;
          mOCNumOC.AsInteger       := DM1.tOrdemCompraCodigo.AsInteger;
          mOCDtEmissao.AsDateTime  := DM1.tOrdemCompraDtEmissao.AsDateTime;
          mOCCodForn.AsInteger     := DM1.tOrdemCompraCodFornecedor.AsInteger;
          mOCVlrTotal.AsFloat      := DM1.tOrdemCompraVlrTotal.AsFloat;
          mOCVlrMercEntr.AsFloat   := DM1.tOrdemCompraVlrTotal.AsFloat;
          DM1.tOrdemCompraItem.First;
          while not DM1.tOrdemCompraItem.Eof do
            begin
              if DM1.tOrdemCompraItemDtEntrega.AsDateTime > 1 then
                mOCDtEntrega.AsDateTime := DM1.tOrdemCompraItemDtEntrega.AsDateTime;
              DM1.tOrdemCompraItem.Next;
            end;
          mOCVlrMercAberto.AsFloat := 0;
          mOC.Post;
        end
      else
        begin
          mOC.Insert;
          mOCNumOC.AsInteger       := DM1.tOrdemCompraCodigo.AsInteger;
          mOCDtEmissao.AsDateTime  := DM1.tOrdemCompraDtEmissao.AsDateTime;
          mOCCodForn.AsInteger     := DM1.tOrdemCompraCodFornecedor.AsInteger;
          mOCVlrTotal.AsFloat      := DM1.tOrdemCompraVlrTotal.AsFloat;
          DM1.tOrdemCompraItem.First;
          while not DM1.tOrdemCompraItem.Eof do
            begin
              mOCVlrMercAberto.AsFloat := mOCVlrMercAberto.AsFloat + (DM1.tOrdemCompraItemQtdRestante.AsFloat * DM1.tOrdemCompraItemVlrUnitario.AsFloat);
              mOCVlrMercEntr.AsFloat   := mOCVlrMercEntr.AsFloat + (DM1.tOrdemCompraItemQtdEntregue.AsFloat * DM1.tOrdemCompraItemVlrUnitario.AsFloat);
              if DM1.tOrdemCompraItemDtEntrega.AsDateTime > 1 then
                mOCDtEntrega.AsDateTime := DM1.tOrdemCompraItemDtEntrega.AsDateTime;
              DM1.tOrdemCompraItem.Next;
            end;
          mOC.Post;
        end;
      DM1.tOrdemCompra.Next;
    end;
  DM1.tOrdemCompra.Filtered := False;
end;

procedure TfPrevRelOC.Imprime_Cabecalho;
var
 i : Integer;
 Texto1 : String;
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
  Texto1 := DM1.tEmpresaEmpresa.AsString;
  for i := 1 to 53 - length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'RELACAO DE ORDENS DE COMPRA  - ';
  Case RadioGroup1.ItemIndex of
    0 : Texto1 := Texto1 + 'Todas                        Pagina.: ';
    1 : Texto1 := Texto1 + 'Pendentes                    Pagina.: ';
    2 : Texto1 := Texto1 + 'Encerradas                   Pagina.: ';
  end;
  Texto1 := Texto1 + IntToStr(pagina);
  Writeln(F,Texto1);
  Texto1 := '                                                     Periodo: ' + DateEdit1.Text + ' a ' + DateEdit2.Text;
  for i := 1 to 113 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'No.O.Compra  Dt.Emissao  Fornecedor                                   Valor Total  Vlr. Merc.Entregue   Valor em Aberto  Dt. Entrega');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;
end;

procedure TfPrevRelOC.Imprime_Detalhe;
var
 i : Integer;
 Texto1, Texto2 : string;
begin
  Texto1 := mOCNumOC.AsString;
  for i := 1 to 11 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  Texto1 := Texto1 + '  ';
  Texto2 := mOCDtEmissao.AsString;
  for i := 1 to 12 - length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Texto2 :=  mOClkFornecedor.AsString;
  for i := 1 to 42 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,##0.00',mOCVlrTotal.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,##0.00',mOCVlrMercEntr.AsFloat);
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,##0.00',mOCVlrMercAberto.AsFloat);
  for i := 1 to 18 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  if mOCDtEntrega.AsDateTime > 1 then
    Texto2 := mOCDtEntrega.AsString
  else
    Texto2 := ' ';
  for i := 1 to 13 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Writeln(F,texto1);
  linha := linha + 1;
  vVlrTotal      := vVlrTotal + mOCVlrTotal.AsFloat;
  vVlrMercEntr   := vVlrMercEntr + mOCVlrMercEntr.AsFloat;
  vVlrMercAberto := vVlrMercAberto + mOCVlrMercAberto.AsFloat;
end;

procedure TfPrevRelOC.Imprime_Rodape;
var
 i : Integer;
 Texto1, Texto2 : string;
begin
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Texto1 := '                         ......Total no Periodo =====>         ';
  Texto2 := FormatFloat('###,###,###,##0.00',vVlrTotal);
  for i := 1 to 18 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,###,##0.00',vVlrMercEntr);
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,###,##0.00',vVlrMercAberto);
  for i := 1 to 18 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Writeln(F,texto1);
  Writeln(F);
  linha := linha + 3;
end;

procedure TfPrevRelOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(True,Self);
  Action := Cafree;
end;

procedure TfPrevRelOC.BitBtn2Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 0;
  DateEdit1.Clear;
  DateEdit2.Clear;
  RadioGroup1.SetFocus;
  BitBtn1.Enabled := False;
  mOC.EmptyDataSet;
end;

procedure TfPrevRelOC.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevRelOC.BitBtn1Click(Sender: TObject);
var
  Texto : String;
begin
  if mOC.RecordCount < 1 then
    ShowMessage('Falta gerar a consulta, não existe registro para impressão!')
  else
    begin
      Screen.Cursor  := crHourGlass;
      //Gera_Dados;
      Screen.Cursor  := crDefault;
      fEscImpressora := TfEscImpressora.Create(Self);
      fEscImpressora.ShowModal;
      linha          := 99;
      pagina         := 0;
      vVlrTotal      := 0;
      vVlrMercEntr   := 0;
      vVlrMercAberto := 0;
      AssignFile(F,DM1.tImpressoraEndereco.AsString);
      ReWrite(F);
      if not DM1.tImpressoraVisualizar.AsBoolean then
        Write(F,#15);
      mOC.First;
      while not mOC.Eof do
        begin
          if linha > 61 then
            Imprime_Cabecalho;
          Imprime_Detalhe;
          mOC.Next;
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
end;

procedure TfPrevRelOC.BitBtn4Click(Sender: TObject);
begin
  Gera_Dados;
  BitBtn1.Enabled := True;
end;

procedure TfPrevRelOC.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,dm1.tOrdemCompra,Name);
  oDBUtils.ActiveDataSet(True,dm1.tOrdemCompraItem,Name);
  oDBUtils.ActiveDataSet(True,dm1.tOrdemCompraItemGrade,Name);
  mOC.open;
end;

end.
