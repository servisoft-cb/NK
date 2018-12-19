unit UGerarTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, Db, DBTables, ExtCtrls, ALed,
  Mask, DBCtrls, DBFilter, SMDBGrid, ToolEdit, CurrEdit, UDMTalao, dmdCadDefeitos, dmdCadParadas;

type
  TfGerarTalao = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vTalao : Integer;
    vContador : Integer;
    FDMTalao : TDMTalao;
    FdmCadDefeitos : TdmCadDefeitos;
    FdmCadParadas : TdmCadParadas;

    procedure Grava_Talao(Qtd: Integer);
    procedure Grava_TalaoSetor;
    procedure Le_tPedidoItem;
  public
    { Public declarations }
  end;

var
  fGerarTalao: TfGerarTalao;

implementation

uses UCancelaTalaoFB, DmdDatabase, UDM1, UConsPedidoPendLotes, UConsTalaoFB,
  rsDBUtils;

{$R *.DFM}

procedure TfGerarTalao.Grava_TalaoSetor;
begin
  FDMTalao.tTalaoSetor.Insert;
  FDMTalao.tTalaoSetorTalao.AsInteger       := vTalao;
  //FDMTalao.tTalaoSetorCodSetor.AsInteger    := DM1.tProdutoSetorCodSetor.AsInteger;
  FDMTalao.tTalaoSetorCodSetor.AsInteger    := DM1.tParametrosSetorCodSetor.AsInteger;
  FDMTalao.tTalaoSetorProcesso.AsString     := 'N';
  FDMTalao.tTalaoSetorTOTALHORAS.AsFloat    := 0;
  FDMTalao.tTalaoSetorHORASPARADAS.AsFloat  := 0;
  FDMTalao.tTalaoSetorHORASPRODUCAO.AsFloat := 0;
  FDMTalao.tTalaoSetor.Post;
end;

procedure TfGerarTalao.Le_tPedidoItem;
begin
  FDMTalao.tTalao.Close;
  FDMTalao.Talao.CommandText := ctTalao
                             + ' WHERE TALAO = 0';
  FDMTalao.tTalao.Open;

  vContador := 0;
  vTalao    := dmDatabase.Registro_Max('TALAO','TALAO');
  DM1.tProduto.IndexFieldNames := 'Codigo';
  //vTalao := DM2.tTalao2Talao.AsInteger;
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
    begin
      if DM1.tPedidoItemGerarTalao.AsBoolean then
      begin
        if (CheckBox1.Checked) or ((not DM1.tPedidoItemCancelado.AsBoolean) and (DM1.tPedidoItemGerarTalao.AsBoolean){ and (DM1.tPedidoItemNumTalao.AsInteger < 1)}) then
          begin
            if not DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]) then
              begin
                ShowMessage('Não encontrou o produto ' + DM1.tPedidoItemCodProduto.AsString);
                Break;
              end
            else
              begin
                try
                  Grava_Talao(DM1.tPedidoItemQtdPares.AsInteger);
                  if not CheckBox1.Checked then
                  begin
                    DM1.tPedidoItem.Edit;
                    DM1.tPedidoItemNumTalao.AsInteger  := vTalao;
                    DM1.tPedidoItemTalaoNovo.AsBoolean := True;
                    DM1.tPedidoItem.Post;
                  end;
                  vContador := vContador + 1;
                except
                  on E: Exception do
                    ShowMessage('Erro ao gerar talão do item ' + Dm1.tPedidoItemItem.AsString + ', ' + E.Message);
                end;
              end;
          end;
      end;
      DM1.tPedidoItem.Next;
    end;
  ShowMessage('Talões Gerados: ' + IntToStr(vContador));
end;

procedure TfGerarTalao.Grava_Talao(Qtd: Integer);
begin
  inc(vTalao);
  FDMTalao.tTalao.Insert;

  FDMTalao.tTalaoTALAO.AsInteger         := vTalao;
  FDMTalao.tTalaoCODPRODUTO.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
  FDMTalao.tTalaoCODCOR.AsInteger        := DM1.tPedidoItemCodCor.AsInteger;
  FDMTalao.tTalaoCODGRADE.AsInteger      := DM1.tPedidoItemCodGrade.AsInteger;
  FDMTalao.tTalaoQUANTIDADE.AsInteger    := Qtd;
  FDMTalao.tTalaoQTDEMPROCESSO.AsInteger := FDMTalao.tTalaoQUANTIDADE.AsInteger;
  FDMTalao.tTalaoPEDIDO.AsInteger        := DM1.tPedidoItemPedido.AsInteger;
  FDMTalao.tTalaoITEMPEDIDO.AsInteger    := DM1.tPedidoItemItem.AsInteger;
  FDMTalao.tTalaoPEDIDOCLIENTE.AsString  := DM1.tPedidoPedidoCliente.AsString;
  FDMTalao.tTalaoCODCLIENTE.AsInteger    := DM1.tPedidoCodCliente.AsInteger;
  FDMTalao.tTalaoPRODUZIDO.AsString      := 'N';
  FDMTalao.tTalaoNUMMOVEST.AsInteger     := 0;
  FDMTalao.tTalaoQTDPRODUZIDA.AsInteger  := 0;
  FDMTalao.tTalaoCANCELADO.AsString      := 'N';
  FDMTalao.tTalaoDTGERADO.AsDateTime     := Date;
  FDMTalao.tTalaoHRGERADO.AsDateTime     := Time;
  FDMTalao.tTalaoIMPRIMIR.AsString       := 'N';
  FDMTalao.tTalaoENCERRADO.AsString      := 'N';
  FDMTalao.tTalaoPROCESSO.AsString       := 'N';
  FDMTalao.tTalao.Post;

  {DM1.tProdutoSetor.First;
  while not DM1.tProdutoSetor.Eof do
    begin
      Grava_TalaoSetor;
      DM1.tProdutoSetor.Next;
    end;}

  DM1.tParametrosSetor.First;
  while not DM1.tParametrosSetor.Eof do
  begin
    Grava_TalaoSetor;
    DM1.tParametrosSetor.Next;
  end;

  FDMTalao.tTalao.ApplyUpdates(0);
end;

procedure TfGerarTalao.FormShow(Sender: TObject);
begin
  FDMTalao       := TDMTalao.Create(nil);
  FDmCadDefeitos := TDmCadDefeitos.Create(Self);
  FDmCadParadas  := TDmCadParadas.Create(Self);

  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,DM1.tPedido,Name);
  oDBUtils.ActiveDataSet(True,DM1.tPedidoItem,Name);
  oDBUtils.ActiveDataSet(True,DM1.tProduto,Name);
  oDBUtils.ActiveDataSet(True,DM1.tProdutoSetor,Name);

  DM1.tParametros.Open;
  DM1.tParametrosSetor.Open;
end;

procedure TfGerarTalao.BitBtn1Click(Sender: TObject);
begin
  if (CurrencyEdit1.AsInteger < 1) or (SMDBGrid1.DataSource = nil) then
    begin
      ShowMessage('Não foi informado o pedido!');
      Exit;
    end;

  Le_tPedidoItem;
end;

procedure TfGerarTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);

  FreeAndNil(FDMTalao);
  FreeAndNil(FdmCadDefeitos);
  FreeAndNil(FdmCadParadas);

  Action := Cafree;
end;

procedure TfGerarTalao.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit1.AsInteger > 0) then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      if not DM1.tPedido.FindKey([CurrencyEdit1.AsInteger]) then
        begin
          ShowMessage('Pedido não encontrado!');
          exit;
        end;
      SMDBGrid1.DataSource := DM1.dsPedidoItem;
      BitBtn1.Enabled      := True;
    end;

end;

procedure TfGerarTalao.CurrencyEdit1Change(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  BitBtn1.Enabled      := False;
end;

procedure TfGerarTalao.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tPedidoItemNumTalao.AsInteger > 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if not DM1.tPedidoItemGerarTalao.AsBoolean then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end;
end;

procedure TfGerarTalao.BitBtn2Click(Sender: TObject);
begin
  fConsPedidoPendLotes := TfConsPedidoPendLotes.Create(Self);
  fConsPedidoPendLotes.ShowModal;
  CurrencyEdit1.SetFocus;
end;

procedure TfGerarTalao.BitBtn3Click(Sender: TObject);
begin
  fConsTalaoFB := TfConsTalaoFB.Create(Self);
  fConsTalaoFB.ShowModal;
end;

procedure TfGerarTalao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    CheckBox1.Enabled := not(CheckBox1.Enabled);
end;

end.
