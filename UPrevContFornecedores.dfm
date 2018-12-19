object fPrevContFornecedores: TfPrevContFornecedores
  Left = 146
  Top = 164
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fPrevContFornecedores'
  ClientHeight = 151
  ClientWidth = 308
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
  object Label1: TLabel
    Left = 57
    Top = 72
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 62
    Top = 95
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Bevel1: TBevel
    Left = 1
    Top = 116
    Width = 308
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object RadioGroup1: TRadioGroup
    Left = 4
    Top = 0
    Width = 301
    Height = 49
    Caption = 'Opção'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Materia Prima'
      'Custo Fixo'
      'Todos')
    TabOrder = 0
  end
  object DateEdit1: TDateEdit
    Left = 116
    Top = 64
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 116
    Top = 87
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 30
    Top = 121
    Width = 245
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 3
    object BitBtn6: TBitBtn
      Left = 2
      Top = 1
      Width = 120
      Height = 25
      Hint = 'Imprime o relatório cfe. seleção acima'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn6Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777700000000000777707777777770707700000000000007070777777BBB77
        0007077777788877070700000000000007700777777777707070700000000007
        0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
        077777770FFFFFFFF07777777000000000777777777777777777}
    end
    object BitBtn1: TBitBtn
      Left = 123
      Top = 1
      Width = 120
      Height = 25
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
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
  end
  object mFornecedor: TMemoryTable
    Active = True
    Left = 224
    Top = 64
    object mFornecedorCustoFixo: TBooleanField
      FieldName = 'CustoFixo'
    end
    object mFornecedorCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object mFornecedorNomeFornecedor: TStringField
      FieldName = 'NomeFornecedor'
      Size = 40
    end
    object mFornecedorValor1: TFloatField
      FieldName = 'Valor1'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor2: TFloatField
      FieldName = 'Valor2'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor3: TFloatField
      FieldName = 'Valor3'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor4: TFloatField
      FieldName = 'Valor4'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor5: TFloatField
      FieldName = 'Valor5'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor6: TFloatField
      FieldName = 'Valor6'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor7: TFloatField
      FieldName = 'Valor7'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor8: TFloatField
      FieldName = 'Valor8'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor9: TFloatField
      FieldName = 'Valor9'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor10: TFloatField
      FieldName = 'Valor10'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor11: TFloatField
      FieldName = 'Valor11'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor12: TFloatField
      FieldName = 'Valor12'
      DisplayFormat = '###,###,##0.00'
    end
    object mFornecedorValor13: TFloatField
      FieldName = 'Valor13'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmFornecedores: TDataSource
    DataSet = mFornecedor
    Left = 256
    Top = 64
  end
  object qControle: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbfornecedores.CustoFixo, Dbfornecedores.CodForn, Dbforne' +
        'cedores.NomeForn, Dbcpagarparc.DtVencCPagar, SUM( Dbcpagarparc.V' +
        'lrParcCPagar ) Valor, SUM( Dbcpagarparc.VlrDevolucao ) VlrDevolu' +
        'cao'
      'FROM "DBCPAGARPARC.DB" Dbcpagarparc'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbcpagarparc.CodForn = Dbfornecedores.CodForn)  '
      'WHERE  (Dbfornecedores.CustoFixo = :CustoFixo) and '
      
        '               (Dbcpagarparc.DtVencCPagar between :Data1 and :Da' +
        'ta2)'
      
        'GROUP BY Dbfornecedores.CustoFixo, Dbfornecedores.CodForn, Dbfor' +
        'necedores.NomeForn, Dbcpagarparc.DtVencCPagar'
      
        'ORDER BY Dbfornecedores.CustoFixo, Dbfornecedores.NomeForn, Dbcp' +
        'agarparc.DtVencCPagar')
    Left = 16
    Top = 64
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'CustoFixo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Data2'
        ParamType = ptUnknown
      end>
    object qControleNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qControleDtVencCPagar: TDateField
      FieldName = 'DtVencCPagar'
      Origin = 'TABELAS."DBCPAGARPARC.DB".DtVencCPagar'
    end
    object qControleValor: TFloatField
      FieldName = 'Valor'
      Origin = 'TABELAS."DBCPAGARPARC.DB".VlrParcCPagar'
      DisplayFormat = '###,###,##0.00'
    end
    object qControleVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
      Origin = 'TABELAS."DBCPAGARPARC.DB".VlrDevolucao'
      DisplayFormat = '###,###,##0.00'
    end
    object qControleCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbFornecedores.DB".CodForn'
    end
    object qControleCustoFixo: TBooleanField
      FieldName = 'CustoFixo'
      Origin = 'TABELAS."dbFornecedores.DB".CustoFixo'
    end
  end
end
