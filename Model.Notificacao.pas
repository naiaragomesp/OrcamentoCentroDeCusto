unit Model.Notificacao;

interface

type
  { record para ser utilizado como transporte de dados }
  TNotificacao = record
    CentroDeCusto: string;
    CentroDeCustoPai: string;
    CentroDeCustoFilho: string;
    Valor: real;
  end;

  var
  Saldo : Real;

implementation

end.
