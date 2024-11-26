unit Model.Contabilidade.Offline;

interface

uses
  Model.Interfaces.Contabilidade, Model.Enum.Contabilidade;

type
  TContabilidadeOffline = class(TInterfacedObject, iContabilidade, iContabilidadeOffline)
    private
      FnIdContabilidade: Integer;

      function SalvarArquivo: iContabilidadeOffline;
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


{ TContabilidadeOffline }

function TContabilidadeOffline.Contabilizar(AnIdContabilidade: Integer): iContabilidade;
begin
  Result := Self;
  FnIdContabilidade := AnIdContabilidade;
  ShowMessage('Iniciada a Contabilização Offline');
  Self.SalvarArquivo;
end;

constructor TContabilidadeOffline.Create;
begin
  //
end;

destructor TContabilidadeOffline.Destroy;
begin
   //
  inherited;
end;

class function TContabilidadeOffline.New: iContabilidade;
begin
  Result := Self.Create;
end;

function TContabilidadeOffline.SalvarArquivo: iContabilidadeOffline;
begin
  Result := Self;
  ShowMessage(Format('Iniciado o Salvamento dos Dados da Contabilização do Documento %d no Arquivo', [FnIdContabilidade]));
end;

end.

