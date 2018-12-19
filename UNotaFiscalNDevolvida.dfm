object fNotaFiscalNDevolvida: TfNotaFiscalNDevolvida
  Left = 35
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Notas Devolvidas'
  ClientHeight = 313
  ClientWidth = 710
  Color = 10930928
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
  object RxDBGrid1: TRxDBGrid
    Left = 3
    Top = 4
    Width = 704
    Height = 273
    Color = clInfoBk
    DataSource = DM1.dsNotaFiscalNDevolvida
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'CodFornecedor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeFornecedor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Fornecedor'
        Width = 266
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNotaEntrada'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemNotaEntrada'
        Title.Alignment = taCenter
        Title.Caption = 'Item da Nota'
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Devolvida'
        Width = 152
        Visible = True
      end>
  end
  object BitBtn5: TBitBtn
    Left = 602
    Top = 281
    Width = 105
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
end
