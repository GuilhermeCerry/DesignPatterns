unit uEnviarNotaSefaz;

interface

uses
  uIAcaoAposEmitirNota;

type
  TEnviarNotaSefaz = class(TInterfacedObject, IAcaoAposEmitirNota)
  public
    function Executar: IAcaoAposEmitirNota;
    class function New: IAcaoAposEmitirNota;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  Vcl.Dialogs;

{ TEnviarNotaSefaz }

constructor TEnviarNotaSefaz.Create;
begin
  //
end;

destructor TEnviarNotaSefaz.Destroy;
begin
  //
end;

function TEnviarNotaSefaz.Executar: IAcaoAposEmitirNota;
begin
  Result := Self;

  ShowMessage('Nota fiscal enviada ao Sefaz!');
end;

class function TEnviarNotaSefaz.New: IAcaoAposEmitirNota;
begin
  Result := Self.Create;
end;

end.
