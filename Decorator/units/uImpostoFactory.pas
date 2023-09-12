unit uImpostoFactory;

interface

uses
  uIPI, uICMS, uCOFINS, uIImposto, uPIS;

type
  TImpostoFactory = class
  public
    class function IPI(const AoImpostoDecorator: IImposto): IImposto;
    class function COFINS(const AoImpostoDecorator: IImposto): IImposto;
    class function ICMS(const AoImpostoDecorator: IImposto): IImposto;
    class function PIS(const AoImpostoDecorator: IImposto): IImposto;
  end;

implementation

{ TImpostoFactory }

class function TImpostoFactory.COFINS(
  const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := TCofins.New(AoImpostoDecorator);
end;

class function TImpostoFactory.ICMS(
  const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := TICMS.New(AoImpostoDecorator);
end;

class function TImpostoFactory.IPI(
  const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := TIPI.New(AoImpostoDecorator);
end;

class function TImpostoFactory.PIS(
  const AoImpostoDecorator: IImposto): IImposto;
begin
  Result := TPIS.New(AoImpostoDecorator);
end;

end.
