program OrçamentoCentroDeCusto;

uses
  Vcl.Forms,
  View.Formulario in 'View.Formulario.pas' {fFormulario},
  Model.Notificacao in 'Model.Notificacao.pas',
  Pattern.Subject in 'Pattern.Subject.pas',
  Pattern.Observer in 'Pattern.Observer.pas',
  Pattern.ObserverSaldo in 'Pattern.ObserverSaldo.pas' {FrameSaldo: TFrame},
  Pattern.ConcreteSubject in 'Pattern.ConcreteSubject.pas' {FrameCadastroOperacoes: TFrame},
  Pattern.ObserverAgrupamento in 'Pattern.ObserverAgrupamento.pas' {FrameAgrupamento: TFrame},
  Pattern.ObserverAgrupamentoFilho in 'Pattern.ObserverAgrupamentoFilho.pas' {FrameAgrupamentoFilho: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfFormulario, fFormulario);
  Application.Run;
end.
