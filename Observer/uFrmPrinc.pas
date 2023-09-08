unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uAprovarPedido, uSMSListener,
  uEmailListener, uPedido;

type
  TFrmNotificarAprovacao = class(TForm)
    btAprovar: TButton;
    lbEmail: TLabeledEdit;
    btInscrever: TButton;
    lbCelular: TLabeledEdit;
    btInscreverCelular: TButton;
    lbNome: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure btInscreverClick(Sender: TObject);
    procedure btInscreverCelularClick(Sender: TObject);
    procedure btAprovarClick(Sender: TObject);
  private
    { Private declarations }
    FoAprovarPedido: IAprovarPedido;
  public
    { Public declarations }
  end;

var
  FrmNotificarAprovacao: TFrmNotificarAprovacao;

implementation

{$R *.dfm}

procedure TFrmNotificarAprovacao.btAprovarClick(Sender: TObject);
begin
  FoAprovarPedido.Executar(TPedido.Create);
end;

procedure TFrmNotificarAprovacao.btInscreverCelularClick(Sender: TObject);
begin
  FoAprovarPedido.InscreverAcao(
    TSMSListener.New(
      lbCelular.Text,
      lbNome.Text
    )
  );
end;

procedure TFrmNotificarAprovacao.btInscreverClick(Sender: TObject);
begin
  FoAprovarPedido.InscreverAcao(
    TEmailListener.New(
      lbEmail.Text,
      lbNome.Text
    )
  );
end;

procedure TFrmNotificarAprovacao.FormCreate(Sender: TObject);
begin
  FoAprovarPedido := TAprovarPedido.New;
end;

end.
