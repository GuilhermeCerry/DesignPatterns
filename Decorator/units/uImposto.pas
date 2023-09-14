unit uImposto;

interface

uses
  uIImposto;

type

  TImposto = class(TInterfacedObject, IImposto)
  protected
    FoImpostoDecorator: IImposto;
    function CalcularImposto(const AnVlrMercadoria: Extended): Extended;
    function RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended; virtual; abstract;
    function CalcularImpostoDecorator(const AnVlrMercadoria: Extended): Extended;
  public
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TImposto }

function TImposto.CalcularImposto(const AnVlrMercadoria: Extended): Extended;
begin
  Result := Self.RealizarCalculoImposto(AnVlrMercadoria);
end;

function TImposto.CalcularImpostoDecorator(
  const AnVlrMercadoria: Extended): Extended;
begin
  Result := 0;
  if Assigned(Self.FoImpostoDecorator) then
    Result := Self.FoImpostoDecorator.RealizarCalculoImposto(AnVlrMercadoria);
end;

constructor TImposto.Create;
begin
  //
end;

destructor TImposto.Destroy;
begin
  //
end;

end.
