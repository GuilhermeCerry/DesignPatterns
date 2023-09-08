unit uCOFINS;

interface

uses
  uImposto, uIImposto;

type
  TCofins = class(TImposto)
  protected
    function RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended;
  public
    class function New(const AoImpostoDecorator: IImposto): IImposto;

    constructor Create(const AoImpostoDecorator: IImposto);
  end;

implementation

{ TCofins }

constructor TCofins.Create(const AoImpostoDecorator: IImposto);
begin
  inherited;
  Self.FoImpostoDecorator := AoImpostoDecorator;
end;

class function TCofins.New(const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := Self.Create(AoImpostoDecorator);
end;

function TCofins.RealizarCalculoImposto(
  const AnVlrMercadoria: Extended): Extended;
begin
  Result := AnVlrMercadoria * 0.003; //3%
end;

end.
