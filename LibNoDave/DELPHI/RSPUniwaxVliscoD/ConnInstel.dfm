object ConnForm: TConnForm
  Left = 0
  Top = 0
  Width = 295
  Height = 251
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
    Top = 128
    Width = 18
    Height = 13
    Caption = 'Slot'
  end
  object Edit_IP: TEdit
    Left = 16
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '130.143.128.11'
  end
  object ButtonToepassen: TButton
    Left = 184
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Toepassen'
    TabOrder = 1
    OnClick = ButtonToepassenClick
  end
  object ButtonExit: TButton
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Sluiten'
    TabOrder = 2
    OnClick = ButtonExitClick
  end
  object Edit_RAck: TEdit
    Left = 16
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edit_SLot: TEdit
    Left = 16
    Top = 144
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '2'
  end
end
