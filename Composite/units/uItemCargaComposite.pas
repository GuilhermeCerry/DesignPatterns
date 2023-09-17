unit uItemCargaComposite;

interface

uses
  uIObjetoCargaComposite;

type
  TItemCargaComposite = class(TInterfacedObject, IObjetoCargaComposite)
  private
    FcDescricao: string;
    FnQuantidade: Extended;
    FnValor: Extended;
    FnCamada: Integer;
  protected
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

    function AddItem(AoItem: IObjetoCargaComposite): IObjetoCargaComposite; virtual; abstract;
  public
    class function New: IObjetoCargaComposite;

    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  System.SysUtils;

{ TItemCarga }

constructor TItemCargaComposite.Create;
begin
  //
end;


class function TItemCargaComposite.New: IObjetoCargaComposite;
begin
  Result := Self.Create;
end;

function TItemCargaComposite.SetCamada(
  const AnCamada: Integer): IObjetoCargaComposite;
begin
  Result := Self;
  FnCamada := AnCamada;
end;

function TItemCargaComposite.SetDescricao(
  const AcDescricao: String): IObjetoCargaComposite;
begin
  Result := Self;
  FcDescricao := AcDescricao;
end;

function TItemCargaComposite.SetQuantidade(
  const AnQuantidade: Extended): IObjetoCargaComposite;
begin
  Result := Self;
  FnQuantidade := AnQuantidade;
end;

function TItemCargaComposite.SetValor(
  const AnValor: Extended): IObjetoCargaComposite;
begin
  Result := Self;
  FnValor := AnValor;
end;

function TItemCargaComposite.GetCamada: integer;
begin
  Result := FnCamada;
end;

function TItemCargaComposite.GetDescricao: string;
begin
  Result := FcDescricao;
end;

function TItemCargaComposite.GetQuantidade: Extended;
begin
  Result := FnQuantidade;
end;

function TItemCargaComposite.GetResumo: String;
begin
  Result := Format('- Item: %s - Quantidade: %f - Valor Unitário: %f;', [FcDescricao, FnQuantidade, FnValor]) + sLineBreak;
end;

function TItemCargaComposite.GetValor: Extended;
begin
  Result := FnValor;
end;

function TItemCargaComposite.GetValorTotal: Extended;
begin
  Result := FnValor * FnQuantidade;
end;

destructor TItemCargaComposite.Destroy;
begin
  //
end;

end.
