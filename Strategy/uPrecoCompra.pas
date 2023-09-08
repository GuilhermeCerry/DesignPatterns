unit uPrecoCompra;

interface

uses
  uICusto;

type

  TPrecoCompra = class(TInterfacedObject, ICusto, IStrategy)
  private
    FnValorCusto: Extended;
  public
    class function New: IStrategy;
    constructor Create;
    destructor Destroy;

    function Execute: ICusto;
    function GetValorCusto: Extended;
  end;

implementation

{ TPrecoCompra }

function TPrecoCompra.Execute: ICusto;
begin
  Result := Self;

  {Valor_Unitario}
  FnValorCusto := (5.55);
end;

constructor TPrecoCompra.Create;
begin
  FnValorCusto := 0;
end;

destructor TPrecoCompra.Destroy;
begin
  //
end;

function TPrecoCompra.GetValorCusto: Extended;
begin
  Result := FnValorCusto;
end;

class function TPrecoCompra.New: IStrategy;
begin
  Result := Self.Create;
end;

end.
