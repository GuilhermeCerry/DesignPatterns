unit uDescontoAtacado;

interface

uses
  uDesconto, Math, Types;

type
  TDescontoAtacado = class(TDesconto)
  protected
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto; override;
  public
    class function New(AoProxDesconto: IDesconto): IDesconto;
    constructor Create(AoProxDesconto: IDesconto);
    destructor Destroy;
  end;

implementation

{ TDescontoAtacado }

function TDescontoAtacado.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto;
begin
  Result := Self;

  if (Math.CompareValue(AnQuantidade, 100) = Types.GreaterThanValue) then
    FnValorDesconto := (AnValor * AnQuantidade)  * (30/100) //30%
  else
    Self.FnValorDesconto := Self.FoProximo.CalcularDesconto(AnValor, AnQuantidade).GetValorDesconto;
end;

constructor TDescontoAtacado.Create(AoProxDesconto: IDesconto);
begin
  inherited Create;
  Self.FoProximo := AoProxDesconto;
end;

destructor TDescontoAtacado.Destroy;
begin
  //
end;

class function TDescontoAtacado.New(AoProxDesconto: IDesconto): IDesconto;
begin
  Result := Self.Create(AoProxDesconto);
end;

end.
