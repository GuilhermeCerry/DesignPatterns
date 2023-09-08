unit uIAcaoAprovacao;

interface

uses
  uPedido;

type

  IAcaoAprovacaoListener = interface
    ['{2300DA74-E44A-44EA-99D3-1B8882282A84}']
    procedure Executar(AoPedido: IPedido);
  end;

implementation

end.
