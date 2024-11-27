unit Builder.Model.Carro;

interface

uses
  Builder.Model.Interfaces;

type
  TCarro = class(TInterfacedObject, iCarro)
    private
      FcMotor: String;
      FnPortas: Integer;
      FcTipo: String;
      FcTransmissao: String;
      FcTetoSolar: String;
    protected
      function SetMotor(AValue: String): iCarro;
      function SetPortas(AValue: Integer): iCarro;
      function SetTipo(AValue: String): iCarro;
      function SetTransmissao(AValue: String): iCarro;
      function SetTetoSolar(AValue: String): iCarro;
      function GetDescricaoCarro: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iCarro;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;


{ TCarro }

constructor TCarro.Create;
begin
//
end;

destructor TCarro.Destroy;
begin
   //
  inherited;
end;

function TCarro.GetDescricaoCarro: String;
begin
  Result := Format(
    'Motor: %s; Portas: %d; Transmissao: %s; Tipo: %s; Teto Solar: %s',
    [FcMotor, FnPortas, FcTransmissao, FcTipo, FcTetoSolar]
  );
end;

class function TCarro.New: iCarro;
begin
  Result := Self.Create;
end;

function TCarro.SetMotor(AValue: String): iCarro;
begin
  Result := Self;
  FcMotor := AValue;
end;

function TCarro.SetPortas(AValue: Integer): iCarro;
begin
  Result := Self;
  FnPortas := AValue;
end;

function TCarro.SetTetoSolar(AValue: String): iCarro;
begin
  Result := Self;
  FcTetoSolar := AValue;
end;

function TCarro.SetTipo(AValue: String): iCarro;
begin
  Result := Self;
  FcTipo := AValue;
end;

function TCarro.SetTransmissao(AValue: String): iCarro;
begin
  Result := Self;
  FcTransmissao := AValue;
end;

end.
