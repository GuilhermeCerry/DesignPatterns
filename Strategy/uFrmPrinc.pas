unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pnPrinc: TPanel;
    rgCustos: TRadioGroup;
    btCalcular: TButton;
    ed_Result: TEdit;
    Label1: TLabel;
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uCalculadoraCustos, BibEnum, System.Math;

{$R *.dfm}

procedure TForm1.btCalcularClick(Sender: TObject);
begin
  ed_Result.Text := FloatToStr(
    RoundTo(TCalculadoraCustos.New
      .CalcularCustos(
        BibEnum.IntToTipoCustoCalc(rgCustos.ItemIndex)
      ), -2)
    );
end;

end.
