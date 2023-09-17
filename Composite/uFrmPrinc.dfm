object FormPrinc: TFormPrinc
  Left = 0
  Top = 0
  Caption = 'Forma'#231#227'o de Carga'
  ClientHeight = 434
  ClientWidth = 533
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
  object grpCompCaixaPrinc: TGroupBox
    Left = 0
    Top = 0
    Width = 533
    Height = 169
    Align = alTop
    Caption = 'Composi'#231#227'o Caixa Principal'
    TabOrder = 0
    object grpItem: TGroupBox
      Left = 2
      Top = 15
      Width = 271
      Height = 152
      Align = alLeft
      Caption = 'Item:'
      TabOrder = 0
      object lb_Descricao: TLabeledEdit
        Left = 96
        Top = 26
        Width = 169
        Height = 21
        EditLabel.Width = 82
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o:........'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object lb_VlrUnitaio: TLabeledEdit
        Left = 96
        Top = 82
        Width = 121
        Height = 21
        EditLabel.Width = 80
        EditLabel.Height = 13
        EditLabel.Caption = 'Quantidade:.....'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 2
      end
      object lb_Quantidade: TLabeledEdit
        Left = 96
        Top = 53
        Width = 121
        Height = 21
        EditLabel.Width = 80
        EditLabel.Height = 13
        EditLabel.Caption = 'Valor Unit'#225'rio:...'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 1
      end
      object btAddItem: TButton
        Left = 15
        Top = 122
        Width = 120
        Height = 25
        Caption = 'Adicionar Item'
        TabOrder = 3
        OnClick = btAddItemClick
      end
    end
    object grpCaixa: TGroupBox
      Left = 273
      Top = 15
      Width = 258
      Height = 152
      Align = alClient
      Caption = 'Caixa'
      TabOrder = 1
      object lb_Descricao_Caixa: TLabeledEdit
        Left = 64
        Top = 26
        Width = 169
        Height = 21
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o:'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object btAddCaixa: TButton
        Left = 14
        Top = 122
        Width = 120
        Height = 25
        Caption = 'Adicionar Caixa'
        TabOrder = 1
        OnClick = btAddCaixaClick
      end
    end
  end
  object mm_ResumoComposicao: TMemo
    Left = 0
    Top = 169
    Width = 533
    Height = 265
    Align = alClient
    TabOrder = 1
  end
end
