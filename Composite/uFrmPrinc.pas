unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uIObjetoCargaComposite,
  uCaixaCargaComposite, uItemCargaComposite;

type
  TFormPrinc = class(TForm)
    grpCompCaixaPrinc: TGroupBox;
    grpItem: TGroupBox;
    lb_Descricao: TLabeledEdit;
    lb_VlrUnitaio: TLabeledEdit;
    lb_Quantidade: TLabeledEdit;
    btAddItem: TButton;
    grpCaixa: TGroupBox;
    lb_Descricao_Caixa: TLabeledEdit;
    btAddCaixa: TButton;
    mm_ResumoComposicao: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btAddItemClick(Sender: TObject);
    procedure btAddCaixaClick(Sender: TObject);
  private
    FCaixa: IObjetoCargaComposite;
    procedure SetCaixa(const Value: IObjetoCargaComposite);
    procedure ListarResumo;
    { Private declarations }
  public
    property Caixa: IObjetoCargaComposite read FCaixa write SetCaixa;
    { Public declarations }
  end;

var
  FormPrinc: TFormPrinc;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TFormPrinc.btAddCaixaClick(Sender: TObject);
var
  oFormPrinc: TFormPrinc;
begin
  oFormPrinc := TFormPrinc.Create(self);

  oFormPrinc
    .Caixa
      .SetDescricao(lb_Descricao_Caixa.Text)
      .SetCamada(FCaixa.GetCamada + 1);

  oFormPrinc.ShowModal;

  FCaixa.AddItem(
    oFormPrinc.Caixa
  );

  ListarResumo;
end;

procedure TFormPrinc.btAddItemClick(Sender: TObject);
begin
  FCaixa.AddItem(
    TItemCargaComposite.New
      .SetDescricao(lb_Descricao.Text)
      .SetValor(StrToFloat(lb_VlrUnitaio.Text))
      .SetQuantidade(StrToFloat(lb_Quantidade.Text))
  );

  ListarResumo;
end;

procedure TFormPrinc.FormCreate(Sender: TObject);
begin
  FCaixa :=
    TCaixaCargaComposite.New
      .SetDescricao('Caixa Principal')
      .SetCamada(1);
end;

procedure TFormPrinc.SetCaixa(const Value: IObjetoCargaComposite);
begin
  FCaixa := Value;
end;

procedure TFormPrinc.ListarResumo;
begin
  mm_ResumoComposicao.Lines.Text := EmptyStr;
  mm_ResumoComposicao.Lines.Text := 'Resumo:' + sLineBreak + sLineBreak + FCaixa.GetResumo;
end;

end.
