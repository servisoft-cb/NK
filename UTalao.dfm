object fTalao: TfTalao
  Left = 100
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tal'#227'o'
  ClientHeight = 527
  ClientWidth = 774
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
  object Label33: TLabel
    Left = 638
    Top = 377
    Width = 47
    Height = 13
    Caption = 'Produzido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed2: TALed
    Left = 618
    Top = 374
    Width = 16
    Height = 16
    FalseColor = clTeal
  end
  object Label32: TLabel
    Left = 638
    Top = 395
    Width = 51
    Height = 13
    Caption = 'Cancelado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed1: TALed
    Left = 618
    Top = 392
    Width = 16
    Height = 16
    FalseColor = clRed
  end
  object ALed3: TALed
    Left = 618
    Top = 426
    Width = 16
    Height = 16
    FalseColor = clAqua
  end
  object Label3: TLabel
    Left = 638
    Top = 429
    Width = 134
    Height = 13
    Caption = 'Selecionado para Impress'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed4: TALed
    Left = 618
    Top = 409
    Width = 16
    Height = 16
    FalseColor = clYellow
  end
  object Label4: TLabel
    Left = 638
    Top = 412
    Width = 82
    Height = 13
    Caption = 'Produzido Parcial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxDBGrid1: TRxDBGrid
    Left = 8
    Top = 32
    Width = 772
    Height = 327
    DataSource = DM1.dsTalao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RxDBGrid1DblClick
    OnGetCellParams = RxDBGrid1GetCellParams
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Talao'
        Title.Alignment = taCenter
        Title.Caption = 'Tal'#227'o'
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Ped.Cliente (OC)'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedCliDif'
        Title.Alignment = taCenter
        Title.Caption = 'Dig.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkReferencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkDescMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Desdobramento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Pedido'
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
        Expanded = False
        FieldName = 'lkNomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkDtEmbarque'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Embarque'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtGerado'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Gerado'
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
        Expanded = False
        FieldName = 'lkObsItem'
        Title.Caption = 'Observa'#231#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtBaixa'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Produzido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ImpressoData'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ImpressoHora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ImpressoUsuario'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 31
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 47
      Top = 5
      Width = 118
      Height = 26
      Hint = 'Confirma a gera'#231#227'o dos tal'#245'es'
      Caption = '&Gerar Tal'#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000D80E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080000080000000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080FFFFFF
        FFFFFF0080800080800080800080800080800080800080800080800080800080
        8000808000808000808080000000800000800080000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800000800000
        8000800000008080008080008080008080008080008080008080008080008080
        008080008080008080808080808080808080808080808080808080FFFFFFFFFF
        FF00808000808000808000808000808000808000808000808000808080000000
        8000008000008000008000008000008000800000008080008080008080008080
        0080800080800080800080800080800080808080808080808080808080808080
        80808080808080808080808080FFFFFF00808000808000808000808000808000
        808000808080000000800000800000800000FF00008000008000008000008000
        8000000080800080800080800080800080800080800080800080808080808080
        80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
        808000808000808000808000808000808000800000800000800000FF00008080
        00FF000080000080000080008000000080800080800080800080800080800080
        80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
        8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
        00800000FF0000808000808000808000FF000080000080000080008000000080
        80008080008080008080008080008080008080808080808080FFFFFF00808000
        8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
        00808000808000808000808000FF0000808000808000808000808000808000FF
        0000800000800000800080000000808000808000808000808000808000808000
        8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
        808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
        8000808000808000808000808000FF0000800000800000800080000000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
        8000808000808000808000808000808000808000808000808000808000FF0000
        8000008000008000800000008080008080008080008080008080008080008080
        008080008080008080008080008080008080FFFFFF8080808080808080808080
        80FFFFFF00808000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
        808000808000808000808000808000808000808000808000808000FF00008000
        0080000080008000000080800080800080800080800080800080800080800080
        80008080008080008080008080008080FFFFFF808080808080808080808080FF
        FFFF008080008080008080008080008080008080008080008080008080008080
        00808000808000808000FF000080000080008000000080800080800080800080
        80008080008080008080008080008080008080008080008080008080008080FF
        FFFF808080808080808080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF808080808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080FFFFFF
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 165
      Top = 5
      Width = 118
      Height = 26
      Hint = 'Excluir o tal'#227'o selecionado'
      Caption = '&Excluir Tal'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 401
      Top = 5
      Width = 118
      Height = 26
      Hint = 'Imprime os tal'#245'es'
      Caption = 'Im&primir Tal'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888800000000000888808888888880808800000000000008080888888BBB88
        0008088888877788080800000000000008800888888888808080800000000008
        0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
        088888880FFFFFFFF08888888000000000888888888888888888}
    end
    object BitBtn5: TBitBtn
      Left = 283
      Top = 5
      Width = 118
      Height = 26
      Hint = 'Excluir o tal'#227'o selecionado'
      Caption = '&Cancela Tal'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn5Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033337733333333333333333F333333333333
        0000333911733333973333333377F333333F3333000033391117333911733333
        37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
        911117111117333337F3337F733337F3000033333911111111733333337F3337
        3333F7330000333333911111173333333337F333333F73330000333333311111
        7333333333337F3333373333000033333339111173333333333337F333733333
        00003333339111117333333333333733337F3333000033333911171117333333
        33337333337F333300003333911173911173333333373337F337F33300003333
        9117333911173333337F33737F337F33000033333913333391113333337FF733
        37F337F300003333333333333919333333377333337FFF730000333333333333
        3333333333333333333777330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 617
      Top = 5
      Width = 136
      Height = 26
      Hint = 'Imprime os tal'#245'es'
      Caption = 'Imp. Tal'#227'o Branco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn6Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888800000000000888808888888880808800000000000008080888888BBB88
        0008088888877788080800000000000008800888888888808080800000000008
        0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
        088888880FFFFFFFF08888888000000000888888888888888888}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 478
    Width = 774
    Height = 48
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 80
      Height = 13
      Caption = 'Data Cancelado:'
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 80
      Height = 13
      Caption = 'Data Cancelado:'
    end
    object DBEdit1: TDBEdit
      Left = 90
      Top = 3
      Width = 95
      Height = 21
      Color = clInfoBk
      DataField = 'DtCancelado'
      DataSource = DM1.dsTalao
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 90
      Top = 24
      Width = 679
      Height = 21
      Color = clInfoBk
      DataField = 'MotivoCancelado'
      DataSource = DM1.dsTalao
      TabOrder = 1
    end
  end
  object StaticText1: TStaticText
    Left = 316
    Top = 482
    Width = 206
    Height = 17
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para marcar impress'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 548
    Top = 482
    Width = 213
    Height = 17
    Caption = 'Selecionar Todos para Impress'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object RxDBGrid2: TRxDBGrid
    Left = 1
    Top = 362
    Width = 310
    Height = 113
    Color = clInfoBk
    DataSource = DM1.dsTalaoHist
    TabOrder = 5
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
        Width = 40
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
        Title.Caption = 'Data da Baixa'
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
  object BitBtn4: TBitBtn
    Left = 313
    Top = 402
    Width = 118
    Height = 26
    Hint = 'Excluir a baixa do tal'#227'o'
    Caption = 'E&xcluir a Baixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn4Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsTalao
    Filter.Strings = (
      
        '((Cancelado = False) or (Cancelado is Null)) and (Imprimir = Tru' +
        'e)')
    Left = 608
    Top = 152
  end
  object tTalao2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbTalao.DB'
    Left = 488
    Top = 376
    object tTalao2Talao: TIntegerField
      FieldName = 'Talao'
    end
  end
  object dsmTalaoBranco: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 152
    Data = {
      250000009619E0BD010000001800000001000000000003000000250002494404
      000100000000000000}
    object dsmTalaoBrancoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = dsmTalaoBranco
    Left = 536
    Top = 152
  end
end
