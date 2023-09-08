program Template_Method;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {FrmPrinc},
  uDesconto_TM in 'units\uDesconto_TM.pas',
  uDesconto20porCento_TM in 'units\uDesconto20porCento_TM.pas',
  uDesconto50porCento_TM in 'units\uDesconto50porCento_TM.pas',
  uDescontoAtacado_TM in 'units\uDescontoAtacado_TM.pas',
  uDescontoZero_TM in 'units\uDescontoZero_TM.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrinc, TCalculadoraDesconto);
  Application.Run;
end.
