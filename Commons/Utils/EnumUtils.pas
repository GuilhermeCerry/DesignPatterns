unit EnumUtils;

interface

type

  TEnumUtil = class
    class function IntToEnumerado(var ok: boolean; const n: integer; const AInteger:
      array of integer; const AEnumerados: array of variant): variant;
  end;

implementation

uses
  System.SysUtils;

{ TEnumUtil }

class function TEnumUtil.IntToEnumerado(var ok: boolean; const n: integer;
  const AInteger: array of integer;
  const AEnumerados: array of variant): variant;
var
  i: integer;
begin
  result := -1;
  for i := Low(AInteger) to High(AInteger) do
    if AnsiSameText(IntToStr(n), IntToStr(AInteger[i])) then
      result := AEnumerados[i];
  ok := result <> -1;

  if (not ok) then
    raise Exception.Create('Valor Enum não localizado');
end;

end.
