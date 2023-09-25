unit uCustoMedioAnterior;

interface

type
  TCustoMedioAnterior = class
  public
    function RetornarCustoMedioAnterior: Extended;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  Winapi.Windows;

{ TCustoMedioAnterior }

constructor TCustoMedioAnterior.Create;
begin
  //
end;

destructor TCustoMedioAnterior.Destroy;
begin
  //
end;

function TCustoMedioAnterior.RetornarCustoMedioAnterior: Extended;
begin
  Sleep(2000); //Simular lentidão da consulta para retornar o custo médio anterior
  Result := 3; // Valor imaginário, em casos reais, deveria ser consultado o último custo
end;

end.
