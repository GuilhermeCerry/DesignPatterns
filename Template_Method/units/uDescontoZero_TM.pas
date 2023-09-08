unit uDescontoZero_TM;

interface

uses
  uDesconto_TM;

type
  TDescontoZero_TM = class(TDesconto_TM)
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

{function TDescontoZero_TM.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto_TM;
begin
  Result := Self;

  Self.FnValorDesconto := 0;
end;}

procedure TDescontoZero_TM.AplicarDesconto;
begin
  inherited;
  Self.SetValorDesconto(0);
end;

constructor TDescontoZero_TM.Create(AoProxDesconto: IDesconto_TM);
begin
  inherited Create;
  Self.SetProximo(AoProxDesconto);
end;

destructor TDescontoZero_TM.Destroy;
begin
  //
end;

class function TDescontoZero_TM.New(AoProxDesconto: IDesconto_TM): IDesconto_TM;
begin
  Result := Self.Create(AoProxDesconto);
end;

function TDescontoZero_TM.TestarDeveAplicar: Boolean;
begin
  Result := True;
end;

end.
