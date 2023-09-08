unit uDesconto_TM;

interface

type
  IDesconto_TM = interface
    ['{706DFE9C-B914-498F-81D6-59B1B664A7D8}']
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto_TM;
    function TestarDeveAplicar: Boolean;
    procedure AplicarDesconto;

    function SetQuantidade(const AnQuantidade: Integer): IDesconto_TM;
    function SetValor(const AnValor: Extended): IDesconto_TM;
    function SetValorDesconto(const ValorDesconto: Extended): IDesconto_TM;
    function SetProximo(const AoProximo: IDesconto_TM): IDesconto_TM;

    function GetQuantidade: Integer;
    function GetValor: Extended;
    function GetValorDesconto: Extended;
  end;

  TDesconto_TM = class(TInterfacedObject, IDesconto_TM)
  private
    FnValorDesconto: Extended;
    FnQuantidade: Integer;
    FnValor: Extended;
    FoProximo: IDesconto_TM;
  protected
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto_TM; virtual;
    function TestarDeveAplicar: Boolean; virtual; abstract;
    procedure AplicarDesconto; virtual; abstract;

    function SetQuantidade(const AnQuantidade: Integer): IDesconto_TM;
    function SetValor(const AnValor: Extended): IDesconto_TM;
    function SetValorDesconto(const ValorDesconto: Extended): IDesconto_TM;
    function SetProximo(const AoProximo: IDesconto_TM): IDesconto_TM;

    function GetQuantidade: Integer;
    function GetValor: Extended;
    function GetValorDesconto: Extended;
  public
    constructor Create;
  end;

implementation

{ TDesconto }

function TDesconto_TM.CalcularDesconto(const AnValor: Extended;
  const AnQuantidade: Integer): IDesconto_TM;
begin
  Result := Self;

  FnValor := AnValor;
  FnQuantidade := AnQuantidade;

  if TestarDeveAplicar then
    AplicarDesconto
  else
    Self.FnValorDesconto := Self.FoProximo.CalcularDesconto(AnValor, AnQuantidade).GetValorDesconto;
end;

constructor TDesconto_TM.Create;
begin
  inherited;
  FnValorDesconto := 0;
end;

function TDesconto_TM.GetQuantidade: Integer;
begin
  Result := FnQuantidade;
end;

function TDesconto_TM.GetValor: Extended;
begin
  Result := FnValor;
end;

function TDesconto_TM.GetValorDesconto: Extended;
begin
  Result := FnValorDesconto;
end;

function TDesconto_TM.SetProximo(const AoProximo: IDesconto_TM): IDesconto_TM;
begin
  Result := Self;

  FoProximo := AoProximo;
end;

function TDesconto_TM.SetQuantidade(const AnQuantidade: Integer): IDesconto_TM;
begin
  Result := Self;

  FnQuantidade := AnQuantidade;
end;

function TDesconto_TM.SetValor(const AnValor: Extended): IDesconto_TM;
begin
  Result := Self;

  FnValor := AnValor;
end;

function TDesconto_TM.SetValorDesconto(
  const ValorDesconto: Extended): IDesconto_TM;
begin
  Result := Self;

  FnValorDesconto := ValorDesconto;
end;

end.
