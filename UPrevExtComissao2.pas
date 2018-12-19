unit UPrevExtComissao2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, RXLookup, Mask, ToolEdit, Db, DBTables,
  Grids, DBGrids, DBFilter, RXCtrls, Menus, ShellApi;

type
  TfPrevExtComissao2 = class(TForm)
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Query1: TQuery;
    Query1CodVendedor: TIntegerField;
    tExtComissao: TTable;
    tExtComissaoNroLancamento: TIntegerField;
    tExtComissaoCodVendedor: TIntegerField;
    tExtComissaoDtReferencia: TDateField;
    tExtComissaoNroDoc: TIntegerField;
    tExtComissaoParcDoc: TIntegerField;
    tExtComissaoCodCliente: TIntegerField;
    tExtComissaoFuncao: TStringField;
    tExtComissaoVlrBase: TFloatField;
    tExtComissaoPercDescDupl: TFloatField;
    tExtComissaoPercComissao: TFloatField;
    tExtComissaoVlrComissao: TFloatField;
    tExtComissaoTipo: TStringField;
    tExtComissaoSuspensa: TBooleanField;
    Query1lkVendedor: TStringField;
    RadioGroup1: TRadioGroup;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    qComissao2: TQuery;
    qsQuery1: TDataSource;
    qsComissao2: TDataSource;
    qComissao2NroLancamento: TIntegerField;
    qComissao2DtReferencia: TDateField;
    qComissao2NroDoc: TIntegerField;
    qComissao2ParcDoc: TIntegerField;
    qComissao2Funcao: TStringField;
    qComissao2VlrBase: TFloatField;
    qComissao2PercDescDupl: TFloatField;
    qComissao2PercComissao: TFloatField;
    qComissao2VlrComissao: TFloatField;
    qComissao2Tipo: TStringField;
    qComissao2Nome: TStringField;
    tNotaFiscalParc: TTable;
    tNotaFiscalParcParcela: TSmallintField;
    tNotaFiscalParcDtVenc: TDateField;
    tNotaFiscalParcVlrVenc: TFloatField;
    dsNotaFiscalParc: TDataSource;
    qComissao2NumSeqNota: TIntegerField;
    qComissao2Filial: TIntegerField;
    tNotaFiscalParcFilial: TIntegerField;
    tNotaFiscalParcNumSeq: TIntegerField;
    tNotaFiscalParcCodTipoCobr: TIntegerField;
    tNotaFiscalParcCodConta: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Verifica_Linha;
  public
    { Public declarations }
  end;

var
  fPrevExtComissao2: TfPrevExtComissao2;
  F : TextFile;
  Linha, Pagina : Integer;

implementation

uses UDM1, UEscImpressora, URelExtComissao2;

{$R *.DFM}

Procedure TfPrevExtComissao2.Imprime_Cabecalho;
var Texto1,Texto2 : String;
    i             : Integer;
begin
  Inc(Pagina);
  DM1.tEmpresa.First;
  Texto1 := Copy(DM1.tEmpresaEmpresa.AsString,1,50);
  For i := 1 to 53 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'RELACAO DE NOTAS EMITIDAS POR VENDEDOR                      Pagina.: ' + IntToStr(pagina);
  Writeln(F,Texto1);
  Verifica_Linha;
  for i := 1 to 53 do
    Texto2 := Texto2 + ' ';
  Texto2 := Texto2 + 'Periodo: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +
            '                            Emissao: ' + DateToStr(Date);
  Writeln(F,Texto2);
  Verifica_Linha;
end;

procedure TfPrevExtComissao2.Verifica_Linha;
Var I : Integer;
begin
  Inc(Linha);
  if Linha = 63 then
    begin
      for i := 1 to 3 do
        Writeln(F);
      Imprime_Cabecalho;
      Writeln(F);
      Linha := 3;
    end;
end;

procedure TfPrevExtComissao2.Imprimir;
Var I : Integer;
    Texto : array[1..15] of String;
    vEntradas, vSaidas, vDevolucao, vSaldoTotal, vSaldoAnterior, vSaldo  : Currency;
procedure Imprime_Detalhe;
Var I : Integer;
    //vAux : Real;
begin
  Texto[1]  := DM1.tExtComissaoDtReferencia.AsString + ' ';
  for i := 1 to 12 - Length(Texto[1]) do
    Texto[1] := Texto[1] + ' ';
  Texto[2]  := DM1.tExtComissaoNroLancamento.AsString + ' ';
  for i := 1 to 9 - length(Texto[2]) do
    Texto[2] := Texto[2] + ' ';
  if DM1.tExtComissaoFuncao.AsString = 'E' then
    begin
      Texto[3]  := 'Entr. ';
      for i := 1 to 8 - Length(Texto[3]) do
        Texto[3] := Texto[3] + ' ';
    end;
  if DM1.tExtComissaoFuncao.AsString = 'S' then
    begin
      Texto[3]  := 'Pgto. ';
      for i := 1 to 8 - Length(Texto[3]) do
        Texto[3] := Texto[3] + ' ';
    end;
  if DM1.tExtComissaoFuncao.AsString = 'D' then
    begin
      Texto[3]  := 'Devol. ';
      for i := 1 to 8 - Length(Texto[3]) do
        Texto[3] := Texto[3] + ' ';
    end;    
  Texto[4]  := DM1.tExtComissaoNroDoc.AsString + ' ';
  for i := 1 to 7 - length(Texto[4]) do
    Texto[4] := Texto[4] + ' ';
  Texto[5]  := DM1.tExtComissaoParcDoc.AsString + ' ';
  for i := 1 to 6 - length(Texto[5]) do
    Texto[5] := Texto[5] + ' ';
  Texto[6]  := Copy(DM1.tExtComissaolkCliente.AsString,1,37) + ' ';
  for i := 1 to 38 - Length(Texto[6]) do
    Texto[6] := Texto[6] + ' ';
  Texto[7]  := FormatFloat('0.00',DM1.tExtComissaoVlrBase.AsFloat) + ' ';
  for i := 1 to 12 - length(Texto[7]) do
    Texto[7] := ' ' + Texto[7];
  Texto[8]  := FormatFloat('0.00',DM1.tExtComissaoPercDescDupl.AsFloat) + ' ';
  for i := 1 to 6 - length(Texto[8]) do
    Texto[8] := ' ' + Texto[8];
  Texto[9]  := FormatFloat('0.00',DM1.tExtComissaoPercComissao.AsFloat) + ' ';
  for i := 1 to 15 - length(Texto[9]) do
    Texto[9] := ' ' + Texto[9];
  Texto[10] := FormatFloat('0.00',DM1.tExtComissaoVlrComissao.AsFloat) + ' ';
  for i := 1 to 16 - length(Texto[10]) do
    Texto[10] := ' ' + Texto[10];
  Texto[11] := DM1.tExtComissaoTipo.AsString;
  for i := 1 to 4 - length(Texto[11]) do
    Texto[11] := Texto[11] + ' ';
  Writeln(F,Format('%s%s%s%s%s%s%s%s%s%s%s',[Texto[1],Texto[2],Texto[3],Texto[4],Texto[5],Texto[6],Texto[7],Texto[8],Texto[9],Texto[10],Texto[11]]));
  Verifica_Linha;
end;
begin
  Linha := 0;
  if RxDBLookupCombo1.Text <> '' then
    begin
      vEntradas      := 0;
      vSaidas        := 0;
      vDevolucao     := 0;
      vSaldoAnterior := 0;
      vSaldo         := 0;
      DM1.tExtComissao.Filtered := False;
      DM1.tExtComissao.Filter   := 'CodVendedor = '''+RxDBLookupCombo1.Value+''' and DtReferencia >= '''+DateEdit1.Text+''' and DtReferencia <= '''+DateEdit2.Text+'''  and Suspensa <> True';
      DM1.tExtComissao.Filtered := True;
      tExtComissao.Filtered     := False;
      tExtComissao.Filter       := 'CodVendedor = '''+RxDBLookupCombo1.Value+''' and DtReferencia < '''+DateEdit1.Text+''' and Suspensa <> True';
      tExtComissao.Filtered     := True;
      tExtComissao.First;
      while not tExtComissao.EOF do
        begin
          if tExtComissaoFuncao.AsString = 'E' then
            vSaldoAnterior := vSaldoAnterior + tExtComissaoVlrComissao.AsFloat
          else
          if tExtComissaoFuncao.AsString = 'S' then
            vSaldoAnterior := vSaldoAnterior - tExtComissaoVlrComissao.AsFloat
          else
          if tExtComissaoFuncao.AsString = 'D' then
            vSaldoAnterior := vSaldoAnterior - tExtComissaoVlrComissao.AsFloat;
          tExtComissao.Next;
        end;
      Writeln(F,'-------------------------------------------------------------------------------------------------------------------------------------');
      Verifica_Linha;
      Writeln(F,'Dt.Lanc.    No Lanc. Funcao  Doc.   Parc. Cliente                                Vlr. Base   %Desc       %Comis.     Vlr. Comis. Tipo');
      Verifica_Linha;
      Writeln(F,'-------------------------------------------------------------------------------------------------------------------------------------');
      Verifica_Linha;
      Texto[1] := 'Vendedor..: ';
      Texto[2] := RxDBLookupCombo1.Text;
      for i := 1 to 96 - length(Texto[2]) do
        Texto[2] := Texto[2] + ' ';
      Texto[3] := 'Saldo Ant.: ';
      Texto[4] := FormatFloat('0.00',vSaldoAnterior);
      for i := 1 to 8 - length(Texto[4]) do
        Texto[4] := ' ' + Texto[4];
      Writeln(F,Format('%s%s%s%s',[Texto[1],Texto[2],Texto[3],Texto[4]]));
      Verifica_Linha;
      DM1.tExtComissao.First;
      while not DM1.tExtComissao.EOF do
        begin
          Imprime_Detalhe;
          if DM1.tExtComissaoFuncao.AsString = 'E' then
            begin
              vEntradas := vEntradas + DM1.tExtComissaoVlrComissao.AsFloat;
              vSaldo    := vSaldo    + DM1.tExtComissaoVlrComissao.AsFloat;
            end;
          if DM1.tExtComissaoFuncao.AsString = 'S' then
            begin
              vSaidas := vSaidas + DM1.tExtComissaoVlrComissao.AsFloat;
              vSaldo  := vSaldo  - DM1.tExtComissaoVlrComissao.AsFloat;
            end;
          if DM1.tExtComissaoFuncao.AsString = 'D' then
            begin
              vDevolucao := vDevolucao + DM1.tExtComissaoVlrComissao.AsFloat;
              vSaldo     := vSaldo     - DM1.tExtComissaoVlrComissao.AsFloat;
            end;
          DM1.tExtComissao.Next;
        end;
      Writeln(F,'                                                                                 ----------------------------------------------------');
      Verifica_Linha;
      Texto[1] := 'Total Entradas.: ';
      for i := 1 to 102 do
        Texto[1] := ' ' + Texto[1];
      Texto[2] := FormatFloat('0.00',vEntradas);
      for i := 1 to 9 - length(Texto[2]) do
         Texto[2] := ' ' + Texto[2];
      Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
      Verifica_Linha;
      Texto[1] := 'Total Saidas...: ';
      for i := 1 to 102 do
        Texto[1] := ' ' + Texto[1];
      Texto[2] := FormatFloat('0.00',vSaidas);
      for i := 1 to 9 - length(Texto[2]) do
         Texto[2] := ' ' + Texto[2];
      Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
      Verifica_Linha;
      Texto[1] := 'Total Devolucao: ';
      for i := 1 to 102 do
        Texto[1] := ' ' + Texto[1];
      Texto[2] := FormatFloat('0.00',vDevolucao);
      for i := 1 to 9 - length(Texto[2]) do
         Texto[2] := ' ' + Texto[2];
      Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
      Verifica_Linha;
      Texto[1] := 'Total Periodo..: ';
      for i := 1 to 102 do
        Texto[1] := ' ' + Texto[1];
      Texto[2] := FormatFloat('0.00',vSaldo);
      for i := 1 to 9 - length(Texto[2]) do
         Texto[2] := ' ' + Texto[2];
      Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
      Verifica_Linha;
      vSaldoTotal := vSaldoAnterior + vSaldo;
      Texto[1] := 'Saldo Total....: ';
      for i := 1 to 102 do
        Texto[1] := ' ' + Texto[1];
      Texto[2] := FormatFloat('0.00',vSaldoTotal);
      for i := 1 to 9 - length(Texto[2]) do
         Texto[2] := ' ' + Texto[2];
      Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
      Verifica_Linha;
      DM1.tExtComissao.Filtered := False;
    end;
  if RxDBLookupCombo1.Text = '' then
    begin
      Query1.Active := True;
      Query1.First;
      while not Query1.EOF do
        begin
          vEntradas      := 0;
          vSaidas        := 0;
          vDevolucao     := 0;
          vSaldoAnterior := 0;
          vSaldo         := 0;
          tExtComissao.Filtered     := False;
          tExtComissao.Filter       := 'CodVendedor = '''+Query1CodVendedor.AsString+''' and DtReferencia < '''+DateEdit1.Text+''' and Suspensa <> True';
          tExtComissao.Filtered     := True;
          tExtComissao.First;
          while not tExtComissao.EOF do
            begin
              if tExtComissaoFuncao.AsString = 'E' then
                vSaldoAnterior := vSaldoAnterior + tExtComissaoVlrComissao.AsFloat
              else
              if tExtComissaoFuncao.AsString = 'S' then
                vSaldoAnterior := vSaldoAnterior - tExtComissaoVlrComissao.AsFloat
              else
              if tExtComissaoFuncao.AsString = 'D' then
                vSaldoAnterior := vSaldoAnterior - tExtComissaoVlrComissao.AsFloat;
              tExtComissao.Next;
            end;
          DM1.tExtComissao.Filtered := False;
          DM1.tExtComissao.Filter   := 'CodVendedor = '''+Query1CodVendedor.AsString+''' and DtReferencia >= '''+DateEdit1.Text+''' and DtReferencia <= '''+DateEdit2.Text+'''  and Suspensa <> True';
          DM1.tExtComissao.Filtered := True;
          if (vSaldoAnterior > 0) or (DM1.tExtComissao.RecordCount > 0) then
            begin
              Writeln(F,'-------------------------------------------------------------------------------------------------------------------------------------');
              Verifica_Linha;
              Writeln(F,'Dt.Lanc.    No Lanc. Funcao  Doc.   Parc. Cliente                                Vlr. Base   %Desc       %Comis.     Vlr. Comis. Tipo');
              Verifica_Linha;
              Writeln(F,'-------------------------------------------------------------------------------------------------------------------------------------');
              Verifica_Linha;
              Texto[1] := 'Vendedor..: ';
              Texto[2] := Query1lkVendedor.AsString;
              for i := 1 to 96 - length(Texto[2]) do
                Texto[2] := Texto[2] + ' ';
              Texto[3] := 'Saldo Ant.: ';
              Texto[4] := FormatFloat('0.00',vSaldoAnterior);
              for i := 1 to 8 - length(Texto[4]) do
                Texto[4] := ' ' + Texto[4];
              Writeln(F,Format('%s%s%s%s',[Texto[1],Texto[2],Texto[3],Texto[4]]));
              Verifica_Linha;
            end;
          DM1.tExtComissao.First;
          while not DM1.tExtComissao.EOF do
            begin
              Imprime_Detalhe;
              if DM1.tExtComissaoFuncao.AsString = 'E' then
                begin
                  vEntradas   := vEntradas   + DM1.tExtComissaoVlrComissao.AsFloat;
                  vSaldo      := vSaldo      + DM1.tExtComissaoVlrComissao.AsFloat;
                end;
              if DM1.tExtComissaoFuncao.AsString = 'S' then
                begin
                  vSaidas     := vSaidas     + DM1.tExtComissaoVlrComissao.AsFloat;
                  vSaldo      := vSaldo      - DM1.tExtComissaoVlrComissao.AsFloat;
                end;
              if DM1.tExtComissaoFuncao.AsString = 'D' then
                begin
                  vDevolucao  := vDevolucao  + DM1.tExtComissaoVlrComissao.AsFloat;
                  vSaldo      := vSaldo      - DM1.tExtComissaoVlrComissao.AsFloat;
                end;
              DM1.tExtComissao.Next;
            end;
          if DM1.tExtComissao.RecordCount > 0 then
            begin
              Writeln(F,'                                                                                 ----------------------------------------------------');
              Verifica_Linha;
              Texto[1] := 'Total Entradas.: ';
              for i := 1 to 102 do
                Texto[1] := ' ' + Texto[1];
              Texto[2] := FormatFloat('0.00',vEntradas);
              for i := 1 to 9 - length(Texto[2]) do
                 Texto[2] := ' ' + Texto[2];
              Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
              Verifica_Linha;
              Texto[1] := 'Total Saidas...: ';
              for i := 1 to 102 do
                Texto[1] := ' ' + Texto[1];
              Texto[2] := FormatFloat('0.00',vSaidas);
              for i := 1 to 9 - length(Texto[2]) do
                 Texto[2] := ' ' + Texto[2];
              Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
              Verifica_Linha;
              Texto[1] := 'Total Devolucao: ';
              for i := 1 to 102 do
                Texto[1] := ' ' + Texto[1];
              Texto[2] := FormatFloat('0.00',vDevolucao);
              for i := 1 to 9 - length(Texto[2]) do
                 Texto[2] := ' ' + Texto[2];
              Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
              Verifica_Linha;
              Texto[1] := 'Total do Periodo.: ';
              for i := 1 to 102 do
                Texto[1] := ' ' + Texto[1];
              Texto[2] := FormatFloat('0.00',vSaldo);
              for i := 1 to 9 - length(Texto[2]) do
                 Texto[2] := ' ' + Texto[2];
              Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
              Verifica_Linha;
              vSaldoTotal := vSaldoAnterior + vSaldo;
              Texto[1] := 'Saldo Total....: ';
              for i := 1 to 102 do
                Texto[1] := ' ' + Texto[1];
              Texto[2] := FormatFloat('0.00',vSaldoTotal);
              for i := 1 to 9 - length(Texto[2]) do
                 Texto[2] := ' ' + Texto[2];
              Writeln(F,Format('%s%s',[Texto[1],Texto[2]]));
              Verifica_Linha;
            end;
          Query1.Next;
        end;
      Query1.Active             := False;
      DM1.tExtComissao.Filtered := False;
    end;
end;

procedure TfPrevExtComissao2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfPrevExtComissao2.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfPrevExtComissao2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevExtComissao2.FormShow(Sender: TObject);
begin
  RxDBLookupCombo1.SetFocus;
end;

procedure TfPrevExtComissao2.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfPrevExtComissao2.PopupMenu1Popup(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : PopupMenu1.Items.Items[1].Enabled := True;
    1 : PopupMenu1.Items.Items[1].Enabled := False;
  end;
end;

procedure TfPrevExtComissao2.Imprimir1Click(Sender: TObject);
var
  Texto : String;
begin
  Case RadioGroup1.ItemIndex of
    0 : begin
          if RxDBLookupCombo1.Text <> '' then
            begin
              Query1.Filtered := False;
              Query1.Filter   := 'CodVendedor = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
              Query1.Filtered := True;
            end;
          Query1.First;
          fRelExtComissao2 := TfRelExtComissao2.Create(Self);
          fRelExtComissao2.QuickRep1.Print;
          fRelExtComissao2.QuickRep1.Free;
          Query1.Filtered := False;
        end;
    1 : begin
          if ((DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ')) and (DateEdit1.Date <= DateEdit2.Date) then
            begin
              Screen.Cursor := crHourGlass;
              fEscImpressora := TfEscImpressora.Create(Self);
              fEscImpressora.ShowModal;
              AssignFile(F,DM1.tImpressoraEndereco.AsString);
              ReWrite(F);
              if not DM1.tImpressoraVisualizar.AsBoolean then
                Write(F,#15);
              if RxDBLookupCombo1.Text = '' then
                Query1.Active := True;
              Pagina := 0;
              Imprime_Cabecalho;
              Imprimir;
              CloseFile(F);
              Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
              if DM1.tImpressoraVisualizar.AsBoolean then
                //WinExec(PChar(Texto),SW_MAXIMIZE);
                ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);                
              Query1.Active             := False;
              DM1.tExtComissao.Filtered := False;
              DM1.tVendedor.Filtered    := False;
              tExtComissao.Filtered     := False;
              Screen.Cursor := crDefault;
            end
          else
            begin
              ShowMessage('É nessessário informar uma data válida!');
              DateEdit1.Date := Date;
              DateEdit2.Date := Date;
              DateEdit1.SetFocus;
            end;
        end;
  end;
end;

procedure TfPrevExtComissao2.Visualizar1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      Query1.Filtered := False;
      Query1.Filter   := 'CodVendedor = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
      Query1.Filtered := True;
    end;
  Query1.First;
  fRelExtComissao2 := TfRelExtComissao2.Create(Self);
  fRelExtComissao2.QuickRep1.Preview;
  fRelExtComissao2.QuickRep1.Free;
  Query1.Filtered  := False;
end;

end.
