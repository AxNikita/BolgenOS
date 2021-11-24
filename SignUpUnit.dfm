object SignUpForm: TSignUpForm
  Left = 43
  Top = 103
  BorderStyle = bsToolWindow
  Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1081#1090#1077#1089#1100
  ClientHeight = 614
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object SignUpLabel: TLabel
    Left = 232
    Top = 32
    Width = 350
    Height = 45
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1081#1090#1077#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object UsernameLabel: TLabel
    Left = 232
    Top = 120
    Width = 148
    Height = 20
    Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EmailLabel: TLabel
    Left = 232
    Top = 192
    Width = 158
    Height = 20
    Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1072#1076#1088#1077#1089':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object PasswordLabel: TLabel
    Left = 240
    Top = 264
    Width = 62
    Height = 20
    Caption = #1055#1072#1088#1086#1083#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object UsernameEdit: TEdit
    Left = 248
    Top = 152
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object EmailEdit: TEdit
    Left = 248
    Top = 224
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object PasswordEdit: TEdit
    Left = 248
    Top = 290
    Width = 321
    Height = 21
    TabOrder = 2
  end
  object SignUpButton: TButton
    Left = 328
    Top = 336
    Width = 150
    Height = 25
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103
    TabOrder = 3
    OnClick = SignUpButtonClick
  end
end
