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
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    Memo1: TMemo;
    RESTResponse1: TRESTResponse;
    Button3: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

var
  DataBase: String;
  EmailAddress : String;
  Username: String;

function getData2(JsonString: String; User: String; Field: String): String;


implementation

{$R *.dfm}

function getData2(JsonString: String; User: String; Field: String): String;
var
  JSonValue: TJSonValue;
  JsonArray: TJSONArray;
  ArrayElement: TJSonValue;
  FoundValue: TJSonValue;
begin
  Result :='';

  // create TJSonObject from string
  JsonValue := TJSonObject.ParseJSONValue(JsonString);

  // get the array
  JsonArray := JsonValue.GetValue<TJSONArray>('users');

  // iterate the array
  for ArrayElement in JsonArray do begin
      if ArrayElement.GetValue<String>('user') = User then begin
        Result := ArrayElement.GetValue<String>(Field);
        break;
      end;
  end;
end;


procedure TForm4.BitBtn1Click(Sender: TObject);
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
  dados.Add('texto=Texto teste');
  dados.Add('status=0');

  Stream := TStringStream.Create('');
  try
   Params := TIdMultipartFormDataStream.Create;
   try
    Params.AddFile('arquivo', 'D:\capacete.jpg');

    try
     // IdHTTP.Post('http://localhost:8888/teste/index.php', Params, Stream);

      retorno := TstringStream.Create;
      IdHTTP.Post('http://localhost:8888/teste/index.php?', dados, retorno);
     // IdHTTP.Post('http://localhost:8888/teste/index.php', Params, retorno);
      ShowMessage(UTF8Decode(retorno.DataString));

    except
     on E: Exception do
       ShowMessage('Erros encontrados durante o POST: ' + E.Message);
    end;

   finally
    Params.Free;
   end;
  finally
   Stream.Free;
  end;
end;




procedure TForm4.Button1Click(Sender: TObject);
  var JsonStream: TStringStream;
begin
  JsonStream:= TStringStream.Create('');
  try
  idHttp.Get('http://localhost:8888/teste/?empresa=1&celular=63992893682&token=123456789', JsonStream);
  //TrataJsonStream(JsonStream);
  finally
  JsonStream.Free();
  end;

end;

procedure TForm4.Button2Click(Sender: TObject);
  var JsonStream: TStringStream;
  i:Integer;
var

  vMensagem: string;
  vJsonValue: TJSONArray;

begin
   JsonStream:= TStringStream.Create('');
   idHttp.Get('http://localhost:8888/teste/index.php?empresa=1&celular=63992893682&token=123456789', JsonStream);

  DataBase := JsonStream.DataString;

 vJsonValue := TJSONObject.ParseJSONValue( DataBase  ) as TJSONArray;

 // for i := 0 to Pred(vJsonValue.Size) do
 // ShowMessage(vJsonValue.Get(i).Get('id').JsonValue.Value);
//   ShowMessage(TJSONObject(vJsonValue.Get(i)).Get('id').JsonValue.Value);

//
// for I :=0  to 1 do
// begin
//   ShowMessage(JsonStream.);
//
// end;


//  ShowMessage(DataBase);
//  ShowMessage(EmailAddress);
//  ShowMessage(Username);
  JsonStream.Free();
end;


procedure TForm4.Button3Click(Sender: TObject);
const
  JSON = '[{"id":"6","de":"63992203510","para":"63992893682","tipo":"TEXTO","msg":"Essa \u00e9 a mensagem 01","data_hora":"2022-02-14 17:51:41","status":"0"}]';
  var
  de, para, tipo, msg:string;
  var
  LJSONValue: TJSONValue;
  LJSONArray: TJSONArray;
begin
  LJSONArray := TJSONObject.ParseJSONValue(JSON) as TJSONArray;
  try
    for LJSONValue in LJSONArray do
      begin
        ShowMessage(LJSONValue.GetValue<string>('para'));
      end;
  finally
    LJSONArray.Free;
  end;
end;

end.
