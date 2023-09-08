unit uIJsonAdapter;

interface

uses
  System.Generics.Collections, System.JSON;

type

  IJsonAdapter = interface
    ['{75F7E66F-B120-4395-BAF5-20C3C85469BC}']
    function GetJson(AoDados: TDictionary<string, String>): String;
  end;

implementation

end.
