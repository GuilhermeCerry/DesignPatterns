unit uPedidoFinalizado;

interface

uses
  uSituacaoPedido;

type
  TPedidoFinalizado = class(TSituacaoPedido)
  public
    class function New: ISituacaoPedido;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TPedidoFinalizado }

constructor TPedidoFinalizado.Create;
begin
  Self.SetSituacaoAtual('Pedido Finalizado');
  Self.FoSituacao := Self;
end;

destructor TPedidoFinalizado.Destroy;
begin
  //
end;

class function TPedidoFinalizado.New: ISituacaoPedido;
begin
  Result := Self.Create;
end;

end.
