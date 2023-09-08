program Command;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {FrmPrinc},
  uEmitirNotaDados in 'uEmitirNotaDados.pas',
  uEmitirNotaHandler in 'uEmitirNotaHandler.pas',
  uICommand in 'interface\uICommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrinc, FrmPrinc);
  Application.Run;
end.
