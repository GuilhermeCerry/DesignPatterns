program Builder;

uses
  Vcl.Forms,
  Builder.View.Principal in 'View\Builder.View.Principal.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
