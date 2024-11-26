object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Envio de Email'
  ClientHeight = 191
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnPrinc: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 191
    Align = alClient
    TabOrder = 0
    object lbNome: TLabeledEdit
      Left = 32
      Top = 32
      Width = 161
      Height = 23
      EditLabel.Width = 33
      EditLabel.Height = 15
      EditLabel.Caption = 'Nome'
      TabOrder = 0
      Text = ''
    end
    object lbEmail: TLabeledEdit
      Left = 32
      Top = 73
      Width = 161
      Height = 23
      EditLabel.Width = 29
      EditLabel.Height = 15
      EditLabel.Caption = 'Email'
      TabOrder = 1
      Text = ''
    end
    object btEnviar: TButton
      Left = 32
      Top = 113
      Width = 161
      Height = 25
      Caption = 'Enviar Email'
      TabOrder = 2
      OnClick = btEnviarClick
    end
    object Button1: TButton
      Left = 32
      Top = 144
      Width = 161
      Height = 25
      Caption = 'Reenviar Email'
      TabOrder = 3
      OnClick = Button1Click
    end
    object mmHist: TMemo
      Left = 224
      Top = 32
      Width = 313
      Height = 137
      TabOrder = 4
    end
  end
end
