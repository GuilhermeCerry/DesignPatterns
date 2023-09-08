unit uSMSListener;

interface

uses
  uPedido, uAcaoAprovacao, uIAcaoAprovacao;

type
  TSMSListener = class(TAcaoAprovacaoListener)
  private
    FcCelular: string;
    FcNome: string;
  public
    procedure Executar(AoPedido: IPedido); override;

    class function New(const AcCelular, AcNome: String): TAcaoAprovacaoListener;
    constructor Create(const AcCelular, AcNome: String);
    destructor Destroy;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TSMSListener }

constructor TSMSListener.Create(const AcCelular, AcNome: String);
begin
  FcCelular := AcCelular;
  FcNome := AcNome;
end;

destructor TSMSListener.Destroy;
begin
  //
end;

procedure TSMSListener.Executar(AoPedido: IPedido);
begin
  ShowMessage(Format('Sms enviado para. Pessoa: %s - Celular: %s', [FcNome, FcCelular]));
end;

class function TSMSListener.New(const AcCelular, AcNome: String): TAcaoAprovacaoListener;
begin
  Result := Self.Create(AcCelular, AcNome);
end;

end.
