unit URelCliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelCliente2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText10: TRLDBText;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCliente2: TfRelCliente2;

implementation

uses UPrevRelClientes, UDM1;

{$R *.dfm}

procedure TfRelCliente2.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel2.Caption := DM1.tEmpresaEmpresa.AsString;
end;

procedure TfRelCliente2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCliente2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel8.Caption := fPrevRelClientes.tClienteEndereco.AsString + ', ' + fPrevRelClientes.tClienteNumEnd.AsString;
  if trim(fPrevRelClientes.tClienteComplEndereco.AsString) <> '' then
    RLLabel8.Caption := RLLabel8.Caption + ' - ' + fPrevRelClientes.tClienteComplEndereco.AsString;
  RLLabel10.Caption := fPrevRelClientes.tClienteBairro.AsString + '   CEP: ' + fPrevRelClientes.tClienteCep.AsString
                     + '    Cidade: ' + fPrevRelClientes.tClienteCidade.AsString + ' / ' + fPrevRelClientes.tClienteUf.AsString;
end;

end.
