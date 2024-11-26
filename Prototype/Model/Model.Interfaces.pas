unit Model.Interfaces;

interface

type

  iPrototype<T> = interface
    ['{70CD0767-0E10-45BF-A9F6-83C34FD43AD6}']
    function Clone: T;
  end;

  iPessoaEmail = interface
    ['{01D53722-6FC8-49B4-A4A5-6A34C560EA96}']
    function SetNome(AcNome: String): iPessoaEmail;
    function SetEmail(AcEmail: String): iPessoaEmail;
    function GetDescricao: String;
    function Prototype: iPrototype<iPessoaEmail>;
    function Clone: iPessoaEmail;
  end;

implementation

end.
