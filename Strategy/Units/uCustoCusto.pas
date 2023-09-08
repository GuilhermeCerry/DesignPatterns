unit uCustoCusto;

interface

uses
  uICusto;

type

  TCustoCusto = class(TInterfacedObject, ICusto, IStrategy)
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

{ TCustoCusto }

function TCustoCusto.Execute: ICusto;
begin
  Result := Self;

  { ( ((Valor_Unitario - (Valor_Unitario * Perc_Desc_Total) / 100 ))
    - Imposto(1) - Imposto(3) - Imposto(4) - Imposto(5) + Imposto(2) ) }
  FnValorCusto := (((5.55 - (5.55 * 2)/100)) - 2.33 - 0 - 1.20 - 1.67 + 0.23);
end;

constructor TCustoCusto.Create;
begin
  FnValorCusto := 0;
end;

destructor TCustoCusto.Destroy;
begin
  //
end;

function TCustoCusto.GetValorCusto: Extended;
begin
  Result := FnValorCusto;
end;

class function TCustoCusto.New: IStrategy;
begin
  Result := Self.Create;
end;

end.
