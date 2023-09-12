object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Calculadora Impostos'
  ClientHeight = 296
  ClientWidth = 341
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
    Width = 341
    Height = 296
    Align = alClient
    TabOrder = 0
    object grpImpostosFederais: TGroupBox
      Left = 1
      Top = 1
      Width = 339
      Height = 112
      Align = alTop
      Caption = 'Impostos Federais:'
      TabOrder = 0
      object lbCofins: TLabeledEdit
        Left = 48
        Top = 19
        Width = 121
        Height = 21
        EditLabel.Width = 34
        EditLabel.Height = 13
        EditLabel.Caption = 'Cofins:'
        LabelPosition = lpLeft
        ReadOnly = True
        TabOrder = 0
      end
      object lbPis: TLabeledEdit
        Left = 48
        Top = 46
        Width = 121
        Height = 21
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'PIS:'
        LabelPosition = lpLeft
        ReadOnly = True
        TabOrder = 1
      end
      object lbIPI: TLabeledEdit
        Left = 48
        Top = 73
        Width = 121
        Height = 21
        EditLabel.Width = 18
        EditLabel.Height = 13
        EditLabel.Caption = 'IPI:'
        LabelPosition = lpLeft
        ReadOnly = True
        TabOrder = 2
      end
      object btCalcularImpFederais: TButton
        Left = 184
        Top = 71
        Width = 152
        Height = 25
        Caption = 'Calcular Impostos Federais'
        TabOrder = 3
        OnClick = btCalcularImpFederaisClick
      end
    end
    object grpImpostosEstaduais: TGroupBox
      Left = 1
      Top = 113
      Width = 339
      Height = 56
      Align = alTop
      Caption = 'Impostos Estaduais:'
      TabOrder = 1
      object lbICMS: TLabeledEdit
        Left = 48
        Top = 22
        Width = 121
        Height = 21
        EditLabel.Width = 29
        EditLabel.Height = 13
        EditLabel.Caption = 'ICMS:'
        LabelPosition = lpLeft
        ReadOnly = True
        TabOrder = 0
      end
      object btnCalcImpEstaduais: TButton
        Left = 184
        Top = 23
        Width = 152
        Height = 25
        Caption = 'Calcular Impostos Estaduais'
        TabOrder = 1
      end
    end
    object pnCalc: TPanel
      Left = 1
      Top = 225
      Width = 339
      Height = 70
      Align = alBottom
      TabOrder = 2
      object btVlrTotImposto: TButton
        Left = 16
        Top = 24
        Width = 129
        Height = 25
        Caption = 'Calcular Total Imposto'
        TabOrder = 0
      end
      object lbVlrTotImposto: TLabeledEdit
        Left = 184
        Top = 24
        Width = 137
        Height = 21
        EditLabel.Width = 112
        EditLabel.Height = 13
        EditLabel.Caption = 'Valor Total de Imposto:'
        ReadOnly = True
        TabOrder = 1
      end
    end
    object grpMercadoria: TGroupBox
      Left = 1
      Top = 169
      Width = 339
      Height = 56
      Align = alClient
      Caption = 'Mercadoria:'
      TabOrder = 3
      object lbVlrMercadoria: TLabeledEdit
        Left = 96
        Top = 24
        Width = 121
        Height = 21
        EditLabel.Width = 84
        EditLabel.Height = 13
        EditLabel.Caption = 'Valor Mercadoria:'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 0
      end
    end
  end
end
