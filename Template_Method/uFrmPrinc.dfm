object FrmPrinc: TFrmPrinc
  Left = 0
  Top = 0
  ActiveControl = ed_Valor
  Caption = 'Calculadora Desconto'
  ClientHeight = 150
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ed_Valor: TLabeledEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor:'
    NumbersOnly = True
    TabOrder = 0
  end
  object ed_Result: TLabeledEdit
    Left = 16
    Top = 105
    Width = 121
    Height = 21
    EditLabel.Width = 125
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor Total com Desconto:'
    NumbersOnly = True
    TabOrder = 2
  end
  object btCalcular: TButton
    Left = 192
    Top = 22
    Width = 121
    Height = 25
    Caption = 'Calcular Desconto'
    TabOrder = 3
    OnClick = btCalcularClick
  end
  object ed_Quantidade: TLabeledEdit
    Left = 16
    Top = 64
    Width = 121
    Height = 21
    EditLabel.Width = 60
    EditLabel.Height = 13
    EditLabel.Caption = 'Quantidade:'
    TabOrder = 1
  end
end
