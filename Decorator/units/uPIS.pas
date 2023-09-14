unit uPIS;

interface

uses
  uImposto, uIImposto;

type
  TPIS = class(TImposto)
  protected
    function RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended; override;
  public
    class function New(const AoImpostoDecorator: IImposto): IImposto;

    constructor Create(const AoImpostoDecorator: IImposto);
  end;

implementation

{ TPIS }

constructor TPIS.Create(const AoImpostoDecorator: IImposto);
begin
  Self.FoImpostoDecorator := AoImpostoDecorator;
end;

class function TPIS.New(const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := Self.Create(AoImpostoDecorator);
end;

function TPIS.RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended;
begin
  Result := AnVlrMercadoria * 0.0065; //0,65%

  Result := Result + Self.CalcularImpostoDecorator(AnVlrMercadoria);
end;

end.
