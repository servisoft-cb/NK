object fBuscaVale: TfBuscaVale
  Left = 13
  Top = 26
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Busca de Vales'
  ClientHeight = 495
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn5: TBitBtn
    Left = 635
    Top = 2
    Width = 125
    Height = 29
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BitBtn5Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
      038383838383830E603800000000380E660033333330830E660333333330000E
      660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
      660300000E60330E660333330600330E660333330030330E6603333333303330
      E6033333333033330E0333333330000000033333333333333333}
  end
  object RzPageControl1: TRzPageControl
    Left = 1
    Top = 37
    Width = 764
    Height = 459
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Vales Pendentes'
      object RxDBGrid2: TRxDBGrid
        Left = 2
        Top = 4
        Width = 532
        Height = 237
        DataSource = dsVale
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
            FieldName = 'NumVale'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Vale'
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 254
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
            Width = 89
            Visible = True
          end>
      end
      object RxDBGrid3: TRxDBGrid
        Left = 2
        Top = 262
        Width = 754
        Height = 171
        DataSource = dsValeItens
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 27
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lkReferencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Width = 227
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
            FieldName = 'QtdFaturada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Faturada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Restante'
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
            FieldName = 'VlrUnitario'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Width = 61
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
            FieldName = 'CodSitTrib'
            Title.Alignment = taCenter
            Title.Caption = 'Sit.Trib.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AliqIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Icms'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AliqIPI'
            Title.Alignment = taCenter
            Title.Caption = 'IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 621
        Top = 171
        Width = 125
        Height = 31
        Caption = 'Agrupa Vale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 621
        Top = 202
        Width = 125
        Height = 31
        Caption = 'Agrupa Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn3Click
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Vales Agrupados'
      object RxLabel1: TRxLabel
        Left = 8
        Top = 272
        Width = 141
        Height = 13
        Caption = 'Vales dos itens ............'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel2: TRxLabel
        Left = 352
        Top = 272
        Width = 141
        Height = 13
        Caption = 'Vales copiados ............'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBGrid1: TRxDBGrid
        Left = 3
        Top = 5
        Width = 748
        Height = 260
        DataSource = fNotaFiscalItens.dsmAgrupado
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
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
            FieldName = 'VlrUnitario'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodSitTrib'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Sit.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da cor'
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
      object BitBtn4: TBitBtn
        Left = 632
        Top = 343
        Width = 113
        Height = 33
        Caption = 'Copia Agrupamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object BitBtn6: TBitBtn
        Left = 632
        Top = 376
        Width = 113
        Height = 33
        Caption = 'Exclui Agrupamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn6Click
      end
      object RxDBGrid4: TRxDBGrid
        Left = 4
        Top = 289
        Width = 301
        Height = 144
        DataSource = fNotaFiscalItens.dsmAgrupadoVale
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Vale'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Vale'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Caption = 'Item do Vale'
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade do Vale'
            Width = 120
            Visible = True
          end>
      end
      object RxDBGrid5: TRxDBGrid
        Left = 340
        Top = 289
        Width = 245
        Height = 144
        DataSource = dsmValeCopiado
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumVale'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Vale'
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 101
            Visible = True
          end>
      end
    end
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = dsValeItens
    Filter.Strings = (
      'QtdRestante > 0')
    Left = 548
    Top = 372
  end
  object tVale: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbVale.DB'
    Left = 652
    Top = 84
    object tValeNumVale: TIntegerField
      FieldName = 'NumVale'
    end
    object tValeDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object tValeCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tValeVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tValeFaturado: TBooleanField
      FieldName = 'Faturado'
    end
    object tValeSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tValeNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tValelkNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCliente'
      LookupDataSet = DM1.tCliente2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCliente'
      Size = 40
      Lookup = True
    end
  end
  object tValeItens: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'NumVale'
    MasterFields = 'NumVale'
    MasterSource = dsVale
    TableName = 'dbValeItens.DB'
    Left = 660
    Top = 124
    object tValeItensNumVale: TIntegerField
      FieldName = 'NumVale'
    end
    object tValeItensItem: TIntegerField
      FieldName = 'Item'
    end
    object tValeItensCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tValeItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tValeItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tValeItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tValeItensVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tValeItensVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tValeItensCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tValeItensAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object tValeItensAliqIPI: TFloatField
      FieldName = 'AliqIPI'
    end
    object tValeItensNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object tValeItensItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tValeItensNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tValeItensFaturado: TBooleanField
      FieldName = 'Faturado'
    end
    object tValeItensQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object tValeItensQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object tValeItenslkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'CodProduto'
      Lookup = True
    end
    object tValeItenslkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodProduto'
      Size = 40
      Lookup = True
    end
    object tValeItenslkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object tValeItenslkCodClasFiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodClasFiscal'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodClasFiscal'
      KeyFields = 'CodProduto'
      Size = 12
      Lookup = True
    end
  end
  object dsVale: TDataSource
    DataSet = tVale
    Left = 668
    Top = 84
  end
  object dsValeItens: TDataSource
    DataSet = tValeItens
    Left = 676
    Top = 124
  end
  object mValeCopiado: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NumVale;Item'
    Params = <>
    Left = 556
    Top = 104
    Data = {
      370000009619E0BD0100000018000000020000000000030000003700074E756D
      56616C650400010000000000044974656D04000100000000000000}
    object mValeCopiadoNumVale: TIntegerField
      FieldName = 'NumVale'
    end
    object mValeCopiadoItem: TIntegerField
      FieldName = 'Item'
    end
  end
  object dsmValeCopiado: TDataSource
    DataSet = mValeCopiado
    Left = 572
    Top = 105
  end
end
