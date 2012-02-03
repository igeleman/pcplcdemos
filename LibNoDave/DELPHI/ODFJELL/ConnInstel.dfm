object ConnForm: TConnForm
  Left = 0
  Top = 0
  Width = 373
  Height = 283
  Caption = 'Connection settings PLC'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 40
    Height = 13
    Caption = 'IP adres'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 23
    Height = 13
    Caption = 'Rack'
  end
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 18
    Height = 13
    Caption = 'Slot'
  end
  object Label4: TLabel
    Left = 200
    Top = 32
    Width = 40
    Height = 13
    Caption = 'IP adres'
  end
  object Label5: TLabel
    Left = 200
    Top = 80
    Width = 23
    Height = 13
    Caption = 'Rack'
  end
  object Label6: TLabel
    Left = 200
    Top = 120
    Width = 18
    Height = 13
    Caption = 'Slot'
  end
  object Label7: TLabel
    Left = 56
    Top = 8
    Width = 20
    Height = 16
    Caption = 'FFU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 240
    Top = 8
    Width = 24
    Height = 16
    Caption = 'BGB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit_IP_FFU: TEdit
    Left = 16
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '130.143.128.11'
  end
  object ButtonToepassen: TButton
    Left = 152
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Toepassen'
    TabOrder = 1
    OnClick = ButtonToepassenClick
  end
  object ButtonExit: TButton
    Left = 248
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Sluiten'
    TabOrder = 2
    OnClick = ButtonExitClick
  end
  object Edit_Rack_FFU: TEdit
    Left = 16
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edit_SLot_FFU: TEdit
    Left = 16
    Top = 136
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '2'
  end
  object Edit_IP_BGB: TEdit
    Left = 200
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '130.143.128.12'
  end
  object Edit_Rack_BGB: TEdit
    Left = 200
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object Edit_SLot_BGB: TEdit
    Left = 200
    Top = 136
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '2'
  end
end
