unit Pattern.ObserverAgrupamentoFilho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Pattern.Observer, Model.Notificacao,
  Vcl.ExtCtrls;

type
  { Concrete Observer }
  TFrameAgrupamentoFilho = class(TFrame, IObserver)
    DBGrid: TDBGrid;
    LabelTitulo: TLabel;
    ClientDataSet: TClientDataSet;
    ClientDataSetCentroDeCustoPai: TStringField;
    ClientDataSetTotal: TFloatField;
    DataSource: TDataSource;
  public
    // Método que será chamado pelo Subject
    procedure Atualizar(Notificacao: TNotificacao);
    procedure LimparTudo;
  end;

implementation

{$R *.dfm}

procedure TFrameAgrupamentoFilho.Atualizar(Notificacao: TNotificacao);
begin

  if ClientDataSet.Locate('CentroDeCustoFilho', Notificacao.CentroDeCustoFilho, []) then
  begin
    ClientDataSet.Edit;

    ClientDataSet.FieldByName('Total').AsFloat :=
      ClientDataSet.FieldByName('Total').AsFloat + Notificacao.Valor;

    ClientDataSet.Post;
    ClientDataSet.First;

    Exit;
  end;

  ClientDataSet.AppendRecord([Notificacao.CentroDeCustoFilho, Notificacao.Valor]);
end;

procedure TFrameAgrupamentoFilho.LimparTudo;
begin
  ClientDataSet.First;
  while not ClientDataSet.Eof do
    ClientDataSet.Delete;
end;

end.
