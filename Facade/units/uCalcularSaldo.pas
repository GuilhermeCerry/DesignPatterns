unit uCalcularSaldo;

interface

uses
  uIAcaoAposEmitirNota;

type
  TCalcularSaldo = class(TInterfacedObject, IAcaoAposEmitirNota)
  public
    function Executar: IAcaoAposEmitirNota;
    class function New: IAcaoAposEmitirNota;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  Vcl.Dialogs;

{ TCalcularSaldo }

constructor TCalcularSaldo.Create;
begin
  //
end;

destructor TCalcularSaldo.Destroy;
begin
  //
end;

function TCalcularSaldo.Executar: IAcaoAposEmitirNota;
begin
  Result := Self;
  ShowMessage('Saldo calculado');
end;

class function TCalcularSaldo.New: IAcaoAposEmitirNota;
begin
  Result := Self.Create;
end;

end.
