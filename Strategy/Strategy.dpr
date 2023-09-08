program Strategy;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas' {Form1},
  uCalculadoraCustos in 'Units\uCalculadoraCustos.pas',
  uICusto in 'Units\Interface\uICusto.pas',
  BibEnum in '..\Commons\Bib\BibEnum.pas',
  EnumUtils in '..\Commons\Utils\EnumUtils.pas',
  uCustoCusto in 'Units\uCustoCusto.pas',
  uCustoMedio in 'uCustoMedio.pas',
  uPrecoCompra in 'uPrecoCompra.pas',
  uCustoMedioPresente in 'uCustoMedioPresente.pas',
  uCustosFactory in 'Units\uCustosFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
