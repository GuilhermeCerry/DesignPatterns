unit uICMS;

interface

uses
  uImposto, uIImposto;

type
  TICMS = class(TImposto)
  protected
    function RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended; override;
  public
    class function New(const AoImpostoDecorator: IImposto): IImposto;

    constructor Create(const AoImpostoDecorator: IImposto);
  end;

implementation

{ TICMS }

constructor TICMS.Create(const AoImpostoDecorator: IImposto);
begin
  Self.FoImpostoDecorator := AoImpostoDecorator;
end;

class function TICMS.New(const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := Self.Create(AoImpostoDecorator);
end;

function TICMS.RealizarCalculoImposto(
  const AnVlrMercadoria: Extended): Extended;
begin
  Result := AnVlrMercadoria * 0.19; //19%
end;

end.
