program Observer;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {FrmNotificarAprovacao},
  uIAcaoAprovacao in 'interface\uIAcaoAprovacao.pas',
  uPedido in 'units\uPedido.pas',
  uEmailListener in 'units\uEmailListener.pas',
  uSMSListener in 'units\uSMSListener.pas',
  uAprovarPedido in 'units\uAprovarPedido.pas',
  uAcaoAprovacao in 'units\uAcaoAprovacao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmNotificarAprovacao, FrmNotificarAprovacao);
  Application.Run;
end.
