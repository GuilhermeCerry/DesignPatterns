unit uCalculaCusto;

interface

uses
  BibEnum, uIProxyCusto, uCustoMedioAnteriorProxy, uCustoMedioAnterior;

type

  ICalculaCusto = interface
    ['{30F41D9A-3C68-48F9-8C58-35011BE9D627}']
    function Calcular(const AenCusto: BibEnum.enTipoCustoCalc): ICalculaCusto;
    function GetCusto: Extended;
  end;

  TCalculaCusto = class(TInterfacedObject, ICalculaCusto)
  private
    FnCusto: Extended;
    FnVlrUnitario: Extended;
    FnQuantidade: Extended;
    FoCustoMedioAnteriorProxy: IProxyCusto;
    FoCustoMedioAnterior: TCustoMedioAnterior;

    procedure CalcularMedio;
    procedure CalcularMedioPresente;
    procedure CalcularMedioAnterior;
    function PV_FV(AnValor: Extended): Extended;
  protected
    function Calcular(const AenCusto: BibEnum.enTipoCustoCalc): ICalculaCusto;
    function GetCusto: Extended;
  public
    class function New(const AnValorUnit, AnQuantidade: Extended): ICalculaCusto;

    constructor Create(const AnValorUnit, AnQuantidade: Extended);
    destructor Destroy;
  end;

implementation

{ TCalculaCusto }

function TCalculaCusto.Calcular(const AenCusto: BibEnum.enTipoCustoCalc): ICalculaCusto;
begin
  Result := Self;

  case AenCusto of
    tccMedio: CalcularMedio;
    tccMedioPresente: CalcularMedioPresente;
    tccMedioAnterior: CalcularMedioAnterior;
  end;

end;

procedure TCalculaCusto.CalcularMedio;
begin
  //(Custo_Medio_Anterior * Saldo(2)) + (Custo(2) + (Valor_Unitario - (Valor_Unitario *  Perc_Desc_Total / 100)))

  FnCusto := (FoCustoMedioAnterior.RetornarCustoMedioAnterior * 56) +
   (2 + (FnVlrUnitario - (FnVlrUnitario *  (0 / 100))));

//  FnCusto := (FoCustoMedioAnteriorProxy.GetValor * 56) +
//   (2 + (FnVlrUnitario - (FnVlrUnitario *  (0 / 100))));  //Com Proxy
end;

procedure TCalculaCusto.CalcularMedioAnterior;
begin
  //Custo_Medio_Anterior

  FnCusto := FoCustoMedioAnterior.RetornarCustoMedioAnterior;

//  FnCusto := FoCustoMedioAnteriorProxy.GetValor;  //Com Proxy
end;

procedure TCalculaCusto.CalcularMedioPresente;
begin
  //  ((PV_FV(Custo_Medio_Anterior) * (Saldo(2))) + (Valor_Unitario - (Valor_Unitario *  Perc_Desc_Total / 100)) + (Quantidade )

  FnCusto := ((PV_FV(FoCustoMedioAnterior.RetornarCustoMedioAnterior) * (56)) +
    (FnVlrUnitario - (FnVlrUnitario *  (0 / 100))) + (FnQuantidade));

//  FnCusto := ((PV_FV(FoCustoMedioAnteriorProxy.GetValor) * (56)) +
//    (FnVlrUnitario - (FnVlrUnitario *  (0 / 100))) + (FnQuantidade));  //Com Proxy
end;

function TCalculaCusto.PV_FV(AnValor: Extended): Extended;
begin
  Result := AnValor + (AnValor * 0.001);
end;

constructor TCalculaCusto.Create(const AnValorUnit,
  AnQuantidade: Extended);
begin
  FnVlrUnitario := AnValorUnit;
  FnQuantidade := AnQuantidade;

  FoCustoMedioAnterior := TCustoMedioAnterior.Create;
  FoCustoMedioAnteriorProxy := TCustoMedioAnteriorProxy.New;
end;

destructor TCalculaCusto.Destroy;
begin
  //
end;

function TCalculaCusto.GetCusto: Extended;
begin
  Result := FnCusto;
end;

class function TCalculaCusto.New(const AnValorUnit,
  AnQuantidade: Extended): ICalculaCusto;
begin
  Result := Self.Create(AnValorUnit, AnQuantidade);
end;

end.
