unit uPedidoEntregue;

interface

uses
  uSituacaoPedido, uPedidoFinalizado;

type
  TPedidoEntregue = class(TSituacaoPedido)
  protected
    function FinalizarPedido: ISituacaoPedido; overload; override;
  public
    class function New: ISituacaoPedido;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TPedidoEntregue }

constructor TPedidoEntregue.Create;
begin
  Self.SetSituacaoAtual('Pedido Entregue');
  Self.FoSituacao := Self;
end;

destructor TPedidoEntregue.Destroy;
begin
  //
end;

function TPedidoEntregue.FinalizarPedido: ISituacaoPedido;
begin
  Result := TPedidoFinalizado.New;
end;

class function TPedidoEntregue.New: ISituacaoPedido;
begin
  Result := Self.Create;
end;

end.
