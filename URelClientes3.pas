unit URelClientes3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelClientes3 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand4: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw4: TRLDraw;
    RLBand5: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vPrint : Boolean;
  public
    { Public declarations }
  end;

var
  fRelClientes3: TfRelClientes3;

implementation

uses UDM1, UCopiaConsCliente, DB;

{$R *.dfm}

procedure TfRelClientes3.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vPrint;
  if (PrintIt) and (fCopiaConsCliente.CheckBox1.Checked) then
    PrintIt := (fCopiaConsCliente.qClienteEmail.AsString <> '');
end;

procedure TfRelClientes3.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTexto : String;
begin
  RLMemo2.Lines.Clear;
  vTexto := '';
  PrintIt := True;
  if (fCopiaConsCliente.CheckBox2.Checked) and not(fCopiaConsCliente.SMDBGrid2.SelectedRows.CurrentRowSelected) then
    PrintIt := False;
  vPrint := PrintIt;
  if not PrintIt then
    exit;

  if fCopiaConsCliente.ComboBox1.ItemIndex = 1 then
  begin
    vTexto := fCopiaConsCliente.qClienteEndereco.AsString + ', ' + fCopiaConsCliente.qClienteNumEnd.AsString;
    if trim(fCopiaConsCliente.qClienteComplEndereco.AsString) <> '' then
      vTexto := vTexto + ' - ' + fCopiaConsCliente.qClienteComplEndereco.AsString;
  end
  else
    vTexto := fCopiaConsCliente.qClienteCgcCpf.AsString;
  RLMemo2.Lines.Text := vTexto;
  if fCopiaConsCliente.CheckBox1.Checked then
    RLDraw4.Visible := not(fCopiaConsCliente.qClienteEmail.AsString <> '');
end;

procedure TfRelClientes3.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fCopiaConsCliente.ComboBox1.ItemIndex = 1 then
    RLLabel6.Caption := 'Endereço'
  else
    RLLabel6.Caption := 'CNPJ/CPF';
end;

procedure TfRelClientes3.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTexto : WideString;
begin
  RLMemo1.Lines.Clear;
  PrintIt := vPrint;
  if not PrintIt then
    exit;
  PrintIt := (fCopiaConsCliente.ComboBox1.ItemIndex = 2);
  if not PrintIt then
    exit;
  vTexto := 'End: ' + fCopiaConsCliente.qClienteEndereco.AsString + ', ' + fCopiaConsCliente.qClienteNumEnd.AsString;
  if trim(fCopiaConsCliente.qClienteComplEndereco.AsString) <> '' then
    vTexto := vTexto + ' - ' + fCopiaConsCliente.qClienteComplEndereco.AsString;
  vTexto := vTexto + ' - ' + fCopiaConsCliente.qClienteNomeCidade.AsString + ' / ' + fCopiaConsCliente.qClienteUf.AsString;
  RLMemo1.Lines.Text := vTexto;
end;

end.
