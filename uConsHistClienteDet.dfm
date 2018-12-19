object fConsHistClienteDet: TfConsHistClienteDet
  Left = 13
  Top = 42
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fConsHistClienteDet'
  ClientHeight = 502
  ClientWidth = 770
  Color = clBtnFace
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
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 768
    Height = 461
    ActivePage = TabSheet2
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pedidos Cancelados'
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
end
