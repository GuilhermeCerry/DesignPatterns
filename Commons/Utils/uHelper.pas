unit uHelper;

interface

type

  TStringHelper = record helper for String
  public
    function ToJsonFormat: string;
  end;

implementation

{ TStringHelper }

uses
  Rest.Json, Json;

function TStringHelper.ToJsonFormat: string;
begin
  Result := TJSON.Format(TJSONobject.ParseJSONValue(self));
end;

end.
