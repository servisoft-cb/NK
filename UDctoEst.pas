unit UDctoEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, rsDBUtils, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, RXDBCtrl, CurrEdit,
  RxLookup, RXCtrls, Grids, DBGrids, Db, DBTables, MemTable, DBFilter;

type
  TfDctoEst = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn6: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    RxLabel3: TRxLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxLabel4: TRxLabel;
    Edit2: TEdit;
    RxLabel5: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBGrid1: TRxDBGrid;
    RxLabel7: TRxLabel;
    Label4: TLabel;
    DBText2: TDBText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    BitBtn7: TBitBtn;
    CurrencyEdit2: TCurrencyEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    tAuxDctoGrade: TTable;
    tAuxDctoGradeCodGrade: TIntegerField;
    tAuxDctoGradePosicao: TIntegerField;
    tAuxDctoGradeQtd: TFloatField;
    dsAuxDctoGrade: TDataSource;
    tAuxDctoGradelkTamanho: TStringField;
    tAuxDctoGradelkLargura: TStringField;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxLabel6: TRxLabel;
    CurrencyEdit3: TCurrencyEdit;
    RxDBGrid2: TRxDBGrid;
    qEstoque: TQuery;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueCodCor: TIntegerField;
    qEstoqueQtd: TFloatField;
    qEstoqueLargura: TStringField;
    qEstoquelkNomeMaterial: TStringField;
    qEstoquelkNomeCor: TStringField;
    dsEstoque: TDataSource;
    qEstoquelkReferencia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tAuxDctoGradeBeforeInsert(DataSet: TDataSet);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo7Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Verifica_Total;
    procedure Limpa_Edit;
    procedure Move_Itens;
  public
    { Public declarations }
  end;

var
  fDctoEst: TfDctoEst;
  vItem : Integer;
  vEdit : String[1];

implementation

uses UDM1, UDM2, UDctoGrade, UConsEstoqueMat, UConsDcto, UCor, UMaterial;

{$R *.DFM}
procedure TfDctoEst.Move_Itens;
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.SetKey;
  DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo7.KeyValue;
  if DM1.tProduto.GotoKey then
    begin
      CurrencyEdit3.AsInteger := DM1.tProdutoCodigo.AsInteger;
      CurrencyEdit1.Enabled := not(DM1.tProdutoLancaGrade.AsBoolean);
      Edit2.Text := DM1.tProdutoUnidade.AsString;
      if (not DM1.tProdutoPrecoCor.AsBoolean) and ((BitBtn2.Tag <> 1) or (CurrencyEdit2.Value = 0)) then
        CurrencyEdit2.Value := DM1.tProdutoPrecoCusto.AsFloat;
    end;
end;

procedure TfDctoEst.Habilita;
begin
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  Panel3.Enabled       := not(Panel3.Enabled);
end;

procedure TfDctoEst.Verifica_Total;
begin
  DM1.tDctoEst.Edit;
  DM1.tDctoEstTotal.AsFloat := 0;
  DM1.tDctoEstItem.First;
  while not DM1.tDctoEstItem.Eof do
    begin
      DM1.tDctoEstTotal.AsFloat := DM1.tDctoEstTotal.AsFloat + DM1.tDctoEstItemVlrTotal.AsFloat;
      DM1.tDctoEstItem.Next;
    end;
  DM1.tDctoEst.Post;
end;

procedure TfDctoEst.Limpa_Edit;
begin
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo7.ClearValue;
  Edit2.Clear;
  CurrencyEdit1.Value := 0;
  CurrencyEdit2.Value := 0;
  CurrencyEdit3.Value := 0;
end;

procedure TfDctoEst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := Cafree;
end;

procedure TfDctoEst.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tDctoEst.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve confirmar ou cancelar antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfDctoEst.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if DM1.tUsuarioInsDctoEst.AsBoolean then
    begin
      qEstoque.Close;
      qEstoque.Open;

      DM1.tDctoEst.Refresh;
      DM1.tDctoEst.Last;
      vNumAux := DM1.tDctoEstNumDcto.AsInteger;

      DM1.tDctoEst.Insert;
      DM1.tDctoEstNumDcto.AsInteger := vNumAux + 1;
      DM1.tDctoEstData.AsDateTime   := Date;
      DM1.tDctoEstUsuario.AsString  := DM1.tUsuarioUsuario.AsString;
      DM1.tDctoEstTipo.AsString     := 'E';
      DM1.tDctoEst.Post;
      DM1.tDctoEst.Edit;
      Habilita;
      DBDateEdit1.SetFocus;
      vEdit                         := 'N';
    end
  else
    ShowMessage('Usuário '+DM1.tUsuarioUsuario.AsString+' não autorizado a fazer inserção!');
end;

procedure TfDctoEst.BitBtn2Click(Sender: TObject);
begin
  vEdit := 'N';
  if not DM1.tDctoEst.IsEmpty then
    begin
      if DM1.tUsuarioAltDctoEst.AsBoolean then
        begin
          qEstoque.Close;
          qEstoque.Open;

          DM1.tDctoEst.Edit;
          DM1.tDctoEstItem.First;
          while not DM1.tDctoEstItem.Eof do
            begin
              //*** Apaga movimento do estoque
              DM1.tEstoqueMatMov.SetKey;
              DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tDctoEstItemNumMovEst.AsInteger;
              if DM1.tEstoqueMatMov.GotoKey then
                begin
                  DM1.tEstoqueMatMovGrade.First;
                  while not DM1.tEstoqueMatMovGrade.Eof do
                    DM1.tEstoqueMatMovGrade.Delete;
                  DM1.tEstoqueMatMov.Delete;
                end;
              DM1.tDctoEstItem.Next;
            end;
          Habilita;
          DBDateEdit1.SetFocus;
          BitBtn2.Tag := 1;
        end
      else
        ShowMessage('Usuário '+DM1.tUsuarioUsuario.AsString+' não autorizado a fazer alteração!');
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfDctoEst.BitBtn3Click(Sender: TObject);
var
  vNumMovEst : Integer;
begin
  if BitBtn2.Tag = 1 then
    begin
      DM1.tDctoEst.Cancel;
      DM1.tDctoEstItem.First;
      while not DM1.tDctoEstItem.Eof do
        begin
          //*** Grava o movimento do estoque
          DM1.tEstoqueMatMov.SetKey;
          DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tDctoEstItemNumMovEst.AsInteger;
          if DM1.tEstoqueMatMov.GotoKey then
            begin
              DM1.tEstoqueMatMov.Refresh;
              DM2.tEstoqueMatMov2.Refresh;
              DM2.tEstoqueMatMov2.Last;
              vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
            end
          else
            vNumMovEst := DM1.tDctoEstItemNumMovEst.AsInteger;

          DM1.tEstoqueMatMov.Insert;
          DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
          DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tDctoEstItemCodMaterial.AsInteger;
          DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tDctoEstItemCodCor.AsInteger;
          DM1.tEstoqueMatMovLargura.AsString      := DM1.tDctoEstItemlkLargura.AsString;
          DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tDctoEstData.AsDateTime;
          DM1.tEstoqueMatMovES.AsString           := DM1.tDctoEstTipo.AsString;
          DM1.tEstoqueMatMovTipoMov.AsString      := 'DOC';
          DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tDctoEstNumDcto.AsInteger;
          DM1.tEstoqueMatMovCodCliForn.AsInteger  := 0;
          DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tDctoEstItemVlrUnit.AsFloat;
          DM1.tEstoqueMatMovQtd.AsFloat           := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstItemQtd.AsFloat));
          if DM1.tEstoqueMatMovES.AsString = 'E' then
            DM1.tEstoqueMatMovQtd2.AsFloat        := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstItemQtd.AsFloat))
          else
            DM1.tEstoqueMatMovQtd2.AsFloat        := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstItemQtd.AsFloat * -1));
          DM1.tEstoqueMatMovUnidade.AsString      := DM1.tDctoEstItemUnidade.AsString;
          if DM1.tProduto.Locate('Codigo',DM1.tDctoEstItemCodMaterial.AsInteger,([Locaseinsensitive])) then
          begin
            DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tProdutoAliqIcms.AsFloat;
            DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tProdutoAliqIPI.AsFloat;
          end
          else
          begin
            DM1.tEstoqueMatMovPercIcms.AsFloat      := 0;
            DM1.tEstoqueMatMovPercIpi.AsFloat       := 0;
          end;
          DM1.tEstoqueMatMovVlrDesconto.AsFloat   := 0;
          DM1.tEstoqueMatMov.Post;

          if DM1.tDctoEstItemCodGrade.AsInteger > 0 then
            begin
              DM1.tDctoEstGrade.First;
              while not DM1.tDctoEstGrade.Eof do
                begin
                  DM1.tEstoqueMatMovGrade.Insert;
                  DM1.tEstoqueMatMovGradeNumMov.AsInteger := vNumMovEst;
                  DM1.tEstoqueMatMovGradeTamanho.AsString := DM1.tDctoEstGradelkTamanho.AsString;
                  DM1.tEstoqueMatMovGradeQtd.AsInteger    := DM1.tDctoEstGradeQtd.AsInteger;
                  if DM1.tEstoqueMatMovES.AsString = 'E' then
                    DM1.tEstoqueMatMovGradeQtd2.AsInteger    := DM1.tDctoEstGradeQtd.AsInteger
                  else
                    DM1.tEstoqueMatMovGradeQtd2.AsInteger    := DM1.tDctoEstGradeQtd.AsInteger * -1;
                  DM1.tEstoqueMatMovGrade.Post;
                  DM1.tDctoEstGrade.Next;
                end;
            end;
          DM1.tDctoEstItem.Edit;
          DM1.tDctoEstItemNumMovEst.AsInteger := vNumMovEst;
          DM1.tDctoEstItem.Post;
          DM1.tDctoEstItem.Next;
        end;
      Verifica_Total;
    end
  else
    begin
      DM1.tDctoEstItem.First;
      while not DM1.tDctoEstItem.Eof do
        begin
          DM1.tDctoEstGrade.First;
          while not DM1.tDctoEstGrade.Eof do
            DM1.tDctoEstGrade.Delete;
          DM1.tDctoEstItem.Delete;
        end;
      DM1.tDctoEst.Delete;
    end;
  Limpa_Edit;  
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfDctoEst.BitBtn4Click(Sender: TObject);
begin
  if not DM1.tDctoEst.IsEmpty then
    begin
      if DM1.tUsuarioExcDctoEst.AsBoolean then
        begin
          if MessageDlg('Deseja realmente excluir este Dcto. de Estoque?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
            begin
              DM1.tDctoEstItem.First;
              while not DM1.tDctoEstItem.Eof do
                begin
                  //*** Apaga o movimento do estoque
                  DM1.tEstoqueMatMov.SetKey;
                  DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tDctoEstItemNumMovEst.AsInteger;
                  if DM1.tEstoqueMatMov.GotoKey then
                    begin
                      DM1.tEstoqueMatMovGrade.First;
                      while not DM1.tEstoqueMatMovGrade.Eof do
                        DM1.tEstoqueMatMovGrade.Delete;
                      DM1.tEstoqueMatMov.Delete;
                    end;
                  //***********************
                  DM1.tDctoEstGrade.First;
                  while not DM1.tDctoEstGrade.Eof do
                    DM1.tDctoEstGrade.Delete;
                  DM1.tDctoEstItem.Delete;
                end;
              DM1.tDctoEst.Delete;
            end;
        end
      else
        ShowMessage('Usuário '+ DM1.tUsuarioUsuario.AsString + ' não autorizado a fazer exclusão!');
    end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfDctoEst.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfDctoEst.BitBtn6Click(Sender: TObject);
var
  vNumMovEst : Integer;
begin
  DM1.tDctoEstItem.First;
  while not DM1.tDctoEstItem.Eof do
    begin
      //*** Gravar movimento do estoque
      if DM1.tDctoEstItemNumMovEst.AsInteger > 0 then
        begin
          DM1.tEstoqueMatMov.Refresh;
          DM1.tEstoqueMatMov.SetKey;
          DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tDctoEstItemNumMovEst.AsInteger;
          if DM1.tEstoqueMatMov.GotoKey then
            begin
              DM2.tEstoqueMatMov2.Refresh;
              DM2.tEstoqueMatMov2.Last;
              vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
            end
          else
            vNumMovEst := DM1.tDctoEstItemNumMovEst.AsInteger;
        end
      else
        begin
          DM1.tEstoqueMatMov.Refresh;
          DM2.tEstoqueMatMov2.Refresh;
          DM2.tEstoqueMatMov2.Last;
          vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
        end;
      DM1.tEstoqueMatMov.Insert;
      DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
      DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tDctoEstItemCodMaterial.AsInteger;
      DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tDctoEstItemCodCor.AsInteger;
      DM1.tEstoqueMatMovLargura.AsString      := DM1.tDctoEstItemlkLargura.AsString;
      DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tDctoEstData.AsDateTime;
      DM1.tEstoqueMatMovES.AsString           := DM1.tDctoEstTipo.AsString;
      DM1.tEstoqueMatMovTipoMov.AsString      := 'DOC';
      DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tDctoEstNumDcto.AsInteger;
      DM1.tEstoqueMatMovCodCliForn.AsInteger  := 0;
      DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tDctoEstItemVlrUnit.AsFloat;
      DM1.tEstoqueMatMovQtd.AsFloat           := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstItemQtd.AsFloat));
      if DM1.tEstoqueMatMovES.AsString = 'E' then
        DM1.tEstoqueMatMovQtd2.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstItemQtd.AsFloat))
      else
        DM1.tEstoqueMatMovQtd2.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstItemQtd.AsFloat * -1));
      DM1.tEstoqueMatMovUnidade.AsString      := DM1.tDctoEstItemUnidade.AsString;

      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := DM1.tDctoEstItemCodMaterial.AsInteger;
      if DM1.tProduto.GotoKey then
        begin        
          DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tProdutoAliqIcms.AsFloat;
          DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tProdutoAliqIPI.AsFloat;
        end
      else
        begin
          DM1.tEstoqueMatMovPercIcms.AsFloat      := 0;
          DM1.tEstoqueMatMovPercIpi.AsFloat       := 0;
        end;
      DM1.tEstoqueMatMovVlrDesconto.AsFloat   := 0;
      DM1.tEstoqueMatMov.Post;

      if DM1.tDctoEstItemCodGrade.AsInteger > 0 then
        begin
          DM1.tDctoEstGrade.First;
          while not DM1.tDctoEstGrade.Eof do
            begin
              DM1.tEstoqueMatMovGrade.Insert;
              DM1.tEstoqueMatMovGradeNumMov.AsInteger := vNumMovEst;
              DM1.tEstoqueMatMovGradeTamanho.AsString := DM1.tDctoEstGradelkTamanho.AsString;
              DM1.tEstoqueMatMovGradeQtd.AsInteger    := DM1.tDctoEstGradeQtd.AsInteger;
              if DM1.tEstoqueMatMovES.AsString = 'E' then
                DM1.tEstoqueMatMovGradeQtd2.AsInteger    := DM1.tDctoEstGradeQtd.AsInteger
              else
                DM1.tEstoqueMatMovGradeQtd2.AsInteger    := DM1.tDctoEstGradeQtd.AsInteger * -1;
              DM1.tEstoqueMatMovGrade.Post;
              DM1.tDctoEstGrade.Next;
            end;
        end;
      DM1.tDctoEstItem.Edit;
      DM1.tDctoEstItemNumMovEst.AsInteger := vNumMovEst;
      DM1.tDctoEstItem.Post;
      DM1.tDctoEstItem.Next;
    end;
  DM1.tDctoEst.Post;
  DM1.tDctoEst.Refresh;
  DM1.tDctoEstItem.Refresh;
  DM1.tDctoEstGrade.Refresh;
  DM1.tEstoqueMatMov.Refresh;
  qEstoque.Close;
  Limpa_Edit;
  Habilita;
  BitBtn2.Tag := 0;
  Verifica_Total;
  BitBtn1.SetFocus;
end;

procedure TfDctoEst.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfDctoEst.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDbLookUpCombo2.Text <> '' then
    begin
      qEstoque.Locate('CodMaterial',RxDbLookUpCombo2.KeyValue,([LocaseInsensitive]));
      RxDBLookupCombo7.KeyValue := RxDbLookUpCombo2.KeyValue;
      Move_Itens;
    end;
end;

procedure TfDctoEst.Edit2Exit(Sender: TObject);
begin
  if DM1.tProdutoLancaGrade.AsBoolean then
    begin
      fDctoGrade := tfDctoGrade.Create(Self);
      fDctoGrade.ShowModal;
    end;
end;

procedure TfDctoEst.BitBtn7Click(Sender: TObject);
var
  vGravar : Boolean;
  vCorAux : Integer;
  vItemAux : Integer;
begin
  if (CurrencyEdit1.Value <= 0) or (RxDBLookupCombo2.Text = '') or (Edit2.Text = '') then
    begin
      ShowMessage(' Há campos requeridos em branco, você deve acertar p/gravar' + #13 +
                  '"Quant.", "Material" ou "U.M."!');
      RxDBLookupCombo7.SetFocus;
    end
  else
    begin
      if not DM1.tProduto.Locate('Codigo',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]) then
        ShowMessage('Produto não cadastrado!')
      else
      if (DM1.tProdutoCor.RecordCount > 0) and (RxDBLookupCombo3.Text = '') then
        begin
          ShowMessage('Não pode ser confirmado este item s/ "Cor"!');
          RxDBLookupCombo3.SetFocus;
        end
      else
        begin
          vGravar := True;
          vCorAux := 0;
          if RxDBLookupCombo3.Text <> '' then
            vCorAux := RxDBLookupCombo3.KeyValue;
          if DM1.tDctoEstItem.Locate('CodMaterial;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,vCorAux]),[locaseinsensitive]) then
            if MessageDlg('Já existe este material informado neste documento no item ' + DM1.tDctoEstItemItem.AsString + ', confirmar assim mesmo?',mtConfirmation,[mbOK,mbNO],0) = mrNO then
              vGravar := False;
          if vGravar then
            begin
              DM1.tDctoEstItem.Refresh;
              DM1.tDctoEstItem.Last;
              vItemAux := DM1.tDctoEstItemItem.AsInteger;

              DM1.tDctoEstItem.Insert;
              DM1.tDctoEstItemNumDcto.AsInteger := DM1.tDctoEstNumDcto.AsInteger;
              if vEdit = 'S' then
                DM1.tDctoEstItemItem.AsInteger := vItem
              else
                DM1.tDctoEstItemItem.AsInteger := vItemAux + 1;
              DM1.tDctoEstItemCodMaterial.AsInteger := RxDBLookupCombo2.KeyValue;
              if RxDBLookupCombo3.Text <> '' then
                DM1.tDctoEstItemCodCor.AsInteger    := RxDBLookupCombo3.KeyValue
              else
                DM1.tDctoEstItemCodCor.AsInteger    := 0;
              DM1.tDctoEstItemQtd.AsFloat           := CurrencyEdit1.Value;
              DM1.tDctoEstItemUnidade.AsString      := Edit2.Text;
              DM1.tDctoEstItemVlrUnit.AsFloat       := CurrencyEdit2.Value;
              DM1.tDctoEstItemVlrTotal.AsFloat      := DM1.tDctoEstItemVlrUnit.AsFloat * DM1.tDctoEstItemQtd.AsFloat;
              DM1.tDctoEstTotal.AsFloat             := DM1.tDctoEstTotal.AsFloat + DM1.tDctoEstItemVlrTotal.AsFloat;
              tAuxDctoGrade.First;
              if not tAuxDctoGrade.IsEmpty then
                DM1.tDctoEstItemCodGrade.AsInteger  := tAuxDctoGradeCodGrade.AsInteger
              else
                DM1.tDctoEStItemCodGrade.AsInteger  := 0;
              DM1.tDctoEStItem.Post;
              if DM1.tProdutoLancaGrade.AsBoolean then
                begin
                  tAuxDctoGrade.First;
                  while not tAuxDctoGrade.IsEmpty do
                    begin
                      DM1.tDctoEstGrade.Insert;
                      DM1.tDctoEstGradeNumDcto.AsInteger  := DM1.tDctoEstNumDcto.AsInteger;
                      DM1.tDctoEstGradeItem.AsInteger     := DM1.tDctoEstItemItem.AsInteger;
                      DM1.tDctoEstGradeCodGrade.AsInteger := tAuxDctoGradeCodGrade.AsInteger;
                      DM1.tDctoEstGradePosicao.AsInteger  := tAuxDctoGradePosicao.AsInteger;
                      DM1.tDctoEstGradeQtd.AsInteger      := tAuxDctoGradeQtd.AsInteger;
                      DM1.tDctoEstGrade.Post;
                      tAuxDctoGrade.Delete;
                    end;
                end;
              Limpa_Edit;
              vEdit       := 'N';
            end;
          CurrencyEdit3.SetFocus;
        end;
    end;
end;

procedure TfDctoEst.SpeedButton1Click(Sender: TObject);
var
  vAux : Real;
begin
  if not DM1.tDctoEstItem.IsEmpty then
    begin
      if RxDBLookupCombo2.Text = '' then
        begin
          vEdit                              := 'S';
          vAux                               := 0;
          RxDBLookupCombo7.KeyValue          := DM1.tDctoEstItemCodMaterial.AsInteger;
          RxDBLookupCombo2.KeyValue          := DM1.tDctoEstItemCodMaterial.AsInteger;
          if DM1.tDctoEstItemCodCor.AsInteger > 0 then
            RxDBLookupCombo3.KeyValue        := DM1.tDctoEstItemCodCor.AsInteger;
          Edit2.Text                         := DM1.tDctoEstItemUnidade.AsString;
          CurrencyEdit1.Value                := DM1.tDctoEstItemQtd.AsFloat;
          CurrencyEdit2.Value                := DM1.tDctoEstItemVlrUnit.AsFloat;
          vItem                              := DM1.tDctoEstItemItem.AsInteger;
          tAuxDctoGrade.First;
          while not tAuxDctoGrade.EOF do
            tAuxDctoGrade.Delete;
          DM1.tDctoEstGrade.First;
          while not DM1.tDctoEstGrade.EOF do
            begin
              tAuxDctoGrade.Insert;
              tAuxDctoGradeCodGrade.AsInteger := DM1.tDctoEstGradeCodGrade.AsInteger;
              tAuxDctoGradePosicao.AsInteger  := DM1.tDctoEstGradePosicao.AsInteger;
              tAuxDctoGradeQtd.asFloat        := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstGradeQtd.AsFloat));
              vAux                            := StrToFloat(FormatFloat('0.00000',vAux)) + StrToFloat(FormatFloat('0.00000',DM1.tDctoEstGradeQtd.AsFloat));
              tAuxDctoGrade.Post;
              DM1.tDctoEstGrade.Delete;
            end;
          if vAux > 0 then
            CurrencyEdit1.Value := vAux;
          DM1.tDctoEstTotal.AsFloat := DM1.tDctoEstTotal.AsFloat - DM1.tDctoEstItemVlrTotal.AsFloat;
          DM1.tDctoEstItem.Delete;
          DM1.tDctoEstItem.Refresh;
          RxDBLookupCombo7.SetFocus;
        end
      else
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfDctoEst.SpeedButton2Click(Sender: TObject);
begin
  Limpa_Edit;
  RxDBLookupCombo2.SetFocus;
  vEdit       := 'N';
  RxDBLookupCombo7.SetFocus;
end;

procedure TfDctoEst.SpeedButton3Click(Sender: TObject);
begin
  if not DM1.tDctoEstItem.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este material do Dcto. de Estoque?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
        begin
          while not Dm1.tDctoEstGrade.IsEmpty do
            Dm1.tDctoEstGrade.Delete;
          DM1.tDctoEstTotal.AsFloat := DM1.tDctoEstTotal.AsFloat - DM1.tDctoEstItemVlrTotal.AsFloat;
          DM1.tDctoEstItem.Delete;
          DM1.tDctoEstItem.Refresh;
        end;
    end
  else
    ShowMessage('Não há o que apagar do Dcto. de Estoque!');
end;

procedure TfDctoEst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tDctoEst.State in [dsBrowse]) then
    begin
      fConsDcto := TfConsDcto.Create(Self);
      fConsDcto.ShowModal;
    end;
  if Key = Vk_F3 then
    begin
      if DM1.tUsuarioConsEstoqueMat.AsBoolean then
        begin
          fConsEstoqueMat := TfConsEstoqueMat.Create(Self);
          fConsEstoqueMat.ShowModal;
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir esta consulta!');
    end;
end;

procedure TfDctoEst.tAuxDctoGradeBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  icount := tAuxDctoGrade.RecordCount;

  if icount >= DM1.tGradeItem.RecordCount then
    begin
      fDctoGrade.BitBtn5.SetFocus;
      Abort;
    end;
end;

procedure TfDctoEst.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfDctoEst.RxDBLookupCombo7Exit(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      qEstoque.Locate('CodMaterial',RxDbLookUpCombo7.KeyValue,([LocaseInsensitive]));
      RxDBLookupCombo2.KeyValue := RxDBLookupCombo7.KeyValue;
      Move_itens;
    end;
end;

procedure TfDctoEst.RxDBLookupCombo3Enter(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo7.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          if DM1.tProdutoCor.RecordCount < 1 then
            begin
              Edit2.SetFocus;
              RxDBLookupCombo3.ClearValue;
            end;
        end
      else
        RxDBLookupCombo7.SetFocus;
    end
  else
    RxDBLookupCombo7.SetFocus;
end;

procedure TfDctoEst.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) then
      begin
        CurrencyEdit2.Value := DM1.tProdutoCorPrCusto.AsFloat;
        qEstoque.Locate('CodMaterial;CodCor',VarArrayOf([RxDBLookupCombo2.KeyValue,RxDBLookupCombo3.KeyValue]),[locaseinsensitive]);
      end;
end;

procedure TfDctoEst.SpeedButton5Click(Sender: TObject);
begin
  fMaterial := TfMaterial.Create(Self);
  fMaterial.ShowModal;
  RxDBLookupCombo2.SetFocus;
end;

procedure TfDctoEst.CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit3.AsInteger > 0 then
        RxDBLookupCombo2.SetFocus
      else
        RxDBLookupCombo7.SetFocus;
    end;
end;

procedure TfDctoEst.CurrencyEdit3Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit3.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit3.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo2.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo7.KeyValue := DM1.tProdutoCodigo.AsInteger;
          qEstoque.Locate('CodMaterial',DM1.tProdutoCodigo.AsInteger,([LocaseInsensitive]));
        end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit3.SetFocus;
          CurrencyEdit3.Clear;
        end;
    end;
end;

procedure TfDctoEst.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);

  oDBUtils.ActiveDataSet(True,dm1.tEstoqueMatMov,Name);
  oDBUtils.ActiveDataSet(True,dm1.tEstoqueMatMovGrade,Name);
  oDBUtils.ActiveDataSet(True,dm1.tDctoEstGrade,Name);
end;

end.
