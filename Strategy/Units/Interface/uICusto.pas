unit uICusto;

interface

type

  ICusto = interface
    ['{22CA3E75-13ED-4071-BB6A-4E57E088FF6C}']
    function GetValorCusto: Extended;
  end;

  IStrategy = interface
    ['{5A39B1E9-735E-4027-BC92-4DD31D413A87}']
    function Execute: ICusto;
  end;

implementation

end.
