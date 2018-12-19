object fEscNotaFiscalDevolPorItem2: TfEscNotaFiscalDevolPorItem2
  Left = 17
  Top = 21
  Width = 792
  Height = 550
  BorderIcons = [biSystemMenu]
  Caption = 'Escolhe a nota fiscal que foi devolvida'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 512
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 376
      Top = 34
      Width = 74
      Height = 13
      Caption = 'Qtd.Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 3
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 54
      Width = 157
      Height = 13
      Caption = 'Notas pendentes no cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBGrid1: TRxDBGrid
      Left = 5
      Top = 72
      Width = 772
      Height = 254
      Hint = 'Duplo click para selecionar a nota'
      TabStop = False
      DataSource = dsqNotaFiscal
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = RxDBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumNota'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 22
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
          Title.Caption = 'Nome do Produto'
          Width = 275
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdRestante'
          Title.Alignment = taCenter
          Title.Caption = 'Q.Pendente'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdDevolvida'
          Title.Alignment = taCenter
          Title.Caption = 'Q.Devolvida'
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
          FieldName = 'lkNomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Cor'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodProduto'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Material'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCli'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Cliente'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Filial'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 546
      Top = 24
      Width = 197
      Height = 22
      Hint = 'Confirma a escolha da nota fiscal'
      Caption = '&Confirma o material para a nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 346
      Width = 777
      Height = 174
      Caption = 'Notas Selecionadas'
      TabOrder = 4
      object RxDBGrid2: TRxDBGrid
        Left = 3
        Top = 12
        Width = 770
        Height = 141
        Hint = 'Duplo clique para excluir a nota selecionada'
        Color = clInfoBk
        DataSource = fNotaEntrada.dsmSelecionado
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNota'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do material'
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
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Restante'
            Width = 94
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Material'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodFornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Fornecedor'
            Visible = True
          end>
      end
      object StaticText2: TStaticText
        Left = 2
        Top = 156
        Width = 773
        Height = 16
        Align = alBottom
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Duplo clique para excluir a nota selecionada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 452
      Top = 26
      Width = 85
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DecimalPlaces = 5
      DisplayFormat = '0.00000'
      TabOrder = 5
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 99
      Top = 26
      Width = 250
      Height = 21
      DropDownCount = 8
      LookupField = 'CodProduto'
      LookupDisplay = 'Nome'
      LookupSource = dsqMaterial
      TabOrder = 1
      OnExit = RxDBLookupCombo2Exit
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 48
      Top = 26
      Width = 49
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnChange = CurrencyEdit4Change
      OnExit = CurrencyEdit4Exit
    end
    object BitBtn1: TBitBtn
      Left = 48
      Top = 3
      Width = 177
      Height = 22
      Caption = 'Filtra Notas (Material)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 329
      Width = 772
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Duplo clique para selecionar as notas a serem devolvidas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object qNotaFiscal: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.NumNota, Dbnotafiscal.DtEmissao, Dbnotafisca' +
        'litens.CodProduto, Dbproduto.Referencia, Dbnotafiscal.CodCli, Db' +
        'produto.Nome NomeProduto, Dbnotafiscalitens.Item, Dbcliente.Nome' +
        ' NomeCliente, Dbnotafiscalitens.Qtd, Dbnotafiscalitens.QtdRestan' +
        'te, Dbnotafiscalitens.QtdDevolvida, Dbnotafiscalitens.CodCor, Db' +
        'notafiscalitens.Unidade, Dbnatoperacao.CodNatOper, Dbnotafiscali' +
        'tens.VlrUnit, Dbnotafiscalitens.VlrTotal, Dbnotafiscal.Filial, D' +
        'bnotafiscal.NumSeq'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)  '
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)  '
      'WHERE  Dbnatoperacao.ControlarRetorno = TRUE ')
    Left = 328
    Top = 192
    object qNotaFiscalNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qNotaFiscalDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qNotaFiscalCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qNotaFiscalReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qNotaFiscalCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qNotaFiscalNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qNotaFiscalItem: TSmallintField
      FieldName = 'Item'
    end
    object qNotaFiscalNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qNotaFiscalQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object qNotaFiscalQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.#####'
    end
    object qNotaFiscalQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
      DisplayFormat = '0.#####'
    end
    object qNotaFiscalCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotaFiscalUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotaFiscalCodNatOper: TStringField
      FieldName = 'CodNatOper'
      Size = 4
    end
    object qNotaFiscalVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qNotaFiscalVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qNotaFiscallkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
    object qNotaFiscalFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qNotaFiscalNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
  end
  object qMaterial: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT DISTINCT Dbnatoperacao.CodNatOper, Dbnotafiscalitens.CodP' +
        'roduto, Dbproduto.Referencia, Dbproduto.Nome'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)'
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)'
      'WHERE  (Dbnatoperacao.ControlarRetorno = True)'
      '      AND  (DbNotaFiscal.CodCli = :CodCli)'
      ' '
      ' ')
    Left = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCli'
        ParamType = ptUnknown
      end>
    object qMaterialCodNatOper: TStringField
      FieldName = 'CodNatOper'
      Size = 4
    end
    object qMaterialCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qMaterialReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qMaterialNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsqMaterial: TDataSource
    DataSet = qMaterial
    Left = 288
  end
  object dsqNotaFiscal: TDataSource
    DataSet = qNotaFiscal
    Left = 360
    Top = 192
  end
end
