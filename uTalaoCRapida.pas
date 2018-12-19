unit uTalaoCRapida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, StdCtrls, Mask, ToolEdit,
  CurrEdit, FMTBcd, DB, SqlExpr, Buttons, DBClient, Provider, DBCtrls;

type
  TfTalaoCRapida = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    CurrencyEdit1: TCurrencyEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ConsTalao: TSQLDataSet;
    pConsTalao: TDataSetProvider;
    tConsTalao: TClientDataSet;
    dsConsTalao: TDataSource;
    tConsTalaoTALAO: TIntegerField;
    tConsTalaoSETOR: TStringField;
    tConsTalaoFUNCIONARIO: TStringField;
    tConsTalaoPRODUTO: TStringField;
    tConsTalaoDTENTRADA: TDateField;
    tConsTalaoHRENTRADA: TTimeField;
    tConsTalaoDTSAIDA: TDateField;
    tConsTalaoHRSAIDA: TTimeField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    tConsTalaoPROCESSO: TStringField;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    tConsTalaoQTDEMPROCESSO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ct: String;
  public
    { Public declarations }
  end;

var
  fTalaoCRapida: TfTalaoCRapida;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfTalaoCRapida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfTalaoCRapida.BitBtn1Click(Sender: TObject);
begin
  tConsTalao.Close;
  ConsTalao.CommandText := ct;
  ConsTalao.CommandText := ConsTalao.CommandText + ' WHERE T.TALAO = ' + CurrencyEdit1.Text;
  ConsTalao.CommandText := ConsTalao.CommandText + ' ORDER BY TM.DTENTRADA, TM.HRENTRADA';
  tConsTalao.Open;
  tConsTalao.Last;

  LABEL10.Caption := '';
  LABEL10.Color   := clBtnFace;

  if (tConsTalaoDTENTRADA.IsNull) then
  begin
    LABEL10.Caption := 'AGUARDANDO ENTRADA EM PROCESSO';
  end
  else
  if (tConsTalaoPROCESSO.AsString = 'A') then
  begin
    if tConsTalaoDTSAIDA.IsNull then
      LABEL10.Caption := 'EM PRODUÇÃO'
    else
      LABEL10.Caption := 'EM PRODUÇÃO / AGUARDANDO PROCESSO';
    LABEL10.Color     := clYellow;
  end
  else
  if tConsTalaoPROCESSO.AsString = 'E' then
  begin
    LABEL10.Caption := 'ENCERRADO';
    LABEL10.Color   := clTeal;
  end
  else
  if tConsTalaoPROCESSO.AsString = 'P' then
  begin
    LABEL10.Caption := 'PARADO';
    LABEL10.Color  := clAqua;
  end
  else
  if tConsTalaoPROCESSO.AsString = 'T' then
  begin
    LABEL10.Caption := 'TERCEIRO';
    LABEL10.Color  := $0080FF80;
  end;             
end;

procedure TfTalaoCRapida.FormCreate(Sender: TObject);
begin
  ct := ConsTalao.CommandText;
end;

end.
