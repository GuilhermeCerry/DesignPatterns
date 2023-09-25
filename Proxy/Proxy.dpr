program Proxy;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {Form6},
  uCalculaCusto in 'units\uCalculaCusto.pas',
  BibEnum in '..\Commons\Bib\BibEnum.pas',
  EnumUtils in '..\Commons\Utils\EnumUtils.pas',
  uIProxyCusto in 'interface\uIProxyCusto.pas',
  uCustoMedioAnteriorProxy in 'units\uCustoMedioAnteriorProxy.pas',
  uCustoMedioAnterior in 'units\uCustoMedioAnterior.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
