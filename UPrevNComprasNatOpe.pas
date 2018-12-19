unit UPrevNComprasNatOpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, Db, DBTables,
  MemTable, RXLookup, DBFilter, ComCtrls, Grids, DBGrids, DBClient, Variants, ShellApi;

type
  TfPrevNComprasNatOpe = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Bevel1: TBevel;
    Query1: TQuery;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label5: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    qMaoObra: TQuery;
    qItens: TQuery;
    qMaoObraNumNEntr: TIntegerField;
    qMaoObraCodForn: TIntegerField;
    qMaoObraVlrTotal: TFloatField;
    qMaoObraCodNatOper: TIntegerField;
    qItensCodForn: TIntegerField;
    qItensNumNEntr: TIntegerField;
    qItensVlrTotalItens: TFloatField;
    qItensVlrDesc: TFloatField;
    qItensVlrIcms: TFloatField;
    qItensBaseIcms: TFloatField;
    qItensCodNatOper: TIntegerField;
    qTotalItens: TQuery;
    qTotalItensVlrIcms: TFloatField;
    qTotalItensBaseIcms: TFloatField;
    qTotalItensVlrTotalItens: TFloatField;
    qTotalItensCodForn: TIntegerField;
    qTotalItensNumNEntr: TIntegerField;
    qTotalMObra: TQuery;
    qTotalMObraCodForn: TIntegerField;
    qTotalMObraNumNEntr: TIntegerField;
    qTotalMObraVlrTotal: TFloatField;
    mAuxNatureza: TClientDataSet;
    mAuxNaturezaNumNota: TIntegerField;
    mAuxNaturezaCodFornecedor: TIntegerField;
    mAuxNaturezaDtEmissao: TDateField;
    mAuxNaturezaCodNatOper: TIntegerField;
    mAuxNaturezaUF: TStringField;
    mAuxNaturezaNomeFornecedor: TStringField;
    mAuxNaturezaVlrTotal: TFloatField;
    mAuxNaturezaVlrMercadoria: TFloatField;
    mAuxNaturezaBaseICMS: TFloatField;
    mAuxNaturezaVlrICMS: TFloatField;
    mAuxNaturezaVlrOutras: TFloatField;
    mAuxResumo: TClientDataSet;
    mAuxResumoCodNatOper: TIntegerField;
    mAuxResumoVlrTotal: TFloatField;
    mAuxResumoVlrMercadoria: TFloatField;
    mAuxResumoVlrBase: TFloatField;
    mAuxResumoVlrIcms: TFloatField;
    mAuxResumoVlrOutras: TFloatField;
    dsAuxNatureza: TDataSource;
    dsmAuxResumo: TDataSource;
    RadioGroup2: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure mAuxNaturezaNewRecord(DataSet: TDataSet);
    procedure mAuxResumoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vBaseICMSAux, vVlrIcmsAux, vOutrasAux, vVlrFreteAux, vVlrDescontoAux, vVlrTotalAux, vVlrMercadoriaAux : Real;

    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_TotalNatOper;
    procedure Imprime_Rodape;
    procedure Imprime_Resumo;
    procedure Grava_Aux(Tipo : String; VlrTotal, VlrMercadoria, VlrBaseICMS, VlrICMS, VlrFrete, VlrOutrasDesp : Real); //N= Nota   M= Mão de Obra   I= Itens
    procedure Monta_SQLs;
    procedure Filtra_SQLs;
    procedure Verifica_Totais;
    procedure Controle_Imp;
  public
    vVlrTotal, vVlrMercadoria, vBase, vIcms, vOutras, vFrete : Real;
    { Public declarations }
  end;

var
  fPrevNComprasNatOpe: TfPrevNComprasNatOpe;
  linha, pagina, vCodNatOper, vItem : Integer;
  F: TextFile;
  TextoDet : String;

implementation

uses UDM1, UEscImpressora, VarUtils, URelNComprasNatOpe;

{$R *.DFM}

procedure TfPrevNComprasNatOpe.Controle_Imp;
var
  vPercDescAux : Real;
  vPercFreteAux, vPercOutrasDesp : Real;
  vAux, vAux2 : Real;
begin
  vVlrTotal      := 0;
  vvlrMercadoria := 0;
  vBase          := 0;
  vICMS          := 0;
  vOutras        := 0;
  Screen.Cursor  := crHourglass;

  DM1.tNEntrada.Filtered := False;
  if RxDBLookupCombo2.Text <> '' then
    Dm1.tNEntrada.Filter   := 'DtEntrada >= '''+DateEdit1.Text+''' and DtEntrada <= '''+DateEdit2.Text+''' and CodForn = '''+IntToStr(RxDBLookupCombo2.KeyValue)+''''
  else
    Dm1.tNEntrada.Filter   := 'DtEntrada >= '''+DateEdit1.Text+''' and DtEntrada <= '''+DateEdit2.Text+'''';
  Dm1.tNEntrada.Filtered := True;
  DM1.tNEntrada.Refresh;
  DM1.tNEntrada.First;
  while not DM1.tNEntrada.Eof do
    begin
      Filtra_SQLs;
      vPercDescAux    := 0;
      vPercFreteAux   := 0;
      vPercOutrasDesp := 0;
      //if DM1.tNEntradaVlrDesc.AsFloat > 0 then
      //  vPercDescAux := StrToFloat(FormatFloat('0.000000',(DM1.tNEntradaVlrDesc.AsFloat / DM1.tNEntradaVlrTotalNEntr.AsFloat) * 100));
      //if DM1.tNEntradaVlrFrete.AsFloat > 0 then
      //  vPercFreteAux := StrToFloat(FormatFloat('0.000000',(DM1.tNEntradaVlrFrete.AsFloat / (DM1.tNEntradaVlrTotalNEntr.AsFloat - DM1.tNEntradaOutrasDesp.AsFloat)) * 100));
      //if DM1.tNEntradaOutrasDesp.AsFloat > 0 then
      //  vPercOutrasDesp := StrToFloat(FormatFloat('0.000000',(DM1.tNEntradaOutrasDesp .AsFloat / (DM1.tNEntradaVlrTotalNEntr.AsFloat -DM1.tNEntradaVlrFrete.AsFloat)) * 100));
      if DM1.tNEntradaOutrasDesp.AsFloat > 0 then
        vPercOutrasDesp := StrToFloat(FormatFloat('0.000000',(DM1.tNEntradaOutrasDesp .AsFloat / (DM1.tNEntradaVlrTotalNEntr.AsFloat)) * 100));
      vBase          := StrToFloat(FormatFloat('0.00',DM1.tNEntradaBaseIcms.AsFloat));
      vIcms          := StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrIcms.AsFloat));
      vOutras        := StrToFloat(FormatFloat('0.00',DM1.tNEntradaOutrasDesp.AsFloat));
      vVlrTotal      := StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat));
      //vFrete         := StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrFrete.AsFloat));
      vFrete         := 0;
      qMaoObra.First;
      while not qMaoObra.Eof do
        begin
          vCodNatOper  := qMaoObraCodNatOper.AsInteger;
          vVlrTotalAux := StrToFloat(FormatFloat('0.00',qMaoObraVlrTotal.AsFloat));
          vAux         := 0;
          if vPercDescAux > 0 then
            vAux := StrToFloat(FormatFloat('0.00',(qMaoObraVlrTotal.AsFloat * vPercDescAux) / 100));
          vVlrTotalAux := StrToFloat(FormatFloat('0.00',qMaoObraVlrTotal.AsFloat - vAux));
          vAux  := 0;
          vAux2 := 0;
          //if qItens.RecordCount < 1 then
            //begin
              if vPercFreteAux > 0 then
                vAux := StrToFloat(FormatFloat('0.00',(vVlrTotalAux * vPercFreteAux) / 100));
              if vPercOutrasDesp > 0 then
                vAux2 := StrToFloat(FormatFloat('0.00',(vVlrTotalAux * vPercOutrasDesp) / 100));
            //end;
          vVlrTotalAux := vVlrTotalAux + vAux + vAux2;
          Grava_Aux('M',vVlrTotalAux,0,0,0,vAux,vAux2);
          qMaoObra.Next;
        end;
      if qItens.RecordCount < 1 then
        begin
          if StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrTotalAux)) then
            begin
              vCodNatOper := DM1.tNEntradaCodNatOper.AsInteger;
              vAux        := StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat)) - StrToFloat(FormatFloat('0.00',vVlrTotalAux));
              Grava_Aux('N',vAux,0,DM1.tNEntradaBaseIcms.AsFloat,DM1.tNEntradaVlrIcms.AsFloat,vFrete,vOutras);
            end;
        end
      else
        begin
          qItens.First;
          while not qItens.Eof do
            begin
              vBaseICMSAux      := StrToFloat(FormatFloat('0.00',qItensBaseIcms.AsFloat));
              vVlrIcmsAux       := StrToFloat(FormatFloat('0.00',qItensVlrIcms.AsFloat));
              vVlrTotalAux      := StrToFloat(FormatFloat('0.00',qItensVlrTotalItens.AsFloat));
              vVlrMercadoriaAux := StrToFloat(FormatFloat('0.00',qItensVlrTotalItens.AsFloat));
              vCodNatOper       := qItensCodNatOper.AsInteger;
              vAux              := 0;
              if vPercDescAux > 0 then
                begin
                  vAux := StrToFloat(FormatFloat('0.00',(qItensVlrTotalItens.AsFloat * vPercDescAux) / 100));
                  vVlrTotalAux      := vVlrTotalAux - vAux;
                  vVlrMercadoriaAux := vVlrMercadoriaAux - vAux;
                  if qItensBaseIcms.AsFloat > 0 then
                    begin
                      vAux  := StrToFloat(FormatFloat('0.00',(qItensBaseIcms.AsFloat * vPercDescAux) / 100));
                      vBaseICMSAux := vBaseICMSAux - vAux;
                    end;
                  if qItensVlrIcms.AsFloat > 0 then
                    begin
                      vAux  := StrToFloat(FormatFloat('0.00',(qItensVlrIcms.AsFloat * vPercDescAux) / 100));
                      vVlrIcmsAux := vVlrIcmsAux - vAux;
                    end;
                end;
              vAux  := 0;
              vAux2 := 0;
              if vPercFreteAux > 0 then
                vAux := StrToFloat(FormatFloat('0.00',(vVlrTotalAux * vPercFreteAux) / 100));
              if vPercOutrasDesp > 0 then
                vAux2 := StrToFloat(FormatFloat('0.00',(vVlrTotalAux * vPercOutrasDesp) / 100));
              vVlrTotalAux := vVlrTotalAux + vAux + vAux2;
              Grava_Aux('I',vVlrTotalAux,vVlrMercadoriaAux,vBaseICMSAux,vVlrIcmsAux,vAux,vAux2);
              qItens.Next;
            end;
        end;
      Verifica_Totais;
      DM1.tNEntrada.Next;
    end;
end;

procedure TfPrevNComprasNatOpe.Verifica_Totais;
var
  vAux : Real;
  //vBAux, vIAux, vTAux, vFAux, vOAux : Real;
  vBAux, vIAux, vTAux  : Real;
  i : Integer;
begin
  //if (StrToFloat(FormatFloat('0.00',vVlrTotal)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat))) or (StrToFloat(FormatFloat('0.00',vBase)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaBaseIcms.AsFloat))) or
  //   (StrToFloat(FormatFloat('0.00',vIcms)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrIcms.AsFloat))) then
  if (StrToFloat(FormatFloat('0.00',vVlrTotal)) <> 0) or (StrToFloat(FormatFloat('0.00',vBase)) <> 0) or
     (StrToFloat(FormatFloat('0.00',vIcms)) <> 0) then
    begin
      vBAux := 0;
      vIAux := 0;
      vTAux := 0;
      //vFAux := 0;
      //vOAux := 0;
      mAuxNatureza.Filtered := False;
      mAuxNatureza.Filter   := 'NumNota = '''+DM1.tNEntradaNumNEntr.AsString+''' and CodFornecedor = '''+DM1.tNEntradaCodForn.AsString+'''';
      mAuxNatureza.Filtered := True;
      //if StrToFloat(FormatFloat('0.00',vVlrTotal)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat)) then
      if StrToFloat(FormatFloat('0.00',vVlrTotal)) <> 0 then
        vTAux := StrToFloat(FormatFloat('0.00',vVlrTotal / mAuxNatureza.RecordCount));
      //if StrToFloat(FormatFloat('0.00',vBase)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaBaseIcms.AsFloat)) then
      if StrToFloat(FormatFloat('0.00',vBase)) <> 0 then
        begin
          vBAux := StrToFloat(FormatFloat('0.00',vBase / mAuxNatureza.RecordCount));
          if StrToFloat(FormatFloat('0.00',vBAux)) = 0 then
            vBAux := vBase;
        end;
      //if StrToFloat(FormatFloat('0.00',vIcms)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrIcms.AsFloat)) then
      if StrToFloat(FormatFloat('0.00',vIcms)) <> 0 then
        begin
          vIAux := StrToFloat(FormatFloat('0.00',vIcms / mAuxNatureza.RecordCount));
          if StrToFloat(FormatFloat('0.00',vIAux)) = 0 then
            vIAux := vIcms;
        end;
      //if StrToFloat(FormatFloat('0.00',vOutras)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaOutrasDesp.AsFloat)) then
      //if StrToFloat(FormatFloat('0.00',vOutras)) <> 0 then
      //  vOAux := StrToFloat(FormatFloat('0.00',vOutras / mAuxNatureza.RecordCount));
      //if StrToFloat(FormatFloat('0.00',vFrete)) <> StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrFrete.AsFloat)) then
      //if StrToFloat(FormatFloat('0.00',vFrete)) <> 0 then
      //  vFAux := StrToFloat(FormatFloat('0.00',vFrete / mAuxNatureza.RecordCount));
      i := 0;
      mAuxNatureza.First;
      while not mAuxNatureza.Eof do
        begin
          inc(i);
          mAuxNatureza.Edit;
          if i = mAuxNatureza.RecordCount then
            begin
              vTAux := vVlrTotal;
              vBAux := vBase;
              vIAux := vIcms;
              //vOAux := vOutras;
              //vFAux := vFrete;
            end;
          if (StrToFloat(FormatFloat('0.00',vBase)) <> 0) and
             ((StrToFloat(FormatFloat('0.00',mAuxNaturezaBaseICMS.AsFloat)) > 0) or (i = mAuxNatureza.RecordCount)) then
            mAuxNaturezaBaseICMS.AsFloat := mAuxNaturezaBaseICMS.AsFloat + vBAux;
          if StrToFloat(FormatFloat('0.00',vVlrTotal)) <> 0 then
            mAuxNaturezaVlrTotal.AsFloat := mAuxNaturezaVlrTotal.AsFloat + vTAux;
          if (StrToFloat(FormatFloat('0.00',vIcms)) <> 0) and
             ((StrToFloat(FormatFloat('0.00',mAuxNaturezaVlrICMS.AsFloat)) > 0) or (i = mAuxNatureza.RecordCount)) then
            mAuxNaturezaVlrICMS.AsFloat := mAuxNaturezaVlrICMS.AsFloat + vIAux;
          //if StrToFloat(FormatFloat('0.00',vOutras)) <> 0 then
          //  mAuxNaturezaVlrTotal.AsFloat := mAuxNaturezaVlrTotal.AsFloat + vOAux;
          //if StrToFloat(FormatFloat('0.00',vFAux)) <> 0 then
          //  mAuxNaturezaVlrTotal.AsFloat := mAuxNaturezaVlrTotal.AsFloat + vFAux;
          vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal - vTAux));
          vBase     := StrToFloat(FormatFloat('0.00',vBase - vBAux));
          vIcms     := StrToFloat(FormatFloat('0.00',vIcms - vIAux));
          //vOutras   := StrToFloat(FormatFloat('0.00',vOutras - vOAux));
          //vFrete    := StrToFloat(FormatFloat('0.00',vFrete - vFAux));
          mAuxNaturezaVlrOutras.AsFloat := StrToFloat(FormatFloat('0.00',mAuxNaturezaVlrTotal.AsFloat - mAuxNaturezaBaseICMS.AsFloat));
          mAuxNatureza.Post;

          if mAuxResumo.Locate('CodNatOper',mAuxNaturezaCodNatOper.AsInteger,([LocaseInsensitive])) then
            mAuxResumo.Edit
          else
            begin
              mAuxResumo.Insert;
              mAuxResumoCodNatOper.AsInteger := mAuxNaturezaCodNatOper.AsInteger;
            end;
          mAuxResumoVlrTotal.AsFloat      := mAuxResumoVlrTotal.AsFloat + vTAux;
          mAuxResumoVlrBase.AsFloat       := mAuxResumoVlrBase.AsFloat + vBAux;
          mAuxResumoVlrIcms.AsFloat       := mAuxResumoVlrIcms.AsFloat + vIAux;
          mAuxResumoVlrOutras.AsFloat     := mAuxResumoVlrTotal.AsFloat - mAuxResumoVlrBase.AsFloat;
          mAuxResumo.Post;
          if (StrToFloat(FormatFloat('0.00',vVlrTotal)) = 0) then
            vTAux := 0;
          if (StrToFloat(FormatFloat('0.00',vBase)) = 0) then
            vBAux := 0;
          if (StrToFloat(FormatFloat('0.00',vIcms)) = 0) then
            vIAux := 0;
          //if (StrToFloat(FormatFloat('0.00',vOutras)) = 0) then
          //  vOAux := 0;
          //if (StrToFloat(FormatFloat('0.00',vFrete)) = 0) then
          //  vFAux := 0;
          mAuxNatureza.Next;
        end;
    end;
  mAuxNatureza.Filtered := False;
end;

procedure TfPrevNComprasNatOpe.Filtra_SQLs;
begin
  qMaoObra.Filtered := False;
  qMaoObra.Filter   := 'NumNEntr = '''+DM1.tNEntradaNumNEntr.AsString+''' and CodForn = '''+DM1.tNEntradaCodForn.AsString+'''';
  qMaoObra.Filtered := True;

  qItens.Filtered   := False;
  qItens.Filter     := 'NumNEntr = '''+DM1.tNEntradaNumNEntr.AsString+''' and CodForn = '''+DM1.tNEntradaCodForn.AsString+'''';
  qItens.Filtered   := True;

  qTotalItens.Filtered := False;
  qTotalItens.Filter   := 'NumNEntr = '''+DM1.tNEntradaNumNEntr.AsString+''' and CodForn = '''+DM1.tNEntradaCodForn.AsString+'''';
  qTotalItens.Filtered := True;

  qTotalMObra.Filtered := False;
  qTotalMObra.Filter   := 'NumNEntr = '''+DM1.tNEntradaNumNEntr.AsString+''' and CodForn = '''+DM1.tNEntradaCodForn.AsString+'''';
  qTotalMObra.Filtered := True;
end;


procedure TfPrevNComprasNatOpe.Monta_SQLs;
begin
  qMaoObra.Close;
  qMaoObra.Open;

  qItens.Close;
  qItens.Open;

  qTotalItens.Close;
  qTotalItens.Open;

  qTotalMObra.Close;
  qTotalMObra.Open;
end;

procedure TfPrevNComprasNatOpe.Grava_Aux(Tipo : String; VlrTotal, VlrMercadoria, VlrBaseICMS, VlrICMS, VlrFrete, VlrOutrasDesp : Real);
begin
  DM1.tNatOperacao.IndexFieldNames := 'Codigo';
  DM1.tNatOperacao.SetKey;
  DM1.tNatOperacaoCodigo.AsInteger := vCodNatOper;
  if DM1.tNatOperacao.GotoKey then
    vCodNatOper := DM1.tNatOperacaoCodNatOper.AsInteger;
  if mAuxNatureza.Locate('CodNatOper;NumNota;CodFornecedor',VarArrayOf([vCodNatOper,DM1.tNEntradaNumNEntr.AsInteger,DM1.tNEntradaCodForn.AsInteger]),[locaseinsensitive]) then
    mAuxNatureza.Edit
  else
    begin
      mAuxNatureza.Insert;
      mAuxNaturezaCodNatOper.AsInteger    := vCodNatOper;
      mAuxNaturezaNumNota.AsInteger       := DM1.tNEntradaNumNEntr.AsInteger;
      mAuxNaturezaCodFornecedor.AsInteger := DM1.tNEntradaCodForn.AsInteger;
    end;
  mAuxNaturezaDtEmissao.AsDateTime    := DM1.tNEntradaDtEntrada.AsDateTime;
  mAuxNaturezaVlrICMS.AsFloat         := mAuxNaturezaVlrICMS.AsFloat + StrToFloat(FormatFloat('0.00',VlrICMS));
  mAuxNaturezaVlrMercadoria.AsFloat   := mAuxNaturezaVlrMercadoria.AsFloat + StrToFloat(FormatFloat('0.00',VlrMercadoria));
  mAuxNaturezaVlrOutras.AsFloat       := mAuxNaturezaVlrOutras.AsFloat + StrToFloat(FormatFloat('0.00',VlrTotal - VlrBaseICMS));
  mAuxNaturezaVlrTotal.AsFloat        := mAuxNaturezaVlrTotal.AsFloat + StrToFloat(FormatFloat('0.00',VlrTotal));
  mAuxNaturezaBaseICMS.AsFloat        := mAuxNaturezaBaseICMS.AsFloat + StrToFloat(FormatFloat('0.00',VlrBaseICMS));
  mAuxNaturezaNomeFornecedor.AsString := DM1.tNEntradalkNomeForn.AsString;
  mAuxNaturezaUF.AsString             := DM1.tNEntradalkUf.AsString;
  mAuxNatureza.Post;

  if mAuxResumo.Locate('CodNatOper',vCodNatOper,([LocaseInsensitive])) then
    mAuxResumo.Edit
  else
    begin
      mAuxResumo.Insert;
      mAuxResumoCodNatOper.AsInteger := vCodNatOper;
    end;
  mAuxResumoVlrTotal.AsFloat      := mAuxResumoVlrTotal.AsFloat + StrToFloat(FormatFloat('0.00',VlrTotal));
  mAuxResumoVlrMercadoria.AsFloat := mAuxResumoVlrMercadoria.AsFloat + StrToFloat(FormatFloat('0.00',VlrMercadoria));
  mAuxResumoVlrBase.AsFloat       := mAuxResumoVlrBase.AsFloat + StrToFloat(FormatFloat('0.00',VlrBaseICMS));
  mAuxResumoVlrIcms.AsFloat       := mAuxResumoVlrIcms.AsFloat + StrToFloat(FormatFloat('0.00',VlrICMS));
  mAuxResumoVlrOutras.AsFloat     := mAuxResumoVlrOutras.AsFloat + mAuxNaturezaVlrOutras.AsFloat;
  mAuxResumo.Post;

  vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal - VlrTotal));
  vBase     := StrToFloat(FormatFloat('0.00',vBase - VlrBaseICMS));
  vIcms     := StrToFloat(FormatFloat('0.00',vIcms - VlrICMS));
  vOutras   := StrToFloat(FormatFloat('0.00',vOutras - VlrOutrasDesp));
  vFrete    := StrToFloat(FormatFloat('0.00',vFrete - vlrFrete));
end;

procedure TfPrevNComprasNatOpe.Imprimir;
var
  Texto : String;
begin
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  linha  := 99;
  pagina := 0;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  mAuxResumo.First;
  while not mAuxResumo.EOF do
    begin
      if linha > 61 then
        Imprime_Cabecalho;
      if RadioGroup2.ItemIndex = 1 then
        begin
          mAuxNatureza.First;
          while not mAuxNatureza.Eof do
            begin
              if linha > 61 then
                Imprime_Cabecalho;
              Imprime_Detalhe;
              mAuxNatureza.Next;
            end;
          Imprime_TotalNatOper;
        end
      else
        Imprime_Resumo;
      mAuxResumo.Next;
    end;
  Imprime_Rodape;
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      //WinExec(PChar(Texto),SW_MAXIMIZE);
      ShellExecute(Application.Handle, 'Open', PChar(DM1.tImpressoraEndereco.AsString), nil, nil, SW_SHOWMAXIMIZED);      
    end;
end;

procedure TfPrevNComprasNatOpe.Imprime_Cabecalho;
var
 i : Integer;
 texto1 : String;
begin
  pagina := pagina + 1;
  if Pagina > 1 then
    begin
      while linha < 66 do
        begin
          Linha := Linha + 1;
          Writeln(F);
        end;
    end;

  DM1.tEmpresa.First;
  Texto1 := Copy(DM1.tEmpresaEmpresa.AsString,1,50);
  For i := 1 to 53 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'RELACAO DE NOTAS DE ENTRADA POR NAT.OPERACAO                Pagina.: ' + IntToStr(pagina);
  Writeln(F,Texto1);

  Texto1 := 'Periodo: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +
            '                                                                                 Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);
  if RadioGroup2.ItemIndex = 0 then
    begin
      Writeln(F,'RESUMO DE NOTAS FISCAIS POR NATUREZA DE OPERACAO');
      Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
      Writeln(F,'Nat.      Vlr.Total  Vlr.Mercadoria      Base ICMS     Vlr.ICMS         Outras');
      Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
      Linha := 6;
    end
  else
    begin
      Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
      Writeln(F,'Nat. UF Fornecedor                          Nota Dt.Emissao      Vlr.Total Vlr.Mercadoria      Base ICMS          Vlr.ICMS    Outras');
      Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
      linha := 5;
    end;
end;

procedure TfPrevNComprasNatOpe.Imprime_Detalhe;
var
 i : Integer;
 Texto1  : String;
begin
  Texto1   := '';
  Texto1   := mAuxNaturezaCodNatOper.AsString;
  TextoDet := Texto1 + ' ';
  Texto1   := mAuxNaturezaUF.AsString;
  for i := 1 to 2 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := copy(mAuxNaturezaNomeFornecedor.AsString,1,32);
  for i := 1 to 32 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := mAuxNaturezaNumNota.AsString;
  for i := 1 to 7 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  TextoDet := TextoDet + mAuxNaturezaDtEmissao.AsString + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxNaturezaVlrTotal.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxNaturezaVlrMercadoria.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxNaturezaBaseICMS.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('#,###,##0.00',mAuxNaturezaVlrICMS.AsFloat);
  for i := 1 to 12 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxNaturezaVlrOutras.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Writeln(F,TextoDet);
  Linha := Linha + 1;
end;

procedure TfPrevNComprasNatOpe.Imprime_TotalNatOper;
var
 i : Integer;
 Texto1 : String;
begin
  Writeln(F,'                              ------------------------------------------------------------------------------------------------------');
  TextoDet := '                              Total da Natureza ';
  Texto1 := mAuxResumoCodNatOper.AsString;
  for i := 1 to 4 - Length(Texto1) do
    Texto1 := Texto1 + '.';
  TextoDet := TextoDet + Texto1 + ':       ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrTotal.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrMercadoria.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrBase.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('#,###,##0.00',mAuxResumoVlrIcms.AsFloat);
  for i := 1 to 12 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrOutras.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Writeln(F,TextoDet);
  Writeln(F);
  Linha := Linha + 3;
end;

procedure TfPrevNComprasNatOpe.Imprime_Rodape;
var
 i : Integer;
begin
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#18);
end;

procedure TfPrevNComprasNatOpe.Imprime_Resumo;
var
 i : Integer;
 Texto1 : String;
begin
  TextoDet := '';
  TextoDet := mAuxResumoCodNatOper.AsString + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrTotal.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + '  ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrMercadoria.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrBase.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('#,###,##0.00',mAuxResumoVlrIcms.AsFloat);
  for i := 1 to 12 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Texto1   := FormatFloat('###,###,##0.00',mAuxResumoVlrOutras.AsFloat);
  for i := 1 to 14 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  TextoDet := TextoDet + Texto1 + ' ';
  Writeln(F,TextoDet);
  Linha := Linha + 1;
end;

procedure TfPrevNComprasNatOpe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tNEntrada.Filtered := False;
  qMaoObra.Close;
  qItens.Close;
  qTotalItens.Close;
  qTotalMObra.Close;
  DM1.tNatOperacao.Close;
  DM1.tNEntrada.Close;
  DM1.tNEntradaItens.Close;
  DM1.tNEntradaItensMobra.Close;
  DM1.tFornecedores.Close;
  Action := Cafree;
end;

procedure TfPrevNComprasNatOpe.BitBtn6Click(Sender: TObject);
begin
  if (DateEdit1.Date < 1) or (DateEdit2.Date < 1)then
    begin
      ShowMessage('Falta informar a data!');
      Exit;
    end;

  if DateEdit1.Date > DateEdit2.Date then
    ShowMessage('Data inicial maior que data final')
  else
    begin
      Monta_SQLs;
      mAuxNatureza.MasterSource.Enabled := False;
      //mAuxNatureza.MasterSource := nil;
      //mAuxNatureza.MasterFields := '';
      mAuxNatureza.EmptyDataSet;
      mAuxResumo.EmptyDataSet;

      Controle_Imp;
      mAuxNatureza.MasterSource.Enabled := True;
      //mAuxNatureza.MasterFields := 'CodNatOper';
      //mAuxNatureza.MasterSource := dsmAuxResumo;
      vVlrTotal      := 0;
      vVlrMercadoria := 0;
      vBase          := 0;
      vIcms          := 0;
      vOutras        := 0;
      if RadioGroup1.ItemIndex = 0 then
        Imprimir
      else
        begin
          fRelNComprasNatOpe := TfRelNComprasNatOpe.Create(Self);
          fRelNComprasNatOpe.RLReport1.Preview;
          fRelNComprasNatOpe.RLReport1.Free;
        end;
      DM1.tNEntrada.Filtered := False;
      DM1.tNEntrada.IndexFieldNames := 'NumNEntr;CodForn;Serie';
      Screen.Cursor := crDefault;
      BitBtn1.SetFocus;
      mAuxNatureza.MasterSource.Enabled := False;
    end;
end;

procedure TfPrevNComprasNatOpe.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevNComprasNatOpe.FormShow(Sender: TObject);
begin
  DM1.tNatOperacao.Open;
  DM1.tNEntrada.Open;
  DM1.tNEntradaItens.Open;
  DM1.tNEntradaItensMobra.Open;
  DM1.tFornecedores.Open;
end;

procedure TfPrevNComprasNatOpe.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfPrevNComprasNatOpe.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfPrevNComprasNatOpe.mAuxNaturezaNewRecord(DataSet: TDataSet);
begin
  mAuxNaturezaVlrICMS.AsFloat       := 0;
  mAuxNaturezaVlrMercadoria.AsFloat := 0;
  mAuxNaturezaVlrOutras.AsFloat     := 0;
  mAuxNaturezaVlrTotal.AsFloat      := 0;
  mAuxNaturezaBaseICMS.AsFloat      := 0;
end;

procedure TfPrevNComprasNatOpe.mAuxResumoNewRecord(DataSet: TDataSet);
begin
  mAuxResumoVlrTotal.AsFloat      := 0;
  mAuxResumoVlrMercadoria.AsFloat := 0;
  mAuxResumoVlrBase.AsFloat       := 0;
  mAuxResumoVlrIcms.AsFloat       := 0;
  mAuxResumoVlrOutras.AsFloat     := 0;
end;

end.
