unit uCalculaCusto;

interface

uses
  BibEnum;

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

    procedure CalcularMedio;
    procedure CalcularMedioPresente;
    procedure CalcularMedioAnterior;
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
  //
end;

procedure TCalculaCusto.CalcularMedioAnterior;
begin
  //
end;

procedure TCalculaCusto.CalcularMedioPresente;
begin
  //
end;

constructor TCalculaCusto.Create(const AnValorUnit,
  AnQuantidade: Extended);
begin
  FnVlrUnitario := AnValorUnit;
  FnQuantidade := AnQuantidade;
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
