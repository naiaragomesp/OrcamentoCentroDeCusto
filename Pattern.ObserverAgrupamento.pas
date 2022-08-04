unit Pattern.ObserverAgrupamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Pattern.Observer, Model.Notificacao,
  Vcl.ExtCtrls;

type
  { Concrete Observer }
  TFrameAgrupamento = class(TFrame, IObserver)
    ClientDataSet: TClientDataSet;
    ClientDataSetTotal: TFloatField;
    DataSource: TDataSource;
    DBGrid: TDBGrid;
    LabelTitulo: TLabel;
    ClientDataSetCentroDeCustoPai: TStringField;
  public
    // Método que será chamado pelo Subject
    procedure Atualizar(Notificacao: TNotificacao);
    procedure LimparTudo;

  end;

implementation

{$R *.dfm}

procedure TFrameAgrupamento.Atualizar(Notificacao: TNotificacao);
begin

  if ClientDataSet.Locate('CentroDeCustoPai', Notificacao.CentroDeCustoPai, []) then
  begin
    ClientDataSet.Edit;

    ClientDataSet.FieldByName('Total').AsFloat :=
      ClientDataSet.FieldByName('Total').AsFloat + Notificacao.Valor;

    ClientDataSet.Post;
    ClientDataSet.First;

    Exit;
  end;

  ClientDataSet.AppendRecord([Notificacao.CentroDeCustoPai, Notificacao.Valor]);
end;

procedure TFrameAgrupamento.LimparTudo;
begin
  ClientDataSet.First;
  while not ClientDataSet.Eof do
    ClientDataSet.Delete;
end;

end.
