unit uIImposto;

interface

type
  IImposto = interface
    ['{F12F17C1-7E59-42F0-AE6B-2C43AE6CF2D2}']
    function RealizarCalculoImposto(const AnVlrMercadoria: Extended): Extended;
    function CalcularImposto(const AnVlrMercadoria: Extended): Extended;
  end;

implementation

end.
