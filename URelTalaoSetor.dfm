object Form1: TForm1
  Left = 313
  Top = 231
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 8
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 355
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 0
        Width = 718
        Height = 97
        object RLDBText1: TRLDBText
          Left = 0
          Top = 48
          Width = 87
          Height = 16
          DataField = 'NOMESETOR'
          DataSource = fConsTalaoSetor.dsConsulta
        end
        object RLDBText2: TRLDBText
          Left = 104
          Top = 48
          Width = 46
          Height = 16
          DataField = 'TALAO'
          DataSource = fConsTalaoSetor.dsConsulta
        end
      end
    end
  end
end
