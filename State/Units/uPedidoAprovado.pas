unit uPedidoAprovado;

interface

uses
  uSituacaoPedido, uPedidoEntregue, uPedidoCancelado;

type
  TPedidoAprovado = class(TSituacaoPedido)
  protected
    function EntregarPedido: ISituacaoPedido; overload; override;
    function CancelarPedido: ISituacaoPedido; overload; override;
  public
    class function New: ISituacaoPedido;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TPedidoAprovado }

function TPedidoAprovado.CancelarPedido: ISituacaoPedido;
begin
  Result := TPedidoCancelado.New;
end;

constructor TPedidoAprovado.Create;
begin
  Self.SetSituacaoAtual('Pedido Aprovado');
  Self.FoSituacao := Self;
end;

destructor TPedidoAprovado.Destroy;
begin
  //
end;

function TPedidoAprovado.EntregarPedido: ISituacaoPedido;
begin
  Result := TPedidoEntregue.New;
end;

class function TPedidoAprovado.New: ISituacaoPedido;
begin
  Result := Self.Create;
end;

end.
