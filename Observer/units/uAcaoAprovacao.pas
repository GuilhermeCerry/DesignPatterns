unit uAcaoAprovacao;

interface

uses
  uIAcaoAprovacao, uPedido;

type
  TAcaoAprovacaoListener = class(TInterfacedObject, IAcaoAprovacaoListener)
  public
    procedure Executar(AoPedido: IPedido); virtual; abstract;

    constructor Create; overload;
    destructor Destroy; virtual;
  end;

implementation

{ TAcaoAprovacaoListener }

constructor TAcaoAprovacaoListener.Create;
begin
  inherited;
  //
end;

destructor TAcaoAprovacaoListener.Destroy;
begin
  //
end;

end.
