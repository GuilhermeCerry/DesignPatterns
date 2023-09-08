unit uEmitirNotaDados;

interface

type
  IDadosNota = interface
    ['{DAD4B222-A843-46C6-8E9E-854649094DC4}']
    function SetDesconto(const AnValue: Extended): IDadosNota;
    function GetConfiguracao: Integer;
    function GetPessoa: Integer;
    function GetItem: Integer;
    function GetQuantidade: Extended;
    function GetVlrUnitario: Extended;
    function GetValorTotal: Extended;
    function GetDesconto: Extended;
  end;

  TEmitirNotaDados = class(TInterfacedObject, IDadosNota)
  private
    FnConfiguracao: Integer;
    FnPessoa: Integer;
    FnItem: Integer;
    FnQuantidade: Extended;
    FnVlrUnitario: Extended;
    FnValorTotal: Extended;
    FnDesconto: Extended;

  public
    function GetConfiguracao: Integer;
    function GetPessoa: Integer;
    function GetItem: Integer;
    function GetQuantidade: Extended;
    function GetVlrUnitario: Extended;
    function GetValorTotal: Extended;
    function GetDesconto: Extended;

    function SetDesconto(const AnValue: Extended): IDadosNota;

    class function New(const AnConfiguracao, AnPessoa, AnItem: Integer;
      const AnQuantidade, AnVlrUnit: Extended): IDadosNota;
    constructor Create(const AnConfiguracao, AnPessoa, AnItem: Integer;
      const AnQuantidade, AnVlrUnit: Extended);
    destructor Destroy;
  end;

implementation

{ TEmitirNotaDados }

constructor TEmitirNotaDados.Create(const AnConfiguracao, AnPessoa,
  AnItem: Integer; const AnQuantidade, AnVlrUnit: Extended);
begin
  FnConfiguracao := AnConfiguracao;
  FnPessoa := AnPessoa;
  FnItem := AnItem;
  FnQuantidade := AnQuantidade;
  FnVlrUnitario := AnVlrUnit;
  FnValorTotal := FnQuantidade * FnVlrUnitario;
  FnDesconto := 0;
end;

destructor TEmitirNotaDados.Destroy;
begin
  //
end;

function TEmitirNotaDados.GetConfiguracao: Integer;
begin
  Result := FnConfiguracao;
end;

function TEmitirNotaDados.GetDesconto: Extended;
begin
  Result := FnDesconto;
end;

function TEmitirNotaDados.GetItem: Integer;
begin
  Result := FnItem;
end;

function TEmitirNotaDados.GetPessoa: Integer;
begin
  Result := FnPessoa;
end;

function TEmitirNotaDados.GetQuantidade: Extended;
begin
  Result := FnQuantidade;
end;

function TEmitirNotaDados.GetValorTotal: Extended;
begin
  Result := FnValorTotal;
end;

function TEmitirNotaDados.GetVlrUnitario: Extended;
begin
  Result := FnVlrUnitario;
end;

class function TEmitirNotaDados.New(const AnConfiguracao, AnPessoa,
  AnItem: Integer; const AnQuantidade, AnVlrUnit: Extended): IDadosNota;
begin
  Result := Self.Create(AnConfiguracao, AnPessoa, AnItem, AnQuantidade, AnVlrUnit);
end;

function TEmitirNotaDados.SetDesconto(const AnValue: Extended): IDadosNota;
begin
  Result := Self;
  FnDesconto := AnValue;
  FnValorTotal := FnValorTotal * (1-(FnDesconto/100));
end;

end.
