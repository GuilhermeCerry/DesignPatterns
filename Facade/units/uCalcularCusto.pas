unit uCalcularCusto;

interface

uses
  uIAcaoAposEmitirNota;

type
  TCalcularCusto = class(TInterfacedObject, IAcaoAposEmitirNota)
  public
    function Executar: IAcaoAposEmitirNota;
    class function New: IAcaoAposEmitirNota;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  Vcl.Dialogs;

{ TCalcularCusto }

constructor TCalcularCusto.Create;
begin
  //
end;

destructor TCalcularCusto.Destroy;
begin
  //
end;

function TCalcularCusto.Executar: IAcaoAposEmitirNota;
begin
  Result := Self;
  ShowMessage('Custo calculado')
end;

class function TCalcularCusto.New: IAcaoAposEmitirNota;
begin
  Result := Self.Create;
end;

end.
