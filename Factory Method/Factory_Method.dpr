program Factory_Method;

uses
  Vcl.Forms,
  View.Princ in 'View\View.Princ.pas' {FPrinc},
  Model.Contabilidade.Online in 'Model\Model.Contabilidade.Online.pas',
  Model.Contabilidade.Offline in 'Model\Model.Contabilidade.Offline.pas',
  Model.Factory.Contabilidade in 'Model\Model.Factory.Contabilidade.pas',
  Model.Interfaces.Contabilidade in 'Model\Model.Interfaces.Contabilidade.pas',
  Model.Enum.Contabilidade in 'Model\Model.Enum.Contabilidade.pas',
  Model.Interfaces.Factory.Contabilidade in 'Model\Model.Interfaces.Factory.Contabilidade.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
