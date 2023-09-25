unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uCalculaCusto, BibEnum;

type
  TForm6 = class(TForm)
    pnPrinc: TPanel;
    grpDadosCompra: TGroupBox;
    grpCustos: TGroupBox;
    lb_CustoMedio: TLabeledEdit;
    lb_CustoPresente: TLabeledEdit;
    lb_CustoMedioAnt: TLabeledEdit;
    lb_FormulaCustoMedio: TLabel;
    lb_FormulaCustoMedioPresente: TLabel;
    lb_FormulaCustoMedioAnt: TLabel;
    lb_Quantidade: TLabeledEdit;
    lb_VlrUnitario: TLabeledEdit;
    btCalcularCusto: TButton;
    procedure btCalcularCustoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btCalcularCustoClick(Sender: TObject);
var
  oCalculaCusto: ICalculaCusto;
begin
  oCalculaCusto := TCalculaCusto.New(StrToFloat(lb_VlrUnitario.Text), StrToFloat(lb_Quantidade.Text));

  {
   Padrão Proxy evita ficar consultando toda vez a mesma coisa, deixando o valor em cache
   no caso desse exemplo, evita ficar consulta toda vez o custo médio anterior, o qual é
   utilizado em vários custo. Com isso deixando a aplicação mais performatica e mais segura,
   ou seja, sem dispariedade nos dados.
   Esse padrão pode ser subtituído por uma variável de classe, porém, deixa de lado os príncipios
   de POO e Clean Code.
  }

  lb_CustoMedio.Text := oCalculaCusto.Calcular(BibEnum.tccMedio).GetCusto.ToString;
  Self.Refresh;
  lb_CustoPresente.Text := oCalculaCusto.Calcular(BibEnum.tccMedioPresente).GetCusto.ToString;
  Self.Refresh;
  lb_CustoMedioAnt.Text := oCalculaCusto.Calcular(BibEnum.tccMedioAnterior).GetCusto.ToString;
end;

end.
