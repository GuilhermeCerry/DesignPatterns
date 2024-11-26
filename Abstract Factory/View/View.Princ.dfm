object FPrinc: TFPrinc
  Left = 0
  Top = 0
  Caption = 'Contabilidade'
  ClientHeight = 110
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object pnPrinc: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 110
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 342
    ExplicitHeight = 134
    object lbIDContabilidade: TLabeledEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 23
      EditLabel.Width = 88
      EditLabel.Height = 15
      EditLabel.Caption = 'ID Contabilidade'
      NumbersOnly = True
      TabOrder = 0
      Text = ''
    end
  end
  object btContabilizarOnline: TButton
    Left = 184
    Top = 23
    Width = 121
    Height = 25
    Caption = 'Contabilizar Online'
    TabOrder = 1
    OnClick = btContabilizarOnlineClick
  end
  object Button1: TButton
    Left = 184
    Top = 62
    Width = 121
    Height = 26
    Caption = 'Contabilizar Offline'
    TabOrder = 2
    OnClick = Button1Click
  end
end
