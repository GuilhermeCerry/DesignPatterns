unit View.Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFPrinc = class(TForm)
    pnPrinc: TPanel;
    btContabilizarOnline: TButton;
    lbIDContabilidade: TLabeledEdit;
    Button1: TButton;
    procedure btContabilizarOnlineClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

uses
  Model.Enum.Contabilidade,
  {
  Model.Contabilidade.Online,
  Model.Contabilidade.Offline}

  Model.Factory.Contabilidade;

{$R *.dfm}

procedure TFPrinc.btContabilizarOnlineClick(Sender: TObject);
begin
  {Com o padrão Abstract Factory é possível abstrair a criação do objeto para a classe factory,
  tirando a depedência da classe principal com as de contabilizações}

//  TContabilidadeOnline.New(StrToInt(lbIDContabilidade.Text)).Contabilizar;
  TFactoryContabilidade.New.Online(StrToInt(lbIDContabilidade.Text)).Contabilizar;
end;

procedure TFPrinc.Button1Click(Sender: TObject);
begin
//  TContabilidadeOffline.New(StrToInt(lbIDContabilidade.Text)).Contabilizar;
  TFactoryContabilidade.New.Offline(StrToInt(lbIDContabilidade.Text)).Contabilizar
end;

end.
