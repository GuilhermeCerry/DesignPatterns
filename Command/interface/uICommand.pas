unit uICommand;

interface

type
  ICommand<T> = interface
    ['{C6E04EC2-442B-4308-AF3B-20883852FA45}']
    function Execute(AoDados: T): ICommand<T>;
  end;

implementation

end.
