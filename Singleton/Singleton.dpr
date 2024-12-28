program Singleton;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {Form4},
  Model.Governo in 'Model\Model.Governo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
