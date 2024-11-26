unit Model.Interfaces.Factory.Contabilidade;

interface

uses
  Model.Interfaces.Contabilidade;

type
  iFactoryContabilidade = interface
    ['{EEDAEBA3-5521-416B-A526-7B6B215D0147}']
    function Online(AnIdContabilidade: Integer): iContabilidade;
    function Offline(AnIdContabilidade: Integer): iContabilidade;
  end;

implementation

end.
