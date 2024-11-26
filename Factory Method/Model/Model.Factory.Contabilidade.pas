unit Model.Factory.Contabilidade;

interface

uses
  Model.Interfaces.Factory.Contabilidade, Model.Interfaces.Contabilidade,
  Model.Enum.Contabilidade;

type
  TFactoryContabilidade = class(TInterfacedObject, iFactoryContabilidade)
    protected
      function Contabilidade(AenTipoContabilidade: TTipoContabilidade): iContabilidade;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iFactoryContabilidade;
  end;

implementation

uses
  Model.Contabilidade.Online, Model.Contabilidade.Offline;

{ TFactoryContabilidade }

function TFactoryContabilidade.Contabilidade(
  AenTipoContabilidade: TTipoContabilidade): iContabilidade;
begin
  case AenTipoContabilidade of
    Model.Enum.Contabilidade.ttcOnline : Result := TContabilidadeOnline.New;
    Model.Enum.Contabilidade.ttcOffline : Result := TContabilidadeOffline.New;
  end;
end;

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

end.
