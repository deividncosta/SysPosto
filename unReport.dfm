object frmReport: TfrmReport
  Left = 0
  Top = 0
  Caption = 'frmReport'
  ClientHeight = 570
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object RLReportPosto: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DSReport
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 193
        Top = 25
        Width = 331
        Height = 25
        Align = faCenter
        Caption = 'Relat'#243'rio de Movimenta'#231#245'es do Posto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 640
        Top = 16
        Width = 65
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 607
        Top = 16
        Width = 31
        Height = 15
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 607
        Top = 33
        Width = 32
        Height = 15
        Caption = 'Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 640
        Top = 33
        Width = 38
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 43
      Color = clMenu
      ParentColor = False
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 1
        Top = 3
        Width = 36
        Height = 15
        Caption = 'Posto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 40
        Top = 3
        Width = 40
        Height = 15
        DataField = 'POSTO'
        DataSource = DSReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 433
        Top = 3
        Width = 69
        Height = 15
        Caption = 'Data e Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 505
        Top = 3
        Width = 66
        Height = 15
        DataField = 'DATAHORA'
        DataSource = DSReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 1
        Top = 24
        Width = 72
        Height = 15
        Caption = 'Combust'#237'vel:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 76
        Top = 24
        Width = 80
        Height = 15
        DataField = 'COMBUSTIVEL'
        DataSource = DSReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 211
        Top = 24
        Width = 44
        Height = 15
        Caption = 'Bomba:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 258
        Top = 24
        Width = 45
        Height = 15
        DataField = 'BOMBA'
        DataSource = DSReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 361
        Top = 24
        Width = 40
        Height = 15
        DataField = 'LITROS'
        DataSource = DSReport
        DisplayMask = '###,##0.00 L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 323
        Top = 24
        Width = 35
        Height = 15
        Caption = 'Litros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 464
        Top = 24
        Width = 40
        Height = 15
        DataField = 'VALOR'
        DataSource = DSReport
        DisplayMask = 'R$ ###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 427
        Top = 24
        Width = 34
        Height = 15
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 621
        Top = 24
        Width = 96
        Height = 15
        DataField = 'VALOR_IMPOSTO'
        DataSource = DSReport
        DisplayMask = 'R$ ###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 555
        Top = 24
        Width = 62
        Height = 15
        Caption = 'Valor Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 159
      Width = 718
      Height = 58
      BandType = btSummary
      Transparent = False
      object RLLabel11: TRLLabel
        Left = 601
        Top = 44
        Width = 114
        Height = 11
        Caption = 'Desenvolvido por: Deivid Costa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 641
        Top = 3
        Width = 74
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Info = itDetailCount
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 539
        Top = 3
        Width = 100
        Height = 15
        Caption = 'Total de Registros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 156
      Width = 718
      Height = 3
      Transparent = False
    end
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\Source\Projetos\Teste Fortes\posto.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 195
    Top = 296
  end
  object FDQryReport: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      
        'SELECT POSTO, DATAHORA, CASE COMBUSTIVEL WHEN '#39'G'#39' THEN '#39'Gasolina' +
        #39' '
      
        'WHEN '#39'D'#39' THEN '#39#211'leo Diesel'#39' END COMBUSTIVEL, BOMBA, LITROS, VALO' +
        'R,'
      'VALOR_IMPOSTO  FROM POSTO')
    Left = 256
    Top = 296
  end
  object DSReport: TDataSource
    DataSet = FDQryReport
    Left = 320
    Top = 296
  end
end
