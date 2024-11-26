unit Model.Interfaces.Contabilidade;

interface

type
  iContabilidade = interface
    ['{B1F3A7D2-F4BE-4C04-83E6-0860117DF33E}']
    function Contabilizar:  iContabilidade;
  end;

  iContabilidadeOnline = interface
    ['{E05B6B25-00C3-4065-BC56-9CA84B2F8B5F}']
    function SalvarBanco: iContabilidadeOnline;
  end;

  iContabilidadeOffline = interface
    ['{9C951D7D-478D-452C-8C54-88EA73B3A12C}']
    function SalvarArquivo: iContabilidadeOffline;
  end;

implementation

end.
