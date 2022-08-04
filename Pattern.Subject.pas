unit Pattern.Subject;

interface

uses
  Pattern.Observer;

type
  { Subject }
  ISubject = interface

    // M�todo para adicionar Observers � lista
    procedure AdicionarObserver(Observer: IObserver);

    // M�todo respons�vel por notificar os Observers registrados
    procedure Notificar;
  end;

implementation

end.
