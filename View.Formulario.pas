unit View.Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Pattern.ObserverSaldo,
  Pattern.ConcreteSubject, Pattern.ObserverAgrupamento, Pattern.ObserverAgrupamentoFilho,
  Vcl.ExtCtrls;

type
  { Client }
  TfFormulario = class(TForm)
    FrameCadastroOperacoes: TFrameCadastroOperacoes;
    FrameSaldo: TFrameSaldo;
    FrameAgrupamento: TFrameAgrupamento;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FrameAgrupamentoFilho: TFrameAgrupamentoFilho;
    procedure FormCreate(Sender: TObject);

  end;

var
  fFormulario: TfFormulario;

implementation

{$R *.dfm}

procedure TfFormulario.FormCreate(Sender: TObject);
begin
  // Registra os Observers, adicionando-os na lista do Concrete Subject

  FrameCadastroOperacoes.AdicionarObserver(FrameSaldo);
  FrameCadastroOperacoes.AdicionarObserver(FrameAgrupamento);
  FrameCadastroOperacoes.AdicionarObserver(FrameAgrupamentoFilho);
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
