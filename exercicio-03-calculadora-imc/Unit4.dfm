object frmImc: TfrmImc
  Left = 1585
  Top = 141
  Width = 471
  Height = 184
  Caption = 'IMC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 146
    Align = alClient
    TabOrder = 0
    object LabelPeso: TLabel
      Left = 32
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Peso (Kg):'
    end
    object Label1: TLabel
      Left = 32
      Top = 72
      Width = 47
      Height = 13
      Caption = 'Altura (m):'
    end
    object sbCalcular: TSpeedButton
      Left = 176
      Top = 40
      Width = 97
      Height = 65
      Caption = 'CALCULAR'
    end
    object Label2: TLabel
      Left = 304
      Top = 32
      Width = 19
      Height = 13
      Caption = 'IMC'
    end
    object eNome: TEdit
      Left = 32
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object eAltura: TEdit
      Left = 32
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object eImc: TEdit
      Left = 304
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
end
