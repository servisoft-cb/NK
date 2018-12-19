unit UPrevRelClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Db, DBTables, RXLookup, Menus,
  RXCtrls, ShellApi;

type
  TfPrevRelClientes = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dsCliente: TDataSource;
    tCliente: TTable;
    tClienteCodigo: TIntegerField;
    tClienteNome: TStringField;
    tClienteEndereco: TStringField;
    tClienteBairro: TStringField;
    tClienteCidade: TStringField;
    tClienteUf: TStringField;
    tClienteTelefone: TStringField;
    tClienteTelefone2: TStringField;
    tClienteFax: TStringField;
    tClientePessoa: TStringField;
    tClienteCgcCpf: TStringField;
    tClienteInscrEst: TStringField;
    tClienteContato: TStringField;
    tClienteObs: TMemoField;
    tClienteAprovCredito: TStringField;
    tClienteTipoAprov: TStringField;
    tClienteEndEntrega: TStringField;
    tClienteBairroEntrega: TStringField;
    tClienteCidEntrega: TStringField;
    tClienteUfEntrega: TStringField;
    tClienteCgcCpfEntrega: TStringField;
    tClienteInscEntrega: TStringField;
    tClienteEndPgto: TStringField;
    tClienteBairroPgto: TStringField;
    tClienteCidPgto: TStringField;
    tClienteUfPgto: TStringField;
    tClienteFantasia: TStringField;
    tClienteDtCadastro: TDateField;
    tClienteCodVendedor: TIntegerField;
    tClienteObsCtas: TMemoField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Bevel5: TBevel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label7: TLabel;
    tClienteLojas: TIntegerField;
    tClienteSelecionado: TBooleanField;
    tClienteCaixaPostal: TStringField;
    tClienteRg: TStringField;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    tClienteCep: TStringField;
    tClienteCepEntrega: TStringField;
    tClienteCepPgto: TStringField;
    tClienteCodCidade: TIntegerField;
    tClienteCodCidadeE: TIntegerField;
    tClienteCodCidadeP: TIntegerField;
    tClientelkCidade: TStringField;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    tClientelkNomeVendedor: TStringField;
    tClienteEmail: TStringField;
    tClientePercTransf: TFloatField;
    tClienteCodCondPgto: TIntegerField;
    tClienteDtNascContato: TDateField;
    tClienteNomeResp: TStringField;
    tClienteContatoCliente: TStringField;
    tClienteContatoModelagem: TStringField;
    tClienteImpItemNotaPorTam: TBooleanField;
    tClientelkNomeCondPgto: TStringField;
    tClientelkNomeCidadeP: TStringField;
    tClientelkNomeCidadeE: TStringField;
    tClienteEmailNFe: TStringField;
    tClienteNumEnd: TStringField;
    tClienteNumEndEntrega: TStringField;
    tClienteComplEndereco: TStringField;
    tClienteComplEnderecoEntrega: TStringField;
    tClienteCodBancoBoleto: TIntegerField;
    tClienteFornecedor: TBooleanField;
    tClienteLiberacao: TStringField;
    tClienteCodGrupo: TIntegerField;
    tClienteHomePage: TStringField;
    tClienteCodTipoCobranca: TIntegerField;
    tClienteCodCSTIPI: TStringField;
    tClienteIPISuspenso: TBooleanField;
    tClienteDtValidadeIpi: TDateField;
    tClienteCodObsIpi: TIntegerField;
    tClienteCodSitTribSimples: TIntegerField;
    tClienteUsaIcmsSimples: TBooleanField;
    tClienteDDDFone1: TIntegerField;
    tClienteDDDFone2: TIntegerField;
    tClienteDDDFax: TIntegerField;
    tClienteIPI: TFloatField;
    tClienteTipoFrete: TStringField;
    tClienteIdPais: TIntegerField;
    tClienteEmailNFe2: TStringField;
    tClienteCgcCpfPgto: TStringField;
    tClienteInscPgto: TStringField;
    tClientePessoaEntrega: TStringField;
    tClientePessoaPgto: TStringField;
    tClienteTipo_Consumidor: TIntegerField;
    tClienteTIPO_CONTRIBUINTE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Filtrar_tCliente;
  public
    { Public declarations }
  end;

var
  fPrevRelClientes: TfPrevRelClientes;

implementation

uses URelClientes, UDM1, URelCliente2;

{$R *.DFM}

procedure TfPrevRelClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevRelClientes.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
          tCliente.IndexFieldNames := 'Nome';
          RxDBLookupCombo3.Enabled := True;
          RxDBLookupCombo4.Enabled := True;
          RxDBLookupCombo3.SetFocus;
          Edit1.Enabled := False;
          Edit1.Clear;
          Edit2.Enabled := False;
          Edit2.Clear;
          RxDBLookupCombo5.Enabled := False;
          RxDBLookupCombo5.ClearValue;
          RxDBLookupCombo1.Enabled := False;
          RxDBLookupCombo1.ClearValue;
          RxDBLookupCombo2.Enabled := False;
          RxDBLookupCombo2.ClearValue;
        end;
    1 : begin
          tCliente.IndexFieldNames := 'Codigo';
          Edit1.Enabled := True;
          Edit1.SetFocus;
          Edit2.Enabled := True;
          RxDBLookupCombo3.Enabled := False;
          RxDBLookupCombo3.ClearValue;
          RxDBLookupCombo4.Enabled := False;
          RxDBLookupCombo4.ClearValue;
          RxDBLookupCombo5.Enabled := False;
          RxDBLookupCombo5.ClearValue;
          RxDBLookupCombo1.Enabled := False;
          RxDBLookupCombo1.ClearValue;
          RxDBLookupCombo2.Enabled := False;
          RxDBLookupCombo2.ClearValue;
        end;
    2 : begin
          RxDBLookupCombo5.Enabled := True;
          RxDBLookupCombo5.SetFocus;
          RxDBLookupCombo1.Enabled := True;
          RxDBLookupCombo3.Enabled := False;
          RxDBLookupCombo3.ClearValue;
          RxDBLookupCombo4.Enabled := False;
          RxDBLookupCombo4.ClearValue;
          Edit1.Enabled := False;
          Edit1.Clear;
          Edit2.Enabled := False;
          Edit2.Clear;
          RxDBLookupCombo2.ClearValue;
          RxDBLookupCombo2.Enabled := False;
        end;
    3 : begin
          RxDBLookupCombo5.Enabled := False;
          RxDBLookupCombo5.ClearValue;
          RxDBLookupCombo1.Enabled := False;
          RxDBLookupCombo1.ClearValue;
          RxDBLookupCombo3.Enabled := False;
          RxDBLookupCombo3.ClearValue;
          RxDBLookupCombo4.Enabled := False;
          RxDBLookupCombo4.ClearValue;
          Edit1.Enabled := False;
          Edit1.Clear;
          Edit2.Enabled := False;
          Edit2.Clear;
          RxDBLookupCombo2.ClearValue;
          RxDBLookupCombo2.Enabled := True;
          RxDBLookupCombo2.SetFocus;
        end;
  end;
end;

procedure TfPrevRelClientes.BitBtn2Click(Sender: TObject);
begin
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo4.ClearValue;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  Edit1.Clear;
  Edit2.Clear;
  RxDBLookupCombo5.ClearValue;
end;

procedure TfPrevRelClientes.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevRelClientes.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tUF.IndexFieldNames := 'Sigla';
end;

procedure TfPrevRelClientes.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfPrevRelClientes.RxDBLookupCombo2Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfPrevRelClientes.RxDBLookupCombo3Enter(Sender: TObject);
begin
  tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevRelClientes.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfPrevRelClientes.BitBtn1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 2) and (RxDBLookupCombo5.Text = '') and (RxDBLookupCombo1.Text = '') then
  begin
    ShowMessage('É obrigatório informar a cidade ou o estado');
    exit;
  end;
  prc_Filtrar_tCliente;
  if RadioGroup2.ItemIndex = 0 then
  begin
    fRelClientes := TfRelClientes.Create(Self);
    //fRelClientes.vImpObs := CheckBox1.Checked;
    //fRelClientes.vImpEndEntrega := CheckBox2.Checked;
    //fRelClientes.vImpEndCobranca := CheckBox3.Checked;
    fRelClientes.QuickRep1.Preview;
    fRelClientes.QuickRep1.Free;
  end
  else
  begin
    fRelCliente2 := TfRelCliente2.Create(Self);
    fRelCliente2.RLReport1.Preview;
    fRelCliente2.RLReport1.Free;
  end;
  tCliente.Filtered := False;
end;

procedure TfPrevRelClientes.prc_Filtrar_tCliente;
begin
  tCliente.Filtered := False;
  if RadioGroup1.ItemIndex = 0 then
  begin
          if (RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo4.Text <> '') then
          begin
            tCliente.Filter := 'Nome >= '''+RxDBLookupCombo3.Text+''' and Nome <= '''+RxDBLookupCombo4.Text+'''';
            tCliente.Filtered := True;
          end;
  end
  else
  if RadioGroup1.ItemIndex = 1 then
  begin
    if (Edit1.Text <> '') and (Edit2.Text <> '') then
    begin
      if StrToInt(Edit1.Text) <= StrToInt(Edit2.Text) then
      begin
        tCliente.Filter   := 'Codigo >= '''+Edit1.Text+''' and Codigo <= '''+Edit2.Text+'''';
        tCliente.Filtered := True;
      end
    end;
  end
  else
  if RadioGroup1.ItemIndex = 2 then
  begin
    if (RxDBLookupCombo5.Text <> '') and (RxDBLookupCombo1.Text <> '') then
      tCliente.Filter   := 'CodCidade = '''+IntToStr(RxDBLookupCombo5.KeyValue)+''' and Uf = '''+RxDBLookupCombo1.Text+''''
    else
    if (RxDBLookupCombo5.Text <> '') and (RxDBLookupCombo1.Text = '') then
      tCliente.Filter   := 'CodCidade = '''+IntToStr(RxDBLookupCombo5.KeyValue)+''''
    else
    if (RxDBLookupCombo5.Text = '') and (RxDBLookupCombo1.Text <> '') then
      tCliente.Filter   := 'Uf = '''+RxDBLookupCombo1.Text+'''';
    tCliente.Filtered := True;
  end
  else
  if RadioGroup1.ItemIndex = 3 then
  begin
    tCliente.IndexFieldNames := 'Nome';
    if RxDBLookupCombo2.Text <> '' then
      begin
        tCliente.Filter   := 'CodVendedor = '''+IntToStr(RxDBLookupCombo2.KeyValue)+'''';
        tCliente.Filtered := True;
      end;
  end;
end;

end.
