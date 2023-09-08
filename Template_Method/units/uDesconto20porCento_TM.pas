unit uDesconto20porCento_TM;

interface

uses
  uDesconto_TM, Math, Types;

type
  TDesconto20porCento_TM = class(TDesconto_TM)
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

procedure TDesconto20porCento_TM.AplicarDesconto;
begin
  inherited;
  Self.SetValorDesconto((Self.GetValor * self.GetQuantidade) * (20/100));
end;

{function TDesconto20porCento_TM.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto_TM;
begin
  Result := Self;

   if (Math.CompareValue(AnValor, 500) = Types.GreaterThanValue) then
    FnValorDesconto := AnValor * (20/100) //20%
  else
    Self.FnValorDesconto := Self.FoProximo.CalcularDesconto(AnValor, AnQuantidade).GetValorDesconto;
end;}

constructor TDesconto20porCento_TM.Create(AoProxDesconto: IDesconto_TM);
begin
  inherited Create;
  Self.SetProximo(AoProxDesconto);
end;

destructor TDesconto20porCento_TM.Destroy;
begin
  //
end;

class function TDesconto20porCento_TM.New(AoProxDesconto: IDesconto_TM): IDesconto_TM;
begin
  Result := Self.Create(AoProxDesconto);
end;

function TDesconto20porCento_TM.TestarDeveAplicar: Boolean;
begin
  Result := (Math.CompareValue(Self.GetValor, 500) = Types.GreaterThanValue)
end;

end.
