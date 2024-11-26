unit Model.Factory.Contabilidade;

interface

uses
  Model.Interfaces.Factory.Contabilidade, Model.Interfaces.Contabilidade;

type
  TFactoryContabilidade = class(TInterfacedObject, iFactoryContabilidade)
    protected
      function Online(AnIdContabilidade: Integer): iContabilidade;
      function Offline(AnIdContabilidade: Integer): iContabilidade;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iFactoryContabilidade;
  end;

implementation

uses
  Model.Contabilidade.Online, Model.Contabilidade.Offline;

{ TFactoryContabilidade }

constructor TFactoryContabilidade.Create;
begin
  //
end;

destructor TFactoryContabilidade.Destroy;
begin
  //
  inherited;
end;

class function TFactoryContabilidade.New: iFactoryContabilidade;
begin
  Result := Self.Create;
end;

function TFactoryContabilidade.Offline(AnIdContabilidade: Integer): iContabilidade;
begin
  Result := TContabilidadeOffline.New(AnIdContabilidade);
end;

function TFactoryContabilidade.Online(AnIdContabilidade: Integer): iContabilidade;
begin
  Result := TContabilidadeOnline.New(AnIdContabilidade);
end;

end.
