unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uSituacaoPedido, uPedidoRealizado;

type
  TControladorEntrega = class(TForm)
    btRealizarPedido: TButton;
    btAprovar: TButton;
    btReprovar: TButton;
    btEntregar: TButton;
    mmHistorico: TMemo;
    btFinalizar: TButton;
    btCancelar: TButton;
    btLimpar: TButton;
    procedure btRealizarPedidoClick(Sender: TObject);
    procedure btAprovarClick(Sender: TObject);
    procedure btEntregarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btReprovarClick(Sender: TObject);
    procedure btFinalizarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FoSituacaoPedido: ISituacaoPedido;
    procedure SetVisibilidadeStatus(const AnVisibilidade: Boolean);
  public
    { Public declarations }
  end;

var
  ControladorEntrega: TControladorEntrega;

implementation

{$R *.dfm}

{
  Aplicável para situaçãoes aonde o estado(state) do objeto é importante.

  Quando um objeto que está em A só pode ir para B e C, porém quando está em B
  não pode ir para A e nem para C, somente para D.

  Naexemplo desse projeto quando um pedido é realizado ele pode ser aprovado,
  cancelado e reprovado, porém ele não pode ser entregue antes de ser aprovado.
}

procedure TControladorEntrega.btAprovarClick(Sender: TObject);
begin
  FoSituacaoPedido := FoSituacaoPedido.GetSituacao.AprovarPedido;
  mmHistorico.Lines.Add(FoSituacaoPedido.GetSituacaoAtual);
end;

procedure TControladorEntrega.btCancelarClick(Sender: TObject);
begin
  FoSituacaoPedido := FoSituacaoPedido.GetSituacao.CancelarPedido;
  mmHistorico.Lines.Add(FoSituacaoPedido.GetSituacaoAtual);
end;

procedure TControladorEntrega.btEntregarClick(Sender: TObject);
begin
  FoSituacaoPedido := FoSituacaoPedido.GetSituacao.EntregarPedido;
  mmHistorico.Lines.Add(FoSituacaoPedido.GetSituacaoAtual);
end;

procedure TControladorEntrega.btFinalizarClick(Sender: TObject);
begin
  FoSituacaoPedido := FoSituacaoPedido.GetSituacao.FinalizarPedido;
  mmHistorico.Lines.Add(FoSituacaoPedido.GetSituacaoAtual);
end;

procedure TControladorEntrega.btRealizarPedidoClick(Sender: TObject);
begin
  FoSituacaoPedido := TPedidoRealizado.New;
  SetVisibilidadeStatus(True);
  mmHistorico.Lines.Add(FoSituacaoPedido.GetSituacaoAtual);
end;

procedure TControladorEntrega.btReprovarClick(Sender: TObject);
begin
  FoSituacaoPedido := FoSituacaoPedido.GetSituacao.ReprovarPedido;
  mmHistorico.Lines.Add(FoSituacaoPedido.GetSituacaoAtual);
end;

procedure TControladorEntrega.FormCreate(Sender: TObject);
begin
  SetVisibilidadeStatus(False);
end;

procedure TControladorEntrega.SetVisibilidadeStatus(
  const AnVisibilidade: Boolean);
begin
  btCancelar.Enabled  := AnVisibilidade;
  btFinalizar.Enabled := AnVisibilidade;
  btEntregar.Enabled  := AnVisibilidade;
  btReprovar.Enabled  := AnVisibilidade;
  btAprovar.Enabled   := AnVisibilidade;
end;

procedure TControladorEntrega.btLimparClick(Sender: TObject);
begin
  mmHistorico.Lines.Clear;
  FoSituacaoPedido := nil;
  SetVisibilidadeStatus(False);
end;

end.
