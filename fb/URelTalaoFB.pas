unit URelTalaoFB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode, DB, JPEG, dbTables;

type
  TfRelTalaoFB = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    rlDtEntrega: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBarcode1: TRLBarcode;
    rlmObs: TRLMemo;
    RLImage1: TRLImage;
    rlMaterial: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelTalaoFB: TfRelTalaoFB;

implementation

uses UDMTalao, UConsTalaoFB, DateUtils;

{$R *.dfm}

procedure Le_Imagem_JPEG(Campo:TBlobField;Foto:TRLImage);
begin
end;

procedure TfRelTalaoFB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTalaoFB.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vCodBarra : String;
begin
  rlDtEntrega.Caption := '';
  rlmObs.Lines.Clear;
  RLBarcode1.Caption  := '';
  rlMaterial.Caption  := '';
  RLImage1.Picture    := nil;

  PrintIt := fConsTalaoFB.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if not PrintIt then
    exit;
  if fConsTalaoFB.tPedidoItem2.FindKey([fConsTalaoFB.tTalaoPEDIDO.AsInteger,fConsTalaoFB.tTalaoITEMPEDIDO.AsInteger]) then
    begin
      rlDtEntrega.Caption := fConsTalaoFB.tPedidoItem2DtReprogramacao.AsString;
      rlmObs.Lines.Text   := fConsTalaoFB.tPedidoItem2Obs.Value;
    end;
  vCodBarra := FormatFloat('0000',YearOf(fConsTalaoFB.tTalaoDTGERADO.AsDateTime))
             + FormatFloat('00',WeekOfTheYear(fConsTalaoFB.tTalaoDTGERADO.AsDateTime))
             + FormatFloat('000000',fConsTalaoFB.tTalaoTALAO.AsInteger);
  RLBarcode1.Caption := vCodBarra;
  RLLabel13.Caption  := vCodBarra;

  {RLBarcode1.Caption := FormatFloat('0000',YearOf(fConsTalaoFB.tTalaoDTGERADO.AsDateTime))
                      + FormatFloat('00',WeekOfTheYear(fConsTalaoFB.tTalaoDTGERADO.AsDateTime))
                      + FormatFloat('000000',fConsTalaoFB.tTalaoTALAO.AsInteger);}

  RLBarcode1.Refresh;

  if FileExists(fConsTalaoFB.tTalaoENDFOTOTALAO.AsString) Then
    RLImage1.Picture.LoadFromFile(fConsTalaoFB.tTalaoENDFOTOTALAO.AsString)
  else
    RLImage1.Picture := nil;
end;

end.
