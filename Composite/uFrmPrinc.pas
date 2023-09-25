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

  {
   Padrão Composite se define na composição de um objeto por outro objeto, no exemplo desse
   projeto, a caixa principal pode ser composta por outra caixa, por itens ou por caixas e itens.
   Logo, caso precise descobrir algum dado da composição da caixa, ela vai chamar diretamente
   esses objetos de compõe ela.
   Esse padrão, pode ser utilizado, principalmente quando o a arquitetura do objetos forem parecidos
   com uma arvóre, ou seja, um galho é composto por 2 galhos, e esses dois galhos são compostos por mais 3 galhos
   e assim sucessivamente. Em um exemplo mais cotidiano, pode ser entendido como uma situação de Pai e Filho, onde
   o pai pode ter vários filhos e os filhos terem mais filhos.
  }

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
