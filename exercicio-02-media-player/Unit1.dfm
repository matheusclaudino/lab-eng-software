object Form1: TForm1
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PButtons: TPanel
    Left = 0
    Top = 356
    Width = 912
    Height = 66
    Align = alBottom
    TabOrder = 0
    object SBPlay: TSpeedButton
      Left = 392
      Top = 32
      Width = 41
      Height = 22
      Caption = 'PLAY'
      OnClick = SBPlayClick
    end
    object SBPause: TSpeedButton
      Left = 440
      Top = 32
      Width = 41
      Height = 22
      Caption = 'PAUSE'
      OnClick = SBPauseClick
    end
    object SBStop: TSpeedButton
      Left = 488
      Top = 32
      Width = 41
      Height = 22
      Caption = 'STOP'
      OnClick = SBStopClick
    end
    object SBNext: TSpeedButton
      Left = 536
      Top = 32
      Width = 41
      Height = 22
      Caption = 'NEXT'
      OnClick = SBNextClick
    end
    object SBPrior: TSpeedButton
      Left = 584
      Top = 32
      Width = 41
      Height = 22
      Caption = 'PRIOR'
      OnClick = SBPriorClick
    end
    object SBCima: TSpeedButton
      Left = 16
      Top = 32
      Width = 41
      Height = 22
      Caption = 'CIMA'
      OnClick = SBCimaClick
    end
    object SBBaixo: TSpeedButton
      Left = 64
      Top = 32
      Width = 41
      Height = 22
      Caption = 'BAIXO'
      OnClick = SBBaixoClick
    end
    object SBDelete: TSpeedButton
      Left = 112
      Top = 32
      Width = 41
      Height = 22
      Caption = 'DEL'
      OnClick = SBDeleteClick
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 1
      Width = 910
      Height = 19
      Align = alTop
      Panels = <>
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 177
    Height = 356
    Align = alLeft
    ItemHeight = 13
    TabOrder = 1
  end
  object PPlayer: TPanel
    Left = 177
    Top = 0
    Width = 735
    Height = 356
    Align = alClient
    Color = clDefault
    TabOrder = 2
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 338
      Width = 733
      Height = 17
      Align = alBottom
      Smooth = True
      TabOrder = 0
    end
    object MediaPlayer1: TMediaPlayer
      Left = 472
      Top = 48
      Width = 253
      Height = 30
      Display = PPlayer
      Visible = False
      TabOrder = 1
    end
    object RichEdit1: TRichEdit
      Left = 0
      Top = 0
      Width = 193
      Height = 41
      TabOrder = 2
      Visible = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 873
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Abrir1: TMenuItem
        Caption = 'Abrir'
        OnClick = Abrir1Click
      end
    end
    object Opes1: TMenuItem
      Caption = 'Op'#231#245'es'
      object RepetirMsica1: TMenuItem
        Caption = 'Repetir M'#250'sica'
        object Ativar1: TMenuItem
          Caption = 'Ativar'
          OnClick = Ativar1Click
        end
        object Desativar1: TMenuItem
          Caption = 'Desativar'
          OnClick = Desativar1Click
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 713
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 753
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer2Timer
    Left = 793
    Top = 8
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer3Timer
    Left = 833
    Top = 8
  end
end
