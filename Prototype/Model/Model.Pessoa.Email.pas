unit Model.Pessoa.Email;

interface

uses
  Model.Pessoa.Email.Interfaces;

type
  TPessoaEmail = class(TInterfacedObject, iPessoaEmail,iPrototype<iPessoaEmail>)
    private
      FcNome: String;
      FcEmail: String;
    protected
      function SetNome(AcNome: String): iPessoaEmail;
      function SetEmail(AcEmail: String): iPessoaEmail;
      function GetDescricao: String;
      function Prototype: iPrototype<iPessoaEmail>;
      function Clone: iPessoaEmail;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoaEmail;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;


{ TPessoaEmail }

function TPessoaEmail.Clone: iPessoaEmail;
begin
  Result := TPessoaEmail.New;
  Result.SetNome(FcNome);
  Result.SetEmail(FcEmail);
end;

constructor TPessoaEmail.Create;
begin
  //
end;

destructor TPessoaEmail.Destroy;
begin
   //
  inherited;
end;

function TPessoaEmail.GetDescricao: String;
begin
  Result := Format('Enviando email para a pessoa %s no seguinte endereço de email: %s', [FcNome, FcEmail]);
end;

class function TPessoaEmail.New: iPessoaEmail;
begin
  Result := Self.Create;
end;

function TPessoaEmail.Prototype: iPrototype<iPessoaEmail>;
begin
  Result := Self;
end;

function TPessoaEmail.SetEmail(AcEmail: String): iPessoaEmail;
begin
  Result := Self;
  FcEmail := AcEmail;
end;

function TPessoaEmail.SetNome(AcNome: String): iPessoaEmail;
begin
  Result := Self;
  FcNome := AcNome;
end;

end.

