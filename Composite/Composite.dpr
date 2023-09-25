program Composite;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {FormPrinc},
  uIObjetoCargaComposite in 'interface\uIObjetoCargaComposite.pas',
  uCaixaCargaComposite in 'units\uCaixaCargaComposite.pas',
  uItemCargaComposite in 'units\uItemCargaComposite.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrinc, FormPrinc);
  Application.Run;
end.
