object ReestrForm: TReestrForm
  Left = 0
  Top = 0
  Caption = #1056#1077#1077#1089#1090#1088
  ClientHeight = 364
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ReestrFileListBox: TFileListBox
    Left = 0
    Top = 0
    Width = 185
    Height = 305
    ItemHeight = 13
    TabOrder = 0
  end
  object KarantinFileListBox: TFileListBox
    Left = 191
    Top = 0
    Width = 186
    Height = 305
    ItemHeight = 13
    TabOrder = 1
  end
  object KarantinButton: TButton
    Left = 48
    Top = 320
    Width = 75
    Height = 25
    Caption = #1042' '#1082#1072#1088#1072#1085#1090#1080#1085
    TabOrder = 2
    OnClick = KarantinButtonClick
  end
  object RestoreButton: TButton
    Left = 248
    Top = 320
    Width = 81
    Height = 25
    Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
    TabOrder = 3
    OnClick = RestoreButtonClick
  end
end
