object fVerificaEstoque: TfVerificaEstoque
  Left = 75
  Top = 61
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Verifica o estoque'
  ClientHeight = 510
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 357
    Top = 13
    Width = 80
    Height = 13
    Caption = '..... Gerando ......'
  end
  object Label1: TLabel
    Left = 355
    Top = 31
    Width = 86
    Height = 13
    Caption = '..... Gerando 2......'
  end
  object BitBtn1: TBitBtn
    Left = 2
    Top = 8
    Width = 106
    Height = 29
    Caption = 'Verificar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 109
    Top = 8
    Width = 106
    Height = 29
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object ProgressBar1: TProgressBar
    Left = 443
    Top = 10
    Width = 318
    Height = 16
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 1
    Top = 55
    Width = 779
    Height = 440
    ActivePage = TabSheet1
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Notas com vale e descontam do estoque'
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Top = 1
        Width = 771
        Height = 380
        DataSource = dsmVerifica
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Prod.'
            Width = 51
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Width = 283
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumNota'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Item'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumMovEst'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Obs'
            Visible = True
          end>
      end
      object BitBtn4: TBitBtn
        Left = 520
        Top = 384
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Estoque com notas repetidas'
      ImageIndex = 1
      object RxDBGrid2: TRxDBGrid
        Left = 0
        Top = 1
        Width = 771
        Height = 379
        DataSource = dsmRepetidas
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = RxDBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumNota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumMovEst'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtMov'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodCor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoMov'
            Visible = True
          end>
      end
      object BitBtn5: TBitBtn
        Left = 520
        Top = 384
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
    end
  end
  object ProgressBar2: TProgressBar
    Left = 443
    Top = 28
    Width = 318
    Height = 16
    TabOrder = 4
  end
  object BitBtn3: TBitBtn
    Left = 219
    Top = 8
    Width = 106
    Height = 29
    Caption = 'Excluir estoque'
    Enabled = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object mVerifica: TMemoryTable
    Active = True
    Left = 584
    Top = 144
    object mVerificaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mVerificaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 22
    end
    object mVerificaNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 50
    end
    object mVerificaTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object mVerificaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mVerificaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mVerificaData: TDateField
      FieldName = 'Data'
    end
    object mVerificaItem: TIntegerField
      FieldName = 'Item'
    end
    object mVerificaObs: TStringField
      FieldName = 'Obs'
      Size = 30
    end
    object mVerificaNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
  end
  object dsmVerifica: TDataSource
    DataSet = mVerifica
    Left = 608
    Top = 144
  end
  object mRepetidas: TMemoryTable
    Active = True
    Left = 573
    Top = 224
    object mRepetidasNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mRepetidasNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object mRepetidasDtMov: TDateField
      FieldName = 'DtMov'
    end
    object mRepetidasCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mRepetidasCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mRepetidasNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mRepetidasNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mRepetidasQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mRepetidasTipoMov: TStringField
      FieldName = 'TipoMov'
      Size = 3
    end
    object mRepetidasReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object dsmRepetidas: TDataSource
    DataSet = mRepetidas
    Left = 597
    Top = 224
  end
  object tDctoEstItem: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbDctoEstItem.DB'
    Left = 293
    Top = 199
    object tDctoEstItemNumDcto: TIntegerField
      FieldName = 'NumDcto'
    end
    object tDctoEstItemItem: TIntegerField
      FieldName = 'Item'
    end
    object tDctoEstItemCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tDctoEstItemCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tDctoEstItemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tDctoEstItemUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tDctoEstItemQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tDctoEstItemVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object tDctoEstItemVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tDctoEstItemNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
  end
  object tNotaFiscalItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'DBNOTAFISCALITENS.DB'
    Left = 333
    Top = 199
    object tNotaFiscalItensNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalItensItem: TSmallintField
      FieldName = 'Item'
    end
    object tNotaFiscalItensCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tNotaFiscalItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tNotaFiscalItensClasFiscal: TStringField
      FieldName = 'ClasFiscal'
      Size = 3
    end
    object tNotaFiscalItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tNotaFiscalItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalItensIcms: TFloatField
      FieldName = 'Icms'
    end
    object tNotaFiscalItensIpi: TFloatField
      FieldName = 'Ipi'
    end
    object tNotaFiscalItensSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tNotaFiscalItensVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object tNotaFiscalItensVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tNotaFiscalItensDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tNotaFiscalItensVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object tNotaFiscalItensBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object tNotaFiscalItensVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object tNotaFiscalItensVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object tNotaFiscalItensNatOper: TSmallintField
      FieldName = 'NatOper'
    end
    object tNotaFiscalItensIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNotaFiscalItensNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object tNotaFiscalItensItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object tNotaFiscalItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tNotaFiscalItensComissaoMod: TFloatField
      FieldName = 'ComissaoMod'
    end
    object tNotaFiscalItensCodComissao: TIntegerField
      FieldName = 'CodComissao'
    end
    object tNotaFiscalItensCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNotaFiscalItensNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tNotaFiscalItensGeraDupl: TBooleanField
      FieldName = 'GeraDupl'
    end
    object tNotaFiscalItensMaterial: TBooleanField
      FieldName = 'Material'
    end
    object tNotaFiscalItensEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tNotaFiscalItensNumNotaDevForn: TIntegerField
      FieldName = 'NumNotaDevForn'
    end
    object tNotaFiscalItensCodFornDev: TIntegerField
      FieldName = 'CodFornDev'
    end
    object tNotaFiscalItensItemDev: TIntegerField
      FieldName = 'ItemDev'
    end
    object tNotaFiscalItensNumOC: TStringField
      FieldName = 'NumOC'
    end
    object tNotaFiscalItensNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object tNotaFiscalItensCodBarraRotulo: TStringField
      FieldName = 'CodBarraRotulo'
      Size = 50
    end
    object tNotaFiscalItensVale: TBooleanField
      FieldName = 'Vale'
    end
    object tNotaFiscalItensObs: TStringField
      FieldName = 'Obs'
      Size = 100
    end
  end
  object tValeItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbValeItens.DB'
    Left = 373
    Top = 199
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
  end
  object tNEntradaItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbNEntradaItens.DB'
    Left = 413
    Top = 199
    object tNEntradaItensCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tNEntradaItensNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
    end
    object tNEntradaItensItem: TSmallintField
      FieldName = 'Item'
    end
    object tNEntradaItensCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tNEntradaItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNEntradaItensVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object tNEntradaItensVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object tNEntradaItensIcms: TFloatField
      FieldName = 'Icms'
    end
    object tNEntradaItensIpi: TFloatField
      FieldName = 'Ipi'
    end
    object tNEntradaItensDesc: TFloatField
      FieldName = 'Desc'
    end
    object tNEntradaItensVlrDesc: TFloatField
      FieldName = 'VlrDesc'
    end
    object tNEntradaItensVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object tNEntradaItensVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object tNEntradaItensBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object tNEntradaItensSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tNEntradaItensIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNEntradaItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tNEntradaItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tNEntradaItensCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNEntradaItensNumOC: TIntegerField
      FieldName = 'NumOC'
    end
    object tNEntradaItensItemOC: TIntegerField
      FieldName = 'ItemOC'
    end
    object tNEntradaItensQtdPacote: TFloatField
      FieldName = 'QtdPacote'
    end
    object tNEntradaItensNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tNEntradaItensMatProd: TStringField
      FieldName = 'MatProd'
      Size = 3
    end
    object tNEntradaItensSomaEstoque: TBooleanField
      FieldName = 'SomaEstoque'
    end
    object tNEntradaItensNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 60
    end
    object tNEntradaItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tNEntradaItensCodNatOper: TIntegerField
      FieldName = 'CodNatOper'
    end
    object tNEntradaItensDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object tNEntradaItensHrBaixa: TTimeField
      FieldName = 'HrBaixa'
    end
    object tNEntradaItensNumMovEstBaixa: TIntegerField
      FieldName = 'NumMovEstBaixa'
    end
    object tNEntradaItensQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
    end
    object tNEntradaItensQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
  end
end
