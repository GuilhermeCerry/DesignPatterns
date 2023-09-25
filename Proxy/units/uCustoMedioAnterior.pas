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
  Sleep(2000); //Simular lentid�o da consulta para retornar o custo m�dio anterior
  Result := 3; // Valor imagin�rio, em casos reais, deveria ser consultado o �ltimo custo
end;

end.
