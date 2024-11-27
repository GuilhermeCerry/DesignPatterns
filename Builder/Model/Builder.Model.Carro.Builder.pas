unit Builder.Model.Carro.Builder;

interface

uses
  Builder.Model.Interfaces;

type
  TBuilderCarro = class(TInterfacedObject, iBuilderCarro)
    private
      FoCarro: iCarro;
    protected
      function SetMotor(AValue: String): iBuilderCarro;
      function SetPortas(AValue: Integer): iBuilderCarro;
      function SetTipo(AValue: String): iBuilderCarro;
      function SetTransmissao(AValue: String): iBuilderCarro;
      function SetTetoSolar(AValue: String): iBuilderCarro;
      procedure Reset;
      function GetCarro: iCarro;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iBuilderCarro;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils, Builder.Model.Carro;


{ TBuilderCarro }

constructor TBuilderCarro.Create;
begin
  Reset;
end;

destructor TBuilderCarro.Destroy;
begin
   //
  inherited;
end;

function TBuilderCarro.GetCarro: iCarro;
begin
  Result := FoCarro;
end;

class function TBuilderCarro.New: iBuilderCarro;
begin
  Result := Self.Create;
end;

procedure TBuilderCarro.Reset;
begin
  FoCarro := TCarro.New;
end;

function TBuilderCarro.SetMotor(AValue: String): iBuilderCarro;
begin
  Result := Self;
  FoCarro.SetMotor(AValue);
end;

function TBuilderCarro.SetPortas(AValue: Integer): iBuilderCarro;
begin
  Result := Self;
  FoCarro.SetPortas(AValue);
end;

function TBuilderCarro.SetTetoSolar(AValue: String): iBuilderCarro;
begin
  Result := Self;
  FoCarro.SetTetoSolar(AValue);
end;

function TBuilderCarro.SetTipo(AValue: String): iBuilderCarro;
begin
  Result := Self;
  FoCarro.SetTipo(AValue);
end;

function TBuilderCarro.SetTransmissao(AValue: String): iBuilderCarro;
begin
  Result := Self;
  FoCarro.SetTransmissao(AValue);
end;

end.
