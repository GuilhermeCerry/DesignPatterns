unit uEmailListener;

interface

uses
  uPedido, uAcaoAprovacao, uIAcaoAprovacao;

type
  TEmailListener = class(TAcaoAprovacaoListener)
  private
    FcEmail: string;
    FcNome: string;
  public
    procedure Executar(AoPedido: IPedido); override;

    class function New(const AcEmail, AcNome: String): TAcaoAprovacaoListener;
    constructor Create(const AcEmail, AcNome: String);
    destructor Destroy;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TEmailListener }

constructor TEmailListener.Create(const AcEmail, AcNome: String);
begin
  FcEmail := AcEmail;
  FcNome := AcNome;
end;

destructor TEmailListener.Destroy;
begin
  //
end;

procedure TEmailListener.Executar(AoPedido: IPedido);
begin
  ShowMessage(Format('Email enviado para. Pessoa: %s - Email: %s', [FcNome, FcEmail]));
end;

class function TEmailListener.New(const AcEmail,
  AcNome: String): TAcaoAprovacaoListener;
begin
  Result := Self.Create(AcEmail, AcNome);
end;

end.
