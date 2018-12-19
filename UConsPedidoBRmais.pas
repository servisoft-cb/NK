unit UConsPedidoBrMais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RXCtrls, RxLookup, ExtCtrls, Buttons, DB,
  CurrEdit;

type
  TfConsPedidoBrMais = class(TForm)
    RxLabel1: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    RxLabel3: TRxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    RxLabel6: TRxLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxLabel7: TRxLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    RxLabel8: TRxLabel;
    ComboBox1: TComboBox;
    RxLabel9: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedidoBrMais: TfConsPedidoBrMais;

implementation

uses UDM1, UConsPedidoBR;

{$R *.dfm}

procedure TfConsPedidoBrMais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsPedidoBrMais.FormShow(Sender: TObject);
begin
  DateEdit1.Date := fConsPedidoBR.vDtEntregaIni;
  DateEdit2.Date := fConsPedidoBR.vDtEntregaFim;
  DateEdit3.Date := fConsPedidoBR.vDtEmissaoIni;
  DateEdit4.Date := fConsPedidoBR.vDtEmissaoFim;
  if fConsPedidoBR.vCodVendedor > 0 then
    RxDBLookupCombo4.KeyValue := fConsPedidoBR.vCodVendedor;
  if fConsPedidoBR.vCodCor > 0 then
    RxDBLookupCombo1.KeyValue := fConsPedidoBR.vCodCor;
  if fConsPedidoBR.RxDBLookupCombo2.Text <> '' then
    begin
      Panel1.Enabled := True;
      DM1.tProduto.Locate('Codigo',fConsPedidoBR.RxDBLookupCombo2.KeyValue,([Locaseinsensitive]));
    end
  else
    Panel1.Enabled := False;
end;

procedure TfConsPedidoBrMais.BitBtn3Click(Sender: TObject);
begin
  fConsPedidoBR.vDtEntregaIni := 0;
  fConsPedidoBR.vDtEntregaFim := 0;
  fConsPedidoBR.vCodCor       := 0;
  fConsPedidoBR.vCodVendedor  := 0;
  fConsPedidoBR.vDtEmissaoIni := 0;
  fConsPedidoBR.vDtEmissaoFim := 0;
  Close;
end;

procedure TfConsPedidoBrMais.BitBtn1Click(Sender: TObject);
begin
  fConsPedidoBR.vDtEntregaIni := DateEdit1.Date;
  fConsPedidoBR.vDtEntregaFim := DateEdit2.Date;
  if RxDBLookupCombo1.Text <> '' then
    fConsPedidoBR.vCodCor := RxDBLookupCombo1.KeyValue
  else
    fConsPedidoBR.vCodCor := 0;
  if RxDBLookupCombo4.Text <> '' then
    fConsPedidoBR.vCodVendedor := RxDBLookupCombo4.KeyValue
  else
    fConsPedidoBR.vCodVendedor := 0;
  fConsPedidoBR.vDtEmissaoIni := DateEdit3.Date;
  fConsPedidoBR.vDtEmissaoFim := DateEdit4.Date;
  case ComboBox1.ItemIndex of
    0 : fConsPedidoBR.vOpcaoOS := 'N';
    1 : fConsPedidoBR.vOpcaoOS := 'S';
    2 : fConsPedidoBR.vOpcaoOS := 'A';
  end;
  Close;
end;

end.
