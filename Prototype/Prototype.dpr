program Prototype;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {FPrincipal},
  Model.Pessoa.Email in 'Model\Model.Pessoa.Email.pas',
  Model.Pessoa.Email.Interfaces in 'Model\Model.Pessoa.Email.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
