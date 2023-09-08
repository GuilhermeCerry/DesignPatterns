object ControladorEntrega: TControladorEntrega
  Left = 0
  Top = 0
  Caption = 'Controlador de Entrega'
  ClientHeight = 274
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btRealizarPedido: TButton
    Left = 402
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Realizar Pedido'
    TabOrder = 0
    OnClick = btRealizarPedidoClick
  end
  object btAprovar: TButton
    Left = 402
    Top = 48
    Width = 153
    Height = 25
    Caption = 'Aprovar Pedido'
    TabOrder = 1
    OnClick = btAprovarClick
  end
  object btReprovar: TButton
    Left = 402
    Top = 88
    Width = 153
    Height = 25
    Caption = 'Reprovar Pedido'
    TabOrder = 2
    OnClick = btReprovarClick
  end
  object btEntregar: TButton
    Left = 402
    Top = 128
    Width = 153
    Height = 25
    Caption = 'Entregar Pedido'
    TabOrder = 3
    OnClick = btEntregarClick
  end
  object mmHistorico: TMemo
    Left = 8
    Top = 8
    Width = 378
    Height = 225
    TabOrder = 4
  end
  object btFinalizar: TButton
    Left = 402
    Top = 168
    Width = 153
    Height = 25
    Caption = 'Finalizar Pedido'
    TabOrder = 5
    OnClick = btFinalizarClick
  end
  object btCancelar: TButton
    Left = 402
    Top = 208
    Width = 153
    Height = 25
    Caption = 'Cancelar Pedido'
    TabOrder = 6
    OnClick = btCancelarClick
  end
  object btLimpar: TButton
    Left = 8
    Top = 241
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = btLimparClick
  end
end
