object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 257
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrinc: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 257
    Align = alClient
    TabOrder = 0
    object grpDadosCompra: TGroupBox
      Left = 1
      Top = 171
      Width = 668
      Height = 85
      Align = alClient
      Caption = 'Dados Compra:'
      TabOrder = 0
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
      Width = 668
      Height = 170
      Align = alTop
      Caption = 'Custos:'
      TabOrder = 1
      object lb_FormulaCustoMedio: TLabel
        Left = 215
        Top = 32
        Width = 360
        Height = 26
        Caption = 
          '(((Custo_Medio_Anterior * Saldo(2)) +'#13#10'   ((Custo(2) + ((Valor_U' +
          'nitario - (Valor_Unitario *  Perc_Desc_Total / 100))'
      end
      object lb_FormulaCustoMedioPresente: TLabel
        Left = 215
        Top = 78
        Width = 451
        Height = 39
        Caption = 
          '((PV_FV(Custo_Medio_Anterior) * (Saldo(2))) + (((Valor_Unitario ' +
          ' + ((Valor_Unitario - '#13#10'  (Valor_Unitario *  Perc_Desc_Total / 1' +
          '00)) * ((((1) / 1) * Valor_Unitario) / Valor_Unitario )) ) )'#13#10'* ' +
          'Quantidade * (-1+1) ) ) /  ((Saldo(2) + (Quantidade * (+1)))) '
      end
      object lb_FormulaCustoMedioAnt: TLabel
        Left = 215
        Top = 131
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
        Top = 75
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
        Top = 126
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
