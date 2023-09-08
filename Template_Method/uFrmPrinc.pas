unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDesconto50porCento_TM, uDescontoAtacado_TM,
  uDesconto20porCento_TM, uDescontoZero_TM;

type
  TFrmPrinc = class(TForm)
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
  TCalculadoraDesconto: TFrmPrinc;

implementation

{$R *.dfm}

procedure TFrmPrinc.btCalcularClick(Sender: TObject);
begin
  {
   Baseado na forma que foi feito no projeto do Chain_of_Responsability, esse
   Design Patterns evita ficar repetindo comportamntos semelhantes nas classes
   filhas, ou seja, se todas verificam se deve calcular, por que não extrair para
   a classe mãe a verificar e deixar a regra na classe filha.
  }

  ed_Result.Text :=
    FloatToStr(  (StrToFloat(ed_Valor.Text) * StrToFloat(ed_Quantidade.Text))  -
      TDesconto50porCento_TM.New(
        TDescontoAtacado_TM.New(
          TDesconto20porCento_TM.New(
            TDescontoZero_TM.New(nil)
          )
        )
      ).CalcularDesconto(StrToFloat(ed_Valor.Text), StrToInt(ed_Quantidade.Text)).GetValorDesconto);
end;

end.
