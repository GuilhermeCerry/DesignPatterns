unit uHttpAdapterClient;

interface

type

  IHttpAdapterClient = interface
    ['{4E2595B0-2CB4-4EF0-82A0-FA0D5022EED3}']
    function Post(const AcUrl, AcJson: String): IHttpAdapterClient;
    function GetResponse: String;
  end;

  THttpAdapterClient = class(TInterfacedObject, IHttpAdapterClient)
  private
    FcResponse: string;
  protected
    function Post(const AcUrl, AcJson: String): IHttpAdapterClient;
    function GetResponse: String;
  public
    class function New: IHttpAdapterClient;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  System.SysUtils, IdHTTp, System.Classes, System.JSON, Rest.JSON, Vcl.Dialogs, uHelper;

{ THttpAdapterClient }

constructor THttpAdapterClient.Create;
begin
  FcResponse := EmptyStr;
end;

class function THttpAdapterClient.New: IHttpAdapterClient;
begin
  Result := Self.Create;
end;

function THttpAdapterClient.GetResponse: String;
begin
  Result := FcResponse;
end;

function THttpAdapterClient.Post(const AcUrl,
  AcJson: String): IHttpAdapterClient;
var
  oStreamRequest : TStringStream;
  oStreamResponse: TStringStream;
  oIdHTTP: TIdHttp;
  oJSONObject : TJSONValue;
begin
  Result := Self;

  oIdHTTP := TIdHttp.Create(nil);

  oStreamRequest  := TStringStream.Create(AcJson);
  oStreamResponse := TStringStream.Create(EmptyStr);

  try
    oIdHTTP.Request.ContentType   := 'application/json';
    oIdHTTP.Response.ContentType  := 'application/json';
    oIdHTTP.Request.AcceptCharSet := 'uft-8';

    try
      oIdHTTP.Post(AcUrl, oStreamRequest, oStreamResponse);
      FcResponse := oStreamResponse.DataString.ToJsonFormat;
    except
      On E: Exception do
        begin
        raise Exception.Create('Não foi possível conectar a API para realizar o envio dos dados' + sLineBreak +' Log: '+#13+e.Message);
      end;
    end;
  finally
    FreeAndNil(oStreamResponse);
    FreeAndNil(oStreamRequest);
  end;
end;

destructor THttpAdapterClient.Destroy;
begin
  //
end;

end.
