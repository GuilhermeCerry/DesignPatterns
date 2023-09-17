unit uIObjetoCargaComposite;

interface

type
  IObjetoCargaComposite = interface
    ['{BAC75DBC-E202-44F5-9F34-8E719B057371}']
    function GetValor: Extended;
    function GetQuantidade: Extended;
    function GetDescricao: string;
    function GetResumo: String;
    function GetCamada: integer;
    function GetValorTotal: Extended;

    function SetDescricao(const AcDescricao: String): IObjetoCargaComposite;
    function SetValor(const AnValor: Extended): IObjetoCargaComposite;
    function SetQuantidade(const AnQuantidade: Extended): IObjetoCargaComposite;
    function SetCamada(const AnCamada: Integer): IObjetoCargaComposite;

    function AddItem(AoItem: IObjetoCargaComposite): IObjetoCargaComposite;
  end;

implementation

end.
