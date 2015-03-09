object frmCalculadora: TfrmCalculadora
  Left = 1616
  Top = 226
  Width = 421
  Height = 342
  Caption = 'Calculadora'
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
    Width = 405
    Height = 304
    Align = alClient
    TabOrder = 0
    object sbUm: TSpeedButton
      Left = 16
      Top = 48
      Width = 65
      Height = 57
      Caption = '1'
      OnClick = sbUmClick
    end
    object sbDois: TSpeedButton
      Left = 88
      Top = 48
      Width = 65
      Height = 57
      Caption = '2'
      OnClick = sbUmClick
    end
    object sbTres: TSpeedButton
      Left = 160
      Top = 48
      Width = 65
      Height = 57
      Caption = '3'
      OnClick = sbUmClick
    end
    object sbQuartro: TSpeedButton
      Left = 16
      Top = 112
      Width = 65
      Height = 57
      Caption = '4'
      OnClick = sbUmClick
    end
    object sbCinco: TSpeedButton
      Left = 88
      Top = 112
      Width = 65
      Height = 57
      Caption = '5'
      OnClick = sbUmClick
    end
    object sbSeis: TSpeedButton
      Left = 160
      Top = 112
      Width = 65
      Height = 57
      Caption = '6'
      OnClick = sbUmClick
    end
    object sbSete: TSpeedButton
      Left = 16
      Top = 176
      Width = 65
      Height = 57
      Caption = '7'
      OnClick = sbUmClick
    end
    object sbOito: TSpeedButton
      Left = 88
      Top = 176
      Width = 65
      Height = 57
      Caption = '8'
      OnClick = sbUmClick
    end
    object sbNove: TSpeedButton
      Left = 160
      Top = 176
      Width = 65
      Height = 57
      Caption = '9'
      OnClick = sbUmClick
    end
    object sbZero: TSpeedButton
      Left = 88
      Top = 240
      Width = 137
      Height = 57
      Caption = '0'
      OnClick = sbUmClick
    end
    object sbLimpar: TSpeedButton
      Left = 16
      Top = 240
      Width = 65
      Height = 57
      Caption = 'C'
      OnClick = sbLimparClick
    end
    object sbMais: TSpeedButton
      Left = 248
      Top = 48
      Width = 65
      Height = 57
      Caption = '+'
      OnClick = sbMaisClick
    end
    object sbMenos: TSpeedButton
      Left = 248
      Top = 112
      Width = 65
      Height = 57
      Caption = '-'
      OnClick = sbMenosClick
    end
    object sbDividir: TSpeedButton
      Left = 328
      Top = 48
      Width = 65
      Height = 57
      Caption = '/'
      OnClick = sbDividirClick
    end
    object sbMultiplicar: TSpeedButton
      Left = 328
      Top = 112
      Width = 65
      Height = 57
      Caption = '*'
      OnClick = sbMultiplicarClick
    end
    object sbIgualdade: TSpeedButton
      Left = 248
      Top = 176
      Width = 145
      Height = 121
      Caption = '='
      OnClick = sbIgualdadeClick
    end
    object eVisor: TEdit
      Left = 16
      Top = 8
      Width = 377
      Height = 33
      TabOrder = 0
    end
  end
end
