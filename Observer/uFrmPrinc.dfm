object FrmNotificarAprovacao: TFrmNotificarAprovacao
  Left = 0
  Top = 0
  Caption = 'Notificar Aprova'#231#227'o'
  ClientHeight = 170
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btAprovar: TButton
    Left = 138
    Top = 137
    Width = 95
    Height = 25
    Caption = 'Aprovar'
    TabOrder = 0
    OnClick = btAprovarClick
  end
  object lbEmail: TLabeledEdit
    Left = 8
    Top = 56
    Width = 225
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Email:'
    TabOrder = 1
  end
  object btInscrever: TButton
    Left = 248
    Top = 54
    Width = 95
    Height = 25
    Caption = 'Inscrever Email'
    TabOrder = 2
    OnClick = btInscreverClick
  end
  object lbCelular: TLabeledEdit
    Left = 8
    Top = 96
    Width = 225
    Height = 21
    EditLabel.Width = 92
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero de Celular:'
    TabOrder = 3
  end
  object btInscreverCelular: TButton
    Left = 248
    Top = 94
    Width = 95
    Height = 25
    Caption = 'Inscrever Celular'
    TabOrder = 4
    OnClick = btInscreverCelularClick
  end
  object lbNome: TLabeledEdit
    Left = 8
    Top = 16
    Width = 225
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    TabOrder = 5
  end
end
