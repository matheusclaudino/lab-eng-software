object frmBemVindo: TfrmBemVindo
  Left = 1574
  Top = 179
  Width = 280
  Height = 223
  Caption = 'Bem Vindo!'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pNome: TPanel
    Left = 0
    Top = 0
    Width = 264
    Height = 185
    Align = alClient
    TabOrder = 0
    object lNome: TLabel
      Left = 72
      Top = 40
      Width = 79
      Height = 13
      Caption = 'Digite seu nome:'
    end
    object sbConfirmarNome: TSpeedButton
      Left = 72
      Top = 96
      Width = 121
      Height = 25
      Caption = 'CONFIRMAR'
      OnClick = sbConfirmarNomeClick
    end
    object eNome: TEdit
      Left = 72
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
end
