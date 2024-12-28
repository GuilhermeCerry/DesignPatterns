unit Model.Governo;

interface

type
  iGoverno = interface
    ['{40F279E5-ADA4-4A6C-82C4-96FD3C6F5205}']
    function SetPais(AcPais: String): iGoverno;
    function GetDescricao: String;
  end;

  TGoverno = class(TInterfacedObject, iGoverno)
    private
      class var FInstance: iGoverno;
      FcPais: String;
    protected
      function SetPais(AcPais: String): iGoverno;
      function GetDescricao: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iGoverno;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;


{ TGoverno }

constructor TGoverno.Create;
begin
//
end;

destructor TGoverno.Destroy;
begin
   //
  inherited;
end;

function TGoverno.GetDescricao: String;
begin
  Result := Format('Governo Federal do %s', [FcPais]);
end;

class function TGoverno.New: iGoverno;
begin
{Garante que seja criado somente um governo por país, ou seja, por mais que tente criar um novo governo,
sempre será utilizadoa instância do primeiro governo criado}

  if not Assigned(FInstance) then
    FInstance :=  Self.Create;

  Result := FInstance;

//  Result :=  Self.Create;
end;

function TGoverno.SetPais(AcPais: String): iGoverno;
begin
  Result := Self;
  FcPais := AcPais;
end;

end.
