object fFormulario: TfFormulario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Or'#231'amento por Centro de Custo - by Nai'
  ClientHeight = 364
  ClientWidth = 640
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
  object Bevel1: TBevel
    Left = 334
    Top = 109
    Width = 300
    Height = 10
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = 334
    Top = 233
    Width = 300
    Height = 10
    Shape = bsTopLine
  end
  inline FrameCadastroOperacoes: TFrameCadastroOperacoes
    Left = 0
    Top = 0
    Width = 328
    Height = 364
    TabOrder = 0
    ExplicitHeight = 364
    inherited DBGrid: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'CentroDeCusto'
          Title.Caption = 'Centro de Custo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end>
    end
  end
  inline FrameSaldo: TFrameSaldo
    Left = 334
    Top = 0
    Width = 300
    Height = 100
    TabOrder = 1
    ExplicitLeft = 334
    ExplicitHeight = 100
    inherited LabelTitulo: TLabel
      Width = 300
    end
  end
  inline FrameAgrupamento: TFrameAgrupamento
    Left = 334
    Top = 117
    Width = 300
    Height = 110
    TabOrder = 2
    ExplicitLeft = 334
    ExplicitTop = 117
    inherited DBGrid: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'CentroDeCustoPai'
          Title.Caption = 'Centro de Custo Pai'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = True
        end>
    end
  end
  inline FrameAgrupamentoFilho: TFrameAgrupamentoFilho
    Left = 334
    Top = 248
    Width = 300
    Height = 110
    TabOrder = 3
    ExplicitLeft = 334
    ExplicitTop = 248
    inherited DBGrid: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'CentroDeCustoFilho'
          Title.Caption = 'Centro de Custo Filho'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = True
        end>
    end
  end
end
