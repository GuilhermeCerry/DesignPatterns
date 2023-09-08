unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
