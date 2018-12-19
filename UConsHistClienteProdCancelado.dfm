object fConsHistClienteProdCancelado: TfConsHistClienteProdCancelado
  Left = 7
  Top = 55
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produto cancelado (detalhado)'
  ClientHeight = 479
  ClientWidth = 771
  Color = 10545150
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object Label2: TLabel
    Left = 416
    Top = 11
    Width = 19
    Height = 13
    Caption = 'Cor:'
  end
  object Label3: TLabel
    Left = 600
    Top = 11
    Width = 48
    Height = 13
    Caption = 'Tamanho:'
  end
  object Edit1: TEdit
    Left = 52
    Top = 3
    Width = 357
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 436
    Top = 3
    Width = 157
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 652
    Top = 3
    Width = 61
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 32
    Width = 761
    Height = 441
    ActivePage = TabSheet1
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Cancelado'
      object RxDBGrid1: TRxDBGrid
        Left = 1
        Top = 1
        Width = 750
        Height = 410
        DataSource = fConsHistCliente.dsqCanceladoDet
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PedidoCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente (OC)'
            Width = 191
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Ped.Interno'
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 102
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmbarque'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Embarque'
            Width = 83
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Faturado'
      ImageIndex = 1
      object RxDBGrid2: TRxDBGrid
        Left = 1
        Top = 1
        Width = 750
        Height = 410
        DataSource = fConsHistCliente.dsqFaturadoDet
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNota'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Width = 54
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrUnit'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BaseIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrIpi'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumOC'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OC'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Visible = True
          end>
      end
    end
  end
end
