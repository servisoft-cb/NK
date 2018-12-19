object fRelTalao2: TfRelTalao2
  Left = 13
  Top = 51
  Width = 911
  Height = 580
  VertScrollBar.Position = 36
  BorderIcons = [biSystemMenu]
  Caption = 'fRelTalao2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 4
    Width = 794
    Height = 1123
    DataSource = DM1.dsTalao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 30
      Width = 734
      Height = 659
      DataSource = DM1.dsTalao
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 0
        Width = 734
        Height = 129
        ColCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel9: TRLLabel
          Left = 8
          Top = 16
          Width = 38
          Height = 14
          Caption = 'Cliente:'
        end
        object RLDBText4: TRLDBText
          Left = 50
          Top = 16
          Width = 311
          Height = 14
          AutoSize = False
          DataField = 'lkNomeCliente'
          DataSource = DM1.dsTalao
        end
        object RLLabel10: TRLLabel
          Left = 22
          Top = 44
          Width = 47
          Height = 14
          Caption = 'N'#186' Tal'#227'o:'
        end
        object RLDBText7: TRLDBText
          Left = 72
          Top = 40
          Width = 46
          Height = 19
          DataField = 'Talao'
          DataSource = DM1.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 144
          Top = 43
          Width = 61
          Height = 14
          Caption = 'Quantidade:'
        end
        object RLDBText8: TRLDBText
          Left = 208
          Top = 40
          Width = 92
          Height = 19
          DataField = 'Quantidade'
          DataSource = DM1.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 24
          Top = 83
          Width = 38
          Height = 14
          Caption = 'Pedido:'
        end
        object RLDBText9: TRLDBText
          Left = 65
          Top = 81
          Width = 44
          Height = 16
          DataField = 'Pedido'
          DataSource = DM1.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 157
          Top = 83
          Width = 56
          Height = 14
          Caption = 'Dt.Entrega:'
        end
        object RLDBText10: TRLDBText
          Left = 216
          Top = 80
          Width = 113
          Height = 19
          DataField = 'lkDtEmbarque'
          DataSource = DM1.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object tProdutoSetor: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;Item'
    MasterFields = 'CodProduto'
    MasterSource = DM1.dsTalao
    TableName = 'dbProdutoSetor.db'
    Left = 473
    Top = 23
    object tProdutoSetorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoSetorItem: TIntegerField
      FieldName = 'Item'
    end
    object tProdutoSetorCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object tProdutoSetorTempo: TIntegerField
      FieldName = 'Tempo'
    end
    object tProdutoSetorTempoRegMaquina: TIntegerField
      FieldName = 'TempoRegMaquina'
    end
    object tProdutoSetorlkNomeSetor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeSetor'
      LookupDataSet = DM1.tSetor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodSetor'
      Size = 15
      Lookup = True
    end
  end
  object dsProdutoSetor: TDataSource
    DataSet = tProdutoSetor
    Left = 496
    Top = 24
  end
end
