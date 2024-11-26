unit Model.Contabilidade.Offline;

interface

uses
  Model.Interfaces.Contabilidade;

type
  TContabilidadeOffline = class(TInterfacedObject, iContabilidade, iContabilidadeOffline)
    private
      FnIdContabilidade: Integer;

      function SalvarArquivo: iContabilidadeOffline;
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


{ TContabilidadeOffline }

function TContabilidadeOffline.Contabilizar: iContabilidade;
begin
  Result := Self;
  ShowMessage('Iniciada a Contabilização Offline');
  Self.SalvarArquivo;
end;

constructor TContabilidadeOffline.Create(AnIdContabilidade: Integer);
begin
  FnIdContabilidade := AnIdContabilidade
end;

destructor TContabilidadeOffline.Destroy;
begin
   //
  inherited;
end;

class function TContabilidadeOffline.New(
  AnIdContabilidade: Integer): iContabilidade;
begin
  Result := Self.Create(AnIdContabilidade);
end;

function TContabilidadeOffline.SalvarArquivo: iContabilidadeOffline;
begin
  Result := Self;
  ShowMessage(Format('Iniciado o Salvamento dos Dados da Contabilização do Documento %d no Arquivo', [FnIdContabilidade]));
end;

end.

