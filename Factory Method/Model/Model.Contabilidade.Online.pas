unit Model.Contabilidade.Online;

interface

uses
  Model.Interfaces.Contabilidade, Model.Enum.Contabilidade;

type
  TContabilidadeOnline = class(TInterfacedObject, iContabilidade, iContabilidadeOnline)
    private
      FnIdContabilidade: Integer;

      function SalvarBanco: iContabilidadeOnline;
    protected
      function Contabilizar(AnIdContabilidade: Integer):  iContabilidade;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iContabilidade;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;


{ TContabilidadeOnline }

function TContabilidadeOnline.Contabilizar(AnIdContabilidade: Integer): iContabilidade;
begin
  Result := Self;
  FnIdContabilidade := AnIdContabilidade;
  ShowMessage('Iniciada a Contabilização Online');
  Self.SalvarBanco;
end;

constructor TContabilidadeOnline.Create;
begin
//
end;

destructor TContabilidadeOnline.Destroy;
begin
   //
  inherited;
end;

class function TContabilidadeOnline.New: iContabilidade;
begin
  Result := Self.Create;
end;

function TContabilidadeOnline.SalvarBanco: iContabilidadeOnline;
begin
  Result := Self;
  ShowMessage(Format('Iniciado o Salvamento dos Dados da Contabilização do Documento %d no Banco de Dados', [FnIdContabilidade]));
end;

end.
