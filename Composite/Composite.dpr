program Composite;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {Form4},
  uIObjetoCargaComposite in 'interface\uIObjetoCargaComposite.pas',
  uCaixaCargaComposite in 'units\uCaixaCargaComposite.pas',
  uItemCargaComposite in 'units\uItemCargaComposite.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
