unit UMae;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdSSLOpenSSL, IdMultipartFormData,
  System.json,
  System.JSON.Writers,System.JSON.readers,System.JSON.Types,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client
  ;

type
  TForm4 = class(TForm)
    IdHTTP: TIdHTTP;
    BtnPost: TBitBtn;
    RESTResponse1: TRESTResponse;
    BtnGet: TButton;
    EdtUrl: TEdit;
    LbMensagem: TLabel;
    EdtCelularEmpresa: TEdit;
    EdtToken: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtEmpresa: TEdit;
    Label4: TLabel;
    procedure BtnPostClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnGetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}




procedure TForm4.BtnPostClick(Sender: TObject);
var
  Stream, retorno, envio: TStringStream;
  Params: TIdMultipartFormDataStream;
  dados:tstringlist;
begin

  dados := tstringlist.Create;
  dados.Clear;
  dados.Add('origem=63992893682');
  dados.Add('destino=63992465660');
  dados.Add('tipo=TEXTO');
  dados.Add('msg=mensagem');
  dados.Add('token=123456789');
  dados.Add('status=0');

  Stream := TStringStream.Create('');
  try
     Params := TIdMultipartFormDataStream.Create;
     try
        try
          retorno := TstringStream.Create;
          IdHTTP.Post(EdtUrl.text+'/postWhatsApp.php', dados, retorno);
          LbMensagem.CAPtion:= UTF8Decode(retorno.DataString);

        except
         on E: Exception do
          LbMensagem.CAPtion := 'Erros encontrados durante o POST: ' + E.Message;
        end;

     finally
      Params.Free;
     end;
  finally
   Stream.Free;
  end;
end;




procedure TForm4.Button1Click(Sender: TObject);

begin;

end;

procedure TForm4.BtnGetClick(Sender: TObject);
  var
 id, de, para, tipo, msg:string;
  var
  LJSONValue: TJSONValue;
  LJSONArray: TJSONArray;
  JsonStream: TStringStream;
  id_empresa, celular_empresa, token:string;
begin
    id_empresa := EdtEmpresa.text;
    celular_empresa := EdtCelularEmpresa.Text;
    token := EdtToken.Text;

   JsonStream:= TStringStream.Create('');
   idHttp.Get(edtUrl.text+'/getWhatsApp.php?empresa='+id_empresa+'&celular='+celular_empresa+'&token='+token, JsonStream);
   LJSONArray := TJSONObject.ParseJSONValue(JsonStream.DataString) as TJSONArray;

  if (JsonStream.DataString <>'ERROR 404 - "Registro nao encontrado"') then
    begin
      try
        try
          for LJSONValue in LJSONArray do
            begin
              id    :=  LJSONValue.GetValue<string>('id');
              de    :=  LJSONValue.GetValue<string>('de');
              para  :=  LJSONValue.GetValue<string>('para');
              tipo  :=  LJSONValue.GetValue<string>('tipo');
              msg   :=  LJSONValue.GetValue<string>('msg');
              LbMensagem.caption := 'Mensagem Encontrada: '+id+' '+de+' '+' '+para+' '+tipo+' '+msg;
            end;
        except
           LbMensagem.caption :='Erro ao buscar informações';
        end;
      finally
        LJSONArray.Free;
        JsonStream.Free();
      end;
    end
    else
       LbMensagem.caption :='Erro registro não encontrado...';



end;

end.
