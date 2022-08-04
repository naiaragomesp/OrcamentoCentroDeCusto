unit Pattern.ObserverSaldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Pattern.Observer, Model.Notificacao;

type
  { Concrete Observer }
  TFrameSaldo = class(TFrame, IObserver)
    LabelTitulo: TLabel;
    LabelSaldo: TLabel;
    LabelValorSaldo: TLabel;
  private

  public
    // Método que será chamado pelo Subject
    procedure Atualizar(Notificacao: TNotificacao);
    procedure LimparTudo;
  end;

implementation

{$R *.dfm}

{ TFrameSaldo }

procedure TFrameSaldo.Atualizar(Notificacao: TNotificacao);
begin

  // Exibe os valores nos componentes TLabel
  LabelValorSaldo.Caption := FormatFloat('###,##0.00', Saldo);

end;

procedure TFrameSaldo.LimparTudo;
begin
  LabelValorSaldo.Caption := FormatFloat('###,##0.00', 0);
end;

end.
