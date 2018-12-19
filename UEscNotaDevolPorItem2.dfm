object fEscNotaDevolPorItem2: TfEscNotaDevolPorItem2
  Left = 2
  Top = 9
  Width = 859
  Height = 572
  BorderIcons = [biSystemMenu]
  Caption = 'Escolhe a Nota de Compra para ser devolvida'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 538
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 624
      Top = 34
      Width = 66
      Height = 13
      Caption = 'Qtd.Restante:'
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
      Top = 190
      Width = 272
      Height = 13
      Caption = 'Notas do material selecionado ........................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBGrid1: TRxDBGrid
      Left = 5
      Top = 205
      Width = 842
      Height = 178
      Hint = 'Duplo click para selecionar a nota'
      TabStop = False
      DataSource = dsqNotaEntrada
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
          FieldName = 'NumNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Serie'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'Material'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdRestante'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Restante'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdDevolvida'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Devolvida'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEmissaoNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEntrada'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Entrada'
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodForn'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Fornec.'
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
          Expanded = False
          FieldName = 'VlrUnit'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotalItens'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeForn'
          Title.Caption = 'Nome Fornecedor'
          Width = 172
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 553
      Top = 2
      Width = 223
      Height = 22
      Hint = 'Confirma a escolha da nota fiscal'
      Caption = '&Confirma o material para a nota fiscal'
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
      Top = 400
      Width = 844
      Height = 144
      Caption = 'Notas Selecionadas'
      TabOrder = 4
      object RxDBGrid2: TRxDBGrid
        Left = 3
        Top = 12
        Width = 838
        Height = 113
        Hint = 'Duplo clique para excluir a nota selecionada'
        Color = clInfoBk
        DataSource = fNotaFiscalItens.dsmSelecionado
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
            FieldName = 'Serie'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 33
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
        Top = 125
        Width = 840
        Height = 17
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
      Left = 691
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
      Width = 280
      Height = 21
      DropDownCount = 8
      LookupField = 'CodMaterial'
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
      Left = 201
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
    object BitBtn3: TBitBtn
      Left = 23
      Top = 3
      Width = 177
      Height = 22
      Caption = 'Gera materiais para retorno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object RxDBGrid3: TRxDBGrid
      Left = 3
      Top = 48
      Width = 846
      Height = 123
      DataSource = fNotaFiscalItens.dsmMaterial
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = RxDBGrid3DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'C.Mat.'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Material'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Cor'
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdConsumo'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Consumo'
          Width = 86
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdConsumoOriginal'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Cons.Original'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdConsumoInf'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Cons.Informada'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCor'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Cor'
          Width = 41
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdNota'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.do Item'
          Width = 65
          Visible = True
        end>
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 383
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
      TabOrder = 9
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 172
      Width = 773
      Height = 15
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Duplo clique para selecionar as notas do material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object qNotaEntrada: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbnentrada.N' +
        'umNEntr, Dbnentrada.DtEmissaoNEntr, Dbnentrada.VlrTotalNEntr, Db' +
        'nentrada.DtEntrada, Dbnentradaitens.CodMaterial, Dbnentradaitens' +
        '.Qtd, Dbnentradaitens.VlrUnit, Dbnentradaitens.VlrTotalItens, Db' +
        'nentradaitens.CodCor, Dbnentradaitens.Unidade, Dbnentradaitens.Q' +
        'tdRestante, Dbnentradaitens.QtdDevolvida, Dbnentradaitens.Item, ' +
        'Dbnentradaitens.SitTrib, Dbnentrada.Serie'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      'WHERE   (Dbnentrada.CodForn = :CodFornecedor) AND'
      '        (Dbnentradaitens.codmaterial = :CodMaterial)'
      
        '   AND  ( (Dbnentrada.Devolvida = FALSE)  OR  (Dbnentrada.Devolv' +
        'ida IS NULL) )'
      '   AND  (Dbnentradaitens.QtdRestante > 0)'
      
        'ORDER BY Dbnentrada.CodForn, Dbnentrada.NumNEntr, Dbnentrada.DtE' +
        'missaoNEntr'
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 560
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptUnknown
      end>
    object qNotaEntradaCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbNEntrada.DB".CodForn'
    end
    object qNotaEntradaNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qNotaEntradaNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".NumNEntr'
    end
    object qNotaEntradaDtEmissaoNEntr: TDateField
      FieldName = 'DtEmissaoNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".DtEmissaoNEntr'
    end
    object qNotaEntradaVlrTotalNEntr: TFloatField
      FieldName = 'VlrTotalNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".VlrTotalNEntr'
    end
    object qNotaEntradaDtEntrada: TDateField
      FieldName = 'DtEntrada'
      Origin = 'TABELAS."dbNEntrada.DB".DtEntrada'
    end
    object qNotaEntradaCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qNotaEntradaQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradaVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qNotaEntradaVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object qNotaEntradaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotaEntradaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotaEntradaQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradaQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradalkNomeMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeMaterial'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodMaterial'
      Size = 40
      Lookup = True
    end
    object qNotaEntradalkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 15
      Lookup = True
    end
    object qNotaEntradaItem: TSmallintField
      FieldName = 'Item'
    end
    object qNotaEntradaSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object qNotaEntradaSerie: TStringField
      FieldName = 'Serie'
      Size = 2
    end
  end
  object dsqNotaEntrada: TDataSource
    DataSet = qNotaEntrada
    Left = 576
    Top = 152
  end
  object qMaterial: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Distinct Dbnentradaitens.CodForn, Dbnentradaitens.CodMate' +
        'rial, dbProduto.Nome'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnentradaitens.CodMaterial = Dbproduto.Codigo)'
      'WHERE   (Dbnentrada.CodForn = :CodFornecedor)'
      
        '   AND  ( (Dbnentrada.Devolvida = FALSE)  OR  (Dbnentrada.Devolv' +
        'ida IS NULL) )'
      '   AND  (Dbnentradaitens.QtdRestante > 0)'
      'ORDER BY Dbnentradaitens.CodForn, dbProduto.Nome'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 360
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptUnknown
      end>
    object qMaterialCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbNEntradaItens.DB".CodForn'
    end
    object qMaterialCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbNEntradaItens.DB".CodMaterial'
    end
    object qMaterialNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsqMaterial: TDataSource
    DataSet = qMaterial
    Left = 376
    Top = 152
  end
  object qItemNota: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodProduto, CodCor, Qtd'
      'FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      'WHERE   (NumNota = :NumNota)  '
      '   AND  (Material = TRUE)  ')
    Left = 440
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NumNota'
        ParamType = ptUnknown
      end>
    object qItemNotaCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qItemNotaCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodCor'
    end
    object qItemNotaQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
  end
end
