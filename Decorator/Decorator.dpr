program Decorator;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {Form3},
  uImposto in 'units\uImposto.pas',
  uIImposto in 'interface\uIImposto.pas',
  uCOFINS in 'units\uCOFINS.pas',
  uPIS in 'units\uPIS.pas',
  uIPI in 'units\uIPI.pas',
  uICMS in 'units\uICMS.pas',
  uImpostoFactory in 'units\uImpostoFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
