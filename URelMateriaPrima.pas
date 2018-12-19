unit URelMateriaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMateriaPrima = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLDBText8: TRLDBText;
    RLMemo4: TRLMemo;
    RLDBText9: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMateriaPrima: TfRelMateriaPrima;

implementation

uses UConsMateriaPrima, DB;

{$R *.dfm}

procedure TfRelMateriaPrima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMateriaPrima.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel7.Caption := fConsMateriaPrima.mMateriaPrimaNomeMaterial.AsString + '  ' + fConsMateriaPrima.mMateriaPrimaNomeCor.AsString;
end;

procedure TfRelMateriaPrima.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Texto1 : String;
begin
  fConsMateriaPrima.mOSPedidos.First;
  Texto1 := '';
  while not fConsMateriaPrima.mOSPedidos.Eof do
    begin
      if (Texto1 = '') and (fConsMateriaPrima.mOSPedidosTipo.AsString = 'O') then
        Texto1 := 'OS: ' + fConsMateriaPrima.mOSPedidosNumOSPedido.AsString
      else
      if (Texto1 = '') and (fConsMateriaPrima.mOSPedidosTipo.AsString = 'P') then
        Texto1 := 'Pedidos: ' + fConsMateriaPrima.mOSPedidosNumOSPedido.AsString
      else
        Texto1 := Texto1 + ', ' + fConsMateriaPrima.mOSPedidosNumOSPedido.AsString;
      fConsMateriaPrima.mOSPedidos.Next;
    end;
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := Texto1;
end;

procedure TfRelMateriaPrima.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  case fConsMateriaPrima.ComboBox1.ItemIndex of
    0 : RLLabel1.Caption := 'RELATÓRIO DA MATERIA PRIMA  -  Em Falta';
    1 : RLLabel1.Caption := 'RELATÓRIO DA MATERIA PRIMA  -  Em Estoque';
    2 : RLLabel1.Caption := 'RELATÓRIO DA MATERIA PRIMA  -  Todas';
  end;
end;

end.
