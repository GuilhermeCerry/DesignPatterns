object FPrinc: TFPrinc
  Left = 0
  Top = 0
  Caption = 'Contabilidade'
  ClientHeight = 134
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object pnPrinc: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 134
    Align = alClient
    TabOrder = 0
    object rgContabilidade: TRadioGroup
      Left = 1
      Top = 1
      Width = 340
      Height = 56
      Align = alTop
      Caption = 'Contabilidade'
      Items.Strings = (
        'Online'
        'Offline')
      TabOrder = 0
    end
    object lbIDContabilidade: TLabeledEdit
      Left = 8
      Top = 80
      Width = 121
      Height = 23
      EditLabel.Width = 88
      EditLabel.Height = 15
      EditLabel.Caption = 'ID Contabilidade'
      NumbersOnly = True
      TabOrder = 1
    end
  end
  object btContabilizar: TButton
    Left = 224
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Contabilizar'
    TabOrder = 1
    OnClick = btContabilizarClick
  end
end
