object PlayerForm: TPlayerForm
  Left = 0
  Top = 0
  Caption = #1052#1091#1079#1099#1082#1072
  ClientHeight = 264
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MediaPlayer: TMediaPlayer
    Left = 8
    Top = 8
    Width = 85
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop]
    DoubleBuffered = True
    Display = VideoPanel
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object FileNameButton: TButton
    Left = 112
    Top = 8
    Width = 75
    Height = 30
    Caption = #1060#1072#1081#1083
    TabOrder = 1
    OnClick = FileNameButtonClick
  end
  object VideoPanel: TPanel
    Left = 2
    Top = 44
    Width = 271
    Height = 221
    Color = clInfoText
    ParentBackground = False
    TabOrder = 2
  end
  object FileNameOpenDialog: TOpenDialog
    Left = 112
    Top = 8
  end
end
