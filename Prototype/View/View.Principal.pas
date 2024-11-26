unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  System.Generics.Collections,Model.Pessoa.Email.Interfaces;

type
  TFPrincipal = class(TForm)
    pnPrinc: TPanel;
    lbNome: TLabeledEdit;
    lbEmail: TLabeledEdit;
    btEnviar: TButton;
    Button1: TButton;
    mmHist: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FlListaPessoaEmail: TList<iPessoaEmail>;

    procedure ListarHistoricoEmail;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses
  Model.Pessoa.Email;

{$R *.dfm}

procedure TFPrincipal.btEnviarClick(Sender: TObject);
begin
  FlListaPessoaEmail.Add(
    TPessoaEmail.New
      .SetNome(lbNome.Text)
      .SetEmail(lbEmail.Text)
  );
  ListarHistoricoEmail;
end;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  {Com o padrão Protype é possível clonar um objeto já existente}
  FlListaPessoaEmail.Add(
    FlListaPessoaEmail.Last.Prototype.Clone
  );
  ListarHistoricoEmail;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  FlListaPessoaEmail := TList<iPessoaEmail>.Create;
end;

procedure TFPrincipal.ListarHistoricoEmail;
var
  oPessoaEmail: iPessoaEmail;
begin
  mmHist.Clear;

  for oPessoaEmail in FlListaPessoaEmail do
    begin
    mmHist.Lines.Add(oPessoaEmail.GetDescricao);
  end;

end;

end.
