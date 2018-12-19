unit UPrevFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables, RXLookup, Menus,
  RXCtrls, DBFilter, ShellApi;

type
  TfPrevFornecedores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    tFornecedores: TTable;
    dsFornecedores: TDataSource;
    tFornecedoresCodForn: TIntegerField;
    tFornecedoresNomeForn: TStringField;
    tFornecedoresEndForn: TStringField;
    tFornecedoresBairroForn: TStringField;
    tFornecedoresCidadeForn: TStringField;
    tFornecedoresCEPForn: TStringField;
    tFornecedoresEstadoForn: TStringField;
    tFornecedoresTel1Forn: TStringField;
    tFornecedoresTel2Forn: TStringField;
    tFornecedoresFaxForn: TStringField;
    tFornecedoresCGC: TStringField;
    tFornecedoresInsc: TStringField;
    tFornecedoresContatoForn: TStringField;
    tFornecedoresDataCadastroForn: TDateField;
    tFornecedoresObsForn: TMemoField;
    tFornecedoresRamal: TStringField;
    tFornecedoresEmail: TStringField;
    tFornecedoresHomePage: TStringField;
    tFornecedoresCodCondPgto: TIntegerField;
    Panel2: TPanel;
    RxSpeedButton2: TRxSpeedButton;
    Bevel1: TBevel;
    RadioGroup2: TRadioGroup;
    RxDBFilter1: TRxDBFilter;
    RxDBFilter2: TRxDBFilter;
    tFornecedoresFantasia: TStringField;
    tFornecedoresFornecedorOutros: TStringField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RadioGroup3: TRadioGroup;
    tFornecedoresCodCidade: TIntegerField;
    tFornecedoresCustoFixo: TBooleanField;
    tFornecedoreslkCidadeForn: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    linha, pagina : Integer;
    F: TextFile;
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
  public
    { Public declarations }
  end;

var
  fPrevFornecedores: TfPrevFornecedores;

implementation

uses UDM1, URelFornecedores, Printers, UEscImpressora;

{$R *.DFM}

procedure TfPrevFornecedores.Imprimir;
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

  tFornecedores.First;
  while not tFornecedores.Eof do
    begin
      if linha > 61 then
        Imprime_Cabecalho;
      Imprime_Detalhe;
      tFornecedores.Next;
    end;
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      //WinExec(PChar(Texto),SW_MAXIMIZE);
      ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);
    end;
end;

procedure TfPrevFornecedores.Imprime_Cabecalho;
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
  texto1 := '                                          RELACAO DOS FORNECEDORES                                               Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Codigo                        Nome                                FONE           FAX                   CIDADE                       ');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;
end;

procedure TfPrevFornecedores.Imprime_Detalhe;
var
 i: Integer;
 texto1, Texto2: string;
begin
  Texto2 := tFornecedoresCodForn.AsString;
  for i := 1 to 6 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := texto2 + '     ';

  Texto2 := copy(tFornecedoresNomeForn.AsString,1,50);
  for i := 1 to 50 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2;

  Texto2 := tFornecedoresTel1Forn.AsString;
  for i := 1 to 19 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2;

  texto2 := tFornecedoresFaxForn.AsString;
  for i := 1 to 13 - Length(Texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '    ';

  texto2 := tFornecedoreslkCidadeForn.AsString;
  for i := 1 to 25 - Length(Texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;
  Writeln(F,Texto1);
  Linha := Linha + 1;
end;


procedure TfPrevFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active     := False;
  RxDBFilter2.Active     := True;
  Action := Cafree;
end;

procedure TfPrevFornecedores.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
        tFornecedores.IndexFieldNames := 'NomeForn';
        RxDBLookupCombo1.Enabled := True;
        RxDBLookupCombo2.Enabled := True;
        RxDBLookupCombo1.SetFocus;
        Edit1.Enabled := False;
        Edit1.Clear;
        Edit2.Enabled := False;
        Edit2.Clear;
        end;
    1 : begin
        tFornecedores.IndexFieldNames := 'CodForn';
        Edit1.Enabled := True;
        Edit1.SetFocus;
        Edit2.Enabled := True;
        RxDBLookupCombo1.Enabled := False;
        RxDBLookupCombo1.ClearValue;
        RxDBLookupCombo2.Enabled := False;
        RxDBLookupCombo2.ClearValue;
        end;
  end;
end;

procedure TfPrevFornecedores.BitBtn2Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  Edit1.Clear;
  Edit2.Clear;
  RadioGroup1.ItemIndex      := 0;
  RadioGroup2.ItemIndex      := 0;
end;

procedure TfPrevFornecedores.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevFornecedores.Visualizar1Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    0 : begin
          RxDbFilter2.Active := False;
          RxDbFilter1.Active := True;
        end;
    1 : begin
          RxDbFilter1.Active := False;
          RxDbFilter2.Active := True;
        end;
    2 : begin
          RxDbFilter1.Active := False;
          RxDbFilter2.Active := False;
        end;
  end;
  case RadioGroup1.ItemIndex of
    0 : begin
          if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') then
            begin
              tFornecedores.Filtered := False;
              tFornecedores.Filter   := 'NomeForn >= '''+RxDBLookupCombo1.Text+''' and NomeForn <= '''+RxDBLookupCombo2.Text+'''';
              tFornecedores.Filtered := True;
              fRelFornecedores       := TfRelFornecedores.Create(Self);
              fRelFornecedores.QuickRep1.Preview;
              fRelFornecedores.QuickRep1.Free;
              tFornecedores.Filtered := False;
              RxDBFilter1.Active     := False;
              RxDBFilter2.Active     := False;
            end
          else
            begin
              tFornecedores.Filtered := False;
              fRelFornecedores       := TfRelFornecedores.Create(Self);
              fRelFornecedores.QuickRep1.Preview;
              fRelFornecedores.QuickRep1.Free;
              RxDBFilter1.Active     := False;
              RxDBFilter2.Active     := False;
            end;
        end;
    1 : begin
          if (Edit1.Text <> '') and (Edit2.Text <> '') then
            begin
              if StrToInt(Edit1.Text) <= StrToInt(Edit2.Text) then
                begin
                  tFornecedores.Filtered := False;
                  tFornecedores.Filter   := 'CodForn >= '''+Edit1.Text+''' and CodForn <= '''+Edit2.Text+'''';
                  tFornecedores.Filtered := True;
                  fRelFornecedores       := TfRelFornecedores.Create(Self);
                  fRelFornecedores.QuickRep1.Preview;
                  fRelFornecedores.QuickRep1.Free;
                  tFornecedores.Filtered := False;
                  RxDBFilter1.Active     := False;
                  RxDBFilter2.Active     := False;
                end
              else
              if StrToInt(Edit1.Text) > StrToInt(Edit2.Text) then
                begin
                  ShowMessage('Código inicial deve ser menor que o código final!');
                  RxDBFilter1.Active     := False;
                  RxDBFilter2.Active     := False;
                  Edit1.SetFocus;
                end;
            end
          else
            begin
              tFornecedores.Filtered := False;
              fRelFornecedores       := TfRelFornecedores.Create(Self);
              fRelFornecedores.QuickRep1.Preview;
              fRelFornecedores.QuickRep1.Free;
              RxDBFilter1.Active     := False;
              RxDBFilter2.Active     := False;
            end;
        end;
  end;
  tFornecedores.Filtered := False;
end;

procedure TfPrevFornecedores.FormShow(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  RxDBFilter2.Active := True;
  tFornecedores.IndexFieldNames := 'NomeForn';
  RxDBLookupCombo1.Enabled := True;
  RxDBLookupCombo2.Enabled := True;
  RxDBLookupCombo1.SetFocus;
  Edit1.Enabled := False;
  Edit1.Clear;
  Edit2.Enabled := False;
  Edit2.Clear;
end;

procedure TfPrevFornecedores.RxDBLookupCombo1Enter(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    0 : begin
          RxDbFilter2.Active := False;
          RxDbFilter1.Active := True;
        end;
    1 : begin
          RxDbFilter1.Active := False;
          RxDbFilter2.Active := True;
        end;
    2 : begin
          RxDbFilter1.Active := False;
          RxDbFilter2.Active := False;
        end;
  end;
  tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfPrevFornecedores.RxSpeedButton2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    0 : begin
          RxDbFilter2.Active := False;
          RxDbFilter1.Active := True;
        end;
    1 : begin
          RxDbFilter1.Active := False;
          RxDbFilter2.Active := True;
        end;
    2 : begin
          RxDbFilter1.Active := False;
          RxDbFilter2.Active := False;
        end;
  end;
  case RadioGroup1.ItemIndex of
    0 : begin
          if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') then
            begin
              tFornecedores.Filtered := False;
              tFornecedores.Filter   := 'NomeForn >= '''+RxDBLookupCombo1.Text+''' and NomeForn <= '''+RxDBLookupCombo2.Text+'''';
              tFornecedores.Filtered := True;
              case RadioGroup3.ItemIndex of
                0 : Imprimir;
                1 : begin
                      fRelFornecedores       := TfRelFornecedores.Create(Self);
                      fRelFornecedores.QuickRep1.Preview;
                      fRelFornecedores.QuickRep1.Free;
                    end;
              end;      
              tFornecedores.Filtered := False;
              RxDBFilter1.Active     := False;
              RxDBFilter2.Active     := False;
            end
          else
            begin
              tFornecedores.Filtered := False;
              case RadioGroup3.ItemIndex of
                0 : Imprimir;
                1 : begin
                      fRelFornecedores       := TfRelFornecedores.Create(Self);
                      fRelFornecedores.QuickRep1.Preview;
                      fRelFornecedores.QuickRep1.Free;
                    end;
              end;      
              RxDBFilter1.Active     := False;
              RxDBFilter2.Active     := False;
            end;
        end;
    1 : begin
          if (Edit1.Text <> '') and (Edit2.Text <> '') then
            begin
              if StrToInt(Edit1.Text) <= StrToInt(Edit2.Text) then
                begin
                  tFornecedores.Filtered := False;
                  tFornecedores.Filter   := 'CodForn >= '''+Edit1.Text+''' and CodForn <= '''+Edit2.Text+'''';
                  tFornecedores.Filtered := True;
                  case RadioGroup3.ItemIndex of
                    0 : Imprimir;
                    1 : begin
                          fRelFornecedores       := TfRelFornecedores.Create(Self);
                          fRelFornecedores.QuickRep1.Preview;
                          fRelFornecedores.QuickRep1.Free;
                        end;
                  end;
                  tFornecedores.Filtered := False;
                  RxDBFilter1.Active     := False;
                  RxDBFilter2.Active     := False;
                end
              else
              if StrToInt(Edit1.Text) > StrToInt(Edit2.Text) then
                begin
                  ShowMessage('Código inicial deve ser menor que o código final!');
                  RxDBFilter1.Active     := False;
                  RxDBFilter2.Active     := False;
                  Edit1.SetFocus;
                end;
            end
          else
            begin
              tFornecedores.Filtered := False;
              case RadioGroup3.ItemIndex of
                0 : Imprimir;
                1 : begin
                      fRelFornecedores       := TfRelFornecedores.Create(Self);
                      fRelFornecedores.QuickRep1.Preview;
                      fRelFornecedores.QuickRep1.Free;
                    end;
              end;      
              RxDBFilter1.Active     := False;
              RxDBFilter2.Active     := False;
            end;
        end;
  end;
  tFornecedores.Filtered := False;
end;

end.
