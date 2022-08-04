object FrameSaldo: TFrameSaldo
  Left = 0
  Top = 0
  Width = 300
  Height = 110
  TabOrder = 0
  object LabelTitulo: TLabel
    Left = 0
    Top = 0
    Width = 300
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Total Or'#231'amento'
    ExplicitWidth = 80
  end
  object LabelSaldo: TLabel
    Left = 22
    Top = 40
    Width = 104
    Height = 25
    Caption = 'Total Or'#231':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelValorSaldo: TLabel
    Left = 235
    Top = 40
    Width = 46
    Height = 25
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
