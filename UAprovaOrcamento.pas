unit UAprovaOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, rsDBUtils, Dialogs, StdCtrls, RxDBComb, Mask, ToolEdit, RXDBCtrl, DBCtrls, Buttons;

type
  TfAprovaOrcamento = class(TForm)
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    BitBtn10: TBitBtn;
    BitBtn1: TBitBtn;
    DBDateEdit1: TDBDateEdit;
    procedure BitBtn10Click(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAprovaOrcamento: TfAprovaOrcamento;

implementation

uses udm1;

{$R *.dfm}

procedure TfAprovaOrcamento.BitBtn10Click(Sender: TObject);
begin
  if (DM1.tOrcamentoAprovado.AsString = 'A') and (DM1.tOrcamentoDtAprovado.AsDateTime < 1) then
    raise Exception.Create('O campo Data Aprovação é obrigatório.');

  if (DM1.tOrcamentoAprovado.AsString <> 'A') and (DM1.tOrcamentoDtAprovado.AsDateTime > 1) then
    raise Exception.Create('Os campos Situação deve estar Aprovado e a Data Aprovação deve ser informada.');

  if (DM1.tOrcamentoAprovado.AsString = 'N') and (DM1.tOrcamentoMotivoNaoAprov.AsString = '') then
    raise Exception.Create('O campo Motivo deve ser informado.');

  ModalResult := mrOk;
end;

procedure TfAprovaOrcamento.RxDBComboBox1Change(Sender: TObject);
begin
  DBDateEdit1.Enabled := ( RxDBComboBox1.Values[RxDBComboBox1.ItemIndex] = 'A');
//  DBMemo1.Enabled := ( RxDBComboBox1.Values[RxDBComboBox1.ItemIndex] = 'N' );

//  if not DBMemo1.Enabled then
//    DM1.tOrcamentoMotivoNaoAprov.Clear;

  if not DBDateEdit1.Enabled then
    DM1.tOrcamentoDtAprovado.Clear;
end;

procedure TfAprovaOrcamento.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfAprovaOrcamento.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  RxDBComboBox1Change(Sender);
end;

procedure TfAprovaOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

end.
