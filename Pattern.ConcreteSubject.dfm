object FrameCadastroOperacoes: TFrameCadastroOperacoes
  Left = 0
  Top = 0
  Width = 328
  Height = 360
  TabOrder = 0
  object Bevel: TBevel
    Left = 231
    Top = 6
    Width = 9
    Height = 72
    Shape = bsLeftLine
  end
  object LabelValor: TLabel
    Left = 60
    Top = 51
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object LabelCentroDeCusto: TLabel
    Left = 5
    Top = 22
    Width = 83
    Height = 13
    Caption = 'Centro de Custo:'
  end
  object BitBtnGravar: TBitBtn
    Left = 238
    Top = 21
    Width = 80
    Height = 41
    Caption = 'Adicionar'
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000320B0000320B00000001000000010000942121009429
      2900943131009C3131009C393900A5393900944242009C424200A5424200AD42
      4200A54A42009C424A009C4A4A00A54A4A00AD4A4A00B54A4A009C525200B552
      5200BD525200C6525200BD5A5A00C65A5A00CE5A5A009C636300A5636300C663
      6300CE6363009C6B6B00B56B6B00BD6B6B00C66B6B00CE6B6B00AD736B00B573
      6B009C737300A5737300B5737300BD737300C6737300CE737300B5847300A57B
      7B00AD7B7B00BD7B7B00C67B7B00CE7B7B00A5848400B5848400BD848400C684
      8400B58C8400A58C8C00AD8C8C00B58C8C00C68C8C00CE8C8C00BD949400D694
      94009C9C9C00BD9C9C00C69C9C00CE9C9C00CEA59C00ADA5A500CEA5A500D6A5
      A500C6ADAD00CEADAD00D6ADAD00B5B5B500BDB5B500DEB5B500BDBDB500B5BD
      BD00BDBDBD00D6BDBD00DEBDBD00C6C6C600CEC6C600DEC6C600E7C6C600C6CE
      CE00CECECE00D6CECE00DECECE00D6D6D600DEDED600DEDEDE00E7DEDE00E7E7
      DE00EFE7DE00E7E7E700EFE7E700F7E7E700EFEFE700F7EFE700EFEFEF00F7EF
      EF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00666666666666
      6666666666666666666666666666666666666666661E191A111B454545454545
      454545240102040C66666666281E1A1A141B332F43546265635E5B2401020415
      0C666666281E1A1A14222904213C5C636462602B010204150C666666281E1A1A
      14232E02072456606364632B010204150C666666281E1A1A14233402020C4D59
      6064672C010204150C666666281E1A1A112A350101023F525961673101020415
      0C666666281E1A1A112A421818173A4555606731010204140C666666281E1A1A
      1424413C3B3834343C44502608090E190C666666281E1A1A1A1A1A1A1A1A1A1A
      1919191A1A1A1A1A0C666666281E14191E2727272727272727272727272D1F1A
      0C666666280E0A1C36434B4B4B4B4B4B4B4B4B4B4B4F371A0C66666628093D62
      616161616161616161616161615C37150C666666280940676363636363636363
      63636363645C37140C66666628094067616161616161616161616161635C3714
      0C666666280940675B4E5252525252525252524D585C37140C66666628094067
      615C5C5C5C5C5C5C5C5C5C5C615C37140C666666280940675C53535353535353
      535353525B5C37140C666666280940675E5858585858585858585858605C3714
      0C666666280940675E5858585858585858585858605C37140C66666628094067
      5B52535353535353535353525B5C37140C666666280940676464646464646464
      64646464645C37150C66666666093D514D4D4D4D4D4D4D4D4D4D4D4D4D4D3611
      6666666666666666666666666666666666666666666666666666}
    TabOrder = 2
    OnClick = BitBtnGravarClick
  end
  object EditValor: TEdit
    Left = 93
    Top = 48
    Width = 130
    Height = 21
    Alignment = taRightJustify
    TabOrder = 1
    OnKeyPress = EditValorKeyPress
  end
  object EditCentroDeCusto: TEdit
    Left = 93
    Top = 18
    Width = 130
    Height = 21
    Alignment = taRightJustify
    MaxLength = 6
    TabOrder = 0
    OnExit = EditCentroDeCustoExit
    OnKeyPress = EditCentroDeCustoKeyPress
  end
  object DBGrid: TDBGrid
    Left = 5
    Top = 84
    Width = 320
    Height = 221
    DataSource = DataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CentroDeCusto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object BitBtnConfirmar: TBitBtn
    Left = 110
    Top = 311
    Width = 105
    Height = 41
    Caption = 'Confirmar'
    Glyph.Data = {
      520E0000424D520E00000000000042000000280000001E0000001E0000000100
      200003000000100E0000741200007412000000000000000000000000FF0000FF
      0000FF0000000000000000000000000000000000000000000000522E0100522E
      0100522E0100522E0100522E011E522E0161522E01A5522E01D6522E01F1522E
      01FD522E01FD522E01F1522E01D6522E01A5522E0161522E011E522E0100522E
      0100522E0100522E010000000000000000000000000000000000000000000000
      00000000000000000000522E0100522E0100522E0100522E0100522E0122522E
      0180522E01D4522E01F9512D00FF502C00FF502B00FF502C00FF502C00FF502B
      00FF502C00FF512D00FF522E01F9522E01D4522E0180522E0122522E0100522E
      0100522E0100522E01000000000000000000000000000000000000000000522E
      0100522E0100522E0100522E0106522E0160522E01D7522E01FF502C00FF5330
      02FF64420AFF7A5C16FF8D7121FF977D26FF977D26FF8D7121FF7A5C16FF6442
      0AFF533002FF502C00FF522E01FF522E01D7522E0160522E0106522E0100522E
      0100522E0100000000000000000000000000522E0100522E0100522E0100522E
      0110522E0190522E01F8512C00FF553203FF795A16FFAC9431FFCEBB43FFDDCC
      4BFFE2D14DFFE3D24EFFE3D24EFFE2D14DFFDDCC4BFFCEBB43FFAC9431FF795A
      16FF553203FF512C00FF522E01F8522E0190522E0110522E0100522E0100522E
      01000000000000000000522E0100522E0100522E0110522E01A0522E01FF502C
      00FF67460CFFAB9330FFDAC849FFE3D34EFFE2D14EFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE2D14EFFE3D34EFFDAC849FFAB9330FF6746
      0CFF502C00FF522E01FF522E01A0522E0110522E0100522E010000000000522E
      0100522E0100522E0106522E0190522E01FF512D00FF765714FFC8B340FFE3D2
      4EFFE2D14DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE2D14DFFE3D24EFFC8B340FF765714FF512D
      00FF522E01FF522E0190522E0106522E0100522E0100522E0100522E0100522E
      0160522E01F8502C00FF765714FFCFBC44FFE3D24EFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE3D24EFFCFBC44FF765714FF502C00FF522E
      01F8522E0160522E0100522E0100522E0100522E0122522E01D7512C00FF6746
      0CFFC8B340FFE3D24EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE3D24EFFC8B340FF67460CFF512C00FF522E01D7522E
      0122522E0100522E0100522E0180522E01FF553203FFAB9330FFE3D24EFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE3D24EFFAB9330FF553203FF522E01FF522E0180522E0100522E
      011E522E01D4502C00FF795A16FFDAC849FFE2D14DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D14EFFE3D34EFFE2D14DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D1
      4DFFDAC849FF795A16FF502C00FF522E01D4522E011E522E0161522E01F95330
      02FFAC9431FFE3D34EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE2D24EFFCBB842FFB29A34FFD6C347FFE2D14EFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE3D34EFFAC94
      31FF533002FF522E01F9522E0161522E01A5512D00FF64420AFFCEBB43FFE2D1
      4EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE3D24EFFC4B0
      3EFF6D4D0FFF522E01FF81631AFFD4C146FFE2D24EFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D14EFFCEBB43FF64420AFF512D
      00FF522E01A5522E01D6502C00FF7A5C16FFDDCC4BFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE3D24EFFC4B03EFF6C4C0FFF502C00FF502C
      00FF512D00FF80621AFFD4C146FFE2D24EFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFDDCC4BFF7A5C16FF502C00FF522E01D6522E
      01F1502B00FF8D7121FFE2D14DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE2D14EFFC4AF3EFF6C4B0FFF502B00FF573303FF68470DFF522E01FF512D
      00FF80621AFFD4C146FFE2D24EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE2D14DFF8D7121FF502B00FF522E01F1522E01FD502C00FF977D
      26FFE3D24EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D14DFFD8C648FF7556
      14FF4F2A00FF553103FF987E26FFCEBB43FF81631AFF512D00FF512D00FF8062
      1AFFD4C146FFE2D24EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE3D2
      4EFF977C26FF4F2B00FF522E01FE522E01FD502C00FF977D26FFE3D24EFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE2D14DFFD8C648FF785915FF583504FF987E
      26FFDDCC4BFFE3D24EFFD4C146FF80621AFF512D00FF512D00FF80621AFFD4C1
      46FFE2D24EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE3D24EFFAF9732FF5936
      05FD522E01D4522E01F1502B00FF8D7121FFE2D14DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFCFBC44FFC1AC3CFFDDCC4BFFE2D14DFFE1D0
      4DFFE2D24EFFD4C146FF80621AFF512D00FF512D00FF80621AFFD3C146FFE2D1
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFDDCB4BFFB59F36B8502C0024522E
      01D6502C00FF7A5C16FFDDCC4BFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE2D14EFFE3D24EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D2
      4EFFD4C146FF80621AFF512D00FF502C00FF8A6E1FFFDECD4CFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE5D44F81A88F2F00522E01A5512D00FF6442
      0AFFCEBB43FFE2D14EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D24EFFD4C1
      46FF81631AFF512D01FF7D5F18FFDDCB4BFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFBE1D04D52E1D04D00522E0161522E01F9533002FFAC9431FFE3D3
      4EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D14EFFD5C347FFB29A
      34FFCCB842FFE2D14DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DDDE1D0
      4D1FE1D04D00522E011E522E01D4502C00FF795A16FFDAC849FFE2D14DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D14DFFE3D34EFFE2D14EFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04D94E1D04D01E1D04D00522E
      0100522E0180522E01FF553203FFAB9330FFE3D24EFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DE8E1D04D34E1D04D00E1D04D00522E0100522E0122522E
      01D7512C00FF67460CFFC8B340FFE3D24EFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D14DFFE3D24EFFE3D24EFEE1D0
      4D82DECD4C01E1D04D00E1D04D00522E0100522E0100522E0160522E01F8502C
      00FF765714FFCFBC44FFE3D24EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE3D24EFFD1BE45FF9E8429FFAB9230CBD7C54817D4C14600E1D0
      4D0000000000522E0100522E0100522E0106522E0190522E01FF512D00FF7657
      14FFC8B340FFE3D24EFFE2D14DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE2D14DFFE3D24EFFC9B5
      40FF785915FF502C00FF512D00D44D2800164D280000E1D04D00000000000000
      0000522E0100522E0100522E0110522E01A0522E01FF502C00FF67460CFFAB93
      30FFDAC849FFE3D34EFFE2D14EFFE1D04DFFE1D04DFFE1D04DFFE1D04DFFE1D0
      4DFFE1D04DFFE2D14EFFE3D34EFFDBC94AFFAD9531FF68470DFF502C00FF522E
      01FF522E019A522E0108522E0100000000000000000000000000522E0100522E
      0100522E0100522E0110522E0190522E01F8512C00FF553203FF795A16FFAC94
      31FFCEBB43FFDDCC4BFFE2D14DFFE3D24EFFE3D24EFFE2D14DFFDDCC4BFFCFBB
      43FFAD9531FF7A5B16FF563203FF512C00FF522E01F8522E0191522E0111522E
      0100522E010000000000000000000000000000000000522E0100522E0100522E
      0100522E0106522E0160522E01D7522E01FF502C00FF533002FF64420AFF7A5C
      16FF8D7121FF977D26FF977D26FF8D7121FF7B5C17FF64420BFF543002FF502C
      00FF522E01FF522E01D8522E0162522E0106522E0100522E0100522E01000000
      000000000000000000000000000000000000522E0100522E0100522E0100522E
      0100522E0122522E0180522E01D4522E01F9512D00FF502C00FF502B00FF502C
      00FF502C00FF502B00FF502C00FF512D00FF522E01FA522E01D6522E0182522E
      0123522E0100522E0100522E0100522E01000000000000000000000000000000
      000000000000000000000000000000000000522E0100522E0100522E0100522E
      0100522E011E522E0161522E01A5522E01D6522E01F1522E01FD522E01FD522E
      01F1522E01D6522E01A6522E0162522E0120522E0100522E0100522E0100522E
      01000000000000000000000000000000000000000000}
    TabOrder = 4
    OnClick = BitBtnConfirmarClick
  end
  object ClientDataSet: TClientDataSet
    PersistDataPacket.Data = {
      4A0000009619E0BD0100000018000000020000000000030000004A000D43656E
      74726F4465437573746F01004900000001000557494454480200020014000556
      616C6F7208000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CentroDeCusto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 96
    Top = 184
    object ClientDataSetCentroDeCusto: TStringField
      DisplayLabel = 'Centro de Custo'
      DisplayWidth = 20
      FieldName = 'CentroDeCusto'
      EditMask = '000000'
    end
    object ClientDataSetValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 128
    Top = 176
  end
end
