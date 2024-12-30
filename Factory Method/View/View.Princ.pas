unit View.Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Model.Interfaces.Factory.Contabilidade;

type
  TFPrinc = class(TForm)
    pnPrinc: TPanel;
    rgContabilidade: TRadioGroup;
    btContabilizar: TButton;
    lbIDContabilidade: TLabeledEdit;
    procedure btContabilizarClick(Sender: TObject);
  private
    FoFactoryContabilidade: iFactoryContabilidade;
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

uses
  Model.Enum.Contabilidade,

//  Model.Contabilidade.Online,    //Deixa de ser necessário
//  Model.Contabilidade.Offline,   //Deixa de ser necessário

  Model.Factory.Contabilidade;

{$R *.dfm}

procedure TFPrinc.btContabilizarClick(Sender: TObject);
begin
  {Com o padrão Factory Method é possível criar somente um tipo de objeto, ou seja, contabilidade online ou offline}

  case rgContabilidade.ItemIndex of
    Ord(Model.Enum.Contabilidade.ttcOnline) : FoFactoryContabilidade := TFactoryOnline.New;
    Ord(Model.Enum.Contabilidade.ttcOffline) : FoFactoryContabilidade := TFactoryOffline.New;
  end;

  FoFactoryContabilidade.CreateContabilidade.Contabilizar(StrToInt(lbIDContabilidade.Text))
end;

end.
