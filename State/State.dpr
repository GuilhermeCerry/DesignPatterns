program State;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {ControladorEntrega},
  uSituacaoPedido in 'Units\uSituacaoPedido.pas',
  uPedidoAprovado in 'Units\uPedidoAprovado.pas',
  uFactoryStatusPedido in 'Units\uFactoryStatusPedido.pas',
  uPedidoReprovado in 'Units\uPedidoReprovado.pas',
  uPedidoRealizado in 'Units\uPedidoRealizado.pas',
  uPedidoEntregue in 'Units\uPedidoEntregue.pas',
  uPedidoCancelado in 'Units\uPedidoCancelado.pas',
  uPedidoFinalizado in 'Units\uPedidoFinalizado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TControladorEntrega, ControladorEntrega);
  Application.Run;
end.
