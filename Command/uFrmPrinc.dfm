object FrmPrinc: TFrmPrinc
  Left = 0
  Top = 0
  Caption = 'Nota Fiscal'
  ClientHeight = 136
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object EB_CONFIGURACAO: TLabeledEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 64
    EditLabel.Height = 13
    EditLabel.Caption = 'Configura'#231#227'o'
    TabOrder = 0
  end
  object EB_PESSOA: TLabeledEdit
    Left = 8
    Top = 62
    Width = 121
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Pessoa'
    TabOrder = 1
  end
  object EB_ITEM: TLabeledEdit
    Left = 8
    Top = 101
    Width = 121
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Item'
    TabOrder = 2
  end
  object EB_QUANTIDADE: TLabeledEdit
    Left = 144
    Top = 101
    Width = 121
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'Quantidade'
    TabOrder = 3
  end
  object EB_VALORUNIT: TLabeledEdit
    Left = 280
    Top = 101
    Width = 121
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 64
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor Unit'#225'rio'
    TabOrder = 4
  end
  object btEmitir: TButton
    Left = 417
    Top = 22
    Width = 121
    Height = 25
    Caption = 'Emitir Nota Fiscal'
    TabOrder = 6
    OnClick = btEmitirClick
  end
  object EB_DESCONTO: TLabeledEdit
    Left = 416
    Top = 101
    Width = 121
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'Desconto'
    TabOrder = 5
  end
end
