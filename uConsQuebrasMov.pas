unit uConsQuebrasMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, FMTBcd, DB, DBClient, Provider,
  SqlExpr, RxLookup, Mask, ToolEdit, Grids, DBGrids, SMDBGrid, RzTabs,
  ComCtrls;

type
  TfConsQuebrasMov = class(TForm)
    RzPageControl2: TRzPageControl;
    TabSheet3: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    TabSheet4: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox1: TComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    sdsSetor: TSQLDataSet;
    sdsSetorCODIGO: TIntegerField;
    sdsSetorNOME: TStringField;
    sdsSetorIMPTALAO: TStringField;
    sdsSetorATELIER: TStringField;
    sdsSetorMETADIA: TIntegerField;
    sdsSetorFINAL: TStringField;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    cdsSetorCODIGO: TIntegerField;
    cdsSetorNOME: TStringField;
    cdsSetorIMPTALAO: TStringField;
    cdsSetorATELIER: TStringField;
    cdsSetorMETADIA: TIntegerField;
    cdsSetorFINAL: TStringField;
    dsSetor: TDataSource;
    mSetorDefeito: TClientDataSet;
    dsmSetorDefeito: TDataSource;
    mSetorDefeitoCodSetor: TIntegerField;
    mSetorDefeitoNomeSetor: TStringField;
    mSetorDefeitoCodProduto: TIntegerField;
    mSetorDefeitoNomeProduto: TStringField;
    mSetorDefeitoReferencia: TStringField;
    mSetorDefeitoQtdQuebras: TIntegerField;
    mSetorDefeitoCodDefeito: TIntegerField;
    mSetorDefeitoNomeDefeito: TStringField;
    sdsTalaoQuebras: TSQLDataSet;
    dspTalaoQuebras: TDataSetProvider;
    cdsTalaoQuebras: TClientDataSet;
    sdsTalaoQuebrasCODPRODUTO: TIntegerField;
    sdsTalaoQuebrasTALAO: TIntegerField;
    sdsTalaoQuebrasCODSETOR: TIntegerField;
    sdsTalaoQuebrasITEM: TIntegerField;
    sdsTalaoQuebrasCODDEFEITO: TIntegerField;
    sdsTalaoQuebrasDATA: TDateField;
    sdsTalaoQuebrasQTD: TIntegerField;
    sdsTalaoQuebrasHORA: TTimeField;
    sdsTalaoQuebrasCOMPLEMENTO: TStringField;
    sdsTalaoQuebrasCODFUNCIONARIO: TIntegerField;
    sdsTalaoQuebrasNOMEPRODUTO: TStringField;
    sdsTalaoQuebrasREFERENCIA: TStringField;
    sdsTalaoQuebrasNOMEDEFEITO: TStringField;
    sdsTalaoQuebrasNOMESETOR: TStringField;
    cdsTalaoQuebrasCODPRODUTO: TIntegerField;
    cdsTalaoQuebrasTALAO: TIntegerField;
    cdsTalaoQuebrasCODSETOR: TIntegerField;
    cdsTalaoQuebrasITEM: TIntegerField;
    cdsTalaoQuebrasCODDEFEITO: TIntegerField;
    cdsTalaoQuebrasDATA: TDateField;
    cdsTalaoQuebrasQTD: TIntegerField;
    cdsTalaoQuebrasHORA: TTimeField;
    cdsTalaoQuebrasCOMPLEMENTO: TStringField;
    cdsTalaoQuebrasCODFUNCIONARIO: TIntegerField;
    cdsTalaoQuebrasNOMEPRODUTO: TStringField;
    cdsTalaoQuebrasREFERENCIA: TStringField;
    cdsTalaoQuebrasNOMEDEFEITO: TStringField;
    cdsTalaoQuebrasNOMESETOR: TStringField;
    ProgressBar1: TProgressBar;
    mProdutoDefeito: TClientDataSet;
    dsmProdutoDefeito: TDataSource;
    mProdutoDefeitoCodProduto: TIntegerField;
    mProdutoDefeitoReferencia: TStringField;
    mProdutoDefeitoNomeProduto: TStringField;
    mProdutoDefeitoCodDefeito: TIntegerField;
    mProdutoDefeitoNomeDefeito: TStringField;
    mProdutoDefeitoQtd: TIntegerField;
    mProdutoAcum: TClientDataSet;
    dsmProdutoAcum: TDataSource;
    mProdutoAcumCodProduto: TIntegerField;
    mProdutoAcumReferencia: TStringField;
    mProdutoAcumNomeProduto: TStringField;
    mProdutoAcumQtd: TIntegerField;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    dsTalaoQuebras: TDataSource;
    SMDBGrid3: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mSetorDefeitoNewRecord(DataSet: TDataSet);
    procedure mProdutoDefeitoNewRecord(DataSet: TDataSet);
    procedure mProdutoAcumNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    ctTalaoQuebrasAux : String;
    procedure Monta_TalaoQuebras;
    procedure Le_TalaoQuebras;
    procedure Grava_mSetorDefeito;
    procedure Grava_mProdutoDefeito;
    procedure Grava_mProdutoAcum;
  public
    { Public declarations }
  end;

var
  fConsQuebrasMov: TfConsQuebrasMov;

implementation

{$R *.dfm}

procedure TfConsQuebrasMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsQuebrasMov.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  cdsSetor.Close;
  cdsSetor.Open;
  ctTalaoQuebrasAux := sdsTalaoQuebras.CommandText;
end;

procedure TfConsQuebrasMov.BitBtn2Click(Sender: TObject);
begin
  Monta_TalaoQuebras;
  Le_TalaoQuebras;
  mSetorDefeito.IndexFieldNames   := 'NomeSetor;Referencia;NomeDefeito';
  mProdutoDefeito.IndexFieldNames := 'Referencia;NomeDefeito';
end;

procedure TfConsQuebrasMov.Monta_TalaoQuebras;
begin
  cdsTalaoQuebras.Close;
  sdsTalaoQuebras.CommandText := ctTalaoQuebrasAux
                               + ' WHERE TQ.DATA BETWEEN :DATA1 AND :DATA2 ';
  if RxDBLookupCombo2.Text <> '' then
    sdsTalaoQuebras.CommandText := sdsTalaoQuebras.CommandText
                                 + ' AND TQ.CODSETOR = ' + IntToStr(RxDBLookupCombo2.KeyValue);

  case ComboBox1.ItemIndex of
    0 : sdsTalaoQuebras.CommandText := sdsTalaoQuebras.CommandText + ' ORDER BY S.NOME, P.NOME, TQ.DATA';
    1 : sdsTalaoQuebras.CommandText := sdsTalaoQuebras.CommandText + ' ORDER BY P.NOME, S.NOME, TQ.DATA ';
    2 : sdsTalaoQuebras.CommandText := sdsTalaoQuebras.CommandText + ' ORDER BY TQ.TALAO, TQ.DATA ';
    3 : sdsTalaoQuebras.CommandText := sdsTalaoQuebras.CommandText + ' ORDER BY F.NOME, S.NOME, P.NOME, TQ.DATA ';
  end;
  sdsTalaoQuebras.ParamByName('DATA1').AsDate := DateEdit1.Date;
  sdsTalaoQuebras.ParamByName('DATA2').AsDate := DateEdit2.Date;
  cdsTalaoQuebras.Open;
end;

procedure TfConsQuebrasMov.Le_TalaoQuebras;
begin
  mSetorDefeito.EmptyDataSet;
  mSetorDefeito.IndexFieldNames := 'CodSetor;CodProduto;CodDefeito';

  ProgressBar1.Max      := cdsTalaoQuebras.RecordCount;
  ProgressBar1.Position := 0;
  cdsTalaoQuebras.First;
  while not cdsTalaoQuebras.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Grava_mSetorDefeito;
      Grava_mProdutoDefeito;
      Grava_mProdutoAcum;
      cdsTalaoQuebras.Next;
    end;

end;

procedure TfConsQuebrasMov.Grava_mSetorDefeito;
var
  vCodAux : Integer;
begin
  vCodAux := 0;
  if cdsTalaoQuebrasCODDEFEITO.AsInteger > 0 then
    vCodAux := cdsTalaoQuebrasCODDEFEITO.AsInteger;
  if mSetorDefeito.FindKey([cdsTalaoQuebrasCODSETOR.AsInteger,cdsTalaoQuebrasCODPRODUTO.AsInteger,vCodAux]) then
    mSetorDefeito.Edit
  else
  begin
    mSetorDefeito.Insert;
    mSetorDefeitoCodSetor.AsInteger   := cdsTalaoQuebrasCODSETOR.AsInteger;
    mSetorDefeitoNomeSetor.AsString   := cdsTalaoQuebrasNOMESETOR.AsString;
    mSetorDefeitoCodProduto.AsInteger := cdsTalaoQuebrasCODPRODUTO.AsInteger;
    mSetorDefeitoNomeProduto.AsString := cdsTalaoQuebrasNOMEPRODUTO.AsString;
    mSetorDefeitoReferencia.AsString  := cdsTalaoQuebrasREFERENCIA.AsString;
    mSetorDefeitoNomeDefeito.AsString := cdsTalaoQuebrasNOMEDEFEITO.AsString;
    mSetorDefeitoCodDefeito.AsInteger := cdsTalaoQuebrasCODDEFEITO.AsInteger;
  end;
  mSetorDefeitoQtdQuebras.AsInteger := mSetorDefeitoQtdQuebras.AsInteger + cdsTalaoQuebrasQTD.AsInteger;
  mSetorDefeito.Post;
end;

procedure TfConsQuebrasMov.Grava_mProdutoDefeito;
var
  vCodAux : Integer;
begin
  vCodAux := 0;
  if cdsTalaoQuebrasCODDEFEITO.AsInteger > 0 then
    vCodAux := cdsTalaoQuebrasCODDEFEITO.AsInteger;
  if mProdutoDefeito.FindKey([cdsTalaoQuebrasCODPRODUTO.AsInteger,vCodAux]) then
    mProdutoDefeito.Edit
  else
  begin
    mProdutoDefeito.Insert;
    mProdutoDefeitoCodProduto.AsInteger := cdsTalaoQuebrasCODPRODUTO.AsInteger;
    mProdutoDefeitoReferencia.AsString  := cdsTalaoQuebrasREFERENCIA.AsString;
    mProdutoDefeitoNomeProduto.AsString := cdsTalaoQuebrasNOMEPRODUTO.AsString;
    mProdutoDefeitoCodDefeito.AsInteger := vCodAux;
    mProdutoDefeitoNomeDefeito.AsString := cdsTalaoQuebrasNOMEDEFEITO.AsString;
  end;
  mProdutoDefeitoQtd.AsInteger := mProdutoDefeitoQtd.AsInteger + cdsTalaoQuebrasQTD.AsInteger;
  mProdutoDefeito.Post;
end;

procedure TfConsQuebrasMov.mSetorDefeitoNewRecord(DataSet: TDataSet);
begin
  mSetorDefeitoQtdQuebras.AsInteger := 0;
end;

procedure TfConsQuebrasMov.mProdutoDefeitoNewRecord(DataSet: TDataSet);
begin
  mProdutoDefeitoQtd.AsInteger := 0;
end;

procedure TfConsQuebrasMov.mProdutoAcumNewRecord(DataSet: TDataSet);
begin
  mProdutoAcumQtd.AsInteger := 0;
end;

procedure TfConsQuebrasMov.Grava_mProdutoAcum;
begin
  if mProdutoAcum.FindKey([cdsTalaoQuebrasCODPRODUTO.AsInteger]) then
    mProdutoAcum.Edit
  else
  begin
    mProdutoAcum.Insert;
    mProdutoAcumCodProduto.AsInteger := cdsTalaoQuebrasCODPRODUTO.AsInteger;
    mProdutoAcumReferencia.AsString  := cdsTalaoQuebrasREFERENCIA.AsString;
    mProdutoAcumNomeProduto.AsString := cdsTalaoQuebrasNOMEPRODUTO.AsString;
  end;
  mProdutoAcumQtd.AsInteger := mProdutoAcumQtd.AsInteger + cdsTalaoQuebrasQTD.AsInteger;
  mProdutoAcum.Post;
end;

end.
