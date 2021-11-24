object BrowserForm: TBrowserForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1041#1088#1072#1091#1079#1077#1088
  ClientHeight = 214
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SerchBrowserButton: TButton
    Left = 227
    Top = 8
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 0
    OnClick = SerchBrowserButtonClick
  end
  object SerchBrowserEdit: TEdit
    Left = 8
    Top = 8
    Width = 213
    Height = 21
    TabOrder = 1
  end
  object WebBrowser: TWebBrowser
    Left = 8
    Top = 39
    Width = 294
    Height = 167
    TabOrder = 2
    ControlData = {
      4C000000631E0000431100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
