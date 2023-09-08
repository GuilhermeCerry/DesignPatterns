unit uDesconto20porCento;

interface

uses
  uDesconto, Math, Types;

type
  TDesconto20porCento = class(TDesconto)
  protected
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto; override;
  public
    class function New(AoProxDesconto: IDesconto): IDesconto;
    constructor Create(AoProxDesconto: IDesconto);
    destructor Destroy;
  end;

implementation

{ TDesconto50porCento }

function TDesconto20porCento.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto;
begin
  Result := Self;

   if (Math.CompareValue(AnValor, 500) = Types.GreaterThanValue) then
    FnValorDesconto := (AnValor * AnQuantidade) * (20/100) //20%
  else
    Self.FnValorDesconto := Self.FoProximo.CalcularDesconto(AnValor, AnQuantidade).GetValorDesconto;
end;

constructor TDesconto20porCento.Create(AoProxDesconto: IDesconto);
begin
  inherited Create;
  Self.FoProximo := AoProxDesconto;
end;

destructor TDesconto20porCento.Destroy;
begin
  //
end;

class function TDesconto20porCento.New(AoProxDesconto: IDesconto): IDesconto;
begin
  Result := Self.Create(AoProxDesconto);
end;

end.
