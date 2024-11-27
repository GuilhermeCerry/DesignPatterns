unit Builder.Model.Interfaces;

interface

type
  iCarro = interface
    ['{C0411617-BAB3-4F7E-8F44-FFC5CEDEDC60}']
    function SetMotor(AValue: String): iCarro;
    function SetPortas(AValue: Integer): iCarro;
    function SetTipo(AValue: String): iCarro;
    function SetTransmissao(AValue: String): iCarro;
    function SetTetoSolar(AValue: String): iCarro;
    function GetDescricaoCarro: String;
  end;

  iBuilderCarro = interface
    ['{C0411617-BAB3-4F7E-8F44-FFC5CEDEDC60}']
    function SetMotor(AValue: String): iBuilderCarro;
    function SetPortas(AValue: Integer): iBuilderCarro;
    function SetTipo(AValue: String): iBuilderCarro;
    function SetTransmissao(AValue: String): iBuilderCarro;
    function SetTetoSolar(AValue: String): iBuilderCarro;
    procedure Reset;
    function GetCarro: iCarro;
  end;

implementation

end.
