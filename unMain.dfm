object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Teste Fortes - Deivid Nascimento Costa'
  ClientHeight = 301
  ClientWidth = 321
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  DesignSize = (
    321
    301)
  TextHeight = 15
  object lblTanque: TLabel
    Left = 24
    Top = 131
    Width = 41
    Height = 15
    Caption = 'Tanque:'
  end
  object lblBomba: TLabel
    Left = 104
    Top = 131
    Width = 41
    Height = 15
    Caption = 'Bomba:'
  end
  object lblLitros: TLabel
    Left = 24
    Top = 187
    Width = 32
    Height = 15
    Caption = 'Litros:'
  end
  object edtPosto: TLabeledEdit
    Left = 24
    Top = 32
    Width = 273
    Height = 23
    Hint = 'Nome do posto'
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 86
    EditLabel.Height = 15
    EditLabel.Caption = 'Nome do posto:'
    MaxLength = 50
    TabOrder = 0
    Text = 'ABC'
  end
  object spTanque: TSpinEdit
    Left = 24
    Top = 149
    Width = 65
    Height = 24
    Hint = 'Tanque'
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object rgCombustivel: TRadioGroup
    Left = 24
    Top = 61
    Width = 273
    Height = 60
    Hint = 'Combust'#237'vel'
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Combust'#237'vel'
    Columns = 2
    Items.Strings = (
      'Gasolina'
      #211'leo Diesel')
    TabOrder = 1
  end
  object spBomba: TSpinEdit
    Left = 104
    Top = 149
    Width = 65
    Height = 24
    Hint = 'Bomba'
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object edtValorComb: TLabeledEdit
    Left = 184
    Top = 149
    Width = 113
    Height = 23
    Hint = 'Valor do Combust'#237'vel'
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 111
    EditLabel.Height = 15
    EditLabel.Caption = 'Valor do Combut'#237'vel:'
    NumbersOnly = True
    TabOrder = 4
    Text = '7,43'
  end
  object spLitros: TSpinEdit
    Left = 24
    Top = 205
    Width = 65
    Height = 24
    Hint = 'Litros'
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
    OnChange = spLitrosChange
  end
  object edtValor: TLabeledEdit
    Left = 104
    Top = 205
    Width = 65
    Height = 23
    Hint = 'Valor'
    EditLabel.Width = 29
    EditLabel.Height = 15
    EditLabel.Caption = 'Valor:'
    ReadOnly = True
    TabOrder = 6
    Text = '0,00'
  end
  object edtValorFinal: TLabeledEdit
    Left = 184
    Top = 205
    Width = 113
    Height = 23
    Hint = 'Valor Final'
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 57
    EditLabel.Height = 15
    EditLabel.Caption = 'Valor Final:'
    ReadOnly = True
    TabOrder = 7
    Text = '0,00'
  end
  object btnSalvar: TButton
    Left = 222
    Top = 248
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnSalvarClick
  end
  object btnRelatorio: TButton
    Left = 24
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btnRelatorioClick
  end
  object btnLimpar: TButton
    Left = 123
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btnLimparClick
  end
end
