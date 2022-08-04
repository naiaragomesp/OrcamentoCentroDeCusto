unit Pattern.ConcreteSubject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  System.Generics.Collections, Pattern.Subject, Pattern.Observer,
  Datasnap.DBClient;

type
  { Concrete Subject }
  TFrameCadastroOperacoes = class(TFrame, ISubject)
    Bevel: TBevel;
    BitBtnGravar: TBitBtn;
    ClientDataSet: TClientDataSet;
    ClientDataSetValor: TFloatField;
    DataSource: TDataSource;
    EditValor: TEdit;
    LabelValor: TLabel;
    LabelCentroDeCusto: TLabel;
    EditCentroDeCusto: TEdit;
    DBGrid: TDBGrid;
    BitBtnConfirmar: TBitBtn;
    ClientDataSetCentroDeCusto: TStringField;
    procedure BitBtnGravarClick(Sender: TObject);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnConfirmarClick(Sender: TObject);
    procedure EditCentroDeCustoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCentroDeCustoExit(Sender: TObject);

  private
    // Variável par armazenar a lista de Observers
    FObservers: TList<IObserver>;

    // Método responsável por notificar os Observers registrados
    procedure Notificar;
    procedure HabilitaBotao;
    procedure ValidaCampoCentrodeCusto;
    function ValidaInsercao : Boolean;

  public
     constructor Create(AOwner: TComponent) ; override;
     destructor Destroy; override;
     procedure LimparTudo;

    // Método para adicionar Observers à lista
    procedure AdicionarObserver(Observer: IObserver);

  end;

implementation

uses
  Model.Notificacao;

{$R *.dfm}

procedure TFrameCadastroOperacoes.BitBtnConfirmarClick(Sender: TObject);
begin

  ShowMessage('Orçamento Confirmado. Total: R$' + FormatFloat('###,##0.00', Saldo));
  LimparTudo;
  Saldo := 0;
  EditCentroDeCusto.SetFocus;

end;

procedure TFrameCadastroOperacoes.LimparTudo;
var
  Observer: IObserver;
begin

  ClientDataSet.First;
  while not ClientDataSet.Eof do
    ClientDataSet.Delete;

  for Observer in FObservers do
  begin
    // Chama o método "LimparTudo" do Observer
    Observer.LimparTudo;
  end;

end;

procedure TFrameCadastroOperacoes.ValidaCampoCentrodeCusto;
var
  Mensagem : string;
begin

  if EditCentroDeCusto.Text <> '' then
  begin

    if Length(EditCentroDeCusto.Text) < 6 then
      Mensagem := 'Centro de Custo deve conter 6 caracteres ao todo'
    else if StrToIntDef(Copy(EditCentroDeCusto.Text, 0, 2),0) <= 0 then
      Mensagem := 'Centro de Custo "Pai" deve conter um número de 01 a 99'
    else if StrToIntDef(Copy(EditCentroDeCusto.Text, 3, 4),0) <= 0 then
      Mensagem := 'Centro de Custo "Filho" deve conter um número de 0001 a 9999';

    if Mensagem <> '' then
    begin
      ShowMessage(Mensagem);
      EditCentroDeCusto.SetFocus;
    end;

  end;

end;

function TFrameCadastroOperacoes.ValidaInsercao : Boolean;
begin

  Result := True;

  if not(StrToIntDef(EditCentroDeCusto.Text, 0) > 0) or not(StrToFloatDef(EditValor.Text, 0) > 0) then
    Result := False;

end;


procedure TFrameCadastroOperacoes.BitBtnGravarClick(Sender: TObject);
begin

  if ValidaInsercao then
  begin

    if not ClientDataSet.Active then
    begin
      ClientDataSet.Active;
      ClientDataSet.Open;
    end;

    // Adiciona a novo registro no DataSet
    ClientDataSet.AppendRecord(
      [EditCentroDeCusto.Text, StrToFloatDef(EditValor.Text, 0)]);

    // Chama o método de notificação
    Notificar;

    // Limpa os campos
    EditCentroDeCusto.Clear;
    EditValor.Clear;

  end else
    ShowMessage('Os dois campos devem conter um valor válido!');

  EditCentroDeCusto.SetFocus;
end;

constructor TFrameCadastroOperacoes.Create(AOwner: TComponent);
begin
  inherited;

  // Cria a lista de Observers
  FObservers := TList<IObserver>.Create;

  HabilitaBotao;
end;

destructor TFrameCadastroOperacoes.Destroy;
begin
  // Libera a lista de observers da memória
  FObservers.Free;

  Saldo := 0;
  inherited;
end;

procedure TFrameCadastroOperacoes.EditCentroDeCustoExit(Sender: TObject);
begin
  ValidaCampoCentrodeCusto;
end;

procedure TFrameCadastroOperacoes.EditCentroDeCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
  // Evita a digitação de letras e pontos no campo de valor
  if not (CharInSet(Key, (['0'..'9',#8,#13]))) then
    Key := #0;

  if Key = #13 then
  begin

    SelectNext(Sender as TWinControl, True, True);
    Key := #0;

  end;

end;

procedure TFrameCadastroOperacoes.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  // Evita a digitação de letras e pontos no campo de valor
  if not (CharInSet(Key, ['0'..'9', #8, #44])) then
    Key := #0;

  if Key = #0 then
    SelectNext(Sender as TWinControl, True, True);

end;

procedure TFrameCadastroOperacoes.Notificar;
var
  Notificacao: TNotificacao;
  Observer: IObserver;
begin
  // Preenche o record com os dados necessários
  Notificacao.CentroDeCusto := ClientDataSet.FieldByName('CentroDeCusto').AsString;
  Notificacao.CentroDeCustoPai := Copy(ClientDataSet.FieldByName('CentroDeCusto').AsString, 0, 2);
  Notificacao.CentroDeCustoFilho := Copy(ClientDataSet.FieldByName('CentroDeCusto').AsString, 3, 4);
  Notificacao.Valor := ClientDataSet.FieldByName('Valor').AsFloat;
  Saldo := Saldo + ClientDataSet.FieldByName('Valor').AsFloat;

  // Percorre a lista de Observers para enviar a notificação
  for Observer in FObservers do
  begin
    // Chama o método "Atualizar" do Observer
    Observer.Atualizar(Notificacao);
  end;

  HabilitaBotao;
end;

procedure TFrameCadastroOperacoes.HabilitaBotao;
begin

  BitBtnConfirmar.Enabled := not ClientDataSet.IsEmpty;

end;

procedure TFrameCadastroOperacoes.AdicionarObserver(Observer: IObserver);
begin
  // Adiciona o Observer à lista
  FObservers.Add(Observer);
end;

end.
