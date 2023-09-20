unit uICommand;

interface

uses
  UIAcaoAposEmitirNota;

type
  ICommand<T> = interface
    ['{C6E04EC2-442B-4308-AF3B-20883852FA45}']
    function Execute(AoDados: T): ICommand<T>;
    function AddAcaoAposEmitirNota(AoAcao: IAcaoAposEmitirNota): ICommand<T>;
  end;

implementation

end.
