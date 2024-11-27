unit Builder.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFPrincipal = class(TForm)
    pnPrinc: TPanel;
    btGolf: TButton;
    btSaveiro: TButton;
    mmCarro: TMemo;
    procedure btGolfClick(Sender: TObject);
    procedure btSaveiroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses
  Builder.Model.Interfaces, Builder.Model.Carro.Builder,
  Builder.Controller.Director.CarroVW;

{$R *.dfm}

procedure TFPrincipal.btGolfClick(Sender: TObject);
var
  Builder: iBuilderCarro;
begin
  {Deixa a cargo do Director saber o que o carro tem e não tem, e o builder fica responsável por criar o objeto}

  Builder := TBuilderCarro.New;
  TDirectorCarroVW.ConstruirCarroGolfComfortiline2005(Builder);
  mmCarro.Lines.Add(Builder.GetCarro.GetDescricaoCarro);
end;

procedure TFPrincipal.btSaveiroClick(Sender: TObject);
var
  Builder: iBuilderCarro;
begin
  Builder := TBuilderCarro.New;
  TDirectorCarroVW.ConstruirCarroSaveiroFlex2012(Builder);
  mmCarro.Lines.Add(Builder.GetCarro.GetDescricaoCarro);
end;

end.
