object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 129
  ClientWidth = 436
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
  object pnPrinc: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 129
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 274
      Top = 103
      Width = 57
      Height = 14
      Caption = 'Resultado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rgCustos: TRadioGroup
      Left = 0
      Top = 0
      Width = 273
      Height = 129
      Caption = 'Custo a calcular:'
      Items.Strings = (
        'Custo '
        'M'#233'dio'
        'Pre'#231'o de Compra'
        'M'#233'dio Presente')
      TabOrder = 0
    end
    object btCalcular: TButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Calcular'
      TabOrder = 1
      OnClick = btCalcularClick
    end
    object ed_Result: TEdit
      Left = 335
      Top = 96
      Width = 90
      Height = 21
      Alignment = taRightJustify
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 2
      Text = '0,00'
    end
  end
end
