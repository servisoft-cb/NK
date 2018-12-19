unit UConsTalaoFBDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, SMDBGrid, ExtCtrls,
  Buttons, DB, UDMTalao, RzTabs, FMTBcd, SqlExpr, Provider, DBClient, dbXPress;

type
  TFConsTalaoFBDet = class(TForm)
    Panel2: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    TabSheet4: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
    SMDBGrid6: TSMDBGrid;
    dsTalaoTerceiro: TDataSource;
    cdsTalaoTerceiro: TClientDataSet;
    cdsTalaoTerceiroTALAO: TIntegerField;
    cdsTalaoTerceiroITEM: TIntegerField;
    cdsTalaoTerceiroDTENTRADA: TDateField;
    cdsTalaoTerceiroHRENTRADA: TTimeField;
    cdsTalaoTerceiroDTSAIDA: TDateField;
    cdsTalaoTerceiroHRSAIDA: TTimeField;
    cdsTalaoTerceiroCODFUNCIONARIOLIB: TIntegerField;
    cdsTalaoTerceiroCODSETORLIB: TIntegerField;
    cdsTalaoTerceiroQTDENTRADA: TIntegerField;
    cdsTalaoTerceiroQTDPRODUZIDO: TIntegerField;
    cdsTalaoTerceiroQTDQUEBRA: TIntegerField;
    cdsTalaoTerceiroCODPARADA: TIntegerField;
    cdsTalaoTerceiroTOTALHORAS: TFloatField;
    dspTalaoTerceiro: TDataSetProvider;
    sdsTalaoTerceiro: TSQLDataSet;
    sdsTalaoTerceiroTALAO: TIntegerField;
    sdsTalaoTerceiroITEM: TIntegerField;
    sdsTalaoTerceiroDTENTRADA: TDateField;
    sdsTalaoTerceiroHRENTRADA: TTimeField;
    sdsTalaoTerceiroDTSAIDA: TDateField;
    sdsTalaoTerceiroHRSAIDA: TTimeField;
    sdsTalaoTerceiroCODFUNCIONARIOLIB: TIntegerField;
    sdsTalaoTerceiroCODSETORLIB: TIntegerField;
    sdsTalaoTerceiroQTDENTRADA: TIntegerField;
    sdsTalaoTerceiroQTDPRODUZIDO: TIntegerField;
    sdsTalaoTerceiroQTDQUEBRA: TIntegerField;
    sdsTalaoTerceiroCODPARADA: TIntegerField;
    sdsTalaoTerceiroTOTALHORAS: TFloatField;
    sdsTalaoTerceiroPARADA: TStringField;
    cdsTalaoTerceiroPARADA: TStringField;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Shape3: TShape;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsTalaoFBDet: TFConsTalaoFBDet;

implementation

uses UConsTalaoFB, DmdDatabase;

{$R *.dfm}

procedure TFConsTalaoFBDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFConsTalaoFBDet.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'A' then
    Background := clYellow
  else
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'E' then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if DMTalao.tTalaoSetorPROCESSO.AsString = 'P' then
    Background := clAqua;
end;

procedure TFConsTalaoFBDet.SMDBGrid1DblClick(Sender: TObject);
begin
  ShowMessage('Setor ' + DMTalao.tTalaoSetorCODSETOR.AsString + '  ' + DMTalao.tTalaoSetorNOMESETOR.AsString);
end;

procedure TFConsTalaoFBDet.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFConsTalaoFBDet.BitBtn2Click(Sender: TObject);
begin
  case RzPageControl1.ActivePageIndex of
    0: begin
         if not DMTalao.tTalaoMov.IsEmpty then
           if MessageDlg('Deseja realmente excluir este movimento do talão?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
           begin
             DMTalao.tTalaoSetor.Edit;
             dmTalao.tTalaoSetorHORASPRODUCAO.AsFloat := 0;
             dmTalao.tTalaoSetorQTDENTRADA.AsFloat    := dmTalao.tTalaoSetorQTDENTRADA.AsFloat - DMTalao.tTalaoQUANTIDADE.AsFloat;
             dmTalao.tTalaoSetorQTDPRODUZIDO.AsFloat  := dmTalao.tTalaoSetorQTDPRODUZIDO.AsFloat - DMTalao.tTalaoMovQTDPRODUZIDO.AsFloat;
//             dmTalao.tTalaoSetorHORASPRODUCAO.AsFloat := dmTalao.tTalaoSetorHORASPRODUCAO.AsFloat - DMTalao.tTalaoMov
             dmTalao.tTalaoMov.Delete;
           end;
       end;
  end;
end;

procedure TFConsTalaoFBDet.RzPageControl1Change(Sender: TObject);
begin
  case RzPageControl1.ActivePageIndex of
    0: begin
         BitBtn2.Caption := 'Excluir movimento';
         BitBtn2.Left    := 6;
       end;
    1: begin
         BitBtn2.Caption := 'Excluir parada';
         BitBtn2.Left    := 26;
       end;
    2: begin
         BitBtn2.Caption := 'Excluir quebra';
         BitBtn2.Left    := 46;
       end;
    3: begin
         BitBtn2.Caption := 'Excluir mov. terceiro';
         BitBtn2.Left    := 66;
       end;
  end;
end;

end.
