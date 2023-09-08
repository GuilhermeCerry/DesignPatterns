unit uSituacaoPedido;

interface

type
  ISituacaoPedido = interface
    ['{D60C1ABB-4F00-481C-A12A-353B8EE7B5A8}']
    function AprovarPedido: ISituacaoPedido;
    function ReprovarPedido: ISituacaoPedido;
    function FinalizarPedido: ISituacaoPedido;
    function RealizarPedido: ISituacaoPedido;
    function EntregarPedido: ISituacaoPedido;
    function CancelarPedido: ISituacaoPedido;
    function GetSituacaoAtual: string;
    function GetSituacao: ISituacaoPedido;
  end;

  TSituacaoPedido = class(TInterfacedObject, ISituacaoPedido)
  private
    FcSituacaoAtual: string;
  protected
    FoSituacao: ISituacaoPedido;
    function AprovarPedido: ISituacaoPedido; virtual;
    function ReprovarPedido: ISituacaoPedido; virtual;
    function FinalizarPedido: ISituacaoPedido; virtual;
    function RealizarPedido: ISituacaoPedido; virtual;
    function EntregarPedido: ISituacaoPedido; virtual;
    function CancelarPedido: ISituacaoPedido; virtual;
    procedure SetSituacaoAtual(const AnSituacao: String);
  public
    function GetSituacaoAtual: string;
    function GetSituacao: ISituacaoPedido;
    constructor Create;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TSituacaoPedido }

function TSituacaoPedido.CancelarPedido: ISituacaoPedido;
begin
  FcSituacaoAtual := EmptyStr;
  ShowMessage('N�o � poss�vel Cancelar o pedido quando ele estiver nessa situa��o!!');
  Abort;
end;

constructor TSituacaoPedido.Create;
begin
  FcSituacaoAtual := EmptyStr;
end;

function TSituacaoPedido.AprovarPedido: ISituacaoPedido;
begin
  FcSituacaoAtual := EmptyStr;
  ShowMessage('N�o � poss�vel Aprovar o pedido quando ele estiver nessa situa��o!!');
end;

function TSituacaoPedido.EntregarPedido: ISituacaoPedido;
begin
  FcSituacaoAtual := EmptyStr;
  ShowMessage('N�o � poss�vel Entregar o pedido quando ele estiver nessa situa��o!!');
  Abort;
end;

function TSituacaoPedido.FinalizarPedido: ISituacaoPedido;
begin
  FcSituacaoAtual := EmptyStr;
  ShowMessage('N�o � poss�vel Finalziar o pedido quando ele estiver nessa situa��o!!');
  Abort;
end;

function TSituacaoPedido.GetSituacao: ISituacaoPedido;
begin
  Result := FoSituacao;
end;

function TSituacaoPedido.GetSituacaoAtual: string;
begin
  Result := FcSituacaoAtual;
end;

function TSituacaoPedido.RealizarPedido: ISituacaoPedido;
begin
  FcSituacaoAtual := EmptyStr;
  ShowMessage('N�o � poss�vel Realizar o pedido quando ele estiver nessa situa��o!!');
  Abort;
end;

function TSituacaoPedido.ReprovarPedido: ISituacaoPedido;
begin
  FcSituacaoAtual := EmptyStr;
  ShowMessage('N�o � poss�vel Reprovar o pedido quando ele estiver nessa situa��o!!');
  Abort;
end;

procedure TSituacaoPedido.SetSituacaoAtual(const AnSituacao: String);
begin
  FcSituacaoAtual := AnSituacao;
end;

end.
