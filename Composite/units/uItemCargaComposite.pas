unit uItemCargaComposite;

interface

uses
  uIObjetoCargaComposite, uIItem;

type
  TItemCargaComposite = class(TInterfacedObject, IObjetoCargaComposite, IItem)
  private
    FcDescricao: string;
    FnQuantidade: Extended;
    FnValor: Extended;
  protected
    function GetValor: Extended;
    function GetQuantidade: Extended;
    function GetDescricao: string;

    function SetDescricao(const AcDescricao: String): IObjetoCargaComposite;
    function SetValor(const AnValor: Extended): IItem;
    function SetQuantidade(const AnQuantidade: Extended): IItem;


  public
    class function New: IObjetoCargaComposite;

    constructor Create;
    destructor Destroy;
  end;

implementation

{ TItemCarga }

constructor TItemCargaComposite.Create;
begin
  //
end;


class function TItemCargaComposite.New: IObjetoCargaComposite;
begin
  Result := Self.Create;
end;

function TItemCargaComposite.SetDescricao(
  const AcDescricao: String): IObjetoCargaComposite;
begin
  Result := Self;
  FcDescricao := AcDescricao;
end;

function TItemCargaComposite.SetQuantidade(
  const AnQuantidade: Extended): IItem;
begin
  Result := Self;
  FnQuantidade := AnQuantidade;
end;

function TItemCargaComposite.SetValor(
  const AnValor: Extended): IItem;
begin
  Result := Self;
  FnValor := AnValor;
end;

function TItemCargaComposite.GetDescricao: string;
begin
  Result := FcDescricao;
end;

function TItemCargaComposite.GetQuantidade: Extended;
begin
  //
end;

function TItemCargaComposite.GetValor: Extended;
begin
  //
end;

destructor TItemCargaComposite.Destroy;
begin
  //
end;

end.