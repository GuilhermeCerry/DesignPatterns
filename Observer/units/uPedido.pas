unit uPedido;

interface

type
  IPedido = interface
    ['{94A4385B-46B1-4E05-96EA-1F596AA0EA8C}']
  end;

  TPedido = class(TInterfacedObject, IPedido)
  public
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TPedido }

constructor TPedido.Create;
begin
  //
end;

destructor TPedido.Destroy;
begin
  //
end;

end.
