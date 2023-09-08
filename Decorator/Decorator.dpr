program Decorator;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {Form3},
  uImposto in 'units\uImposto.pas',
  uIImposto in 'interface\uIImposto.pas',
  uCOFINS in 'units\uCOFINS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
