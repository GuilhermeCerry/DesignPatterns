unit uPessoa;

interface

type
  TPessoa = class
  private
    FDataNascimento: TDateTime;
    FAltura: Extended;
    FCPF: string;
    FBrasileiro: Boolean;
    FIdade: Integer;
    FNome: String;
    FCEP: string;
    FCelular: string;
    procedure SetAltura(const Value: Extended);
    procedure SetBrasileiro(const Value: Boolean);
    procedure SetCPF(const Value: string);
    procedure SetDataNascimento(const Value: TDateTime);
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetCelular(const Value: string);
    procedure SetCEP(const Value: string);
  public
    constructor Create;

    property Nome: String read FNome write SetNome;
    property Idade: Integer read FIdade write SetIdade;
    property DataNascimento: TDateTime read FDataNascimento write SetDataNascimento;
    property CPF: string read FCPF write SetCPF;
    property CEP: string read FCEP write SetCEP;
    property Celular: string read FCelular write SetCelular;
    property Brasileiro: Boolean read FBrasileiro write SetBrasileiro;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin
  //
end;

procedure TPessoa.SetAltura(const Value: Extended);
begin
  FAltura := Value;
end;

procedure TPessoa.SetBrasileiro(const Value: Boolean);
begin
  FBrasileiro := Value;
end;

procedure TPessoa.SetCelular(const Value: string);
begin
  FCelular := Value;
end;

procedure TPessoa.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TPessoa.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

procedure TPessoa.SetDataNascimento(const Value: TDateTime);
begin
  FDataNascimento := Value;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
