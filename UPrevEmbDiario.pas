unit UPrevEmbDiario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, Menus, Buttons, Db, Variants,
  DBTables, MemTable;

type
  TfPrevEmbDiario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mEmbarque: TMemoryTable;
    mEmbarqueData: TDateField;
    mEmbarqueCodCli: TIntegerField;
    mEmbarqueQtdDia: TFloatField;
    mEmbarqueQtdFaturado: TFloatField;
    mEmbarqueQtdRest: TFloatField;
    msEmbarque: TDataSource;
    qPedido: TQuery;
    qsPedido: TDataSource;
    mEmbarquelkCliente: TStringField;
    qPedidoPedido: TIntegerField;
    qPedidoCodCliente: TIntegerField;
    qPedidoCancelado: TBooleanField;
    qPedidoQtdPares: TFloatField;
    qPedidoQtdParesFat: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoCancelado_1: TBooleanField;
    qPedidoDtReprogramacao: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevEmbDiario: TfPrevEmbDiario;

implementation

uses UDM1, URelEmbDiario;

{$R *.DFM}

procedure TfPrevEmbDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevEmbDiario.BitBtn1Click(Sender: TObject);
begin
  mEmbarque.EmptyTable;
  DateEdit1.Clear;
  DateEdit2.Clear;
  DateEdit1.SetFocus;
end;

procedure TfPrevEmbDiario.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevEmbDiario.Imprimir1Click(Sender: TObject);
begin
  mEmbarque.EmptyTable;
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      Screen.Cursor        := crHourGlass;
      qPedido.Active       := False;
      qPedido.Active       := True;
      qPedido.Filtered     := False;
      qPedido.Filter       := 'Cancelado <> True and DtReprogramacao >= '''+DateEdit1.Text+''' and DtReprogramacao <= '''+DateEdit2.Text+''' and Cancelado_1 <> True';
      qPedido.Filtered     := True;
      qPedido.First;
      while not qPedido.Eof do
        begin
          if mEmbarque.Locate('Data;CodCli',VarArrayOf([qPedidoDtReprogramacao.AsDateTime,qPedidoCodCliente.AsInteger]),[locaseinsensitive]) then
            begin
              mEmbarque.Edit;
              mEmbarqueQtdDia.AsFloat      := mEmbarqueQtdDia.AsFloat + qPedidoQtdPares.AsFloat;
              mEmbarqueQtdFaturado.AsFloat := mEmbarqueQtdFaturado.AsFloat + qPedidoQtdParesFat.AsFloat;
              mEmbarqueQtdRest.AsFloat     := mEmbarqueQtdRest.AsFloat + qPedidoQtdParesRest.AsFloat;
              mEmbarque.Post;
            end
          else
            begin
              mEmbarque.Insert;
              mEmbarqueCodCli.AsInteger    := qPedidoCodCliente.AsInteger;
              mEmbarqueData.AsDateTime     := qPedidoDtReprogramacao.AsDateTime;
              mEmbarqueQtdDia.AsFloat      := qPedidoQtdPares.AsFloat;
              mEmbarqueQtdFaturado.AsFloat := qPedidoQtdParesFat.AsFloat;
              mEmbarqueQtdRest.AsFloat     := qPedidoQtdParesRest.AsFloat;
              mEmbarque.Post;
            end;
          qPedido.Next;
        end;
      qPedido.Filtered     := False;
      Screen.Cursor        := crDefault;
      fRelEmbDiario        := TfRelEmbDiario.Create(Self);
      fRelEmbDiario.QuickRep1.Print;
      fRelEmbDiario.QuickRep1.Free;
    end
  else
    begin
      ShowMessage('Você deve informar datas "Inicial" e "Final" p/ gerar o relatório!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevEmbDiario.Visualizar1Click(Sender: TObject);
begin
  mEmbarque.EmptyTable;
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      Screen.Cursor        := crHourGlass;
      qPedido.Active       := False;
      qPedido.Active       := True;
      qPedido.Filtered     := False;
      qPedido.Filter       := 'Cancelado <> True and DtReprogramacao >= '''+DateEdit1.Text+''' and DtReprogramacao <= '''+DateEdit2.Text+''' and Cancelado_1 <> True';
      qPedido.Filtered     := True;
      qPedido.First;
      while not qPedido.Eof do
        begin
          if mEmbarque.Locate('Data;CodCli',VarArrayOf([qPedidoDtReprogramacao.AsDateTime,qPedidoCodCliente.AsInteger]),[locaseinsensitive]) then
            begin
              mEmbarque.Edit;
              mEmbarqueQtdDia.AsFloat      := mEmbarqueQtdDia.AsFloat + qPedidoQtdPares.AsFloat;
              mEmbarqueQtdFaturado.AsFloat := mEmbarqueQtdFaturado.AsFloat + qPedidoQtdParesFat.AsFloat;
              mEmbarqueQtdRest.AsFloat     := mEmbarqueQtdRest.AsFloat + qPedidoQtdParesRest.AsFloat;
              mEmbarque.Post;
            end
          else
            begin
              mEmbarque.Insert;
              mEmbarqueCodCli.AsInteger    := qPedidoCodCliente.AsInteger;
              mEmbarqueData.AsDateTime     := qPedidoDtReprogramacao.AsDateTime;
              mEmbarqueQtdDia.AsFloat      := qPedidoQtdPares.AsFloat;
              mEmbarqueQtdFaturado.AsFloat := qPedidoQtdParesFat.AsFloat;
              mEmbarqueQtdRest.AsFloat     := qPedidoQtdParesRest.AsFloat;
              mEmbarque.Post;
            end;
          qPedido.Next;
        end;
      qPedido.Filtered     := False;
      Screen.Cursor        := crDefault;
      fRelEmbDiario        := TfRelEmbDiario.Create(Self);
      fRelEmbDiario.QuickRep1.Preview;
      fRelEmbDiario.QuickRep1.Free;
    end
  else
    begin
      ShowMessage('Você deve informar datas "Inicial" e "Final" p/ gerar o relatório!');
      DateEdit1.SetFocus;
    end;
end;

end.
