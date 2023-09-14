unit uIPI;

interface

uses
  uImposto, uIImposto;

type
  TIPI = class(TImposto)
  protected
    function RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended; override;
  public
    class function New(const AoImpostoDecorator: IImposto): IImposto;

    constructor Create(const AoImpostoDecorator: IImposto);
  end;

implementation

{ TIPI }

constructor TIPI.Create(const AoImpostoDecorator: IImposto);
begin
  Self.FoImpostoDecorator := AoImpostoDecorator;
end;

class function TIPI.New(const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := Self.Create(AoImpostoDecorator);
end;

function TIPI.RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended;
begin
  Result := AnVlrMercadoria * 0.08; //8%

  Result := Result + Self.CalcularImpostoDecorator(AnVlrMercadoria);
end;

end.
