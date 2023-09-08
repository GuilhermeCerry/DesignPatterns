unit uJsonAdapterClient;

interface

uses
  uIJsonAdapter, System.Generics.Collections, System.JSON;

type
  TJsonAdapterClient = class(TInterfacedObject, IJsonAdapter)
  published
     function GetJson(AoDados: TDictionary<string, String>): String;
  public
    class function New: IJsonAdapter;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  System.SysUtils, REST.Json, Vcl.Dialogs, uHelper;

{ TJsonAdapterClient }

constructor TJsonAdapterClient.Create;
begin
  //
end;

destructor TJsonAdapterClient.Destroy;
begin
  //
end;

function TJsonAdapterClient.GetJson(
  AoDados: TDictionary<string, String>): String;
var
  Key: String;
  cJson: string;
  oJSONObject : TJSONobject;
begin
  oJSONObject := TJSONobject.Create;

  for Key in AoDados.Keys do
  begin
    oJSONObject.AddPair(Key, AoDados.Items[Key]);
  end;

  Result := oJSONObject.ToString.ToJsonFormat;
end;

class function TJsonAdapterClient.New: IJsonAdapter;
begin
  Result := Self.Create;
end;

end.
