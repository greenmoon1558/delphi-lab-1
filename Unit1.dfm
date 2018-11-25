object Form1: TForm1
  Left = 228
  Top = 163
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'Form1'
  ClientHeight = 499
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object imgCanvas: TImage
    Left = 40
    Top = 32
    Width = 265
    Height = 249
  end
  object pnl1: TPanel
    Left = 608
    Top = 24
    Width = 377
    Height = 265
    TabOrder = 0
    object lbl1: TLabel
      Left = 40
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Enter Angle'
    end
    object lbl2: TLabel
      Left = 40
      Top = 96
      Width = 79
      Height = 13
      Caption = 'Angle Increment'
    end
    object btnSet: TButton
      Left = 280
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 0
      OnClick = btnSetClick
    end
    object btnPlus: TButton
      Left = 288
      Top = 112
      Width = 25
      Height = 25
      Caption = '+'
      TabOrder = 1
      OnClick = btnPlusClick
    end
    object btnMinus: TButton
      Left = 312
      Top = 112
      Width = 25
      Height = 25
      Caption = '-'
      TabOrder = 2
      OnClick = btnMinusClick
    end
    object edtAngle: TEdit
      Left = 40
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '45'
      OnKeyPress = edtAngleKeyPress
    end
    object edtAngleIncr: TEdit
      Left = 40
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '10'
      OnKeyPress = edtAngleIncrKeyPress
    end
    object btnShow: TButton
      Left = 280
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Show'
      TabOrder = 5
      OnClick = btnShowClick
    end
    object btnClean: TButton
      Left = 280
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Clean'
      TabOrder = 6
      OnClick = btnCleanClick
    end
    object btnSetColor: TButton
      Left = 280
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Set Color'
      TabOrder = 7
      OnClick = btnSetColorClick
    end
  end
  object pnlXY: TPanel
    Left = 616
    Top = 320
    Width = 369
    Height = 129
    TabOrder = 1
    object lblX: TLabel
      Left = 24
      Top = 16
      Width = 23
      Height = 13
      Caption = 'XPos'
    end
    object lblY: TLabel
      Left = 24
      Top = 72
      Width = 16
      Height = 13
      Caption = 'lblY'
    end
    object edtX: TEdit
      Left = 24
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '0'
      OnKeyPress = edtXKeyPress
    end
    object edtY: TEdit
      Left = 24
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '0'
      OnKeyPress = edtYKeyPress
    end
    object btnXYSet: TButton
      Left = 272
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Set X and Y'
      TabOrder = 2
      OnClick = btnXYSetClick
    end
  end
  object dlgColor1: TColorDialog
    Left = 656
    Top = 200
  end
end
