unit uCaixaCargaComposite;

interface

uses
  uIObjetoCargaComposite;

type
  TArrayObjetosCarga = Array Of IObjetoCargaComposite;

  TCaixaCargaComposite = class(TInterfacedObject, IObjetoCargaComposite)
  private
    FcDescricao: string;
    FnCamada: Integer;
    FaArrayObjetos: TArrayObjetosCarga;
  protected
    function GetValor: Extended;
    function GetQuantidade: Extended;
    function GetDescricao: string;
    function GetResumo: String;
    function GetCamada: integer;
    function GetValorTotal: Extended;

    function SetDescricao(const AcDescricao: String): IObjetoCargaComposite;
    function SetValor(const AnValor: Extended): IObjetoCargaComposite; virtual; abstract;
    function SetQuantidade(const AnQuantidade: Extended): IObjetoCargaComposite; virtual; abstract;
    function SetCamada(const AnCamada: Integer): IObjetoCargaComposite;

    function AddItem(AoItem: IObjetoCargaComposite): IObjetoCargaComposite;
  public
    class function New: IObjetoCargaComposite;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  System.SysUtils;

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

function TCaixaCargaComposite.SetCamada(
  const AnCamada: Integer): IObjetoCargaComposite;
begin
  Result := Self;
  FnCamada := AnCamada;
end;

function TCaixaCargaComposite.SetDescricao(
  const AcDescricao: String): IObjetoCargaComposite;
begin
  Result := Self;
  FcDescricao := AcDescricao;
end;

function TCaixaCargaComposite.GetCamada: integer;
begin
  Result := FnCamada;
end;

function TCaixaCargaComposite.GetDescricao: string;
begin
  Result := FcDescricao;
end;

function TCaixaCargaComposite.GetQuantidade: Extended;
var
  oItem: IObjetoCargaComposite;
begin
  Result := 0;
  for oItem in FaArrayObjetos do
    Result := Result + oItem.GetQuantidade;
end;

function TCaixaCargaComposite.GetResumo: String;
var
  oItem: IObjetoCargaComposite;
begin
  Result := Format('- Caixa: %s - Valor Total: %f:', [FcDescricao, Self.GetValorTotal]) + sLineBreak;
  for oItem in FaArrayObjetos do
    Result := Result + StringOfChar(' ', FnCamada) + StringOfChar(' ', FnCamada) + oItem.GetResumo;
end;

function TCaixaCargaComposite.GetValor: Extended;
var
  oItem: IObjetoCargaComposite;
begin
  Result := 0;
  for oItem in FaArrayObjetos do
    Result := Result + oItem.GetValor;
end;

function TCaixaCargaComposite.GetValorTotal: Extended;
var
  oItem: IObjetoCargaComposite;
begin
  Result := 0;
  for oItem in FaArrayObjetos do
    Result := Result + oItem.GetValorTotal;
end;

destructor TCaixaCargaComposite.Destroy;
begin
  //
end;

end.
