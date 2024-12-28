unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Model.Governo;

type
  TFPrincipal = class(TForm)
    Panel1: TPanel;
    btCriarGov1: TButton;
    btCriarGov2: TButton;
    btExibirGov: TButton;
    mmGov: TMemo;
    procedure btCriarGov1Click(Sender: TObject);
    procedure btCriarGov2Click(Sender: TObject);
    procedure btExibirGovClick(Sender: TObject);
  private
    { Private declarations }
    FGoverno1: iGoverno;
    FGoverno2: iGoverno;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

procedure TFPrincipal.btCriarGov1Click(Sender: TObject);
begin
  FGoverno1 := TGoverno.New.SetPais('Brasil');
end;

procedure TFPrincipal.btCriarGov2Click(Sender: TObject);
begin
  FGoverno2 := TGoverno.New;

//  FGoverno2.SetPais('Paraguai');
end;

procedure TFPrincipal.btExibirGovClick(Sender: TObject);
begin
  mmGov.Clear;
  if Assigned(FGoverno1) then
    mmGov.Lines.Add('Governo 1: ' + FGoverno1.GetDescricao);
  if Assigned(FGoverno2) then
    mmGov.Lines.Add('Governo 2: ' + FGoverno2.GetDescricao);
end;

end.
