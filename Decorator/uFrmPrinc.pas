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
   Padr�o Decorator, conssite em um objeto "decorar" o pr�ximo objeto em uma cadeia de
   processos adicionais. Como exemplo, esse projeto apresenta o c�lculo dos impostos,
   sendo que o total dos impostos(valor a ser descoberto) ser� a soma deles. Em um outro
   exemplo mais cotidiano, pode ser entendido no processo de se vestir, onde � colocado uma cal�a,
   depois uma camiseta e depois uma jaqueta. Com a jun��o dessas tr�s pe�as de roupa, gerou um resultado,
   que � o "look" do dia.
   Para compara��o com o "Chain of Responsability", o Decorator enquadra em processos adicionais, j� a
   cadeia de responsabilidades ir� ser utilizada para realizar v�rias verifica��oes de m�todos at�
   que uma se enquadre no verifica��o pr� definida, ou seja, dentre os objetos da cadeia, somente um
   ir� fazer parte do resultado.
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
