unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uImpostoFactory;

type
  TForm3 = class(TForm)
    pnPrinc: TPanel;
    grpImpostosFederais: TGroupBox;
    grpImpostosEstaduais: TGroupBox;
    pnCalc: TPanel;
    lbCofins: TLabeledEdit;
    lbPis: TLabeledEdit;
    lbICMS: TLabeledEdit;
    lbIPI: TLabeledEdit;
    grpMercadoria: TGroupBox;
    btVlrTotImposto: TButton;
    lbVlrTotImposto: TLabeledEdit;
    lbVlrMercadoria: TLabeledEdit;
    btCalcularImpFederais: TButton;
    btnCalcImpEstaduais: TButton;
    procedure btCalcularImpFederaisClick(Sender: TObject);
    procedure btnCalcImpEstaduaisClick(Sender: TObject);
    procedure btVlrTotImpostoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btCalcularImpFederaisClick(Sender: TObject);
var
  nVlrMercadoria: Extended;
begin
  nVlrMercadoria := StrToFloat(lbVlrMercadoria.Text);

  {
   Padrão Decorator, conssite em um objeto "decorar" o próximo objeto em uma cadeia de
   processos adicionais. Como exemplo, esse projeto apresenta o cálculo dos impostos,
   sendo que o total dos impostos(valor a ser descoberto) será a soma deles. Em um outro
   exemplo mais cotidiano, pode ser entendido no processo de se vestir, onde é colocado uma calça,
   depois uma camiseta e depois uma jaqueta. Com a junção dessas três peças de roupa, gerou um resultado,
   que é o "look" do dia.
   Para comparação com o "Chain of Responsability", o Decorator enquadra em processos adicionais, já a
   cadeia de responsabilidades irá ser utilizada para realizar várias verificaçãoes de métodos até
   que uma se enquadre no verificação pré definida, ou seja, dentre os objetos da cadeia, somente um
   irá fazer parte do resultado.
  }

  lbVlrTotImposto.Text :=
    TImpostoFactory.IPI(
      TImpostoFactory.COFINS(
        TImpostoFactory.PIS(
          nil
        )
      )
    ).CalcularImposto(nVlrMercadoria).ToString;

  lbIPI.Text    := TImpostoFactory.IPI(nil).CalcularImposto(nVlrMercadoria).ToString;
  lbPis.Text    := TImpostoFactory.PIS(nil).CalcularImposto(nVlrMercadoria).ToString;
  lbCofins.Text := TImpostoFactory.COFINS(nil).CalcularImposto(nVlrMercadoria).ToString;
end;

procedure TForm3.btnCalcImpEstaduaisClick(Sender: TObject);
var
  nVlrMercadoria: Extended;
begin
  nVlrMercadoria := StrToFloat(lbVlrMercadoria.Text);

  lbVlrTotImposto.Text :=
    TImpostoFactory.ICMS(
      nil
    ).CalcularImposto(nVlrMercadoria).ToString;

  lbICMS.Text := lbVlrTotImposto.Text;
end;

procedure TForm3.btVlrTotImpostoClick(Sender: TObject);
var
  nVlrMercadoria: Extended;
begin
  nVlrMercadoria := StrToFloat(lbVlrMercadoria.Text);

  lbVlrTotImposto.Text :=
    TImpostoFactory.IPI(
      TImpostoFactory.COFINS(
        TImpostoFactory.PIS(
          TImpostoFactory.ICMS(
            nil
          )
        )
      )
    ).CalcularImposto(nVlrMercadoria).ToString;
end;

end.
