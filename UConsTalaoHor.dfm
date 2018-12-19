object fConsTalaoHor: TfConsTalaoHor
  Left = 78
  Top = 209
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Tal'#245'es (Hor'#225'rios)'
  ClientHeight = 525
  ClientWidth = 785
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
  object RxLabel1: TRxLabel
    Left = 680
    Top = 344
    Width = 89
    Height = 13
    Caption = 'Total de horas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxDBGrid1: TRxDBGrid
    Left = 1
    Top = 2
    Width = 783
    Height = 305
    Color = clInfoBk
    DataSource = DM1.dsTalaoHor
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
        FieldName = 'NumTalao'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'Funcion'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeSetor'
        Title.Alignment = taCenter
        Title.Caption = 'Setor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada1'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Entrada 1'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida1'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Saida 1'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada2'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Entrada 2'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida2'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Saida 2'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrEntrada3'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Entrada 3'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrSaida3'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Saida 3'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Funcion'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodSetor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Setor'
        Visible = True
      end>
  end
  object BitBtn6: TBitBtn
    Left = 715
    Top = 488
    Width = 70
    Height = 28
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn6Click
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
    Left = 0
    Top = 317
    Width = 641
    Height = 206
    ActivePage = TabSheet1
    SaveResources = True
    FlatColor = clBlue
    ParentShowHint = False
    ShowHint = False
    ShowShadow = False
    TabIndex = 0
    TabOrder = 2
    TextColors.DisabledShadow = clActiveBorder
    UseGradients = False
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Hist'#243'rico (Qtd.Produzida)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object RxDBGrid2: TRxDBGrid
        Left = 3
        Top = 3
        Width = 400
        Height = 179
        Color = clInfoBk
        DataSource = DM1.dsTalaoHist
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
            FieldName = 'Talao'
            Title.Alignment = taCenter
            Title.Caption = 'Tal'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdProduzida'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Produzida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtBaixa'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Baixa'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumMovEst'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Mov.Estoque'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Horas'
      object RxDBGrid3: TRxDBGrid
        Left = 4
        Top = 3
        Width = 630
        Height = 179
        Color = clInfoBk
        DataSource = dsmHoras
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
            Expanded = False
            FieldName = 'NomeFuncionario'
            Title.Alignment = taCenter
            Title.Caption = 'Funcion'#225'rio'
            Width = 311
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeSetor'
            Title.Alignment = taCenter
            Title.Caption = 'Setor'
            Width = 173
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TotalHoras'
            Title.Alignment = taCenter
            Title.Caption = 'Total de Horas'
            Width = 105
            Visible = True
          end>
      end
    end
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 656
    Top = 360
    Width = 121
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clAqua
    DisplayFormat = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object mHoras: TMemoryTable
    Active = True
    Left = 576
    Top = 328
    object mHorasCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object mHorasCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mHorasNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 40
    end
    object mHorasNomeSetor: TStringField
      FieldName = 'NomeSetor'
    end
    object mHorasTotalHoras: TFloatField
      FieldName = 'TotalHoras'
    end
  end
  object dsmHoras: TDataSource
    DataSet = mHoras
    Left = 593
    Top = 329
  end
end
