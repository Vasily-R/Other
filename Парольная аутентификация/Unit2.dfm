object Form2: TForm2
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsDialog
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1074' '#1089#1080#1089#1090#1077#1084#1077
  ClientHeight = 183
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 146
    Top = 19
    Width = 30
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object Label2: TLabel
    Left = 146
    Top = 46
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label3: TLabel
    Left = 58
    Top = 80
    Width = 37
    Height = 13
    Caption = 'Label3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 93
    Top = 69
    Width = 37
    Height = 13
    Caption = 'Label4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 316
    Top = 19
    Width = 37
    Height = 13
    Caption = 'Label5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 316
    Top = 46
    Width = 37
    Height = 13
    Caption = 'Label6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 415
    Top = 162
    Width = 96
    Height = 13
    Caption = #169' '#1053#1077#1087#1077#1081#1074#1086#1076#1072' '#1042'. '#1048'.'
  end
  object Edit1: TEdit
    Left = 189
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit2Change
    OnKeyPress = Edit2KeyPress
  end
  object Edit2: TEdit
    Left = 189
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 183
    Top = 150
    Width = 145
    Height = 25
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103
    Enabled = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
