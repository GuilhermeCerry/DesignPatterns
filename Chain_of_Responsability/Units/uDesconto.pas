unit uDesconto;

interface

type
  IDesconto = interface
    ['{706DFE9C-B914-498F-81D6-59B1B664A7D8}']
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto;
    function GetValorDesconto: Extended;
    function SetQuantidade(const AnQuantidade: Integer): IDesconto;
    function SetValor(const AnValor: Integer): IDesconto;
  end;

  TDesconto = class(TInterfacedObject, IDesconto)
  protected
    FnValorDesconto: Extended;
    FnQuantidade: Integer;
    FnValor: Extended;
    FoProximo: IDesconto;
    function CalcularDesconto(const AnValor: Extended; const AnQuantidade: Integer): IDesconto; virtual; abstract;
    function GetValorDesconto: Extended;
    function SetQuantidade(const AnQuantidade: Integer): IDesconto;
    function SetValor(const AnValor: Integer): IDesconto;
  public
    constructor Create;
  end;

implementation

{ TDesconto }

constructor TDesconto.Create;
begin
  inherited;
  FnValorDesconto := 0;
end;

function TDesconto.GetValorDesconto: Extended;
begin
  Result := FnValorDesconto;
end;

function TDesconto.SetQuantidade(const AnQuantidade: Integer): IDesconto;
begin
  Result := Self;

  FnQuantidade := AnQuantidade;
end;

function TDesconto.SetValor(const AnValor: Integer): IDesconto;
begin
  Result := Self;

  FnValor := AnValor;
end;

end.
