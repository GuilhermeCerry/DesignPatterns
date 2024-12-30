unit View.Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Model.Interfaces.Factory.Contabilidade;

type
  TFPrinc = class(TForm)
    pnPrinc: TPanel;
    btContabilizarOnline: TButton;
    lbIDContabilidade: TLabeledEdit;
    Button1: TButton;
    procedure btContabilizarOnlineClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FoFactoryContabilidade: iFactoryContabilidade;
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
  {Com o padrão Abstract Factory é possível abstrair a criação de objetos da mesma família, sendo assim a fabrica abstrata
  pode criar tanto a contabilidade online quanto offline}

//  TContabilidadeOnline.New(StrToInt(lbIDContabilidade.Text)).Contabilizar;
  FoFactoryContabilidade.Online(StrToInt(lbIDContabilidade.Text)).Contabilizar;
end;

procedure TFPrinc.Button1Click(Sender: TObject);
begin
//  TContabilidadeOffline.New(StrToInt(lbIDContabilidade.Text)).Contabilizar;
  FoFactoryContabilidade.Offline(StrToInt(lbIDContabilidade.Text)).Contabilizar
end;

procedure TFPrinc.FormCreate(Sender: TObject);
begin
  FoFactoryContabilidade :=  TFactoryContabilidade.New;
end;

end.
