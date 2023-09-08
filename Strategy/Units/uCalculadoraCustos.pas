unit uCalculadoraCustos;

interface

uses
  BibEnum, uCustosFactory;

type
  ICalcularCustos = interface
    ['{17A5AE1F-578B-43E7-B47F-5F6B34C35E63}']
    function CalcularCustos(const AenTipoCusto: BibEnum.enTipoCustoCalc): Extended;
  end;

  TCalculadoraCustos = class(TInterfacedObject, ICalcularCustos)
  private
  public
   function CalcularCustos(const AenTipoCusto: BibEnum.enTipoCustoCalc): Extended;

   class function New: ICalcularCustos;
   constructor Create;
   destructor Destroy; override;
  end;

implementation

{ TCalculadoraCustos }

function TCalculadoraCustos.CalcularCustos(
  const AenTipoCusto: BibEnum.enTipoCustoCalc): Extended;
begin
  {

  Design Patterns Strategy: a ideia principal desse padrão é diminuir as quantidades de if no código. Pensando nesse cenário,
  caso precisasse calcular outros custos seria necessário adicionar mais alguns "if", deixando o código extremamente grande e
  complexo. Usando o conceito de Strategy, esse código continuará do mesmo tamanho sempre, independentemente da quantidade
  de custo calculado, porque a regra do custo será feita em uma classe separada.

  If AenTipoCusto = tccCusto then
    begin
    Result := (((5.55 - (5.55 * 2)/100)) - 2.33 - 0 - 1.20 - 1.67 + 0.23);
  end else if AenTipoCusto = tccMedio then
    begin
    Result := (2.11 * 15) + (0.47 + ((2.55 - (5.55 * 2/100))));
  end else if AenTipoCusto = tccPrecoCompra  then
    begin
    Result := (5.55);
  end else if AenTipoCusto = tccMedioPresente then
    begin
    Result := (((2.33 * 15) + (((5.55 + ((5.55 - (5.55 * 2/100)) * (((1/1) * 5.55) / 5.55)) )) * 12 * (-1+1) )) / ((15 + (12 * (+1)))));
  end;
  end if ...
  }

  Result :=
    TCustosFactory.New(AenTipoCusto)
      .Execute
      .GetValorCusto;
end;

constructor TCalculadoraCustos.Create;
begin
  //
end;

destructor TCalculadoraCustos.Destroy;
begin
  //
  inherited;
end;

class function TCalculadoraCustos.New: ICalcularCustos;
begin
  Result := Self.Create;
end;

end.
