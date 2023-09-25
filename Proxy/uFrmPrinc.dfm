object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Calculadora de Custos'
  ClientHeight = 233
  ClientWidth = 825
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
    Width = 825
    Height = 233
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 670
    ExplicitHeight = 257
    object grpDadosCompra: TGroupBox
      Left = 1
      Top = 145
      Width = 823
      Height = 87
      Align = alClient
      Caption = 'Dados Compra:'
      TabOrder = 0
      ExplicitTop = 171
      ExplicitWidth = 668
      ExplicitHeight = 85
      object lb_Quantidade: TLabeledEdit
        Left = 118
        Top = 21
        Width = 75
        Height = 21
        Alignment = taRightJustify
        EditLabel.Width = 104
        EditLabel.Height = 13
        EditLabel.Caption = 'Quantidade:...........'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 0
      end
      object lb_VlrUnitario: TLabeledEdit
        Left = 118
        Top = 51
        Width = 75
        Height = 21
        Alignment = taRightJustify
        EditLabel.Width = 104
        EditLabel.Height = 13
        EditLabel.Caption = 'Valor Unit'#225'rio:.........'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 1
      end
      object btCalcularCusto: TButton
        Left = 249
        Top = 47
        Width = 112
        Height = 25
        Caption = 'Calcular Custo'
        TabOrder = 2
        OnClick = btCalcularCustoClick
      end
    end
    object grpCustos: TGroupBox
      Left = 1
      Top = 1
      Width = 823
      Height = 144
      Align = alTop
      Caption = 'Custos:'
      TabOrder = 1
      ExplicitWidth = 867
      object lb_FormulaCustoMedio: TLabel
        Left = 215
        Top = 32
        Width = 538
        Height = 21
        AutoSize = False
        Caption = 
          '(Custo_Medio_Anterior * Saldo(2)) + (Custo(2) + (Valor_Unitario ' +
          '- (Valor_Unitario *  Perc_Desc_Total / 100)))'
      end
      object lb_FormulaCustoMedioPresente: TLabel
        Left = 215
        Top = 71
        Width = 602
        Height = 16
        Caption = 
          '((PV_FV(Custo_Medio_Anterior) * (Saldo(2))) + (Valor_Unitario - ' +
          '(Valor_Unitario *  Perc_Desc_Total / 100)) + (Quantidade )  '
      end
      object lb_FormulaCustoMedioAnt: TLabel
        Left = 215
        Top = 110
        Width = 115
        Height = 13
        Caption = '(Custo_Medio_Anterior)'
      end
      object lb_CustoMedio: TLabeledEdit
        Left = 118
        Top = 32
        Width = 75
        Height = 21
        Alignment = taRightJustify
        EditLabel.Width = 107
        EditLabel.Height = 13
        EditLabel.Caption = 'Custo M'#233'dio:...........'
        LabelPosition = lpLeft
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 0
        Text = '0'
      end
      object lb_CustoPresente: TLabeledEdit
        Left = 118
        Top = 66
        Width = 75
        Height = 21
        Alignment = taRightJustify
        EditLabel.Width = 109
        EditLabel.Height = 13
        EditLabel.Caption = 'Custo M'#233'dio Presente:'
        LabelPosition = lpLeft
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 1
        Text = '0'
      end
      object lb_CustoMedioAnt: TLabeledEdit
        Left = 118
        Top = 105
        Width = 75
        Height = 21
        Alignment = taRightJustify
        EditLabel.Width = 109
        EditLabel.Height = 13
        EditLabel.Caption = 'Custo M'#233'dio Anterior:.'
        LabelPosition = lpLeft
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 2
        Text = '0'
      end
    end
  end
end
