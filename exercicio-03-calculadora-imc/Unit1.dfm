object frmPrincipal: TfrmPrincipal
  Left = 1692
  Top = 299
  Width = 574
  Height = 337
  Caption = 'Calculadora / IMC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 558
    Height = 299
    Align = alClient
    TabOrder = 0
    object sbCalculadora: TSpeedButton
      Left = 152
      Top = 40
      Width = 201
      Height = 25
      Caption = 'CALCULADORA'
    end
    object sbImc: TSpeedButton
      Left = 152
      Top = 88
      Width = 201
      Height = 25
      Caption = 'IMC'
    end
    object mLog: TMemo
      Left = 152
      Top = 152
      Width = 201
      Height = 89
      Lines.Strings = (
        '')
      TabOrder = 0
    end
  end
end
