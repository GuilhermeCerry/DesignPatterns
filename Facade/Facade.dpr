program Facade;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {Form5},
  uEmitirNotaHandler in 'units\uEmitirNotaHandler.pas',
  uEmitirNotaDados in 'units\uEmitirNotaDados.pas',
  uICommand in 'interface\uICommand.pas',
  uIAcaoAposEmitirNota in 'interface\uIAcaoAposEmitirNota.pas',
  uEnviarNotaSefaz in 'units\uEnviarNotaSefaz.pas',
  uFactoryAcaoAposEmitirNota in 'units\uFactoryAcaoAposEmitirNota.pas',
  uCalcularCusto in 'units\uCalcularCusto.pas',
  uCalcularSaldo in 'units\uCalcularSaldo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
