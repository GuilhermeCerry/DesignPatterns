program Builder;

uses
  Vcl.Forms,
  Builder.View.Principal in 'View\Builder.View.Principal.pas' {FPrincipal},
  Builder.Model.Carro in 'Model\Builder.Model.Carro.pas',
  Builder.Model.Interfaces in 'Model\Builder.Model.Interfaces.pas',
  Builder.Model.Carro.Builder in 'Model\Builder.Model.Carro.Builder.pas',
  Builder.Controller.Director.CarroVW in 'Controller\Builder.Controller.Director.CarroVW.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
