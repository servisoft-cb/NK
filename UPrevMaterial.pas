unit UPrevMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Buttons, Menus, RXCtrls, DBFilter, RxLookup,
  Db, DBTables, MemTable, ShellApi;

type
  TfPrevMaterial = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RxDBFilter1: TRxDBFilter;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    mMaterial: TMemoryTable;
    DataSource1: TDataSource;
    mMaterialCodMaterial: TIntegerField;
    mMaterialNomeMaterial: TStringField;
    mMaterialCor: TStringField;
    mMaterialUnidade: TStringField;
    mMaterialIpi: TFloatField;
    mMaterialICMS: TFloatField;
    mMaterialSaldo: TFloatField;
    mMaterialPreco: TFloatField;
    mMaterialReferencia: TStringField;
    mMaterialPrVenda: TFloatField;
    BitBtn1: TBitBtn;
    mMaterialProdMat: TStringField;
    Panel5: TPanel;
    RadioGroup3: TRadioGroup;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    linha, pagina : Integer;
    F: TextFile;
    procedure Gravo_Memo;
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
  public
    { Public declarations }
  end;

var
  fPrevMaterial: TfPrevMaterial;

implementation

uses UDM1, URelMaterial, Printers, UEscImpressora;

{$R *.DFM}

procedure TfPrevMaterial.Gravo_Memo;
begin
  mMaterial.EmptyTable;
  Dm1.tProduto.First;
  while not Dm1.tProduto.Eof do
    begin
      if Dm1.tProdutoCor.IsEmpty then
        begin
          mMaterial.Insert;
          mMaterialCodMaterial.AsInteger := Dm1.tProdutoCodigo.AsInteger;
          mMaterialReferencia.AsString   := DM1.tProdutoReferencia.AsString;
          mMaterialICMS.AsFloat          := Dm1.tProdutoAliqIcms.AsFloat;
          mMaterialIpi.AsFloat           := Dm1.tProdutoAliqIPI.AsFloat;
          mMaterialNomeMaterial.AsString := Dm1.tProdutoNome.AsString;
          mMaterialUnidade.AsString      := Dm1.tProdutoUnidade.AsString;
          mMaterialPreco.AsFloat         := Dm1.tProdutoPrecoCusto.AsFloat;
          mMaterialPrVenda.AsFloat       := DM1.tProdutoVlrVenda.AsFloat;
          mMaterialSaldo.AsFloat         := Dm1.tProdutoEstMinimo.AsFloat;
          mMaterialProdMat.AsString      := DM1.tProdutoProdMat.AsString;
          if (DM1.tProdutoProdMat.AsString = 'M') and (DM1.tProdutoMaterialOutros.AsString = 'O') then
            mMaterialProdMat.AsString      := 'O';
          mMaterial.Post;
        end
      else
        begin
          Dm1.tProdutoCor.First;
          while not Dm1.tProdutoCor.Eof do
            begin
              mMaterial.Insert;
              mMaterialCodMaterial.AsInteger := Dm1.tProdutoCodigo.AsInteger;
              mMaterialReferencia.AsString   := Dm1.tProdutoReferencia.AsString;
              mMaterialCor.AsString          := Dm1.tProdutoCorlkNomeCor.AsString;
              mMaterialICMS.AsFloat          := Dm1.tProdutoAliqIcms.AsFloat;
              mMaterialIpi.AsFloat           := Dm1.tProdutoAliqIPI.AsFloat;
              mMaterialNomeMaterial.AsString := Dm1.tProdutoNome.AsString;
              mMaterialUnidade.AsString      := Dm1.tProdutoUnidade.AsString;
              if Dm1.tProdutoPrecoCor.AsBoolean then
                mMaterialPreco.AsFloat := Dm1.tProdutoCorPrCusto.AsFloat
              else
                mMaterialPreco.AsFloat := Dm1.tProdutoPrecoCusto.AsFloat;
              mMaterialSaldo.AsFloat    := Dm1.tProdutoEstMinimo.AsFloat;
              mMaterialPrVenda.AsFloat  := DM1.tProdutoVlrVenda.AsFloat;
              mMaterialProdMat.AsString := DM1.tProdutoProdMat.AsString;
              if (DM1.tProdutoProdMat.AsString = 'M') and (DM1.tProdutoMaterialOutros.AsString = 'O') then
                mMaterialProdMat.AsString      := 'O';
              mMaterial.Post;
              Dm1.tProdutoCor.Next;
            end;
        end;
      Dm1.tProduto.Next;
    end;
end;

procedure TfPrevMaterial.Imprime_Cabecalho;
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

  case RadioGroup1.ItemIndex of
    0 : texto1 := '                                          RELACAO DE MATERIAIS                                                   Emissao: ' + DateToStr(Date);
    1 : texto1 := '                                          RELACAO DE PRODUTOS                                                    Emissao: ' + DateToStr(Date);
    2 : texto1 := '                                          RELACAO DE MATERIAIS DIVERSOS                                          Emissao: ' + DateToStr(Date);
    3 : texto1 := '                                          RELACAO DE MATERIAIS/PRODUTOS                                          Emissao: ' + DateToStr(Date);
  end;
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Codigo Referencia             Nome                                Cor            Unid.  IPI    Sld.Minimo      Pr.Venda     Pr.Custo');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');

  linha := 5;
end;

procedure TfPrevMaterial.Imprime_Detalhe;
var
 i: Integer;
 texto1, Texto2: string;
begin
  Texto2 := mMaterialCodMaterial.AsString;
  for i := 1 to 6 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := texto2 + ' ';

  Texto2 := mMaterialReferencia.AsString;
  for i := 1 to 22 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';

  Texto2 := copy(mMaterialNomeMaterial.AsString,1,35);
  for i := 1 to 35 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';

  Texto2 := mMaterialCor.AsString;
  for i := 1 to 15 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';

  Texto2 := mMaterialUnidade.AsString;
  for i := 1 to 3 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';

  texto2 := FormatFloat('#0.00',mMaterialIpi.AsFloat);
  for i := 1 to 5 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';

  texto2 := FormatFloat('###,##0.00000',mMaterialSaldo.AsFloat);
  for i := 1 to 13 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';

  texto2 := FormatFloat('##,###,##0.00',mMaterialPrVenda.AsFloat);
  for i := 1 to 13 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' ';

  texto2 := FormatFloat('#,###,##0.00',mMaterialPreco.AsFloat);
  for i := 1 to 12 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;
  
  Writeln(F,Texto1);
  Linha := Linha + 1;
end;

procedure TfPrevMaterial.Imprime_Rodape;
begin
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfPrevMaterial.Imprimir;
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

  mMaterial.First;
  while not mMaterial.Eof do
    begin
      if linha > 61 then
        Imprime_Cabecalho;
      Imprime_Detalhe;
      mMaterial.Next;
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

procedure TfPrevMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tProduto.Filtered := False;
  RxDBFilter1.Active := False;
  Action             := Cafree;
end;

procedure TfPrevMaterial.BitBtn2Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo4.ClearValue;
  RadioGroup1.ItemIndex := 0;
  RadioGroup2.ItemIndex := 0;
end;

procedure TfPrevMaterial.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevMaterial.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
    0: begin
         RxDBLookupCombo1.Enabled  := True;
         RxDBLookupCombo2.Enabled  := True;
         RxDBLookupCombo3.ClearValue;
         RxDBLookupCombo4.ClearValue;
         RxDBLookupCombo5.ClearValue;
         RxDBLookupCombo6.ClearValue;
         RxDBLookupCombo3.Enabled  := False;
         RxDBLookupCombo4.Enabled  := False;
         Panel6.Enabled            := False;
       end;
    1: begin
         RxDBLookupCombo1.Enabled := False;
         RxDBLookupCombo2.Enabled := False;
         RxDBLookupCombo1.ClearValue;
         RxDBLookupCombo2.ClearValue;
         RxDBLookupCombo5.ClearValue;
         RxDBLookupCombo6.ClearValue;
         RxDBLookupCombo3.Enabled := True;
         RxDBLookupCombo4.Enabled := True;
         Panel6.Enabled           := False;
       end;
    2: begin
         RxDBLookupCombo1.Enabled := False;
         RxDBLookupCombo2.Enabled := False;
         RxDBLookupCombo1.ClearValue;
         RxDBLookupCombo2.ClearValue;
         RxDBLookupCombo3.ClearValue;
         RxDBLookupCombo4.ClearValue;
         RxDBLookupCombo3.Enabled := False;
         RxDBLookupCombo4.Enabled := False;
         Panel6.Enabled           := True;
       end;
  end;
end;

procedure TfPrevMaterial.FormShow(Sender: TObject);
begin
  RxDBFilter1.Active        := False;
  RxDBLookupCombo1.Enabled := False;
  RxDBLookupCombo2.Enabled := False;
  RxDBLookupCombo3.Enabled := False;
  RxDBLookupCombo4.Enabled := False;
  RadioGroup2Click(Sender);
end;

procedure TfPrevMaterial.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfPrevMaterial.RadioGroup2Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  case RadioGroup2.ItemIndex of
    0 : RxDBFilter1.Filter.Text := 'ProdMat = ''M''';
    1 : RxDBFilter1.Filter.Text := 'ProdMat = ''P''';
    2 : RxDBFilter1.Filter.Text := 'MaterialOutros = ''O''';
  end;
  if RadioGroup2.ItemIndex < 3 then
    RxDBFilter1.Active := True;
end;

procedure TfPrevMaterial.BitBtn1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
    begin
      if (RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo4.Text <> '') then
        begin
          DM1.tProduto.Filtered := False;
          if CheckBox1.Checked then
            DM1.tProduto.Filter   := 'Nome >= '''+RxDBLookupCombo3.Text+''' and Nome <= '''+RxDBLookupCombo4.Text+''''
          else
            DM1.tProduto.Filter   := 'Nome >= '''+RxDBLookupCombo3.Text+''' and Nome <= '''+RxDBLookupCombo4.Text+''' and Inativo <> True';
          DM1.tProduto.Filtered := True;
          Gravo_Memo;
          if RadioGroup3.ItemIndex = 0 then
            Imprimir
          else
            begin
              fRelMaterial := TfRelMaterial.Create(Self);
              fRelMaterial.QuickRep1.Preview;
              fRelMaterial.QuickRep1.Free;
            end;
        end;
    end
  else
  if RadioGroup1.ItemIndex = 0 then
    begin
      if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') then
        begin
          if RxDBLookupCombo1.Text <= RxDBLookupCombo2.Text then
            begin
              DM1.tProduto.Filtered := False;
              if CheckBox1.Checked then
                DM1.tProduto.Filter   := 'Referencia >= '''+RxDBLookupCombo1.Text+''' and Referencia <= '''+RxDBLookupCombo2.Text+''''
              else
                DM1.tProduto.Filter   := 'Referencia >= '''+RxDBLookupCombo1.Text+''' and Referencia <= '''+RxDBLookupCombo2.Text+''' and Inativo <> True';
              DM1.tProduto.Filtered := True;
              Gravo_Memo;
              if RadioGroup3.ItemIndex = 0 then
                Imprimir
              else
                begin
                  fRelMaterial := TfRelMaterial.Create(Self);
                  fRelMaterial.QuickRep1.Preview;
                  fRelMaterial.QuickRep1.Free;
                end;
            end
          else
            begin
              ShowMessage('Referência inicial deve ser menor que o referência final!');
              RxDBLookupCombo1.SetFocus;
            end;
        end;
    end
  else
  if RadioGroup1.ItemIndex = 2 then
    begin
      if (RxDBLookupCombo5.Text <> '') and (RxDBLookupCombo6.Text <> '') then
        begin
          if RxDBLookupCombo1.Text <= RxDBLookupCombo2.Text then
            begin
              DM1.tProduto.Filtered := False;
              if CheckBox1.Checked then
                DM1.tProduto.Filter   := 'Codigo >= '''+RxDBLookupCombo5.Text+''' and Codigo <= '''+RxDBLookupCombo6.Text+''''
              else
                DM1.tProduto.Filter   := 'Codigo >= '''+RxDBLookupCombo5.Text+''' and Codigo <= '''+RxDBLookupCombo6.Text+''' and Inativo <> True';
              DM1.tProduto.Filtered := True;
              Gravo_Memo;
              if RadioGroup3.ItemIndex = 0 then
                Imprimir
              else
                begin
                  fRelMaterial := TfRelMaterial.Create(Self);
                  fRelMaterial.QuickRep1.Preview;
                  fRelMaterial.QuickRep1.Free;
                end;
            end
          else
            begin
              ShowMessage('Código inicial deve ser menor que o Código final!');
              RxDBLookupCombo5.SetFocus;
            end;
        end;
    end;
  DM1.tProduto.Filtered := False;
end;

procedure TfPrevMaterial.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
end;

procedure TfPrevMaterial.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

end.
