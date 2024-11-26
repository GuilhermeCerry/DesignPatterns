object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Criador de Governo Nacional'
  ClientHeight = 152
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 152
    Align = alClient
    TabOrder = 0
    ExplicitTop = 8
    ExplicitWidth = 530
    ExplicitHeight = 249
    object btCriarGov1: TButton
      Left = 32
      Top = 24
      Width = 129
      Height = 25
      Caption = 'Criar Governo'
      TabOrder = 0
      OnClick = btCriarGov1Click
    end
    object btCriarGov2: TButton
      Left = 32
      Top = 55
      Width = 129
      Height = 25
      Caption = 'Criar Segundo Governo'
      TabOrder = 1
      OnClick = btCriarGov2Click
    end
    object btExibirGov: TButton
      Left = 32
      Top = 104
      Width = 129
      Height = 25
      Caption = 'Exibir Governos'
      TabOrder = 2
      OnClick = btExibirGovClick
    end
    object mmGov: TMemo
      Left = 176
      Top = 24
      Width = 265
      Height = 105
      TabOrder = 3
    end
  end
end
