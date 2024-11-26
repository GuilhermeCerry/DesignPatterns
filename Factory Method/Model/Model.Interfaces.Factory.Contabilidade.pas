unit Model.Interfaces.Factory.Contabilidade;

interface

uses
  Model.Interfaces.Contabilidade, Model.Enum.Contabilidade;

type
  iFactoryContabilidade = interface
    ['{EEDAEBA3-5521-416B-A526-7B6B215D0147}']
    function Contabilidade(AenTipoContabilidade: TTipoContabilidade): iContabilidade;
  end;

implementation

end.
