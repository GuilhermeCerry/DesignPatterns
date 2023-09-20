unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    pnPrinc: TPanel;
    EB_CONFIGURACAO: TLabeledEdit;
    EB_PESSOA: TLabeledEdit;
    EB_ITEM: TLabeledEdit;
    EB_QUANTIDADE: TLabeledEdit;
    EB_VALORUNIT: TLabeledEdit;
    btEmitir: TButton;
    EB_DESCONTO: TLabeledEdit;
    procedure btEmitirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  uEmitirNotaDados, uEmitirNotaHandler, uFactoryAcaoAposEmitirNota;

{$R *.dfm}

procedure TForm5.btEmitirClick(Sender: TObject);
var
  oNotaDados: IDadosNota;
begin
  oNotaDados :=
    TEmitirNotaDados.New(
      StrToInt(EB_CONFIGURACAO.Text),
      StrToInt(EB_PESSOA.Text),
      StrToInt(EB_ITEM.Text),
      StrToFloat(EB_QUANTIDADE.Text),
      StrToFloat(EB_VALORUNIT.Text)
    ).SetDesconto(StrToFloat(EB_DESCONTO.Text));

  {
   Chamada do método Execute é consideirado uma fachada(facade), ou seja, para o
   cliente não importa oque ocorre dentro do execute, so a função dele, que é a emissão de nota.
   Costuma dizer que uma função é facade quando dentro dela ocorre a chamada de outros objetos, assim
   deixando o client mais simples.
  }

  TEmitirNotaHandler.New
    .AddAcaoAposEmitirNota(TFactoryAcaoAposEmitirNota.CalcularSaldo)
    .AddAcaoAposEmitirNota(TFactoryAcaoAposEmitirNota.CalcularCusto)
    .Execute(oNotaDados);
end;

end.
