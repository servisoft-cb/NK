unit UVerificaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MemTable, Grids, DBGrids, RXDBCtrl, StdCtrls,
  Buttons, ComCtrls;

type
  TfVerificaEstoque = class(TForm)
    mVerifica: TMemoryTable;
    mVerificaCodProduto: TIntegerField;
    mVerificaReferencia: TStringField;
    mVerificaNomeProduto: TStringField;
    mVerificaTipo: TStringField;
    mVerificaQtd: TFloatField;
    mVerificaNumNota: TIntegerField;
    mVerificaData: TDateField;
    dsmVerifica: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mVerificaItem: TIntegerField;
    mVerificaObs: TStringField;
    mVerificaNumMovEst: TIntegerField;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    mRepetidas: TMemoryTable;
    mRepetidasNumNota: TIntegerField;
    mRepetidasNumMovEst: TIntegerField;
    mRepetidasDtMov: TDateField;
    mRepetidasCodMaterial: TIntegerField;
    mRepetidasCodCor: TIntegerField;
    mRepetidasNomeCor: TStringField;
    mRepetidasNomeMaterial: TStringField;
    mRepetidasQtd: TFloatField;
    mRepetidasTipoMov: TStringField;
    dsmRepetidas: TDataSource;
    Label1: TLabel;
    ProgressBar2: TProgressBar;
    tDctoEstItem: TTable;
    tDctoEstItemNumDcto: TIntegerField;
    tDctoEstItemItem: TIntegerField;
    tDctoEstItemCodMaterial: TIntegerField;
    tDctoEstItemCodCor: TIntegerField;
    tDctoEstItemCodGrade: TIntegerField;
    tDctoEstItemUnidade: TStringField;
    tDctoEstItemQtd: TFloatField;
    tDctoEstItemVlrUnit: TFloatField;
    tDctoEstItemVlrTotal: TFloatField;
    tDctoEstItemNumMovEst: TIntegerField;
    tNotaFiscalItens: TTable;
    tNotaFiscalItensNumNota: TIntegerField;
    tNotaFiscalItensItem: TSmallintField;
    tNotaFiscalItensCodProduto: TIntegerField;
    tNotaFiscalItensCodCor: TIntegerField;
    tNotaFiscalItensClasFiscal: TStringField;
    tNotaFiscalItensUnidade: TStringField;
    tNotaFiscalItensQtd: TFloatField;
    tNotaFiscalItensIcms: TFloatField;
    tNotaFiscalItensIpi: TFloatField;
    tNotaFiscalItensSitTrib: TSmallintField;
    tNotaFiscalItensVlrUnit: TFloatField;
    tNotaFiscalItensVlrTotal: TFloatField;
    tNotaFiscalItensDesconto: TFloatField;
    tNotaFiscalItensVlrDesconto: TFloatField;
    tNotaFiscalItensBaseIcms: TFloatField;
    tNotaFiscalItensVlrIcms: TFloatField;
    tNotaFiscalItensVlrIpi: TFloatField;
    tNotaFiscalItensNatOper: TSmallintField;
    tNotaFiscalItensIcmsIpi: TBooleanField;
    tNotaFiscalItensNumPedido: TIntegerField;
    tNotaFiscalItensItemPedido: TIntegerField;
    tNotaFiscalItensDescricao: TStringField;
    tNotaFiscalItensReferencia: TStringField;
    tNotaFiscalItensComissaoMod: TFloatField;
    tNotaFiscalItensCodComissao: TIntegerField;
    tNotaFiscalItensCodGrade: TIntegerField;
    tNotaFiscalItensNumMovEst: TIntegerField;
    tNotaFiscalItensGeraDupl: TBooleanField;
    tNotaFiscalItensMaterial: TBooleanField;
    tNotaFiscalItensEstoque: TBooleanField;
    tNotaFiscalItensNumNotaDevForn: TIntegerField;
    tNotaFiscalItensCodFornDev: TIntegerField;
    tNotaFiscalItensItemDev: TIntegerField;
    tNotaFiscalItensNumOC: TStringField;
    tNotaFiscalItensNumOS: TStringField;
    tNotaFiscalItensCodBarraRotulo: TStringField;
    tNotaFiscalItensVale: TBooleanField;
    tNotaFiscalItensObs: TStringField;
    tValeItens: TTable;
    tValeItensNumVale: TIntegerField;
    tValeItensItem: TIntegerField;
    tValeItensCodProduto: TIntegerField;
    tValeItensCodCor: TIntegerField;
    tValeItensQtd: TFloatField;
    tValeItensUnidade: TStringField;
    tValeItensVlrUnitario: TFloatField;
    tValeItensVlrTotal: TFloatField;
    tValeItensCodSitTrib: TIntegerField;
    tValeItensAliqIcms: TFloatField;
    tValeItensAliqIPI: TFloatField;
    tValeItensNumPedido: TIntegerField;
    tValeItensItemPedido: TIntegerField;
    tValeItensNumMovEst: TIntegerField;
    tNEntradaItens: TTable;
    tNEntradaItensCodForn: TIntegerField;
    tNEntradaItensNumNEntr: TIntegerField;
    tNEntradaItensItem: TSmallintField;
    tNEntradaItensCodMaterial: TIntegerField;
    tNEntradaItensQtd: TFloatField;
    tNEntradaItensVlrUnit: TFloatField;
    tNEntradaItensVlrTotalItens: TFloatField;
    tNEntradaItensIcms: TFloatField;
    tNEntradaItensIpi: TFloatField;
    tNEntradaItensDesc: TFloatField;
    tNEntradaItensVlrDesc: TFloatField;
    tNEntradaItensVlrIpi: TFloatField;
    tNEntradaItensVlrIcms: TFloatField;
    tNEntradaItensBaseIcms: TFloatField;
    tNEntradaItensSitTrib: TSmallintField;
    tNEntradaItensIcmsIpi: TBooleanField;
    tNEntradaItensCodCor: TIntegerField;
    tNEntradaItensUnidade: TStringField;
    tNEntradaItensCodGrade: TIntegerField;
    tNEntradaItensNumOC: TIntegerField;
    tNEntradaItensItemOC: TIntegerField;
    tNEntradaItensQtdPacote: TFloatField;
    tNEntradaItensNumMovEst: TIntegerField;
    tNEntradaItensMatProd: TStringField;
    tNEntradaItensSomaEstoque: TBooleanField;
    tNEntradaItensNomeMaterial: TStringField;
    tNEntradaItensReferencia: TStringField;
    tNEntradaItensCodNatOper: TIntegerField;
    tNEntradaItensDtBaixa: TDateField;
    tNEntradaItensHrBaixa: TTimeField;
    tNEntradaItensNumMovEstBaixa: TIntegerField;
    tNEntradaItensQtdDevolvida: TFloatField;
    tNEntradaItensQtdRestante: TFloatField;
    BitBtn3: TBitBtn;
    mRepetidasReferencia: TStringField;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    procedure Le_Estoque;
    procedure Grava_Repetidas;
  public
    { Public declarations }
  end;

var
  fVerificaEstoque: TfVerificaEstoque;

implementation

uses UDM1, URelVerifica;

{$R *.dfm}

procedure TfVerificaEstoque.Grava_Repetidas;
begin
  mRepetidas.Insert;
  mRepetidasNumNota.AsInteger     := DM1.tEstoqueMatMovNumNota.AsInteger;
  mRepetidasNumMovEst.AsInteger   := DM1.tEstoqueMatMovNumMov.AsInteger;
  mRepetidasDtMov.AsDateTime      := DM1.tEstoqueMatMovDtMov.AsDateTime;
  mRepetidasCodMaterial.AsInteger := DM1.tEstoqueMatMovCodMaterial.AsInteger;
  mRepetidasCodCor.AsInteger      := DM1.tEstoqueMatMovCodCor.AsInteger;
  mRepetidasNomeCor.AsString      := DM1.tEstoqueMatMovlkCor.AsString;
  mRepetidasNomeMaterial.AsString := DM1.tEstoqueMatMovlkNomeMaterial.AsString;
  mRepetidasQtd.AsFloat           := DM1.tEstoqueMatMovQtd.AsFloat;
  mRepetidasTipoMov.AsString      := DM1.tEstoqueMatMovTipoMov.AsString;
  if DM1.tProduto.Locate('Codigo',DM1.tEstoqueMatMovCodMaterial.AsInteger,[loCaseInsensitive]) then
    mRepetidasReferencia.AsString := DM1.tProdutoReferencia.AsString;
  mRepetidas.Post;
end;

procedure TfVerificaEstoque.Le_Estoque;
begin
  ProgressBar2.Max      := DM1.tEstoqueMatMov.RecordCount;
  ProgressBar2.Position := 0;
  DM1.tEstoqueMatMov.First;
  while not DM1.tEstoqueMatMov.Eof do
    begin
      ProgressBar2.Position := ProgressBar2.Position + 1;
      if DM1.tEstoqueMatMovTipoMov.AsString = 'NTE' then
        begin
          if not tNEntradaItens.Locate('NumMovEst',DM1.tEstoqueMatMovNumMov.AsInteger,[loCaseInsensitive]) then
            Grava_Repetidas;
        end
      else
      if DM1.tEstoqueMatMovTipoMov.AsString = 'DOC' then
        begin                                     
          if not tDctoEstItem.Locate('NumMovEst',DM1.tEstoqueMatMovNumMov.AsInteger,[loCaseInsensitive]) then
            Grava_Repetidas;
        end
      else
      if DM1.tEstoqueMatMovTipoMov.AsString = 'NTS' then
        begin                                     
          if not tNotaFiscalItens.Locate('NumMovEst',DM1.tEstoqueMatMovNumMov.AsInteger,[loCaseInsensitive]) then
            Grava_Repetidas;
        end
      else
      if DM1.tEstoqueMatMovTipoMov.AsString = 'VAL' then
        begin
          if not tValeItens.Locate('NumMovEst',DM1.tEstoqueMatMovNumMov.AsInteger,[loCaseInsensitive]) then
            Grava_Repetidas;
        end;
      DM1.tEstoqueMatMov.Next;
    end;
end;

procedure TfVerificaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfVerificaEstoque.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfVerificaEstoque.BitBtn1Click(Sender: TObject);
begin
  DM1.tEstoqueMatMov.IndexFieldNames := 'NumMov';
  ProgressBar1.Max      := DM1.tNotaFiscal.RecordCount;
  ProgressBar1.Position := 0;
  mVerifica.EmptyTable;
  DM1.tNotaFiscal.First;
  while not DM1.tNotaFiscal.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if not DM1.tNotaFiscalCancelada.AsBoolean then
        begin
          DM1.tNotaFiscalItens.First;
          while not DM1.tNotaFiscalItens.Eof do
            begin
              if (DM1.tNotaFiscalItensVale.AsBoolean) and (DM1.tNotaFiscalItensNumMovEst.AsInteger > 0) then
                begin
                  if DM1.tEstoqueMatMov.Locate('NumMov',DM1.tNotaFiscalItensNumMovEst.AsInteger,([Locaseinsensitive])) then
                    begin
                      mVerifica.Insert;
                      mVerificaCodProduto.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
                      mVerificaReferencia.AsString  := DM1.tNotaFiscalItensReferencia.AsString;
                      mVerificaNomeProduto.AsString := DM1.tNotaFiscalItensDescricao.AsString;
                      mVerificaTipo.AsString        := DM1.tEstoqueMatMovTipoMov.AsString;
                      mVerificaQtd.AsFloat          := DM1.tNotaFiscalItensQtd.AsFloat;
                      mVerificaNumNota.AsInteger    := DM1.tNotaFiscalItensNumNota.AsInteger;
                      mVerificaData.AsDateTime      := DM1.tNotaFiscalDtEmissao.AsDateTime;
                      mVerificaItem.AsInteger       := DM1.tNotaFiscalItensItem.AsInteger;
                      mVerificaNumMovEst.AsInteger  := DM1.tNotaFiscalItensNumMovEst.AsInteger;
                      if (DM1.tNotaFiscalItensNumNota.AsInteger <> DM1.tEstoqueMatMovNumNota.AsInteger) or (DM1.tEstoqueMatMovTipoMov.AsString <> 'NTS') then
                        mVerificaObs.AsString := 'Movimento do estoque não é da nota';
                      mVerifica.Post;
                    end;
                end;
              DM1.tNotaFiscalItens.Next;
            end;
        end;
      DM1.tNotaFiscal.Next;
    end;

  mRepetidas.EmptyTable;
  Le_Estoque;

  ShowMessage('Final da verificação!');
end;

procedure TfVerificaEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    BitBtn3.Enabled := not(BitBtn3.Enabled);
end;

procedure TfVerificaEstoque.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Ajustar o estoque com as notas repetidas?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      mRepetidas.First;
      while not mRepetidas.Eof do
        begin
          DM1.tEstoqueMatMov.SetKey;
          DM1.tEstoqueMatMovNumMov.AsInteger := mRepetidasNumMovEst.AsInteger;
          if DM1.tEstoqueMatMov.GotoKey then
            DM1.tEstoqueMatMov.Delete;
          mRepetidas.Next;
        end;
    end;
end;

procedure TfVerificaEstoque.RxDBGrid2DblClick(Sender: TObject);
begin
  if MessageDlg('Excluir este registro do estoque?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      DM1.tEstoqueMatMov.SetKey;
      DM1.tEstoqueMatMovNumMov.AsInteger := mRepetidasNumMovEst.AsInteger;
      if DM1.tEstoqueMatMov.GotoKey then
        DM1.tEstoqueMatMov.Delete;
    end;
end;

procedure TfVerificaEstoque.BitBtn4Click(Sender: TObject);
begin
  fRelVerifica := TfRelVerifica.Create(Self);
  fRelVerifica.RLReport1.Preview;
  fRelVerifica.RLReport1.Free;
end;

procedure TfVerificaEstoque.BitBtn5Click(Sender: TObject);
begin
  fRelVerifica := TfRelVerifica.Create(Self);
  fRelVerifica.RLReport2.Preview;
  fRelVerifica.RLReport2.Free;
end;

end.
