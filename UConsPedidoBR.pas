unit UConsPedidoBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, Grids,
  DBGrids, RXDBCtrl, Mask, ToolEdit, CurrEdit, DB, DBTables, Buttons, ExtCtrls, DBVGrids, DBClient, SMDBGrid;

type
  TfConsPedidoBR = class(TForm)
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaPedido: TIntegerField;
    qConsultaPedidoCliente: TStringField;
    qConsultaCodCliente: TIntegerField;
    qConsultaNomeCliente: TStringField;
    qConsultaItem: TIntegerField;
    qConsultaCodProduto: TIntegerField;
    qConsultaCodCor: TIntegerField;
    qConsultaQtdPares: TFloatField;
    qConsultaQtdParesFat: TFloatField;
    qConsultaQtdParesRest: TFloatField;
    qConsultaQtdParesCanc: TFloatField;
    qConsultaNumOS: TStringField;
    qConsultaDtReprogramacao: TDateField;
    qConsultalkNomeCor: TStringField;
    tPedidoNota: TTable;
    dsPedidoNota: TDataSource;
    mResumo: TClientDataSet;
    mResumoCodProduto: TIntegerField;
    mResumoReferencia: TStringField;
    mResumoNomeProduto: TStringField;
    mResumoNumOS: TStringField;
    mResumoQtdTotal: TFloatField;
    mResumoQtdFaturada: TFloatField;
    mResumoPercRestante: TFloatField;
    mResumoQtdRestante: TFloatField;
    dsmResumo: TDataSource;
    mResumoNomeCor: TStringField;
    mResumoCodCor: TIntegerField;
    SMDBGrid1: TSMDBGrid;
    qConsultaCodGrade: TIntegerField;
    qConsultaDtEmissao: TDateField;
    qConsultaFantasia: TStringField;
    qConsultaReferencia: TStringField;
    qConsultaDescMaterial: TStringField;
    qConsultaNomeProduto: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Panel3: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    Shape4: TShape;
    Label12: TLabel;
    RxDBGrid2: TRxDBGrid;
    RadioGroup2: TRadioGroup;
    qConsultaNumTalao: TIntegerField;
    Shape5: TShape;
    Label14: TLabel;
    qConsultaProduzido: TBooleanField;
    qConsultaQtdProduzida: TFloatField;
    qConsultaEncerrado: TBooleanField;
    Shape6: TShape;
    Label15: TLabel;
    mResumoQtdProduzida: TFloatField;
    qConsultaUnidade: TStringField;
    qConsultaSolicitante: TStringField;
    tPedidoNotaPedido: TIntegerField;
    tPedidoNotaItem: TIntegerField;
    tPedidoNotaTipo: TStringField;
    tPedidoNotaNumSeqNota: TIntegerField;
    tPedidoNotaItemNota: TIntegerField;
    tPedidoNotaDtNota: TDateField;
    tPedidoNotaQtdPares: TIntegerField;
    tPedidoNotaNroLancExtComissao: TIntegerField;
    tPedidoNotaNroLancExtComissaoMod: TIntegerField;
    tPedidoNotaNumMovEst: TIntegerField;
    tPedidoNotaNumNota: TIntegerField;
    tPedidoNotaFilialNota: TIntegerField;
    ckImpNota: TCheckBox;
    ckImpTotal: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Monta_Resumo;
  public
    { Public declarations }
    vOpcao: String;
    vDtEntregaIni, vDtEntregaFim: TDateTime;
    vDtEmissaoIni, vDtEmissaoFim: TDateTime;
    vCodVendedor: Integer;
    vCodCor: Integer;
    vOpcaoOS: String; // N= Não Possui OS  S= Possui OS  A= Ambos
  end;

var
  fConsPedidoBR: TfConsPedidoBR;

implementation

uses UDM1, URelPedidoBR, URelPedidoBR2, UConsPedidoBrMais, UConsMateriaPrima;

{$R *.dfm}

procedure TfConsPedidoBR.Monta_Resumo;
begin
  mResumo.EmptyDataSet;
  qConsulta.First;
  while not qConsulta.Eof do
    begin
      if mResumo.Locate('CodProduto;CodCor',VarArrayOf([qConsultaCodProduto.AsInteger,qConsultaCodCor.AsInteger]),[locaseinsensitive]) then
        mResumo.Edit
      else
        begin
          mResumo.Insert;
          mResumoCodProduto.AsInteger := qConsultaCodProduto.AsInteger;
          mResumoReferencia.AsString  := qConsultaReferencia.AsString;
          mResumoNomeProduto.AsString := qConsultaNomeProduto.AsString;
          mResumoCodCor.AsInteger     := qConsultaCodCor.AsInteger;
          mResumoNomeCor.AsString     := qConsultalkNomeCor.AsString;
        end;
      mResumoQtdTotal.AsFloat     := mResumoQtdTotal.AsFloat + qConsultaQtdPares.AsFloat;
      mResumoQtdFaturada.AsFloat  := mResumoQtdFaturada.AsFloat + qConsultaQtdParesFat.AsFloat;
      mResumoQtdRestante.AsFloat  := mResumoQtdRestante.AsFloat + qConsultaQtdParesRest.AsFloat;
      mResumoQtdProduzida.AsFloat := mResumoQtdProduzida.AsFloat + qConsultaQtdProduzida.AsFloat;
      mResumoPercRestante.AsFloat := StrToFloat(FormatFloat('0.00',(mResumoQtdRestante.AsFloat / mResumoQtdTotal.AsFloat) * 100));
      mResumo.Post;
      qConsulta.Next;
    end;
end;

procedure TfConsPedidoBR.Monta_SQL;
var
  vSeparador: String;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Dbpedido.Pedido, Dbpedido.PedidoCliente, Dbpedido.CodCliente, Dbcliente.Nome NomeCliente, Dbpedidoitem.Item, ');
  qConsulta.SQL.Add(' Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.QtdPares, Dbpedidoitem.QtdParesFat, Dbpedidoitem.QtdParesRest, ');
  qConsulta.SQL.Add(' Dbpedidoitem.QtdParesCanc, Dbpedidoitem.NumOS, Dbpedidoitem.DtReprogramacao, Dbpedidoitem.Unidade, ');
  qConsulta.SQL.Add(' dbPedidoItem.CodGrade, dbPedido.DtEmissao, ');
  qConsulta.SQL.Add(' Dbcliente.Fantasia, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbproduto.DescMaterial, Dbpedidoitem.NumTalao, ');
  qConsulta.SQL.Add(' Dbtalao.Produzido, Dbtalao.QtdProduzida, Dbtalao.Encerrado, dbPedido.Solicitante ');
  qConsulta.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qConsulta.SQL.Add('INNER JOIN "dbPedidoItem.DB" Dbpedidoitem ON (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qConsulta.SQL.Add('INNER JOIN "dbCliente.DB" Dbcliente ON (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qConsulta.SQL.Add('INNER JOIN "dbProduto.DB" Dbproduto ON (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
  qConsulta.SQL.Add('FULL OUTER JOIN "dbTalao.DB" Dbtalao ON (Dbpedidoitem.NumTalao = Dbtalao.Talao)');
  qConsulta.SQL.Add('WHERE (0=0)' );
  if RxDBLookupCombo3.Text <> '' then
    begin
      qConsulta.SQL.Add(' AND (dbPedido.Filial = :Filial)');
      qConsulta.ParamByName('Filial').AsInteger := RxDBLookupCombo3.KeyValue;
    end;
  if RadioGroup1.ItemIndex = 0 then
    qConsulta.SQL.Add(' AND (dbPedidoItem.QtdParesRest > 0)');
  if RadioGroup1.ItemIndex = 1 then
    qConsulta.SQL.Add(' AND (dbPedidoItem.QtdParesFat > 0)');
  if Edit3.Text <> '' then
    qConsulta.SQL.Add(' AND (dbPedidoItem.NumOS LIKE ''%' + Edit3.Text + '%'')');
  if Edit1.Text <> '' then
    qConsulta.SQL.Add(' AND (dbCliente.Nome LIKE ''%' + Edit1.Text + '%'')');
  if Edit2.Text <> '' then
    begin
      qConsulta.SQL.Add(' AND (dbPedido.PedidoCliente = :PedidoCliente)');
      qConsulta.ParamByName('PedidoCliente').AsString := Edit2.Text;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qConsulta.SQL.Add(' AND (dbPedido.CodCliente = :CodCliente)');
      qConsulta.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qConsulta.SQL.Add(' AND (dbPedidoItem.CodProduto = :CodProduto)');
      qConsulta.ParamByName('CodProduto').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if vDtEntregaIni > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbPedidoItem.DtReprogramacao >= :DtReprogramacaoIni)');
      qConsulta.ParamByName('DtReprogramacaoIni').AsDate := vDtEntregaIni;
    end;
  if vDtEntregaFim > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbPedidoItem.DtReprogramacao <= :DtReprogramacaoFim)');
      qConsulta.ParamByName('DtReprogramacaoFim').AsDate := vDtEntregaFim;
    end;
  if vDtEmissaoIni > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbPedido.DtEmissao >= :DtEmissaoIni)');
      qConsulta.ParamByName('DtEmissaoIni').AsDate := vDtEmissaoIni;
    end;
  if vDtEmissaoFim > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbPedido.DtEmissao <= :DtEmissaoFim)');
      qConsulta.ParamByName('DtEmissaoFim').AsDate := vDtEmissaoFim;
    end;
  if vCodVendedor > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbPedido.CodVendedor = :CodVendedor)');
      qConsulta.ParamByName('CodVendedor').AsInteger := vCodVendedor;
    end;
  if vCodCor > 0 then
    begin
      qConsulta.SQL.Add(' AND (dbPedidoItem.CodCor = :CodCor)');
      qConsulta.ParamByName('CodCor').AsInteger := vCodCor;
    end;
  if vOpcaoOS = 'N' then
    qConsulta.SQL.Add(' AND (dbPedidoItem.NumTalao = 0)')
  else
  if vOpcaoOS = 'S' then
    qConsulta.SQL.Add(' AND (dbPedidoItem.NumTalao > 0)');

  case RadioGroup2.ItemIndex of
    0: qConsulta.SQL.Add('ORDER BY dbPedidoItem.DtReprogramacao, dbPedidoItem.CodProduto, dbPedidoItem.CodCor');
    1: qConsulta.SQL.Add('ORDER BY dbPedido.PedidoCliente, dbPedidoItem.CodProduto, dbPedidoItem.DtReprogramacao, dbPedidoItem.CodCor');
    2: qConsulta.SQL.Add('ORDER BY dbPedidoItem.NumOS, dbPedidoItem.DtReprogramacao, dbPedido.PedidoCliente, dbPedidoItem.CodProduto, dbPedidoItem.CodCor');
    3: qConsulta.SQL.Add('ORDER BY dbPedidoItem.CodProduto, dbPedido.PedidoCliente, dbPedidoItem.DtReprogramacao, dbPedidoItem.CodCor');
  end;
  qConsulta.Open;
end;

procedure TfConsPedidoBR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.GravaGrid(SMDBGrid1,Name);
  qConsulta.Close;
  Action := Cafree;
end;

procedure TfConsPedidoBR.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsPedidoBR.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
  RxDBGrid2.DataSource := dsPedidoNota;
end;

procedure TfConsPedidoBR.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfConsPedidoBR.RxDBLookupCombo2Change(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo2.KeyValue
  else
    RxDBLookupCombo4.ClearValue;
end;

procedure TfConsPedidoBR.BitBtn2Click(Sender: TObject);
begin
  if qConsulta.RecordCount > 0 then
    begin
      {fRelPedidoBR := TfRelPedidoBR.Create(Self);
      fRelPedidoBR.QuickRep1.Preview;
      fRelPedidoBR.QuickRep1.Free;}

      fRelPedidoBR2 := TfRelPedidoBR2.Create(Self);
      fRelPedidoBR2.RLReport1.PreviewModal;
      fRelPedidoBR2.RLReport1.Free;
      if MessageDlg('Imprimir o resumo?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          Monta_Resumo;
          mResumo.First;
          fRelPedidoBR2 := TfRelPedidoBR2.Create(Self);
          fRelPedidoBR2.RLReport2.Preview;
          fRelPedidoBR2.RLReport2.Free;
        end;
    end
  else
    ShowMessage('Não existe registro para impressão!');
end;

procedure TfConsPedidoBR.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;
end;

procedure TfConsPedidoBR.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo2.KeyValue := RxDBLookupCombo4.KeyValue
  else
    RxDBLookupCombo2.ClearValue;
end;

procedure TfConsPedidoBR.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsPedidoBR.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (qConsultaItem.AsInteger > 0) then
    begin
      if (qConsultaQtdParesRest.AsFloat <= 0) and (qConsultaQtdParesFat.AsFloat > 0) then
        begin
          AFont.Color := clTeal;
        end
      else
      if (qConsultaQtdParesRest.AsFloat <= 0) and (qConsultaQtdParesCanc.AsFloat > 0) then
        begin
          Background  := clRed;
          AFont.Color := clWhite;
        end
      else
      if qConsultaQtdProduzida.AsFloat > 0 then
        Background  := clCream
      else
      if qConsultaProduzido.AsBoolean then
        Background  := clMoneyGreen
      else
      if qConsultaNumTalao.AsInteger > 0 then
        Background  := clAqua;
    end;
end;

procedure TfConsPedidoBR.BitBtn4Click(Sender: TObject);
begin
  fConsPedidoBrMais := TfConsPedidoBrMais.Create(Self);
  fConsPedidoBrMais.DateEdit1.Date := vDtEmissaoIni;
  fConsPedidoBrMais.ShowModal;
end;

procedure TfConsPedidoBR.FormCreate(Sender: TObject);
begin
  dm1.leGrid(SMDBGrid1,Name);
end;

procedure TfConsPedidoBR.BitBtn5Click(Sender: TObject);
begin
  if (qConsulta.Active) and (qConsulta.RecordCount > 0) then
    begin
      fConsMateriaPrima := TfConsMateriaPrima.Create(Self);
      fConsMateriaPrima.BitBtn1.Tag := 0;
      fConsMateriaPrima.ShowModal;
    end
  else
    ShowMessage('Não existe pedidos para gerar a materia prima!');
end;

end.
