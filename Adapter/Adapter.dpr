program Adapter;

uses
  Vcl.Forms,
  uFrmPrinc in 'uFrmPrinc.pas',
  BibArquivo in '..\Commons\Bib\BibArquivo.pas',
  libXmlToJson in 'units\libXmlToJson.pas',
  uPessoa in 'units\uPessoa.pas',
  uIJsonAdapter in 'units\Json\uIJsonAdapter.pas',
  uJsonAdapterClient in 'units\Json\uJsonAdapterClient.pas',
  uHttpAdapterClient in 'units\Http\uHttpAdapterClient.pas',
  uHelper in '..\Commons\Utils\uHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
