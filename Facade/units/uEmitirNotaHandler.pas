unit uEmitirNotaHandler;

interface

uses
  uICommand, uEmitirNotaDados, uIAcaoAposEmitirNota, uFactoryAcaoAposEmitirNota;

type
  TArrayAcaoAposEmissao = Array of IAcaoAposEmitirNota;

  TEmitirNotaHandler = class(TInterfacedObject, ICommand<IDadosNota>)
  private
    FaAcaoAposEmissao: TArrayAcaoAposEmissao;

    procedure AposEmissao;
  public
    function AddAcaoAposEmitirNota(AoAcao: IAcaoAposEmitirNota): ICommand<IDadosNota>;
    function Execute(AoDados: IDadosNota): ICommand<IDadosNota>;

    class function New: ICommand<IDadosNota>;
    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TEmitirNotaHandler }

function TEmitirNotaHandler.AddAcaoAposEmitirNota(
  AoAcao: IAcaoAposEmitirNota): ICommand<IDadosNota>;
var
  nIndex: Integer;
begin
  Result := Self;

  nIndex := Length(FaAcaoAposEmissao);
  SetLength(FaAcaoAposEmissao, nIndex + 1);
  FaAcaoAposEmissao[nIndex] := AoAcao;
end;

procedure TEmitirNotaHandler.AposEmissao;
var
  oAcao: IAcaoAposEmitirNota;
begin
  TFactoryAcaoAposEmitirNota.EnviarNotaSefaz.Executar;

  for oAcao in FaAcaoAposEmissao do
    oAcao.Executar;
end;

constructor TEmitirNotaHandler.Create;
begin
  //
end;

destructor TEmitirNotaHandler.Destroy;
begin
  //
end;

function TEmitirNotaHandler.Execute(
  AoDados: IDadosNota): ICommand<IDadosNota>;
begin
  Result := Self;

  ShowMessage('Nota fiscal emitida!');

  AposEmissao;
end;

class function TEmitirNotaHandler.New: ICommand<IDadosNota>;
begin
  Result := Self.Create;
end;

end.
