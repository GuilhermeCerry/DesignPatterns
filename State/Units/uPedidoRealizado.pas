unit uPedidoRealizado;

interface

uses
  uSituacaoPedido, uPedidoAprovado, uPedidoReprovado, uPedidoCancelado;

type
  TPedidoRealizado = class(TSituacaoPedido)
  protected
    function AprovarPedido: ISituacaoPedido; overload; override;
    function ReprovarPedido: ISituacaoPedido; overload; override;
    function CancelarPedido: ISituacaoPedido; overload; override;
  public
    class function New: ISituacaoPedido;
    constructor Create;
    destructor Destroy;
  end;

implementation

{ TPedidoRealizado }

function TPedidoRealizado.AprovarPedido: ISituacaoPedido;
begin
  Result := TPedidoAprovado.New;
end;

function TPedidoRealizado.CancelarPedido: ISituacaoPedido;
begin
  Result := TPedidoCancelado.New;
end;

constructor TPedidoRealizado.Create;
begin
  Self.SetSituacaoAtual('Pedido Realizado');
  Self.FoSituacao := Self;
end;

destructor TPedidoRealizado.Destroy;
begin
  //
end;

class function TPedidoRealizado.New: ISituacaoPedido;
begin
  Result := Self.Create;
end;

function TPedidoRealizado.ReprovarPedido: ISituacaoPedido;
begin
  Result := TPedidoReprovado.New;
end;

end.
