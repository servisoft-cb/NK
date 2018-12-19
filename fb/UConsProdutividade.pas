unit UConsProdutividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons,
  Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, DBTables, UDMTalao, RzTabs;

type
  TfConsProdutividade = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Talao: TSQLDataSet;
    TalaoTALAO: TIntegerField;
    TalaoCODPRODUTO: TIntegerField;
    TalaoCODCOR: TIntegerField;
    TalaoCODGRADE: TIntegerField;
    TalaoQUANTIDADE: TIntegerField;
    TalaoPEDIDO: TIntegerField;
    TalaoITEMPEDIDO: TIntegerField;
    TalaoPEDIDOCLIENTE: TStringField;
    TalaoPEDCLIDIF: TStringField;
    TalaoCODCLIENTE: TIntegerField;
    TalaoPRODUZIDO: TStringField;
    TalaoNUMMOVEST: TIntegerField;
    TalaoDTBAIXA: TDateField;
    TalaoQTDPRODUZIDA: TIntegerField;
    TalaoCANCELADO: TStringField;
    TalaoMOTIVOCANCELADO: TStringField;
    TalaoDTCANCELADO: TDateField;
    TalaoDTGERADO: TDateField;
    TalaoIMPRIMIR: TStringField;
    TalaoENCERRADO: TStringField;
    TalaoIMPRESSODATA: TDateField;
    TalaoIMPRESSOHORA: TTimeField;
    TalaoIMPRESSOUSUARIO: TStringField;
    TalaoPROCESSO: TStringField;
    pTalao: TDataSetProvider;
    tTalao: TClientDataSet;
    tTalaoTALAO: TIntegerField;
    tTalaoCODPRODUTO: TIntegerField;
    tTalaoCODCOR: TIntegerField;
    tTalaoCODGRADE: TIntegerField;
    tTalaoQUANTIDADE: TIntegerField;
    tTalaoPEDIDO: TIntegerField;
    tTalaoITEMPEDIDO: TIntegerField;
    tTalaoPEDIDOCLIENTE: TStringField;
    tTalaoPEDCLIDIF: TStringField;
    tTalaoCODCLIENTE: TIntegerField;
    tTalaoPRODUZIDO: TStringField;
    tTalaoNUMMOVEST: TIntegerField;
    tTalaoDTBAIXA: TDateField;
    tTalaoQTDPRODUZIDA: TIntegerField;
    tTalaoCANCELADO: TStringField;
    tTalaoMOTIVOCANCELADO: TStringField;
    tTalaoDTCANCELADO: TDateField;
    tTalaoDTGERADO: TDateField;
    tTalaoIMPRIMIR: TStringField;
    tTalaoENCERRADO: TStringField;
    tTalaoIMPRESSODATA: TDateField;
    tTalaoIMPRESSOHORA: TTimeField;
    tTalaoIMPRESSOUSUARIO: TStringField;
    tTalaoPROCESSO: TStringField;
    dsTalao: TDataSource;
    TalaoNOMECLIENTE: TStringField;
    TalaoFANTASIA: TStringField;
    TalaoREFERENCIA: TStringField;
    TalaoNOMEPRODUTO: TStringField;
    tTalaoNOMECLIENTE: TStringField;
    tTalaoFANTASIA: TStringField;
    tTalaoREFERENCIA: TStringField;
    tTalaoNOMEPRODUTO: TStringField;
    tPedidoItem2: TTable;
    tPedidoItem2Pedido: TIntegerField;
    tPedidoItem2Item: TIntegerField;
    tPedidoItem2DtReprogramacao: TDateField;
    tPedidoItem2Obs: TStringField;
    TalaoDIAMETRO: TStringField;
    TalaoCOMPRIMENTO: TStringField;
    TalaoROSCA: TStringField;
    TalaoCABECA: TStringField;
    tTalaoDIAMETRO: TStringField;
    tTalaoCOMPRIMENTO: TStringField;
    tTalaoROSCA: TStringField;
    tTalaoCABECA: TStringField;
    Panel2: TPanel;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Shape3: TShape;
    Label6: TLabel;
    TalaoTOTALHORAS: TFloatField;
    TalaoHORASPRODUCAO: TFloatField;
    TalaoHORASPARADA: TFloatField;
    tTalaoTOTALHORAS: TFloatField;
    tTalaoHORASPRODUCAO: TFloatField;
    tTalaoHORASPARADA: TFloatField;
    TalaoQTDEMPROCESSO: TIntegerField;
    TalaoQTDQUEBRAS: TIntegerField;
    TalaoENDFOTOTALAO: TStringField;
    tTalaoQTDEMPROCESSO: TIntegerField;
    tTalaoQTDQUEBRAS: TIntegerField;
    tTalaoENDFOTOTALAO: TStringField;
    Shape4: TShape;
    Label7: TLabel;
    Shape5: TShape;
    Label8: TLabel;
    TalaoHORASTERCEIRO: TFloatField;
    tTalaoHORASTERCEIRO: TFloatField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    mTalaoSetor: TClientDataSet;
    mTalaoSetorTalao: TIntegerField;
    mTalaoSetorCodProduto: TIntegerField;
    mTalaoSetorReferencia: TStringField;
    mTalaoSetorNomeProduto: TStringField;
    mTalaoSetorQtd: TIntegerField;
    mTalaoSetorQtdProduzida: TIntegerField;
    mTalaoSetorQtdQuebra: TIntegerField;
    mTalaoSetorTotalHorasPrevista: TFloatField;
    mTalaoSetorTotalHorasParada: TFloatField;
    mTalaoSetorTotalHorasProducao: TFloatField;
    mTalaoSetorPedido: TIntegerField;
    mTalaoSetorPedidoCliente: TStringField;
    mTalaoSetorItemPedido: TIntegerField;
    mTalaoSetorProcesso: TStringField;
    mTalaoSetorCodCliente: TIntegerField;
    mTalaoSetorNomeCliente: TStringField;
    mTalaoSetorEncerrado: TStringField;
    mTalaoSetorCancelado: TStringField;
    mTalaoSetorDtCancelado: TDateField;
    mTalaoSetorDtGerado: TDateField;
    dsmTalaoSetor: TDataSource;
    Label10: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox2: TComboBox;
    TabSheet7: TRzTabSheet;
    TabSheet8: TRzTabSheet;
    TabSheet9: TRzTabSheet;
    TabSheet10: TRzTabSheet;
    TabSheet11: TRzTabSheet;
    Panel5: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn2: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Panel6: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    BitBtn4: TBitBtn;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Panel7: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    BitBtn5: TBitBtn;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Panel8: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    BitBtn6: TBitBtn;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Panel9: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    BitBtn7: TBitBtn;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    TalaoSetor: TSQLDataSet;
    tTalaoSetor: TClientDataSet;
    dsTalaoSetor: TDataSource;
    dsTalaoMestre: TDataSource;
    TalaoSetorTALAO: TIntegerField;
    TalaoSetorCODSETOR: TIntegerField;
    TalaoSetorPROCESSO: TStringField;
    TalaoSetorQTDENTRADA: TIntegerField;
    TalaoSetorQTDQUEBRAS: TIntegerField;
    TalaoSetorQTDPRODUZIDO: TIntegerField;
    TalaoSetorTOTALHORAS: TFloatField;
    TalaoSetorHORASPRODUCAO: TFloatField;
    TalaoSetorHORASPARADAS: TFloatField;
    tTalaoTalaoSetor: TDataSetField;
    tTalaoSetorTALAO: TIntegerField;
    tTalaoSetorCODSETOR: TIntegerField;
    tTalaoSetorPROCESSO: TStringField;
    tTalaoSetorQTDENTRADA: TIntegerField;
    tTalaoSetorQTDQUEBRAS: TIntegerField;
    tTalaoSetorQTDPRODUZIDO: TIntegerField;
    tTalaoSetorTOTALHORAS: TFloatField;
    tTalaoSetorHORASPRODUCAO: TFloatField;
    tTalaoSetorHORASPARADAS: TFloatField;
    mTalaoSetorNomeSetor: TStringField;
    SMDBGrid2: TSMDBGrid;
    mTalao: TClientDataSet;
    dsmTalao: TDataSource;
    mTalaoTalao: TIntegerField;
    mTalaoCodProduto: TIntegerField;
    mTalaoReferencia: TStringField;
    mTalaoNomeProduto: TStringField;
    mTalaoQtd: TIntegerField;
    mTalaoQtdProduzida: TIntegerField;
    mTalaoQtdQuebra: TIntegerField;
    mTalaoTotalHorasPrevista: TFloatField;
    mTalaoTotalHorasParada: TFloatField;
    mTalaoTotalHorasProducao: TFloatField;
    mTalaoPedido: TIntegerField;
    mTalaoPedidoCliente: TStringField;
    mTalaoItemPedido: TIntegerField;
    mTalaoProcesso: TStringField;
    mTalaoCodCliente: TIntegerField;
    mTalaoNomeCliente: TStringField;
    mTalaoEncerrado: TStringField;
    mTalaoCancelado: TStringField;
    mTalaoDtCancelado: TDateField;
    mTalaoDtGerado: TDateField;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    SMDBGrid5: TSMDBGrid;
    SMDBGrid6: TSMDBGrid;
    SMDBGrid7: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
  private
    { Private declarations }
    ctTalaoAux : String;
    function Posiciona_Talao: Boolean;
    procedure Monta_Talao;
  public
    { Public declarations }
  end;

var
  fConsProdutividade: TfConsProdutividade;

implementation

uses UDM1, URelTalaoFB, UConsTalaoFBDet, UCancelaTalaoFB, dmdCadProduto;

{$R *.dfm}

Function TfConsProdutividade.Posiciona_Talao : Boolean;
begin
  Result := False;
  if not(tTalao.Active) or (tTalaoTALAO.AsInteger < 1) then
    begin
      ShowMessage('Não existe registro!');
      exit;
    end;
  DmTalao.tTalao.Close;
  DmTalao.Talao.CommandText := ctTalao + ' WHERE TALAO = ' + tTalaoTALAO.AsString;
  DmTalao.tTalao.Open;
  Result := True;
end;

procedure TfConsProdutividade.Monta_Talao;
begin
  tTalao.Close;
  Talao.CommandText := ctTalaoAux;
  if CurrencyEdit1.AsInteger > 0 then
    Talao.CommandText := Talao.CommandText + ' AND TALAO = ' + CurrencyEdit1.Text;
  if CurrencyEdit2.AsInteger > 0 then
    Talao.CommandText := Talao.CommandText + ' AND PEDIDO = ' + CurrencyEdit2.Text;
  if RxDBLookupCombo1.Text <> '' then
    Talao.CommandText := Talao.CommandText + ' AND CODCLIENTE = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  Talao.CommandText := Talao.CommandText + ' ORDER BY TALAO ';
  tTalao.Open;
end;

procedure TfConsProdutividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DmTalao.Owner.ClassName = Self.ClassName then
    FreeAndNil(DmTalao);
  if dmCadProduto.Owner.ClassName = Self.ClassName then
    FreeAndNil(dmCadProduto);
  Action := Cafree;
end;

procedure TfConsProdutividade.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsProdutividade.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  BitBtn4.Enabled := DM1.tUsuarioTalaoCancelar.AsBoolean;

  if not Assigned(DMTalao) then
    DMTalao := TDMTalao.Create(Self);
  if not Assigned(dmCadProduto) then
    dmCadProduto := TdmCadProduto.Create(Self);
  ctTalaoAux := Talao.CommandText;
end;

procedure TfConsProdutividade.BitBtn1Click(Sender: TObject);
begin
  Monta_Talao;
//  le_talao;
  if not mTalao.Active then
    mTalao.CreateDataSet;
  mTalao.EmptyDataSet;

  dmTalao.tTalao.Open;

  if not mTalaoSetor.Active then
    mTalaoSetor.CreateDataSet;
  mTalaoSetor.EmptyDataSet;
  while not tTalao.Eof do
  begin
    while not tTalaoSetor.Eof do
    begin
      dm1.tProduto.IndexFieldNames := 'Codigo';
      dm1.tProdutoSetor.IndexFieldNames := 'CodProduto;Item'; //posicionar no dbprodutosetor(paradox)
      if dm1.tProduto.FindKey([tTalaoCODPRODUTO.AsInteger]) then
        if dm1.tProdutoSetor.FindKey([tTalaoCODPRODUTO.AsInteger,tTalaoSetorCODSETOR.AsInteger]) then
        begin
          if mTalao.Locate('Talao',tTalaoTALAO.AsInteger,[loCaseInsensitive]) then
          begin
            mTalao.Edit;
            mTalaoTotalHorasPrevista.AsFloat := mTalaoTotalHorasPrevista.AsFloat + dm1.tProdutoSetorTempo.AsFloat / 100 * tTalaoQUANTIDADE.AsFloat;
          end
          else
          begin
            mTalao.Insert;
            mTalaoTotalHorasPrevista.AsFloat := dm1.tProdutoSetorTempo.AsFloat / 100 * tTalaoQUANTIDADE.AsFloat;
          end;
          mTalaoCancelado.AsString     := tTalaoCANCELADO.AsString;
          mTalaoCodCliente.AsString    := tTalaoCODCLIENTE.AsString;
          mTalaoCodProduto.AsString    := tTalaoCODPRODUTO.AsString;
          mTalaoDtCancelado.AsString   := tTalaoDTCANCELADO.AsString;
          mTalaoDtGerado.AsString      := tTalaoDTGERADO.AsString;
          mTalaoEncerrado.AsString     := tTalaoENCERRADO.AsString;
          mTalaoItemPedido.AsString    := tTalaoITEMPEDIDO.AsString;
          mTalaoNomeCliente.AsString   := tTalaoNOMECLIENTE.AsString;
          mTalaoNomeProduto.AsString   := tTalaoNOMEPRODUTO.AsString;
          mTalaoPedido.AsString        := tTalaoPEDIDO.AsString;
          mTalaoPedidoCliente.AsString := tTalaoPEDIDOCLIENTE.AsString;
          mTalaoProcesso.AsString      := tTalaoPROCESSO.AsString;
          mTalaoQtd.AsString           := tTalaoQUANTIDADE.AsString;
          mTalaoQtdQuebra.AsString     := tTalaoQTDQUEBRAS.AsString;
          mTalaoReferencia.AsString    := tTalaoREFERENCIA.AsString;
          mTalaoTalao.AsString         := tTalaoTALAO.AsString;
          mTalaoTotalHorasParada.AsString   := tTalaoHORASPARADA.AsString;
          mTalao.Post;

          mTalaoSetor.Insert;
          mTalaoSetorCancelado.AsString   := tTalaoCANCELADO.AsString;
          mTalaoSetorCodCliente.AsString  := tTalaoCODCLIENTE.AsString;
          mTalaoSetorCodProduto.AsString  := tTalaoCODPRODUTO.AsString;
          mTalaoSetorDtCancelado.AsString := tTalaoDTCANCELADO.AsString;
          mTalaoSetorDtGerado.AsString    := tTalaoDTGERADO.AsString;
          mTalaoSetorEncerrado.AsString   := tTalaoENCERRADO.AsString;
          mTalaoSetorItemPedido.AsString  := tTalaoITEMPEDIDO.AsString;
          mTalaoSetorNomeCliente.AsString := tTalaoNOMECLIENTE.AsString;
          mTalaoSetorNomeProduto.AsString := tTalaoNOMEPRODUTO.AsString;
          mTalaoSetorNomeSetor.AsString   := DM1.tProdutoSetorlkNomeSetor.AsString;
          mTalaoSetorPedido.AsString      := tTalaoPEDIDO.AsString;
          mTalaoSetorPedidoCliente.AsString := tTalaoPEDIDOCLIENTE.AsString;
          mTalaoSetorProcesso.AsString      := tTalaoPROCESSO.AsString;
          mTalaoSetorQtd.AsString           := tTalaoQUANTIDADE.AsString;
          mTalaoSetorQtdQuebra.AsString     := tTalaoQTDQUEBRAS.AsString;
          mTalaoSetorReferencia.AsString    := tTalaoREFERENCIA.AsString;
          mTalaoSetorTalao.AsString         := tTalaoTALAO.AsString;
          mTalaoSetorTotalHorasParada.AsString   := tTalaoHORASPARADA.AsString;
          mTalaoSetorTotalHorasPrevista.AsFloat  := dm1.tProdutoSetorTempo.AsFloat / 100 * tTalaoQUANTIDADE.AsFloat;
          mTalaoSetor.Post;

          dmTalao.tTalao.IndexFieldNames      := 'TALAO';
          dmTalao.tTalaoSetor.IndexFieldnames := 'TALAO;CODSETOR';
          dmTalao.tTalao.FindKey([tTalaoTALAO.AsInteger]);
          dmTalao.tTalaoSetor.FindKey([tTalaoSetorTalao.AsInteger,tTalaoSetorCodSetor.AsInteger]);
          if dmTalao.tTalaoMov.Locate('TALAO;CODSETOR',VarArrayOf([tTalaoSetorTALAO.AsInteger,tTalaoSetorCODSETOR.AsInteger]),[loCaseInsensitive]) then
          begin
            mTalao.Edit;
            mTalaoTotalHorasProducao.AsFloat := mTalaoTotalHorasProducao.AsFloat + DMTalao.tTalaoMovTOTALHORAS.AsFloat;
            mTalaoQtdProduzida.AsInteger     := mTalaoQtdProduzida.AsInteger + dmTalao.tTalaoMovQTDPRODUZIDO.AsInteger;
            mTalao.Post;
            mTalaoSetor.Edit;
            mTalaoSetorQtdProduzida.AsInteger     := mTalaoSetorQtdProduzida.AsInteger + dmTalao.tTalaoMovQTDPRODUZIDO.AsInteger;
            mTalaoSetorTotalHorasProducao.AsFloat := mTalaoSetorTotalHorasProducao.AsFloat + DMTalao.tTalaoMovTOTALHORAS.AsFloat;
            mTalaoSetor.Post;
          end;
        end;
      tTalaoSetor.Next;
    end;
    tTalao.Next;
  end;
 //juca


end;

procedure TfConsProdutividade.SMDBGrid1DblClick(Sender: TObject);
begin
  if not Posiciona_Talao then
    exit;
  fConsTalaoFBDet := TfConsTalaoFBDet.Create(Self);
  fConsTalaoFBDet.cdsTalaoTerceiro.Close;
  fConsTalaoFBDet.sdsTalaoTerceiro.ParamByName('TALAO').AsInteger := tTalaoTALAO.AsInteger;
  fConsTalaoFBDet.cdsTalaoTerceiro.Open;  
  fConsTalaoFBDet.ShowModal;
end;

procedure TfConsProdutividade.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  //if (tTalaoPROCESSO.AsString = 'A') and (SMDBGrid1.SelectedRows.CurrentRowSelected) then
  if (tTalaoPROCESSO.AsString = 'A') then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end
  else
  if tTalaoPROCESSO.AsString = 'E' then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if tTalaoPROCESSO.AsString = 'P' then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end
  else
  if tTalaoPROCESSO.AsString = 'T' then
    begin
      Background  := $0080FF80;
      AFont.Color := clBlack;
    end;
end;

procedure TfConsProdutividade.RxDBLookupCombo2Enter(Sender: TObject);
begin
  dmCadProduto.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

end.
