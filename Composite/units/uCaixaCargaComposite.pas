unit uCaixaCargaComposite;

interface

uses
  uIObjetoCargaComposite;

type
  TArrayObjetosCarga = Array Of IObjetoCargaComposite;

  TCaixaCargaComposite = class(TInterfacedObject, IObjetoCargaComposite)
  private
    FcDescricao: string;
    FaArrayObjetos: TArrayObjetosCarga;
  protected
    function GetValor: Extended;
    function GetQuantidade: Extended;
    function GetDescricao: string;
    function SetDescricao(const AcDescricao: String): IObjetoCargaComposite;

    function AddItem(AoItem: IObjetoCargaComposite): IObjetoCargaComposite;
  public
    class function New: IObjetoCargaComposite;

    constructor Create;
    destructor Destroy;
  end;

implementation

{ TCaixaCarga }

function TCaixaCargaComposite.AddItem(
  AoItem: IObjetoCargaComposite): IObjetoCargaComposite;
var
  nIndex: Integer;
begin
  Result := Self;

  nIndex := Length(FaArrayObjetos);
  SetLength(FaArrayObjetos, nIndex + 1);
  FaArrayObjetos[nIndex] := AoItem;
end;

constructor TCaixaCargaComposite.Create;
begin
  //
end;

class function TCaixaCargaComposite.New: IObjetoCargaComposite;
begin
  Result := Self.Create;
end;

function TCaixaCargaComposite.SetDescricao(
  const AcDescricao: String): IObjetoCargaComposite;
begin
  Result := Self;
  FcDescricao := AcDescricao;
end;

function TCaixaCargaComposite.GetDescricao: string;
begin
  Result := FcDescricao;
end;

function TCaixaCargaComposite.GetQuantidade: Extended;
begin
  //
end;

function TCaixaCargaComposite.GetValor: Extended;
begin
  //
end;

destructor TCaixaCargaComposite.Destroy;
begin
  //
end;

end.
