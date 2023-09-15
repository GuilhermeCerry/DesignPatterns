unit uIItem;

interface

type
  IItem = interface
    ['{77AF8B71-D82F-42D5-A77E-BB434900EF71}']
    function SetValor(const AnValor: Extended): IItem;
    function SetQuantidade(const AnQuantidade: Extended): IItem;
  end;

implementation

end.
