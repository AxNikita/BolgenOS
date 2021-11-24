object CalculatorForm: TCalculatorForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 314
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TextMemo: TMemo
    Left = 7
    Top = 8
    Width = 185
    Height = 65
    TabOrder = 0
  end
  object ButtonC: TButton
    Left = 8
    Top = 270
    Width = 30
    Height = 30
    Caption = 'C'
    TabOrder = 1
    OnClick = ButtonCClick
  end
  object Button7: TButton
    Left = 8
    Top = 140
    Width = 30
    Height = 30
    Caption = '7'
    TabOrder = 2
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 59
    Top = 140
    Width = 30
    Height = 30
    Caption = '8'
    TabOrder = 3
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 111
    Top = 140
    Width = 30
    Height = 30
    Caption = '9'
    TabOrder = 4
    OnClick = Button9Click
  end
  object Button4: TButton
    Left = 8
    Top = 184
    Width = 30
    Height = 30
    Caption = '4'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 59
    Top = 184
    Width = 30
    Height = 30
    Caption = '5'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 111
    Top = 184
    Width = 30
    Height = 30
    Caption = '6'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button1: TButton
    Left = 8
    Top = 228
    Width = 30
    Height = 30
    Caption = '1'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 59
    Top = 228
    Width = 30
    Height = 30
    Caption = '2'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 111
    Top = 228
    Width = 30
    Height = 30
    Caption = '3'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button0: TButton
    Left = 59
    Top = 270
    Width = 30
    Height = 30
    Caption = '0'
    TabOrder = 11
    OnClick = Button0Click
  end
  object ButtonPoint: TButton
    Left = 111
    Top = 270
    Width = 30
    Height = 30
    Caption = '.'
    TabOrder = 12
    OnClick = ButtonPointClick
  end
  object ButtonEqually: TButton
    Left = 162
    Top = 270
    Width = 30
    Height = 30
    Caption = '='
    TabOrder = 13
    OnClick = ButtonEquallyClick
  end
  object ButtonPlus: TButton
    Left = 162
    Top = 228
    Width = 30
    Height = 30
    Caption = '+'
    TabOrder = 14
    OnClick = ButtonPlusClick
  end
  object ButtonMinus: TButton
    Left = 162
    Top = 184
    Width = 30
    Height = 30
    Caption = '-'
    TabOrder = 15
    OnClick = ButtonMinusClick
  end
  object ButtonMultiply: TButton
    Left = 162
    Top = 140
    Width = 30
    Height = 30
    Caption = 'x'
    TabOrder = 16
    OnClick = ButtonMultiplyClick
  end
  object ButtonDivide: TButton
    Left = 162
    Top = 96
    Width = 30
    Height = 30
    Caption = '/'
    TabOrder = 17
    OnClick = ButtonDivideClick
  end
end
