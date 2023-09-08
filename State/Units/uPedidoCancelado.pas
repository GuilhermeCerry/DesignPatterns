unit uPedidoCancelado;

interface

uses
  uSituacaoPedido, uPedidoFinalizado;

type
  TPedidoCancelado = class(TSituacaoPedido)
  protected
    function FinalizarPedido: ISituacaoPedido; overload; override;
  public
    class function New: ISituacaoPedido;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TPedidoCancelado }

constructor TPedidoCancelado.Create;
begin
  Self.SetSituacaoAtual('Pedido Cancelado');
  Self.FoSituacao := Self;
end;

destructor TPedidoCancelado.Destroy;
begin
  //
end;

function TPedidoCancelado.FinalizarPedido: ISituacaoPedido;
begin
  Result := TPedidoFinalizado.New;
end;

class function TPedidoCancelado.New: ISituacaoPedido;
begin
  Result := Self.Create;
end;

end.
