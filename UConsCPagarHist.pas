unit UConsCPagarHist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, rsDBUtils, Grids, DBGrids, RXDBCtrl, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  DateUtils, ValorPor, DB, DBTables, ShellApi;

type
  TfConsCPagarHist = class(TForm)
    Panel1: TPanel;
    RxDBGrid3: TRxDBGrid;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText3: TDBText;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ValorPorExtenso1: TValorPorExtenso;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsCPagarHist: TfConsCPagarHist;

implementation

Uses UDM1, UEscImpressora, URelCopiaCheque, URelRecibo;

{$R *.DFM}

procedure TfConsCPagarHist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  DM1.tCPagarParcHist.Filtered := False;
  Action := Cafree;
end;

procedure TfConsCPagarHist.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsCPagarHist.BitBtn1Click(Sender: TObject);
var
  Texto1, Texto2, vValor: String;
  I, vCodigo: Integer;
  F: TextFile;
  vMes: Word;
begin
  if Dm1.tCPagarParcHistNumCheque.AsInteger > 0 then
    begin
      fEscImpressora := TfEscImpressora.Create(self);
      fEscImpressora.ShowModal;
      AssignFile(F,DM1.tImpressoraEndereco.AsString);
      ReWrite(F);
      Write(F,'0'#15);
      Texto2 := '##### ' + FormatFloat('###,###,##0.00',Dm1.tCPagarParcHistVlrUltPgto.AsFloat) + ' #####';
      for i := 1 to 116 - Length(Texto2)do
        Texto2 := ' ' + Texto2;
      Texto1 := Texto2;
      Writeln(F,Texto1);
      Writeln(F);
      ValorPorExtenso1.Valor := DM1.tCPagarParcHistVlrUltPgto.AsFloat;
      Texto2 := '                             #####' + ValorPorExtenso1.Texto + ' ####';
      vValor := Copy(Texto2,1,108);
      Writeln(F,vValor);
      Writeln(F);
      if Length(Texto2) > 108 then
        begin
          vValor := Copy(Texto2,109,95);
          Writeln(F,vValor);
        end
      else
        Writeln(F,'         ################################################################################');
      Writeln(F);
      Writeln(F, '   ' + Dm1.tCPagarParclkFornecedor.AsString);
      Writeln(F);
      Texto2 := ' ';
      for i := 1 to 72 - length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto2;
      Texto2 := Dm1.tEmpresaCidade.AsString + '  ' + Copy(Dm1.tCPagarParcHistDtPrevCheque.Text,1,2);
      for i := 1 to 24 -length(Texto2) do
        Texto2 := Texto2 + ' ';
      TExto1 := Texto1 + Texto2;
      vMes := MonthOf(Dm1.tCPagarParcHistDtPrevCheque.AsDateTime);
      ComboBox1.ItemIndex := vMes - 1;
      Texto2 := '     ' + ComboBox1.Text;
      for i := 1 to 24 - Length(Texto2) do
        TExto2 := Texto2 + ' ';
      TExto1 := Texto1 + Texto2 + Copy(Dm1.tCPagarParcHistDtPrevCheque.Text,9,2);
      Writeln(F,TExto1);
      for i := 1 to 15 do
        Writeln(F);
      CloseFile(F);
      if DM1.tImpressoraVisualizar.AsBoolean then
        begin
          Texto1 := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
          //WinExec(PChar(Texto1),SW_MAXIMIZE);
          ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);          
        end;
      vCodigo := Dm1.tCPagarParcHistItem.AsInteger;
      Dm1.tCPagarParcHist.Filtered := False;
      Dm1.tCPagarParcHist.Filter   := 'Item = '''+IntToStr(vCodigo)+'''';
      Dm1.tCPagarParcHist.Filtered := True;
      fRelCopiaCheque := TfRelCopiaCheque.Create(Self);
      fRelCopiaCheque.QuickRep1.Preview;
      fRelCopiaCheque.QuickRep1.Free;
      Dm1.tCPagarParcHist.Filtered := False;
    end
  else
    ShowMessage('Histórico não pago com cheque!');
end;

procedure TfConsCPagarHist.BitBtn2Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if Dm1.tCPagarParcHistPgto.AsBoolean then
    begin
      vItemAux := DM1.tCPagarParcHistItem.AsInteger;
      DM1.tCPagarParcHist.Filtered := False;
      DM1.tCPagarParcHist.Filter   := 'Item = '''+IntToStr(vItemAux)+'''';
      DM1.tCPagarParcHist.Filtered := True;
      fRelRecibo := TfRelRecibo.Create(Self);
      fRelRecibo.QuickRep1.Preview;
      fRelRecibo.QuickRep1.Free;
      DM1.tCPagarParcHist.Filtered := False;
      DM1.tCPagarParcHist.Locate('Item',vItemAux,[loCaseInsensitive]);
    end
  else
    ShowMessage('Histórico deve ser de pagamento para impressão do recibo!');
end;

procedure TfConsCPagarHist.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

end.
