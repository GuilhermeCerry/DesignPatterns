unit Model.Contabilidade.Online;

interface

uses
  Model.Interfaces.Contabilidade;

type
  TContabilidadeOnline = class(TInterfacedObject, iContabilidade, iContabilidadeOnline)
    private
      FnIdContabilidade: Integer;

      function SalvarBanco: iContabilidadeOnline;
    protected
      function Contabilizar:  iContabilidade;
    public
      constructor Create(AnIdContabilidade: Integer);
      destructor Destroy; override;
      class function New(AnIdContabilidade: Integer): iContabilidade;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;


{ TContabilidadeOnline }

function TContabilidadeOnline.Contabilizar: iContabilidade;
begin
  Result := Self;
  ShowMessage('Iniciada a Contabilização Online');
  Self.SalvarBanco;
end;

constructor TContabilidadeOnline.Create(AnIdContabilidade: Integer);
begin
  FnIdContabilidade := AnIdContabilidade
end;

destructor TContabilidadeOnline.Destroy;
begin
   //
  inherited;
end;

class function TContabilidadeOnline.New(
  AnIdContabilidade: Integer): iContabilidade;
begin
  Result := Self.Create(AnIdContabilidade);
end;

function TContabilidadeOnline.SalvarBanco: iContabilidadeOnline;
begin
  Result := Self;
  ShowMessage(Format('Iniciado o Salvamento dos Dados da Contabilização do Documento %d no Banco de Dados', [FnIdContabilidade]));
end;

end.
