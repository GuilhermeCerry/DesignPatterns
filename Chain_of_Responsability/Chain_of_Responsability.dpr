program Chain_of_Responsability;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {TCalculadoraDesconto},
  uDesconto in 'Units\uDesconto.pas',
  uDesconto50porCento in 'Units\uDesconto50porCento.pas',
  uDescontoAtacado in 'Units\uDescontoAtacado.pas',
  uDescontoZero in 'Units\uDescontoZero.pas',
  uDesconto20porCento in 'Units\uDesconto20porCento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTCalculadoraDesconto, TCalculadoraDesconto);
  Application.Run;
end.
