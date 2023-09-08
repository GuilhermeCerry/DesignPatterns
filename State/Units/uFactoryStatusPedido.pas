unit uFactoryStatusPedido;

interface

uses
  uSituacaoPedido, uPedidoAprovado, uPedidoRealizado, uPedidoEntregue, uPedidoReprovado,
  uPedidoCancelado, uPedidoFinalizado;

type
  TFactoryStatusPedido = class
  public
    class function Aprovar: ISituacaoPedido;
    class function Reprovar: ISituacaoPedido;
    class function Finalizar: ISituacaoPedido;
    class function Entregar: ISituacaoPedido;
    class function Realizar: ISituacaoPedido;
    class function Cancelar: ISituacaoPedido;
  end;

implementation

{ TFactoryStatusPedido }

class function TFactoryStatusPedido.Aprovar: ISituacaoPedido;
begin
  Result := TPedidoAprovado.New;
end;

class function TFactoryStatusPedido.Cancelar: ISituacaoPedido;
begin
  Result := TPedidoCancelado.New;
end;

class function TFactoryStatusPedido.Entregar: ISituacaoPedido;
begin
  Result := TPedidoEntregue.New;
end;

class function TFactoryStatusPedido.Finalizar: ISituacaoPedido;
begin
  Result := TPedidoFinalizado.New;
end;

class function TFactoryStatusPedido.Realizar: ISituacaoPedido;
begin
  Result := TPedidoRealizado.New;
end;

class function TFactoryStatusPedido.Reprovar: ISituacaoPedido;
begin
  Result := TPedidoReprovado.New;
end;

end.
