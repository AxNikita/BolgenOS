object SignInForm: TSignInForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1086#1081#1076#1080#1090#1077
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
  object UsernameLabel: TLabel
    Left = 340
    Top = 216
    Width = 99
    Height = 13
    Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
  end
  object PasswordLabel: TLabel
    Left = 340
    Top = 272
    Width = 41
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object LanguageLabel: TLabel
    Left = 8
    Top = 560
    Width = 31
    Height = 13
    Caption = #1071#1079#1099#1082':'
  end
  object UsernameEdit: TEdit
    Left = 340
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object PasswordEdit: TEdit
    Left = 340
    Top = 292
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object SignInButton: TButton
    Left = 365
    Top = 328
    Width = 75
    Height = 25
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 2
    OnClick = SignInButtonClick
  end
  object SignUpButton: TButton
    Left = 340
    Top = 368
    Width = 121
    Height = 25
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103
    TabOrder = 3
    OnClick = SignUpButtonClick
  end
  object LanguageComboBox: TComboBox
    Left = 8
    Top = 579
    Width = 89
    Height = 21
    TabOrder = 4
    Text = #1056#1091#1089#1089#1082#1080#1081
    OnChange = LanguageComboBoxChange
    Items.Strings = (
      #1056#1091#1089#1089#1082#1080#1081
      'English')
  end
end
