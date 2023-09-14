unit uCOFINS;

interface

uses
  uImposto, uIImposto;

type
  TCofins = class(TImposto)
  protected
    function RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended; override;
  public
    class function New(const AoImpostoDecorator: IImposto): IImposto;

    constructor Create(const AoImpostoDecorator: IImposto);
  end;

implementation

{ TCofins }

constructor TCofins.Create(const AoImpostoDecorator: IImposto);
begin
  Self.FoImpostoDecorator := AoImpostoDecorator;
end;

class function TCofins.New(const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := Self.Create(AoImpostoDecorator);
end;

function TCofins.RealizarCalculoImposto(
  const AnVlrMercadoria: Extended): Extended;
begin
  Result := AnVlrMercadoria * 0.03; //3%

  Result := Result + Self.CalcularImpostoDecorator(AnVlrMercadoria);
end;

end.
