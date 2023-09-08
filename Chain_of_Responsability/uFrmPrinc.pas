unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDesconto50porCento, uDescontoAtacado,
  uDesconto20porCento, uDescontoZero;

type
  TTCalculadoraDesconto = class(TForm)
    ed_Valor: TLabeledEdit;
    ed_Result: TLabeledEdit;
    btCalcular: TButton;
    ed_Quantidade: TLabeledEdit;
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TCalculadoraDesconto: TTCalculadoraDesconto;

implementation

{$R *.dfm}

procedure TTCalculadoraDesconto.btCalcularClick(Sender: TObject);
begin
{
  Evita uma montueira de condições(if; else if; else if ...). Deixando as prprias classes
  com o papel de chamar o próximo calculo

  if (Math.CompareValue(AnValor, 5000) = Types.GreaterThanValue) and
    (Math.CompareValue(AnQuantidade, 1) = Types.EqualsValue) then
    FnValorDesconto := AnValor * (50/100) //50%
  else if (Math.CompareValue(AnQuantidade, 100) = Types.GreaterThanValue) then
    FnValorDesconto := AnValor * (30/100) //30%
  else if (Math.CompareValue(AnValor, 500) = Types.GreaterThanValue) then
    FnValorDesconto := AnValor * (20/100) //20%
  else
    FnValorDesconto := 0;
}
  ed_Result.Text :=
    FloatToStr(  (StrToFloat(ed_Valor.Text) * StrToFloat(ed_Quantidade.Text)) -
      TDesconto50porCento.New(
        TDescontoAtacado.New(
          TDesconto20porCento.New(
            TDescontoZero.New(nil)
          )
        )
      ).CalcularDesconto(StrToFloat(ed_Valor.Text), StrToInt(ed_Quantidade.Text)).GetValorDesconto);
end;

end.
