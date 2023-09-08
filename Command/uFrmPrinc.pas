unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uEmitirNotaHandler, uEmitirNotaDados;

type
  TFrmPrinc = class(TForm)
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
  FrmPrinc: TFrmPrinc;

implementation

{$R *.dfm}

{
  Abstrai as fun��es de emi��o de nota para cada classe. Sendo assim conhecido como
  padr�o Command.
  Caso seja separado os dados do funcionamento(Indo contra o POO), a classe respons�vel
  pela execu��o dos comandos ficar� conhecida como Handler, ou seja, padr�o Command Handler.
  No exemplo em quest�o, a classe TEmitirNotaDados armazena os dados em vari�veis,
  a qual posteriormente ser� utilizada na classe TEmitirNotaHandler, para emitir a nota.
  A classe TEmitirNotaHandler � a respons�vel por todo o comportamento.
}

procedure TFrmPrinc.btEmitirClick(Sender: TObject);
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

  TEmitirNotaHandler.New.Execute(oNotaDados);
end;

end.
