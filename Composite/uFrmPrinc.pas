unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uIObjetoCargaComposite,
  uCaixaCargaComposite, uItemCargaComposite;

type
  TForm4 = class(TForm)
    grpCompCaixaPrinc: TGroupBox;
    grpItem: TGroupBox;
    lb_Descricao: TLabeledEdit;
    lb_VlrUnitaio: TLabeledEdit;
    lb_Quantidade: TLabeledEdit;
    Button1: TButton;
    grpCaixa: TGroupBox;
    lb_Descricao_Caixa: TLabeledEdit;
    btAddcAIXA: TButton;
    mm_ResumoComposicao: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    FCaixa: IObjetoCargaComposite;
    procedure SetCaixa(const Value: IObjetoCargaComposite);
    { Private declarations }
  public
    property Caixa: IObjetoCargaComposite read FCaixa write SetCaixa;
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  FCaixa := TCaixaCargaComposite.New.SetDescricao('Caixa Principal');
end;

procedure TForm4.SetCaixa(const Value: IObjetoCargaComposite);
begin
  FCaixa := Value;
end;

end.
