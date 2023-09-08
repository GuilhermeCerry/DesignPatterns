unit BibEnum;

interface

uses
  EnumUtils;

type

enTipoCustoCalc = (tccCusto, tccMedio, tccPrecoCompra, tccMedioPresente);

function IntToTipoCustoCalc(const AnIndex: integer): enTipoCustoCalc;

implementation

function IntToTipoCustoCalc(const AnIndex: integer): enTipoCustoCalc;
var
  bOK: Boolean;
begin
    Result := TEnumUtil.IntToEnumerado(bOK, AnIndex,
                           [0, 1, 2, 3],
                           [tccCusto, tccMedio, tccPrecoCompra, tccMedioPresente]);
end;

end.
