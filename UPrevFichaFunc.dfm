object fPrevFichaFunc: TfPrevFichaFunc
  Left = 7
  Top = 57
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio dos funcion'#225'rios'
  ClientHeight = 465
  ClientWidth = 772
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
  object Label1: TLabel
    Left = 140
    Top = 37
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 341
    Top = 37
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label3: TLabel
    Left = 136
    Top = 13
    Width = 58
    Height = 13
    Caption = 'Funcion'#225'rio:'
  end
  object DateEdit1: TDateEdit
    Left = 198
    Top = 29
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DateEdit2: TDateEdit
    Left = 394
    Top = 29
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 680
    Top = 27
    Width = 75
    Height = 27
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 680
    Top = 54
    Width = 75
    Height = 27
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 680
    Top = 0
    Width = 75
    Height = 27
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 96
    Width = 772
    Height = 369
    ActivePage = TabSheet3
    Align = alBottom
    TabIndex = 2
    TabOrder = 7
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'F'#233'rias'
      object RzDBGrid1: TRzDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 346
        Align = alClient
        DataSource = dsqFerias
        FixedColor = clInfoBk
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        FixedLineColor = clBlack
        LineColor = clBlack
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtInicial'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Inicial'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtFinal'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Final'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do funcion'#225'rio'
            Width = 253
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrSalario'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Sal'#225'rio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrSemanais'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Semanais'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtAdmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Admiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CTPS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' CTPS'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RG'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' PIS'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtNascimento'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Nascimento'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Serie'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TipoPgto'
            Title.Alignment = taCenter
            Title.Caption = 'Tip.Pagto.'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtDemissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Demiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Horario1'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Horario2'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercInsalubridade'
            Title.Alignment = taCenter
            Title.Caption = '% Insal.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercPericulosidade'
            Title.Alignment = taCenter
            Title.Caption = '% Peric.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Funcao'
            Title.Alignment = taCenter
            Title.Caption = 'Fun'#231#227'o'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Func.'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Sal'#225'rios'
      object RzDBGrid2: TRzDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 346
        Align = alClient
        DataSource = dsqSalarios
        FixedColor = clInfoBk
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        LineColor = clBlack
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Motivo'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do funcion'#225'rio'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtAdmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Admiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RG'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CTPS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' CTPS'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Serie'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PIS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' PIS'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtNascimento'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Nascimento'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrSemanais'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Semanais'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TipoPgto'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Pagto.'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VlrSalario'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Sal'#225'rio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtDemissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Demiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Horario1'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Horario2'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercInsalubridade'
            Title.Alignment = taCenter
            Title.Caption = '% Insal.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercPericulosidade'
            Title.Alignment = taCenter
            Title.Caption = '% Peric.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Funcao'
            Title.Alignment = taCenter
            Title.Caption = 'Fun'#231#227'o'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Funcion'#225'rio'
            Width = 64
            Visible = True
          end>
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Faltas'
      object RzDBGrid3: TRzDBGrid
        Left = 0
        Top = 0
        Width = 768
        Height = 346
        Align = alClient
        DataSource = dsqFaltas
        FixedColor = clInfoBk
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        LineColor = clBlack
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do funcion'#225'rio'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtAdmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Admiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RG'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CTPS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' CTPS'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Serie'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PIS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' PIS'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtNascimento'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Nascimento'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HrSemanais'
            Title.Alignment = taCenter
            Title.Caption = 'Hr.Semanais'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TipoPgto'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Pagto.'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VlrSalario'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Sal'#225'rio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtDemissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Demiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Horario1'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Horario2'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercInsalubridade'
            Title.Caption = '% Insal.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercPericulosidade'
            Title.Caption = '% Peric.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Funcao'
            Title.Caption = 'Fun'#231#227'o'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'C'#243'd.Funcion'#225'rio'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 122
    Height = 76
    Caption = ' Op'#231#227'o '
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = 'F'#233'rias'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 34
      Width = 97
      Height = 17
      Caption = 'Sal'#225'rios'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Faltas'
      TabOrder = 2
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 197
    Top = 6
    Width = 297
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsFuncionario
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
  end
  object qFerias: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbferias.DtInicial, Dbferias.DtFinal, Dbfuncionario.Codig' +
        'o, Dbfuncionario.Nome, Dbfuncionario.Endereco, Dbfuncionario.Cod' +
        'Cidade, Dbfuncionario.Bairro, Dbfuncionario.Cep, Dbfuncionario.F' +
        'one, Dbfuncionario.DtAdmissao, Dbfuncionario.CPF, Dbfuncionario.' +
        'RG, Dbfuncionario.CTPS, Dbfuncionario.Serie, Dbfuncionario.PIS, ' +
        'Dbfuncionario.DtNascimento, Dbfuncionario.HrSemanais, Dbfunciona' +
        'rio.TipoPgto, Dbfuncionario.VlrSalario, Dbfuncionario.DtDemissao' +
        ', Dbfuncionario.Horario1, Dbfuncionario.Horario2, Dbfuncionario.' +
        'PercInsalubridade, Dbfuncionario.PercPericulosidade, Dbfuncionar' +
        'io.Uf, Dbfuncionario.Obs, Dbfuncionario.EstCivil, Dbfuncionario.' +
        'Escolaridade, Dbfuncionario.Funcao, Dbfuncionario.NomeConjuge'
      'FROM "dbFuncionario.DB" Dbfuncionario'
      '   INNER JOIN "dbFerias.DB" Dbferias'
      '   ON  (Dbfuncionario.Codigo = Dbferias.CodFuncionario)  '
      
        'WHERE   Dbferias.DtInicial BETWEEN '#39'01/01/2006'#39' AND '#39'01/01/2007'#39 +
        '  '
      '   OR  Dbferias.DtFinal BETWEEN '#39'01/01/2006'#39' AND '#39'01/01/2007'#39'  '
      'ORDER BY Dbferias.DtInicial')
    Left = 392
    Top = 320
    object qFeriasDtInicial: TDateField
      FieldName = 'DtInicial'
      Origin = 'TABELAS."dbFerias.DB".DtInicial'
    end
    object qFeriasDtFinal: TDateField
      FieldName = 'DtFinal'
      Origin = 'TABELAS."dbFerias.DB".DtFinal'
    end
    object qFeriasCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbFuncionario.DB".Codigo'
    end
    object qFeriasNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbFuncionario.DB".Nome'
      Size = 50
    end
    object qFeriasEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'TABELAS."dbFuncionario.DB".Endereco'
      Size = 40
    end
    object qFeriasCodCidade: TIntegerField
      FieldName = 'CodCidade'
      Origin = 'TABELAS."dbFuncionario.DB".CodCidade'
    end
    object qFeriasBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'TABELAS."dbFuncionario.DB".Bairro'
    end
    object qFeriasCep: TStringField
      FieldName = 'Cep'
      Origin = 'TABELAS."dbFuncionario.DB".Cep'
      Size = 9
    end
    object qFeriasFone: TStringField
      FieldName = 'Fone'
      Origin = 'TABELAS."dbFuncionario.DB".Fone'
      Size = 15
    end
    object qFeriasDtAdmissao: TDateField
      FieldName = 'DtAdmissao'
      Origin = 'TABELAS."dbFuncionario.DB".DtAdmissao'
    end
    object qFeriasCPF: TStringField
      FieldName = 'CPF'
      Origin = 'TABELAS."dbFuncionario.DB".CPF'
      Size = 11
    end
    object qFeriasRG: TStringField
      FieldName = 'RG'
      Origin = 'TABELAS."dbFuncionario.DB".RG'
      Size = 11
    end
    object qFeriasCTPS: TIntegerField
      FieldName = 'CTPS'
      Origin = 'TABELAS."dbFuncionario.DB".CTPS'
    end
    object qFeriasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'TABELAS."dbFuncionario.DB".Serie'
      Size = 5
    end
    object qFeriasPIS: TStringField
      FieldName = 'PIS'
      Origin = 'TABELAS."dbFuncionario.DB".PIS'
      Size = 11
    end
    object qFeriasDtNascimento: TDateField
      FieldName = 'DtNascimento'
      Origin = 'TABELAS."dbFuncionario.DB".DtNascimento'
    end
    object qFeriasHrSemanais: TFloatField
      FieldName = 'HrSemanais'
      Origin = 'TABELAS."dbFuncionario.DB".HrSemanais'
    end
    object qFeriasTipoPgto: TStringField
      FieldName = 'TipoPgto'
      Origin = 'TABELAS."dbFuncionario.DB".TipoPgto'
      Size = 1
    end
    object qFeriasVlrSalario: TFloatField
      FieldName = 'VlrSalario'
      Origin = 'TABELAS."dbFuncionario.DB".VlrSalario'
      DisplayFormat = '###,###,##0.00'
    end
    object qFeriasDtDemissao: TDateField
      FieldName = 'DtDemissao'
      Origin = 'TABELAS."dbFuncionario.DB".DtDemissao'
    end
    object qFeriasHorario1: TStringField
      FieldName = 'Horario1'
      Origin = 'TABELAS."dbFuncionario.DB".Horario1'
      Size = 30
    end
    object qFeriasHorario2: TStringField
      FieldName = 'Horario2'
      Origin = 'TABELAS."dbFuncionario.DB".Horario2'
      Size = 30
    end
    object qFeriasPercInsalubridade: TFloatField
      FieldName = 'PercInsalubridade'
      Origin = 'TABELAS."dbFuncionario.DB".PercInsalubridade'
    end
    object qFeriasPercPericulosidade: TFloatField
      FieldName = 'PercPericulosidade'
      Origin = 'TABELAS."dbFuncionario.DB".PercPericulosidade'
    end
    object qFeriasUf: TStringField
      FieldName = 'Uf'
      Origin = 'TABELAS."dbFuncionario.DB".Uf'
      Size = 2
    end
    object qFeriasObs: TMemoField
      FieldName = 'Obs'
      Origin = 'TABELAS."dbFuncionario.DB".Obs'
      BlobType = ftMemo
      Size = 1
    end
    object qFeriasEstCivil: TStringField
      FieldName = 'EstCivil'
      Origin = 'TABELAS."dbFuncionario.DB".EstCivil'
      Size = 15
    end
    object qFeriasEscolaridade: TStringField
      FieldName = 'Escolaridade'
      Origin = 'TABELAS."dbFuncionario.DB".Escolaridade'
    end
    object qFeriasFuncao: TStringField
      FieldName = 'Funcao'
      Origin = 'TABELAS."dbFuncionario.DB".Funcao'
    end
    object qFeriasNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Origin = 'TABELAS."dbFuncionario.DB".NomeConjuge'
      Size = 40
    end
  end
  object qSalarios: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbsalario.Data, Dbsalario.Motivo, Dbsalario.Valor, Dbfunc' +
        'ionario.Codigo, Dbfuncionario.Nome, Dbfuncionario.Endereco, Dbfu' +
        'ncionario.CodCidade, Dbfuncionario.Bairro, Dbfuncionario.Cep, Db' +
        'funcionario.Fone, Dbfuncionario.DtAdmissao, Dbfuncionario.CPF, D' +
        'bfuncionario.RG, Dbfuncionario.CTPS, Dbfuncionario.Serie, Dbfunc' +
        'ionario.PIS, Dbfuncionario.DtNascimento, Dbfuncionario.HrSemanai' +
        's, Dbfuncionario.TipoPgto, Dbfuncionario.VlrSalario, Dbfuncionar' +
        'io.DtDemissao, Dbfuncionario.Horario1, Dbfuncionario.Horario2, D' +
        'bfuncionario.PercInsalubridade, Dbfuncionario.PercPericulosidade' +
        ', Dbfuncionario.Uf, Dbfuncionario.Obs, Dbfuncionario.EstCivil, D' +
        'bfuncionario.Escolaridade, Dbfuncionario.Funcao, Dbfuncionario.N' +
        'omeConjuge'
      'FROM "dbFuncionario.DB" Dbfuncionario'
      '   INNER JOIN "dbSalario.DB" Dbsalario'
      '   ON  (Dbfuncionario.Codigo = Dbsalario.CodFuncionario)  '
      'WHERE  Dbsalario.Data BETWEEN '#39'01/01/2006'#39' AND '#39'01/01/2007'#39' '
      'ORDER BY Dbsalario.Data')
    Left = 480
    Top = 312
    object qSalariosData: TDateField
      FieldName = 'Data'
      Origin = 'TABELAS."dbSalario.DB".Data'
    end
    object qSalariosMotivo: TStringField
      FieldName = 'Motivo'
      Origin = 'TABELAS."dbSalario.DB".Motivo'
      Size = 50
    end
    object qSalariosValor: TFloatField
      FieldName = 'Valor'
      Origin = 'TABELAS."dbSalario.DB".Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qSalariosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbFuncionario.DB".Codigo'
    end
    object qSalariosNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbFuncionario.DB".Nome'
      Size = 50
    end
    object qSalariosEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'TABELAS."dbFuncionario.DB".Endereco'
      Size = 40
    end
    object qSalariosCodCidade: TIntegerField
      FieldName = 'CodCidade'
      Origin = 'TABELAS."dbFuncionario.DB".CodCidade'
    end
    object qSalariosBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'TABELAS."dbFuncionario.DB".Bairro'
    end
    object qSalariosCep: TStringField
      FieldName = 'Cep'
      Origin = 'TABELAS."dbFuncionario.DB".Cep'
      Size = 9
    end
    object qSalariosFone: TStringField
      FieldName = 'Fone'
      Origin = 'TABELAS."dbFuncionario.DB".Fone'
      Size = 15
    end
    object qSalariosDtAdmissao: TDateField
      FieldName = 'DtAdmissao'
      Origin = 'TABELAS."dbFuncionario.DB".DtAdmissao'
    end
    object qSalariosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'TABELAS."dbFuncionario.DB".CPF'
      Size = 11
    end
    object qSalariosRG: TStringField
      FieldName = 'RG'
      Origin = 'TABELAS."dbFuncionario.DB".RG'
      Size = 11
    end
    object qSalariosCTPS: TIntegerField
      FieldName = 'CTPS'
      Origin = 'TABELAS."dbFuncionario.DB".CTPS'
    end
    object qSalariosSerie: TStringField
      FieldName = 'Serie'
      Origin = 'TABELAS."dbFuncionario.DB".Serie'
      Size = 5
    end
    object qSalariosPIS: TStringField
      FieldName = 'PIS'
      Origin = 'TABELAS."dbFuncionario.DB".PIS'
      Size = 11
    end
    object qSalariosDtNascimento: TDateField
      FieldName = 'DtNascimento'
      Origin = 'TABELAS."dbFuncionario.DB".DtNascimento'
    end
    object qSalariosHrSemanais: TFloatField
      FieldName = 'HrSemanais'
      Origin = 'TABELAS."dbFuncionario.DB".HrSemanais'
    end
    object qSalariosTipoPgto: TStringField
      FieldName = 'TipoPgto'
      Origin = 'TABELAS."dbFuncionario.DB".TipoPgto'
      Size = 1
    end
    object qSalariosVlrSalario: TFloatField
      FieldName = 'VlrSalario'
      Origin = 'TABELAS."dbFuncionario.DB".VlrSalario'
      DisplayFormat = '###,###,##0.00'
    end
    object qSalariosDtDemissao: TDateField
      FieldName = 'DtDemissao'
      Origin = 'TABELAS."dbFuncionario.DB".DtDemissao'
    end
    object qSalariosHorario1: TStringField
      FieldName = 'Horario1'
      Origin = 'TABELAS."dbFuncionario.DB".Horario1'
      Size = 30
    end
    object qSalariosHorario2: TStringField
      FieldName = 'Horario2'
      Origin = 'TABELAS."dbFuncionario.DB".Horario2'
      Size = 30
    end
    object qSalariosPercInsalubridade: TFloatField
      FieldName = 'PercInsalubridade'
      Origin = 'TABELAS."dbFuncionario.DB".PercInsalubridade'
    end
    object qSalariosPercPericulosidade: TFloatField
      FieldName = 'PercPericulosidade'
      Origin = 'TABELAS."dbFuncionario.DB".PercPericulosidade'
    end
    object qSalariosUf: TStringField
      FieldName = 'Uf'
      Origin = 'TABELAS."dbFuncionario.DB".Uf'
      Size = 2
    end
    object qSalariosObs: TMemoField
      FieldName = 'Obs'
      Origin = 'TABELAS."dbFuncionario.DB".Obs'
      BlobType = ftMemo
      Size = 1
    end
    object qSalariosEstCivil: TStringField
      FieldName = 'EstCivil'
      Origin = 'TABELAS."dbFuncionario.DB".EstCivil'
      Size = 15
    end
    object qSalariosEscolaridade: TStringField
      FieldName = 'Escolaridade'
      Origin = 'TABELAS."dbFuncionario.DB".Escolaridade'
    end
    object qSalariosFuncao: TStringField
      FieldName = 'Funcao'
      Origin = 'TABELAS."dbFuncionario.DB".Funcao'
    end
    object qSalariosNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Origin = 'TABELAS."dbFuncionario.DB".NomeConjuge'
      Size = 40
    end
  end
  object dsqFerias: TDataSource
    DataSet = qFerias
    Left = 408
    Top = 320
  end
  object dsqSalarios: TDataSource
    DataSet = qSalarios
    Left = 496
    Top = 312
  end
  object qFaltas: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbfuncfaltas.Data, Dbfuncfaltas.Descricao, Dbfuncionario.' +
        'Codigo, Dbfuncionario.Nome, Dbfuncionario.Endereco, Dbfuncionari' +
        'o.CodCidade, Dbfuncionario.Bairro, Dbfuncionario.Cep, Dbfunciona' +
        'rio.Fone, Dbfuncionario.DtAdmissao, Dbfuncionario.CPF, Dbfuncion' +
        'ario.RG, Dbfuncionario.CTPS, Dbfuncionario.Serie, Dbfuncionario.' +
        'PIS, Dbfuncionario.DtNascimento, Dbfuncionario.HrSemanais, Dbfun' +
        'cionario.TipoPgto, Dbfuncionario.VlrSalario, Dbfuncionario.DtDem' +
        'issao, Dbfuncionario.Horario1, Dbfuncionario.Horario2, Dbfuncion' +
        'ario.PercInsalubridade, Dbfuncionario.PercPericulosidade, Dbfunc' +
        'ionario.Uf, Dbfuncionario.Obs, Dbfuncionario.EstCivil, Dbfuncion' +
        'ario.Escolaridade, Dbfuncionario.Funcao, Dbfuncionario.NomeConju' +
        'ge'
      'FROM "dbFuncionario.DB" Dbfuncionario'
      '   INNER JOIN "dbFuncFaltas.DB" Dbfuncfaltas'
      '   ON  (Dbfuncionario.Codigo = Dbfuncfaltas.CodFuncionario)  '
      'WHERE  Dbfuncfaltas.Data BETWEEN '#39'01/01/2006'#39' AND '#39'01/01/2007'#39' '
      'ORDER BY Dbfuncfaltas.Data')
    Left = 544
    Top = 320
    object qFaltasData: TDateField
      FieldName = 'Data'
      Origin = 'TABELAS."dbFuncFaltas.DB".Data'
    end
    object qFaltasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'TABELAS."dbFuncFaltas.DB".Descricao'
      Size = 60
    end
    object qFaltasCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbFuncionario.DB".Codigo'
    end
    object qFaltasNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbFuncionario.DB".Nome'
      Size = 50
    end
    object qFaltasEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'TABELAS."dbFuncionario.DB".Endereco'
      Size = 40
    end
    object qFaltasCodCidade: TIntegerField
      FieldName = 'CodCidade'
      Origin = 'TABELAS."dbFuncionario.DB".CodCidade'
    end
    object qFaltasBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'TABELAS."dbFuncionario.DB".Bairro'
    end
    object qFaltasCep: TStringField
      FieldName = 'Cep'
      Origin = 'TABELAS."dbFuncionario.DB".Cep'
      Size = 9
    end
    object qFaltasFone: TStringField
      FieldName = 'Fone'
      Origin = 'TABELAS."dbFuncionario.DB".Fone'
      Size = 15
    end
    object qFaltasDtAdmissao: TDateField
      FieldName = 'DtAdmissao'
      Origin = 'TABELAS."dbFuncionario.DB".DtAdmissao'
    end
    object qFaltasCPF: TStringField
      FieldName = 'CPF'
      Origin = 'TABELAS."dbFuncionario.DB".CPF'
      Size = 11
    end
    object qFaltasRG: TStringField
      FieldName = 'RG'
      Origin = 'TABELAS."dbFuncionario.DB".RG'
      Size = 11
    end
    object qFaltasCTPS: TIntegerField
      FieldName = 'CTPS'
      Origin = 'TABELAS."dbFuncionario.DB".CTPS'
    end
    object qFaltasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'TABELAS."dbFuncionario.DB".Serie'
      Size = 5
    end
    object qFaltasPIS: TStringField
      FieldName = 'PIS'
      Origin = 'TABELAS."dbFuncionario.DB".PIS'
      Size = 11
    end
    object qFaltasDtNascimento: TDateField
      FieldName = 'DtNascimento'
      Origin = 'TABELAS."dbFuncionario.DB".DtNascimento'
    end
    object qFaltasHrSemanais: TFloatField
      FieldName = 'HrSemanais'
      Origin = 'TABELAS."dbFuncionario.DB".HrSemanais'
    end
    object qFaltasTipoPgto: TStringField
      FieldName = 'TipoPgto'
      Origin = 'TABELAS."dbFuncionario.DB".TipoPgto'
      Size = 1
    end
    object qFaltasVlrSalario: TFloatField
      FieldName = 'VlrSalario'
      Origin = 'TABELAS."dbFuncionario.DB".VlrSalario'
      DisplayFormat = '###,###,##0.00'
    end
    object qFaltasDtDemissao: TDateField
      FieldName = 'DtDemissao'
      Origin = 'TABELAS."dbFuncionario.DB".DtDemissao'
    end
    object qFaltasHorario1: TStringField
      FieldName = 'Horario1'
      Origin = 'TABELAS."dbFuncionario.DB".Horario1'
      Size = 30
    end
    object qFaltasHorario2: TStringField
      FieldName = 'Horario2'
      Origin = 'TABELAS."dbFuncionario.DB".Horario2'
      Size = 30
    end
    object qFaltasPercInsalubridade: TFloatField
      FieldName = 'PercInsalubridade'
      Origin = 'TABELAS."dbFuncionario.DB".PercInsalubridade'
    end
    object qFaltasPercPericulosidade: TFloatField
      FieldName = 'PercPericulosidade'
      Origin = 'TABELAS."dbFuncionario.DB".PercPericulosidade'
    end
    object qFaltasUf: TStringField
      FieldName = 'Uf'
      Origin = 'TABELAS."dbFuncionario.DB".Uf'
      Size = 2
    end
    object qFaltasObs: TMemoField
      FieldName = 'Obs'
      Origin = 'TABELAS."dbFuncionario.DB".Obs'
      BlobType = ftMemo
      Size = 1
    end
    object qFaltasEstCivil: TStringField
      FieldName = 'EstCivil'
      Origin = 'TABELAS."dbFuncionario.DB".EstCivil'
      Size = 15
    end
    object qFaltasEscolaridade: TStringField
      FieldName = 'Escolaridade'
      Origin = 'TABELAS."dbFuncionario.DB".Escolaridade'
    end
    object qFaltasFuncao: TStringField
      FieldName = 'Funcao'
      Origin = 'TABELAS."dbFuncionario.DB".Funcao'
    end
    object qFaltasNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Origin = 'TABELAS."dbFuncionario.DB".NomeConjuge'
      Size = 40
    end
  end
  object dsqFaltas: TDataSource
    DataSet = qFaltas
    Left = 568
    Top = 320
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Codigo'
    Params = <>
    Left = 568
    Top = 24
    Data = {
      290000009619E0BD010000001800000001000000000003000000290006436F64
      69676F04000100000000000000}
    object mAuxiliarCodigo: TIntegerField
      FieldName = 'Codigo'
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 592
    Top = 24
  end
end
