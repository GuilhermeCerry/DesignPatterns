unit View.Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFPrinc = class(TForm)
    pnPrinc: TPanel;
    rgContabilidade: TRadioGroup;
    btContabilizar: TButton;
    lbIDContabilidade: TLabeledEdit;
    procedure btContabilizarClick(Sender: TObject);
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

  Model.Contabilidade.Online,
  Model.Contabilidade.Offline  ,

  Model.Factory.Contabilidade;

{$R *.dfm}

procedure TFPrinc.btContabilizarClick(Sender: TObject);
begin
  {Com o padrão Factory Method é possível abstrair a criação do objeto para a classe factory,
  deixando a cargo dela qual tipo de objeto deve ser criado de acordo com o parâmetro}

//  case rgContabilidade.ItemIndex of
//    Ord(Model.Enum.Contabilidade.ttcOnline) : TContabilidadeOnline.New.Contabilizar(StrToInt(lbIDContabilidade.Text));
//    Ord(Model.Enum.Contabilidade.ttcOffline) : TContabilidadeOffline.New.Contabilizar(StrToInt(lbIDContabilidade.Text));
//  end;
  TFactoryContabilidade.New.Contabilidade(TTipoContabilidade(rgContabilidade.ItemIndex)).Contabilizar(StrToInt(lbIDContabilidade.Text));
end;

end.
