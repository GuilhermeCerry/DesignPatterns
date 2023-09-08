unit uEmitirNotaHandler;

interface

uses
  uICommand, uEmitirNotaDados;

type
  TEmitirNotaHandler = class(TInterfacedObject, ICommand<IDadosNota>)
  public
    function Execute(AoDados: IDadosNota): ICommand<IDadosNota>;

    class function New: ICommand<IDadosNota>;
    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TEmitirNotaHandler }

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

  ShowMessage('Valor Total: ' + FloatToStr(AoDados.GetValorTotal));
  ShowMessage('Nota fiscal emitida!');
  ShowMessage('Nota fiscal enviada ao Sefaz!');
end;

class function TEmitirNotaHandler.New: ICommand<IDadosNota>;
begin
  Result := Self.Create;
end;

end.
