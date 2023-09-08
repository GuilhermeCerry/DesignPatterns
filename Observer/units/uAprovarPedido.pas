unit uAprovarPedido;

interface

uses
  uPedido, uAcaoAprovacao, uIAcaoAprovacao, System.Generics.Collections;

type
  IAprovarPedido = interface
    ['{A8C89755-4B76-4B94-B2D5-FCAE55DD95BC}']
    function Executar(AoPedido: IPedido): IAprovarPedido;
    function InscreverAcao(AoAcao: TAcaoAprovacaoListener): IAprovarPedido;
  end;

  TAprovarPedido = class(TInterfacedObject, IAprovarPedido)
  private
    FoAcoes: TObjectList<TAcaoAprovacaoListener>;
  protected
    function Executar(AoPedido: IPedido): IAprovarPedido;
    function InscreverAcao(AoAcao: TAcaoAprovacaoListener): IAprovarPedido;
  public
    class function New: IAprovarPedido;
    constructor Create;
    destructor Destroy; virtual;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TAprovarPedido }

constructor TAprovarPedido.Create;
begin
  FoAcoes:= TObjectList<TAcaoAprovacaoListener>.Create;
end;

destructor TAprovarPedido.Destroy;
begin
  if Assigned(FoAcoes) then
    FreeAndNil(FoAcoes);
end;

function TAprovarPedido.Executar(AoPedido: IPedido): IAprovarPedido;
var
  i: Integer;
begin
  Result := Self;

  ShowMessage('Pedido Aprovado');

  {
  Aqui será notificado todas as classes que se inscreveram para receber o aviso,
  ou seja, as classes listeners ou observers
  }

  for i := 0 to FoAcoes.Count - 1 do
    FoAcoes[i].Executar(AoPedido);
end;

function TAprovarPedido.InscreverAcao(AoAcao: TAcaoAprovacaoListener): IAprovarPedido;
begin
  Result := Self;

  FoAcoes.Add(AoAcao);
end;

class function TAprovarPedido.New: IAprovarPedido;
begin
  Result := Self.Create;
end;

end.
