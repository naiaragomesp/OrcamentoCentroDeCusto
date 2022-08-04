object FrameAgrupamentoFilho: TFrameAgrupamentoFilho
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
    Caption = 'Valor agrupado por Centro de Custo Filho'
    ExplicitWidth = 199
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 13
    Width = 300
    Height = 97
    Align = alClient
    DataSource = DataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CentroDeCustoFilho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object ClientDataSet: TClientDataSet
    PersistDataPacket.Data = {
      4F0000009619E0BD0100000018000000020000000000030000004F001243656E
      74726F4465437573746F46696C686F0100490000000100055749445448020002
      00140005546F74616C08000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CentroDeCustoFilho'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'IndexTotal'
        DescFields = 'Total'
        Fields = 'Total'
        Options = [ixDescending]
      end>
    IndexName = 'IndexTotal'
    Params = <>
    StoreDefs = True
    Left = 176
    Top = 64
    object ClientDataSetCentroDeCustoPai: TStringField
      FieldName = 'CentroDeCustoFilho'
    end
    object ClientDataSetTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 248
    Top = 64
  end
end
