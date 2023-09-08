unit uCustoMedioPresente;

interface

uses
  uICusto;

type

  TCustoMedioPresente = class(TInterfacedObject, ICusto, IStrategy)
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

{ TCustoMedioPresente }

function TCustoMedioPresente.Execute: ICusto;
begin
  Result := Self;
end;

constructor TCustoMedioPresente.Create;
begin
  FnValorCusto := 0;

  {((PV_FV(Custo_Medio_Anterior) * (Saldo(2))) + (((Valor_Unitario  + ((Valor_Unitario -
  (Valor_Unitario *  Perc_Desc_Total / 100)) * ((((1) / 1) * Valor_Unitario) / Valor_Unitario )) ) ) * Quantidade * (-1+1) ) ) /  ((Saldo(2) + (Quantidade * (+1)))) }
  FnValorCusto := (((2.33 * 15) + (((5.55 + ((5.55 - (5.55 * 2/100)) * (((1/1) * 5.55) / 5.55)) )) * 12 * (-1+1) )) / ((15 + (12 * (+1)))));
end;

destructor TCustoMedioPresente.Destroy;
begin
  //
end;

function TCustoMedioPresente.GetValorCusto: Extended;
begin
  Result := FnValorCusto;
end;

class function TCustoMedioPresente.New: IStrategy;
begin
  Result := Self.Create;
end;

end.
