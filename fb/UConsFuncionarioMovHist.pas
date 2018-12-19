unit UConsFuncionarioMovHist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, FMTBcd,
  DB, DBClient, Provider, SqlExpr, RzTabs, Mask, ToolEdit;

type
  TfConsFuncionarioMovHist = class(TForm)
    sdsTalaoMov: TSQLDataSet;
    cdsTalaoMov: TClientDataSet;
    dspTalaoMov: TDataSetProvider;
    dsTalaoMov: TDataSource;
    SMDBGrid3: TSMDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    sdsTalaoMovTALAO: TIntegerField;
    sdsTalaoMovCODSETOR: TIntegerField;
    sdsTalaoMovITEM: TIntegerField;
    sdsTalaoMovDTENTRADA: TDateField;
    sdsTalaoMovHRENTRADA: TTimeField;
    sdsTalaoMovDTSAIDA: TDateField;
    sdsTalaoMovHRSAIDA: TTimeField;
    sdsTalaoMovQTDENTRADA: TIntegerField;
    sdsTalaoMovQTDPRODUZIDO: TIntegerField;
    sdsTalaoMovQTDQUEBRA: TIntegerField;
    sdsTalaoMovCODFUNCIONARIO: TIntegerField;
    sdsTalaoMovTIPOSAIDA: TStringField;
    sdsTalaoMovTOTALHORAS: TFloatField;
    sdsTalaoMovCODPARADA: TIntegerField;
    sdsTalaoMovCODPRODUTO: TIntegerField;
    sdsTalaoMovNOMEFUNCIONARIO: TStringField;
    sdsTalaoMovNOMEPARADA: TStringField;
    sdsTalaoMovNOMESETOR: TStringField;
    cdsTalaoMovTALAO: TIntegerField;
    cdsTalaoMovCODSETOR: TIntegerField;
    cdsTalaoMovITEM: TIntegerField;
    cdsTalaoMovDTENTRADA: TDateField;
    cdsTalaoMovHRENTRADA: TTimeField;
    cdsTalaoMovDTSAIDA: TDateField;
    cdsTalaoMovHRSAIDA: TTimeField;
    cdsTalaoMovQTDENTRADA: TIntegerField;
    cdsTalaoMovQTDPRODUZIDO: TIntegerField;
    cdsTalaoMovQTDQUEBRA: TIntegerField;
    cdsTalaoMovCODFUNCIONARIO: TIntegerField;
    cdsTalaoMovTIPOSAIDA: TStringField;
    cdsTalaoMovTOTALHORAS: TFloatField;
    cdsTalaoMovCODPARADA: TIntegerField;
    cdsTalaoMovCODPRODUTO: TIntegerField;
    cdsTalaoMovNOMEFUNCIONARIO: TStringField;
    cdsTalaoMovNOMEPARADA: TStringField;
    cdsTalaoMovNOMESETOR: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsFuncionarioMovHist: TfConsFuncionarioMovHist;

implementation

uses DmdDatabase, UDM1;

{$R *.dfm}

procedure TfConsFuncionarioMovHist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
