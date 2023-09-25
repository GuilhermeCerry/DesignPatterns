unit uCustoMedioAnteriorProxy;

interface

uses
  uIProxyCusto, uCustoMedioAnterior;

type
  TCustoMedioAnteriorProxy = class(TInterfacedObject, IProxyCusto)
  private
    FoCustoMedioAnterior: TCustoMedioAnterior;
    FnValor: Extended;
  protected
    function GetValor: Extended;
  public
    class function New: IProxyCusto;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TCustoMedioAnteriorProxy }

constructor TCustoMedioAnteriorProxy.Create;
begin
  FoCustoMedioAnterior := TCustoMedioAnterior.Create;
  FnValor := 0;
end;

destructor TCustoMedioAnteriorProxy.Destroy;
begin
  //
end;

function TCustoMedioAnteriorProxy.GetValor: Extended;
begin
  if (FnValor = 0) then
    FnValor := FoCustoMedioAnterior.RetornarCustoMedioAnterior;

  Result := FnValor;
end;

class function TCustoMedioAnteriorProxy.New: IProxyCusto;
begin
  Result := Self.Create;
end;

end.
