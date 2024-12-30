unit Model.Factory.Contabilidade;

interface

uses
  Model.Interfaces.Factory.Contabilidade, Model.Interfaces.Contabilidade,
  Model.Enum.Contabilidade;

type
  TFactoryContabilidade = class(TInterfacedObject, iFactoryContabilidade)
    protected
      function CreateContabilidade: iContabilidade; virtual; abstract;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iFactoryContabilidade;
  end;

  TFactoryOnline = class(TFactoryContabilidade, iFactoryContabilidade)
    protected
      function CreateContabilidade: iContabilidade; override;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iFactoryContabilidade;
  end;

  TFactoryOffline = class(TFactoryContabilidade, iFactoryContabilidade)
    protected
      function CreateContabilidade: iContabilidade; override;
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

{ TFactoryOnline }

constructor TFactoryOnline.Create;
begin
  //
end;

function TFactoryOnline.CreateContabilidade: iContabilidade;
begin
  Result := TContabilidadeOnline.New;
end;

destructor TFactoryOnline.Destroy;
begin

  inherited;
end;

class function TFactoryOnline.New: iFactoryContabilidade;
begin
  Result := Self.Create;
end;

{ TFactoryOffline }

constructor TFactoryOffline.Create;
begin
  //
end;

function TFactoryOffline.CreateContabilidade: iContabilidade;
begin
  Result := TContabilidadeOffline.New;
end;

destructor TFactoryOffline.Destroy;
begin

  inherited;
end;

class function TFactoryOffline.New: iFactoryContabilidade;
begin
  Result := Self.Create;
end;

end.
