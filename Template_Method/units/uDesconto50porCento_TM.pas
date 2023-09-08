unit uDesconto50porCento_TM;

interface

uses
  uDesconto_TM, Math, Types;

type
  TDesconto50porCento_TM = class(TDesconto_TM)
  protected
    function TestarDeveAplicar: Boolean; override;
    procedure AplicarDesconto; override;
  public
    class function New(AoProxDesconto: IDesconto_TM): IDesconto_TM;
    constructor Create(AoProxDesconto: IDesconto_TM);
    destructor Destroy;
  end;

implementation

{ TDesconto50porCento }

{function TDesconto50porCento_TM.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto_TM;
begin
  Result := Self;

  if (Math.CompareValue(AnValor, 5000) = Types.GreaterThanValue) and
    (Math.CompareValue(AnQuantidade, 1) = Types.EqualsValue) then
    FnValorDesconto := AnValor * (50/100) //50%
  else
    Self.FnValorDesconto := Self.FoProximo.CalcularDesconto(AnValor, AnQuantidade).GetValorDesconto;
end; }

procedure TDesconto50porCento_TM.AplicarDesconto;
begin
  inherited;
  Self.SetValorDesconto((Self.GetValor * self.GetQuantidade) * (50/100));
end;

constructor TDesconto50porCento_TM.Create(AoProxDesconto: IDesconto_TM);
begin
  inherited Create;
  Self.SetProximo(AoProxDesconto);
end;

destructor TDesconto50porCento_TM.Destroy;
begin
  //
end;

class function TDesconto50porCento_TM.New(AoProxDesconto: IDesconto_TM): IDesconto_TM;
begin
  Result := Self.Create(AoProxDesconto);
end;

function TDesconto50porCento_TM.TestarDeveAplicar: Boolean;
begin
  Result := (Math.CompareValue(Self.GetValor, 5000) = Types.GreaterThanValue) and
    (Math.CompareValue(Self.GetQuantidade , 1) = Types.EqualsValue);
end;

end.
