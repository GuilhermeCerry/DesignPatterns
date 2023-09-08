unit uDescontoAtacado_TM;

interface

uses
  uDesconto_TM, Math, Types;

type
  TDescontoAtacado_TM = class(TDesconto_TM)
  protected
    function TestarDeveAplicar: Boolean; override;
    procedure AplicarDesconto; override;
  public
    class function New(AoProxDesconto: IDesconto_TM): IDesconto_TM;
    constructor Create(AoProxDesconto: IDesconto_TM);
    destructor Destroy;
  end;

implementation

{ TDescontoAtacado }

procedure TDescontoAtacado_TM.AplicarDesconto;
begin
  inherited;
  Self.SetValorDesconto((Self.GetValor * self.GetQuantidade)* (30/100)); //30%
end;

{function TDescontoAtacado_TM.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto_TM;
begin
  Result := Self;

  if (Math.CompareValue(AnQuantidade, 100) = Types.GreaterThanValue) then
    FnValorDesconto := AnValor * (30/100) //30%
  else
    Self.FnValorDesconto := Self.FoProximo.CalcularDesconto(AnValor, AnQuantidade).GetValorDesconto;
end;}

constructor TDescontoAtacado_TM.Create(AoProxDesconto: IDesconto_TM);
begin
  inherited Create;
  Self.SetProximo(AoProxDesconto);
end;

destructor TDescontoAtacado_TM.Destroy;
begin
  //
end;

class function TDescontoAtacado_TM.New(AoProxDesconto: IDesconto_TM): IDesconto_TM;
begin
  Result := Self.Create(AoProxDesconto);
end;

function TDescontoAtacado_TM.TestarDeveAplicar: Boolean;
begin
  Result := (Math.CompareValue(Self.GetQuantidade, 100) = Types.GreaterThanValue);
end;

end.
