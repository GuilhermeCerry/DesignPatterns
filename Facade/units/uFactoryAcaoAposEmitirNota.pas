unit uFactoryAcaoAposEmitirNota;

interface

uses
  uIAcaoAposEmitirNota, uEnviarNotaSefaz, uCalcularSaldo, uCalcularCusto ;

type
  TFactoryAcaoAposEmitirNota = class
  public
    class function EnviarNotaSefaz: IAcaoAposEmitirNota;
    class function CalcularSaldo: IAcaoAposEmitirNota;
    class function CalcularCusto: IAcaoAposEmitirNota;
  end;

implementation

{ TFactoryAcaoAposEmitirNota }

class function TFactoryAcaoAposEmitirNota.CalcularCusto: IAcaoAposEmitirNota;
begin
  Result := TCalcularCusto.New;
end;

class function TFactoryAcaoAposEmitirNota.CalcularSaldo: IAcaoAposEmitirNota;
begin
  Result := TCalcularSaldo.New;
end;

class function TFactoryAcaoAposEmitirNota.EnviarNotaSefaz: IAcaoAposEmitirNota;
begin
  Result := TEnviarNotaSefaz.New;
end;

end.
