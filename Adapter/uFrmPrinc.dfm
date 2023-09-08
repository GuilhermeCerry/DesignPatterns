object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Expota'#231#227'o XML'
  ClientHeight = 561
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnCab: TPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 241
    Align = alTop
    TabOrder = 0
    object lb_Brasileiro: TLabel
      Left = 224
      Top = 78
      Width = 64
      Height = 16
      Caption = 'Brasileiro?:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btSalvar: TButton
      Left = 32
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 7
      OnClick = btSalvarClick
    end
    object lb_Nome: TLabeledEdit
      Left = 32
      Top = 32
      Width = 315
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome:'
      TabOrder = 0
      Text = 'Guilherme'
    end
    object lb_CPF: TLabeledEdit
      Left = 32
      Top = 75
      Width = 185
      Height = 21
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'CPF:'
      TabOrder = 1
      Text = '109876283-11'
    end
    object lb_DataNascimento: TLabeledEdit
      Left = 32
      Top = 118
      Width = 121
      Height = 21
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = 'Data de Nascimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '30/11/2001'
    end
    object lb_Idade: TLabeledEdit
      Left = 291
      Top = 118
      Width = 56
      Height = 21
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Idade:'
      NumbersOnly = True
      TabOrder = 4
      Text = '21'
    end
    object cb_Brasileiro: TComboBox
      Left = 291
      Top = 75
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'N'#227'o'
      Items.Strings = (
        'N'#227'o'
        'Sim')
    end
    object lb_Celular: TLabeledEdit
      Left = 32
      Top = 160
      Width = 137
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'Celular:'
      TabOrder = 5
      Text = '46 999908762'
    end
    object lb_CEP: TLabeledEdit
      Left = 184
      Top = 160
      Width = 163
      Height = 21
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'CEP:'
      TabOrder = 6
      Text = '84301-130'
    end
    object btJson: TButton
      Left = 152
      Top = 200
      Width = 75
      Height = 25
      Caption = 'GetJson'
      TabOrder = 8
      OnClick = btJsonClick
    end
    object btPost: TButton
      Left = 272
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Post'
      TabOrder = 9
      OnClick = btPostClick
    end
  end
  object pnPrinc: TPanel
    Left = 0
    Top = 241
    Width = 381
    Height = 320
    Align = alClient
    TabOrder = 1
    object mmJson: TMemo
      Left = 1
      Top = 1
      Width = 379
      Height = 318
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
