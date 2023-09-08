unit uDescontoZero;

interface

uses
  uDesconto;

type
  TDescontoZero = class(TDesconto)
  protected
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto; override;
  public
    class function New(AoProxDesconto: IDesconto): IDesconto;
    constructor Create(AoProxDesconto: IDesconto);
    destructor Destroy;
  end;

implementation

{ TDesconto50porCento }

function TDescontoZero.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto;
begin
  Result := Self;

  Self.FnValorDesconto := 0;
end;

constructor TDescontoZero.Create(AoProxDesconto: IDesconto);
begin
  inherited Create;
  Self.FoProximo := AoProxDesconto;
end;

destructor TDescontoZero.Destroy;
begin
  //
end;

class function TDescontoZero.New(AoProxDesconto: IDesconto): IDesconto;
begin
  Result := Self.Create(AoProxDesconto);
end;

end.
