unit Builder.Controller.Director.CarroVW;

interface

uses
  Builder.Model.Interfaces;

type
  TDirectorCarroVW = class
    private
    public
      class procedure ConstruirCarroGolfComfortiline2005(AoBuilder: iBuilderCarro);
      class procedure ConstruirCarroSaveiroFlex2012(AoBuilder: iBuilderCarro);
  end;

implementation

{ TDirectorCarroVW }

class procedure TDirectorCarroVW.ConstruirCarroGolfComfortiline2005(
  AoBuilder: iBuilderCarro);
begin
  AoBuilder
    .SetMotor('2.0 - 4 Cilindros - 116cv')
    .SetPortas(4)
    .SetTipo('Hatch')
    .SetTransmissao('5 Marchas Manual')
    .SetTetoSolar('Sim');
end;

class procedure TDirectorCarroVW.ConstruirCarroSaveiroFlex2012(
  AoBuilder: iBuilderCarro);
begin
  AoBuilder
    .SetMotor('1.6 Flex - 4 Cilindros - 101 Gasolina/ 104 Alcool cv')
    .SetPortas(2)
    .SetTipo('Caminhonete')
    .SetTransmissao('5 Marchas Manual')
    .SetTetoSolar('Não');
end;

end.
