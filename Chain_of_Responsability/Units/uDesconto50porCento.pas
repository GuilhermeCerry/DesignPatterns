unit uDesconto50porCento;

interface

uses
  uDesconto, Math, Types;

type
  TDesconto50porCento = class(TDesconto)
  protected
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto; override;
  public
    class function New(AoProxDesconto: IDesconto): IDesconto;
    constructor Create(AoProxDesconto: IDesconto);
    destructor Destroy;
  end;

implementation

{ TDesconto50porCento }

function TDesconto50porCento.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto;
begin
  Result := Self;

  if (Math.CompareValue(AnValor, 5000) = Types.GreaterThanValue) and
    (Math.CompareValue(AnQuantidade, 1) = Types.EqualsValue) then
    FnValorDesconto := (AnValor * AnQuantidade)  * (50/100) //50%
  else
    Self.FnValorDesconto := Self.FoProximo.CalcularDesconto(AnValor, AnQuantidade).GetValorDesconto;
end;

constructor TDesconto50porCento.Create(AoProxDesconto: IDesconto);
begin
  inherited Create;
  Self.FoProximo := AoProxDesconto;
end;

destructor TDesconto50porCento.Destroy;
begin
  //
end;

class function TDesconto50porCento.New(AoProxDesconto: IDesconto): IDesconto;
begin
  Result := Self.Create(AoProxDesconto);
end;

end.
