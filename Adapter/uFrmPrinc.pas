unit uFrmPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPessoa, Json;

type
  TForm2 = class(TForm)
    pnCab: TPanel;
    pnPrinc: TPanel;
    mmJson: TMemo;
    btSalvar: TButton;
    lb_Nome: TLabeledEdit;
    lb_CPF: TLabeledEdit;
    lb_DataNascimento: TLabeledEdit;
    lb_Idade: TLabeledEdit;
    cb_Brasileiro: TComboBox;
    lb_Brasileiro: TLabel;
    lb_Celular: TLabeledEdit;
    lb_CEP: TLabeledEdit;
    btJson: TButton;
    btPost: TButton;
//    procedure bt_XmlClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btJsonClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FcJson: String;
    FoPessoa: TPessoa;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
   BibArquivo, Xml.XMLDoc, REST.Json, System.Generics.Collections,
   uJsonAdapterClient, uHttpAdapterClient;

{$R *.dfm}

procedure TForm2.btJsonClick(Sender: TObject);
var
  oDados: TDictionary<string, string>;
  cBrasileiro: string;
begin
  oDados:= TDictionary<string, string>.Create;
  FcJson := '';
  mmJson.Clear;

  if FoPessoa.Brasileiro then
    cBrasileiro := 'Sim'
  else cBrasileiro := 'Nao';

  oDados.Add('Brasileiro', cBrasileiro);
  oDados.Add('CEP', FoPessoa.CEP);
  oDados.Add('Celular', FoPessoa.Celular);
  oDados.Add('Idade', FoPessoa.Idade.ToString);
  oDados.Add('Data Nascimento', DateToStr(FoPessoa.DataNascimento));
  oDados.Add('CPF', FoPessoa.CPF);
  oDados.Add('Nome', FoPessoa.Nome);

  {
   Padrão Adapter consiste em adaptar um objeto a outro, quando esse objeto a ser adpatado não tem
   relação direta com o outro. No exemplo desse projeto, a classe de pessoa(uPessoa), é adaptada
   a um objeto JSON, através da classe TJsonAdapterClient, que teoricamente, não tem nada haver com uma pessoa.
   Assim deixando o padrão Adapter como uma opção a ser utilizada para a construção desse projeto.
   Citando um outro exemplo, pode  ser entendido como um "Adapter" o "T" colocado na entrada para
   adaptar com a tomada do aparelho.
  }

  FcJson :=
    TJsonAdapterClient.New
      .GetJson(oDados);

  mmJson.Lines.Add(FcJson);
end;

procedure TForm2.btPostClick(Sender: TObject);
var
  cResponse: string;
begin
  try
    cResponse := THttpAdapterClient.New
        .Post('https://jsonplaceholder.typicode.com/posts', FcJson) //Api para teste de JSON
        .GetResponse;

    mmJson.Clear;
    mmJson.Lines.Add(
      cResponse
    );

    ShowMessage('Exportação realizada com sucesso!');
  except
    On E: Exception do
      begin
      raise Exception.Create('Ocorreu um erro: ' +e.Message);
    end;
  end;
end;

procedure TForm2.btSalvarClick(Sender: TObject);
begin
  FoPessoa.Nome := lb_Nome.Text;
  FoPessoa.Idade := StrToInt(lb_Idade.Text);
  FoPessoa.CPF := lb_CPF.Text;
  FoPessoa.DataNascimento := StrToDate(lb_DataNascimento.Text);
  FoPessoa.CEP :=  lb_CEP.Text;
  FoPessoa.Celular := lb_Celular.Text;
  FoPessoa.Brasileiro := (cb_Brasileiro.ItemIndex = 1);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FoPessoa := TPessoa.Create;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  //
end;

end.
