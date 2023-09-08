unit uPedidoReprovado;

interface

uses
  uSituacaoPedido, uPedidoFinalizado;

type
  TPedidoReprovado = class(TSituacaoPedido)
  protected
    function FinalizarPedido: ISituacaoPedido; overload; override;
  public
    class function New: ISituacaoPedido;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TPedidoReprovado }

constructor TPedidoReprovado.Create;
begin
  Self.SetSituacaoAtual('Pedido Reprovado');
  Self.FoSituacao := Self;
end;

destructor TPedidoReprovado.Destroy;
begin

end;

function TPedidoReprovado.FinalizarPedido: ISituacaoPedido;
begin
  Result := TPedidoFinalizado.New;
end;

class function TPedidoReprovado.New: ISituacaoPedido;
begin
  Result := Self.Create;
end;

end.
