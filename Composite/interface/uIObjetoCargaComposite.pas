unit uIObjetoCargaComposite;

interface

type
  IObjetoCargaComposite = interface
    ['{BAC75DBC-E202-44F5-9F34-8E719B057371}']
    function GetValor: Extended;
    function GetQuantidade: Extended;
    function GetDescricao: string;

    function SetDescricao(const AcDescricao: String): IObjetoCargaComposite;
  end;

implementation

end.
