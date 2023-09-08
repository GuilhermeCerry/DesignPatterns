unit uCustoMedio;

interface

uses
  uICusto;

type

  TCustoMedio = class(TInterfacedObject, ICusto, IStrategy)
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

{ TCustoMedio }

function TCustoMedio.Execute: ICusto;
begin
  Result := Self;
end;

constructor TCustoMedio.Create;
begin
  FnValorCusto := 0;

  {(((Custo_Medio_Anterior * Saldo(2)) +
   ((Custo(2) + ((Valor_Unitario - (Valor_Unitario *  Perc_Desc_Total / 100))}

  FnValorCusto := (2.11 * 15) + (0.47 + ((2.55 - (5.55 * 2/100))));
end;

destructor TCustoMedio.Destroy;
begin
  //
end;

function TCustoMedio.GetValorCusto: Extended;
begin
  Result := FnValorCusto;
end;

class function TCustoMedio.New: IStrategy;
begin
  Result := Self.Create;
end;

end.
