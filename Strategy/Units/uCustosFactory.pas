unit uCustosFactory;

interface

uses
  uICusto, BibEnum, uCustoCusto, uCustoMedio, uPrecoCompra, uCustoMedioPresente;

type

  TCustosFactory = class
  public
    class function New(const AenTipoCustoCalc: BibEnum.enTipoCustoCalc): IStrategy;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TCustosFactory }

constructor TCustosFactory.Create;
begin
  //
end;

destructor TCustosFactory.Destroy;
begin
  //
end;

class function TCustosFactory.New(const AenTipoCustoCalc: BibEnum.enTipoCustoCalc): IStrategy;
begin
  case AenTipoCustoCalc of
    tccCusto:         Result := TCustoCusto.New;
    tccMedio:         Result := TCustoMedio.New;
    tccPrecoCompra:   Result := TPrecoCompra.New;
    tccMedioPresente: Result := TCustoMedioPresente.New;
  end;
end;

end.
