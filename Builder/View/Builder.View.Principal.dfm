object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 238
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnPrinc: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 238
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 184
    ExplicitWidth = 185
    ExplicitHeight = 41
    object btGolf: TButton
      Left = 32
      Top = 17
      Width = 153
      Height = 25
      Caption = 'Golf Comfortiline 2005'
      TabOrder = 0
      OnClick = btGolfClick
    end
    object btSaveiro: TButton
      Left = 32
      Top = 56
      Width = 153
      Height = 25
      Caption = 'Saveiro 1.6 (Flex) 2012'
      TabOrder = 1
      OnClick = btSaveiroClick
    end
    object mmCarro: TMemo
      Left = 215
      Top = 17
      Width = 329
      Height = 208
      TabOrder = 2
    end
  end
end
