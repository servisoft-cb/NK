unit UPrevTalaoMov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ToolEdit, CurrEdit, Buttons, Grids, DBGrids,
  RXDBCtrl, DBFilter, Db, DBTables, RxLookup, ALed;

type
  TfPrevTalaoMov = class(TForm)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    Label5: TLabel;
    DateEdit3: TDateEdit;
    Label6: TLabel;
    DateEdit4: TDateEdit;
    GroupBox1: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    qTalao: TQuery;
    dsqTalao: TDataSource;
    qTalaoTalao: TIntegerField;
    qTalaoCodProduto: TIntegerField;
    qTalaoCodCor: TIntegerField;
    qTalaoCodGrade: TIntegerField;
    qTalaoQuantidade: TFloatField;
    qTalaoPedido: TIntegerField;
    qTalaoItemPedido: TIntegerField;
    qTalaoPedCliDif: TStringField;
    qTalaoCodCliente: TIntegerField;
    qTalaoProduzido: TBooleanField;
    qTalaoNumMovEst: TIntegerField;
    qTalaoDtBaixa: TDateField;
    qTalaoQtdProduzida: TFloatField;
    qTalaoCancelado: TBooleanField;
    qTalaoMotivoCancelado: TStringField;
    qTalaoDtCancelado: TDateField;
    qTalaoDtGerado: TDateField;
    qTalaoReferencia: TStringField;
    qTalaoNomeCliente: TStringField;
    qTalaoNomeProduto: TStringField;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    Edit1: TEdit;
    RadioGroup2: TRadioGroup;
    ALed3: TALed;
    Label12: TLabel;
    ALed1: TALed;
    Label8: TLabel;
    ALed2: TALed;
    Label9: TLabel;
    Label10: TLabel;
    DateEdit5: TDateEdit;
    Label11: TLabel;
    DateEdit6: TDateEdit;
    qTalaoDtReprogramacao: TDateField;
    qTalaoPedidoCliente: TStringField;
    RadioGroup3: TRadioGroup;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevTalaoMov: TfPrevTalaoMov;

implementation

uses UDM1, URelTalaoMov, UConsTalaoHor, rsDBUtils;

{$R *.DFM}

procedure TfPrevTalaoMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qTalao.Close;
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfPrevTalaoMov.BitBtn5Click(Sender: TObject);
var
  vSeparador : String;
begin
  qTalao.Close;
  qTalao.SQL.Clear;
  qTalao.SQL.Add('SELECT Dbtalao.Talao, Dbtalao.CodProduto, Dbtalao.CodCor, Dbtalao.CodGrade, Dbtalao.Quantidade, Dbtalao.Pedido, Dbtalao.ItemPedido,');
  qTalao.SQL.Add('Dbtalao.NumMovEst, Dbtalao.DtBaixa, Dbtalao.QtdProduzida, Dbtalao.Cancelado, Dbtalao.MotivoCancelado,Dbtalao.PedidoCliente, Dbtalao.PedCliDif, Dbtalao.CodCliente, Dbtalao.Produzido,');
  qTalao.SQL.Add('Dbtalao.DtCancelado, Dbtalao.DtGerado, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbcliente.Nome NomeCliente, Dbpedidoitem.DtReprogramacao');
  qTalao.SQL.Add('FROM "dbTalao.DB" Dbtalao');
  qTalao.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto ON  (Dbtalao.CodProduto = Dbproduto.Codigo)');
  qTalao.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente ON  (Dbtalao.CodCliente = Dbcliente.Codigo)');
  qTalao.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem ON (Dbtalao.Pedido = Dbpedidoitem.Pedido)');
  qTalao.SQL.Add('   AND  (Dbtalao.ItemPedido = Dbpedidoitem.Item)');
  vSeparador := 'WHERE';
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qTalao.SQL.Add(vSeparador + ' Dbtalao.Talao BETWEEN :Talao1 AND :Talao2');
      qTalao.ParamByName('Talao1').AsInteger := CurrencyEdit1.AsInteger;
      qTalao.ParamByName('Talao2').AsInteger := CurrencyEdit2.AsInteger;
      vSeparador := 'AND';
    end;
  if DateEdit1.Text <> '  /  /    ' then
    begin
      qTalao.SQL.Add(vSeparador + ' Dbtalao.DtGerado BETWEEN :DtGerado1 AND :DtGerado2');
      qTalao.ParamByName('DtGerado1').AsDate := DateEdit1.Date;
      qTalao.ParamByName('DtGerado2').AsDate := DateEdit2.Date;
      vSeparador := 'AND';
    end;
  if (RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 3) then
    begin
      if DateEdit3.Text <> '  /  /    ' then
        begin
          qTalao.SQL.Add(vSeparador + ' Dbtalao.DtBaixa BETWEEN :DtProduzido1 AND :DtProduzido2');
          qTalao.ParamByName('DtProduzido1').AsDate := DateEdit3.Date;
          qTalao.ParamByName('DtProduzido2').AsDate := DateEdit4.Date;
          vSeparador := 'AND';
        end;
    end;
  if (DateEdit5.Text <> '  /  /    ') and (DateEdit6.Text <> '  /  /    ') then
    begin
      qTalao.SQL.Add(vSeparador + ' DbPedidoItem.DtReprogramacao BETWEEN :DtEntrega1 AND :DtEntrega2');
      qTalao.ParamByName('DtEntrega1').AsDate := DateEdit5.Date;
      qTalao.ParamByName('DtEntrega2').AsDate := DateEdit6.Date;
      vSeparador := 'AND';
    end;
  if Edit1.Text <> '' then
    begin
      qTalao.SQL.Add(vSeparador + ' Dbproduto.Referencia LIKE ''%' + Edit1.Text + '%''');
      vSeparador := 'AND';
    end;
  case RadioGroup1.ItemIndex of
    0 : qTalao.SQL.Add(vSeparador + ' ((Dbtalao.Produzido = False) or (Dbtalao.Produzido is Null)) AND ((Dbtalao.Cancelado = False) or (Dbtalao.Cancelado is Null))');
    1 : qTalao.SQL.Add(vSeparador + ' Dbtalao.Produzido = True AND ((Dbtalao.Cancelado = False) or (Dbtalao.Cancelado is Null))');
    2 : qTalao.SQL.Add(vSeparador + ' Dbtalao.Cancelado = True');
    4 : begin
          qTalao.SQL.Add(vSeparador + ' (Dbpedidoitem.DtReprogramacao < :DtReprogramacao1) and (dbTalao.Cancelado = False) and (dbTalao.Produzido = False)');
          qTalao.ParamByName('DtReprogramacao1').AsDate := Date;
        end;
  end;
  if RadioGroup1.ItemIndex <> 3 then
    vSeparador := 'AND';
  case RadioGroup3.ItemIndex of
    0 : qTalao.SQL.Add(vSeparador + ' (dbTalao.Encerrado = True)');
    1 : qTalao.SQL.Add(vSeparador + ' (dbTalao.Encerrado = False)');
  end;

  case RadioGroup2.ItemIndex of
    0 : qTalao.SQL.Add('ORDER BY DbProduto.Referencia, DbPedidoItem.DtReprogramacao, Dbtalao.Talao');
    1 : qTalao.SQL.Add('ORDER BY Dbtalao.Talao');
    2 : qTalao.SQL.Add('ORDER BY DbPedidoItem.DtReprogramacao, DbProduto.Referencia');
  end;
  qTalao.Open;
end;

procedure TfPrevTalaoMov.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qTalaoProduzido.AsBoolean then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if qTalaoCancelado.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end
  else
  if qTalaoDtReprogramacao.AsDateTime < Date then
    begin
      Background  := $0080FFFF;
      AFont.Color := clBlack;
    end;
end;

procedure TfPrevTalaoMov.BitBtn1Click(Sender: TObject);
begin
  if qTalao.Active then
    begin
      if qTalao.RecordCount > 0 then
        begin
          fRelTalaoMov := tfRelTalaoMov.Create(Self);
          if RadioGroup1.ItemIndex = 0 then
            begin
              fRelTalaoMov.QRLabel9.Caption    := 'Cód.Cliente';
              fRelTalaoMov.QRDBText3.DataField := 'CodCliente';
              fRelTalaoMov.QRLabel8.Caption    := 'Dt.Gerado';
              fRelTalaoMov.QRDBText9.DataField := 'DtGerado';
            end;
          fRelTalaoMov.QuickRep1.Preview;
          fRelTalaoMov.QuickRep1.Free;
        end
      else
        ShowMessage('Não existe registros para imprimir!');
    end;
end;

procedure TfPrevTalaoMov.RxDBGrid1DblClick(Sender: TObject);
begin
  if qTalaoTalao.AsInteger > 0 then
    begin
      DM1.tTalao.SetKey;
      DM1.tTalaoTalao.AsInteger := qTalaoTalao.AsInteger;
      if DM1.tTalao.GotoKey then
        begin
          fConsTalaoHor := TfConsTalaoHor.Create(Self);
          fConsTalaoHor.ShowModal;
        end;
    end;
end;

procedure TfPrevTalaoMov.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tTalao,Name);
  oDBUtils.ActiveDataSet(True,DM1.tTalaoHor,Name);
end;

end.
