unit UGetIndy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, System.json, System.StrUtils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    function GetProduto(ean: string): string;
    function GetUsuarios(ean: string): string;
    function PostProduto(id_usuario, id: integer; estoque,
      preco_venda: double): boolean;
    function trata_numero(numero: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



function TForm1.PostProduto(id_usuario, id:integer; estoque, preco_venda:double):boolean;
var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;
  vljson : TstringList;
begin
  URL := 'http://192.168.10.41:8080/balanco_item/save_item';
  vljson := TstringList.create;
  vljson.clear;

  vljson.Add('{');
  vljson.Add('"idProduto":"'+inttostr(id)+'", ');
  vljson.Add('"quantidade":"'+floattostr(estoque)+'", ');
  vljson.Add('"usuarioLancamento":"'+Inttostr(id_usuario)+'", ');
  vljson.Add('"precoVenda":"'+floattostr(preco_venda)+'"');
  vljson.Add('}');

  //idProduto
  //quantidade
  //usuarioLancamento
  showmessage(vljson.text);
  memo1.Text := vljson.text  ;
  JsonStreamEnvio := TStringStream.Create(vljson.Text);
  JsonStreamRetorno := TStringStream.Create('');
//  try
    idHttp1.Request.Clear;
    idHttp1.Request.ContentType         := 'application/json';
    idhttp1.Request.Charset             := 'utf-8';
    idHttp1.Request.BasicAuthentication := true;
    idHttp1.Request.ContentType         := 'application/json;odata=light;charset=utf-8;';
    idHttp1.Request.Connection          := 'keep-alive';
    idHttp1.Request.UserAgent           := 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36';
    idHttp1.Request.AcceptEncoding      := 'gzip, deflate';
    idHttp1.Request.AcceptLanguage      := 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4';
    idHttp1.Request.CacheControl        := 'no-cache';
    try
      idHttp1.Post(URL, JsonStreamEnvio, JsonStreamRetorno);
      vljson.Text := IdHTTP1.Post(URL, JsonStreamEnvio);
      Result := true;
      showmessage('true');
    except
      Result := false;
      showmessage('false');
    end;

//   finally
//     vljson.add(JsonStreamRetorno.DataString);
//   end;
   vljson.Free;
   JsonStreamEnvio.Free;
   JsonStreamRetorno.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var JsonStream: TStringStream;
  LJSONValue: TJSONValue;
  LJSONArray: TJSONArray;
begin
JsonStream:= TStringStream.Create('');

try

idHttp1.Get('http://192.168.10.103:1005/ViaKey/v1/getClienteCodigoCnpj?cpfcnpj=07353150000128', JsonStream);

showmessage(JsonStream.ToString);

finally
JsonStream.Free();
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
  vTextoJson: string;
  vArrayJson: TJSONArray;
  vJSONString: string;
  vJSONScenario: TJSONObject;
  vParseResult: Integer;
begin

 //vTextoJson := idHttp1.Get('http://192.168.10.103:1005/ViaKey/v1/getClienteCodigoCnpj?cpfcnpj=07353150000128');
 vTextoJson := idHttp1.Get('http://192.168.10.39:9000/ViaKey/v1/getClienteCodigoCnpj?cpfcnpj=07353150000128');

  vJSONScenario := TJSONObject.Create;
  vParseResult := vJSONScenario.Parse(BytesOf(vTextoJson),0);
  if  vParseResult < 200 then
      showmessage('Sem registros')
  else
     begin
        if vTextoJson<>'' then
           begin
            vArrayJson := TJSONObject.ParseJSONValue('[' + vTextoJson + ']') as TJSONArray;

            try
            for i := 0 to Pred(vArrayJson.Size) do
              if TJSONObject(vArrayJson.Get(i)).Get('viaCte').JsonValue.Value <> '1' then
                 showmessage('Sistema não registrado entre em contato com Viatech Sistemas');
            except
               showmessage('Erro ao localizar o registro do cliente');
            end;
           end;
     end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;

  i: Integer;
  vArrayJson: TJSONArray;
  vJSONString: string;
  vJSONScenario: TJSONObject;
  vParseResult: Integer;
  vlPost : TStringlist;

  begin
  URL := 'http://192.168.10.41:8080/produtos/buscar_ean';
  JsonStreamEnvio := TStringStream.Create(Memo1.Text);
  JsonStreamRetorno := TStringStream.Create('');


    idHttp1.Request.Clear;
    idHttp1.Request.ContentType         := 'application/json';
    idhttp1.Request.Charset             := 'utf-8';
    idHttp1.Request.BasicAuthentication := true;
    idHttp1.Request.ContentType         := 'application/json;odata=light;charset=utf-8;';
    idHttp1.Request.Connection          := 'keep-alive';
    idHttp1.Request.UserAgent           := 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36';
    idHttp1.Request.AcceptEncoding      := 'gzip, deflate';
    idHttp1.Request.AcceptLanguage      := 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4';
    idHttp1.Request.CacheControl        := 'no-cache';
    try
      idHttp1.Post(URL, JsonStreamEnvio, JsonStreamRetorno);
      vlPost:=TStringList.create;
      vlPost.clear;
      vlPost.Text := IdHTTP1.Post(URL, JsonStreamEnvio);

        vJSONScenario := TJSONObject.Create;
        vParseResult := vJSONScenario.Parse(BytesOf(vlPost.text),0);


        vArrayJson := TJSONObject.ParseJSONValue('['+vlPost.text+']') as TJSONArray;

        try
        for i := 0 to Pred(vArrayJson.Size) do
          if ((TJSONObject(vArrayJson.Get(i)).Get('id').JsonValue.Value = Memo1.Text)or(TJSONObject(vArrayJson.Get(i)).Get('ean').JsonValue.Value = Memo1.Text)) then
             begin
              showmessage('Id: '+TJSONObject(vArrayJson.Get(i)).Get('id').JsonValue.Value);
              showmessage('nome: '+TJSONObject(vArrayJson.Get(i)).Get('nome').JsonValue.Value);
              //showmessage('precovenda: '+TJSONObject(vArrayJson.Get(i)).Get('precovenda').JsonValue.Value);
              showmessage('estoqueAtual: '+TJSONObject(vArrayJson.Get(i)).Get('estoqueAtual').JsonValue.Value);
              //idProduto
              //quantidade
              //usuarioLancamento
             end;
        except
           showmessage('Erro ao localizar o registro do produto');
        end;

        vJSONScenario.free;
        JsonStreamRetorno.free;


    except
      showmessage('Não foi possível localizar o produto...');
    end;



end;


procedure TForm1.Button4Click(Sender: TObject);
begin
 showmessage(GetUsuarios('1'));
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  resp: TMemoryStream;

  i: Integer;
  vArrayJson: TJSONArray;
  vJSONString: string;
  vJSONScenario: TJSONObject;
  vParseResult: Integer;
begin
  resp := TMemoryStream.Create;


  IdHTTP1.Request.Clear;
  IdHTTP1.Request.Accept := 'application/json';
  IdHTTP1.Request.BasicAuthentication := False;

  IdHTTP1.Get('http://192.168.10.41:8080/usuarios/get_ativos', resp);
  resp.Position := 0;
  Memo1.Lines.LoadFromStream(resp, TEncoding.UTF8);

  vJSONScenario := TJSONObject.Create;
  vParseResult := vJSONScenario.Parse(BytesOf(Memo1.text),0);


  vArrayJson := TJSONObject.ParseJSONValue(Memo1.text) as TJSONArray;

  try
  for i := 0 to Pred(vArrayJson.Size) do
    if TJSONObject(vArrayJson.Get(i)).Get('id').JsonValue.Value = '412' then
       showmessage(TJSONObject(vArrayJson.Get(i)).Get('nome').JsonValue.Value);
  except
     showmessage('Erro ao localizar o registro do cliente');
  end;




end;

procedure TForm1.Button6Click(Sender: TObject);
begin
     if (PostProduto(412, 1234, 10, 54.2) ) then
    showmessage('Enviado com sucesso')
    else
    showmessage('Nao enviado...')
//GetProduto('34');
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  resp: TMemoryStream;
  i: Integer;
  vArrayJson: TJSONArray;
  vJSONString: string;
  vJSONScenario: TJSONObject;
  vParseResult: Integer;
  vretorno :tstringlist;
begin
  try
      resp := TMemoryStream.Create;


      IdHTTP1.Request.Clear;
      IdHTTP1.Request.Accept := 'application/json';
      IdHTTP1.Request.BasicAuthentication := False;

      IdHTTP1.Get('http://192.168.10.41:9001/balanco_item/get_existente?id_produto='+memo1.Lines[0], resp);
      resp.Position := 0;
      vretorno := TStringList.create;
      vretorno.LoadFromStream(resp, TEncoding.UTF8);

      vJSONScenario := TJSONObject.Create;
      vParseResult := vJSONScenario.Parse(BytesOf(vretorno.text),0);


      vArrayJson := TJSONObject.ParseJSONValue('['+vretorno.text+']') as TJSONArray;


      if(TJSONObject(vArrayJson.Get(0)).Get('quantidade').JsonValue.Value <> '0') then
        showmessage(TJSONObject(vArrayJson.Get(0)).Get('quantidade').JsonValue.Value)
      else
       showmessage('0');


      vretorno.free;
  except
     showmessage('error');
  end;
end;




function TForm1.trata_numero(numero:string):string;
var ddd : string;
const
  //Lista de caracteres especiais
  xCarEspeciais: array[1..45] of String = ('+','[',']','(',')', ' ', 'á', 'à', 'ã', 'â', 'ä','Á', 'À', 'Ã', 'Â', 'Ä',
                                     'é', 'è','É', 'È','í', 'ì','Í', 'Ì',
                                     'ó', 'ò', 'ö','õ', 'ô','Ó', 'Ò', 'Ö', 'Õ', 'Ô',
                                     'ú', 'ù', 'ü','Ú','Ù', 'Ü','ç','Ç','ñ','Ñ','-');
  //Lista de caracteres para troca
  xCarTrocar: array[1..45] of String = ('','','','','', '', 'a', 'a', 'a', 'a', 'a','A', 'A', 'A', 'A', 'A',
                                     'e', 'e','E', 'E','i', 'i','I', 'I',
                                     'o', 'o', 'o','o', 'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u','c','C','n', 'N','');
var
  i : Integer;
  numero_limpo :string;

begin
   for i:=1 to 46 do
     numero := StringReplace(numero, xCarEspeciais[i], xCarTrocar[i], [rfreplaceall]);

   if copy(numero,1,2) = '55' then
     begin //apagar o 55 digito  5563992893682
       Delete(numero, 1, 2);
     end;

    if length(numero) = 14 then
       begin //o numero parece com isso  02163992893682
         if (copy(numero, 0,1) = '0') then
            begin
                Delete(numero, 1, 3);
                ddd := copy(numero,0,2);
            end;
       end;

    if length(numero) = 13 then
       begin //o numero parece com isso  2163992893682
         if (copy(numero, 0,1) <> '0') then
            begin
                Delete(numero, 1, 1);
                ddd := copy(numero,0,2);
            end;
       end;

    if length(numero) = 12 then
       begin //o numero parece com isso  063992893682
         if (copy(numero, 0,1) = '0') then
            begin
              Delete(numero, 1, 1);
              ddd := copy(numero,0,2);
            end;
       end;

    if not ContainsText('81, 82, 83, 84, 85, 86, 87, 88, 89, 31, 32, 33, 34, 35, 37, 38, 71, 73, 74, 75, 77, 79', copy(numero, 0, 2)) then
      begin
      if length(numero) = 11 then //os demais prefixos naõ requerem o nono digito
         begin //o numero parece com isso  63992893682
           Delete(numero, 3, 1);
           ddd := copy(numero,0,2);
           numero_limpo := copy(numero, (length(numero) -8),(length(numero) -0));
         end;
      end
    else
      begin
           ddd := copy(numero,0,2);
           numero_limpo := copy(numero, (length(numero) -8),(length(numero) -0));
      end;

    if length(numero) = 10 then
       begin //o numero parece com isso 6392893682
         ddd := copy(numero,0,2);
         numero_limpo := copy(numero, (length(numero) -7),(length(numero) -0));
       end;

//   if not ContainsText('11 12 13 14 15 16 17 18 19 21 22 24 27 28 91 92 93 94 95 63 66 96 97 98 99 81 82 83 84 85 86 87 88 89 31 32 33 34 35 37 38 71 73 74 75 77 79', ddd) then
//    begin
//      result := 'INVALIDO';
//      exit;
//    end;

// numero_limpo := copy(numero, (length(numero) -7),(length(numero) -0)); // somente o numero sem o 63

  result := trim(ddd+numero_limpo); // 6392893682
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  showmessage(trata_numero(Edit1.text));
end;


function TForm1.GetProduto(ean:string):string;
var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;
  vlRetorno : TStringList;
begin
  vlRetorno := TStringList.create;
  vlRetorno.clear;

  URL := 'http://192.168.10.41/produtos/buscar_ean';
  JsonStreamEnvio := TStringStream.Create(ean);
  JsonStreamRetorno := TStringStream.Create('');

  idHttp1.Request.Clear;
  idHttp1.Request.ContentType         := 'application/json';
  idhttp1.Request.Charset             := 'utf-8';
  idHttp1.Request.BasicAuthentication := true;
  idHttp1.Request.ContentType         := 'application/json;odata=light;charset=utf-8;';
  idHttp1.Request.Connection          := 'keep-alive';
  idHttp1.Request.UserAgent           := 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36';
  idHttp1.Request.AcceptEncoding      := 'gzip, deflate';
  idHttp1.Request.AcceptLanguage      := 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4';
  idHttp1.Request.CacheControl        := 'no-cache';

  try
    idHttp1.Post(URL, JsonStreamEnvio, JsonStreamRetorno);
    vlRetorno.Text := IdHTTP1.Post(URL, JsonStreamEnvio);
    showmessage(vlRetorno.Text);
  except
    showmessage('Não foi possível importar o produto');
  end;

    showmessage(JsonStreamRetorno.DataString);

    //memo1.Lines.add(JsonStreamRetorno.DataString);

end;

function TForm1.GetUsuarios(ean:string):string;
var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;
begin
  URL := 'http://192.168.10.41:8080/usuarios/get_ativos';
  JsonStreamEnvio := TStringStream.Create('{"id":"1234567"}');
  JsonStreamRetorno := TStringStream.Create('');

  idHttp1.Request.Clear;
  idHttp1.Request.ContentType         := 'application/json';
  idhttp1.Request.Charset             := 'utf-8';
  idHttp1.Request.BasicAuthentication := true;
  idHttp1.Request.ContentType         := 'application/json;odata=light;charset=utf-8;';
  idHttp1.Request.Connection          := 'keep-alive';
  idHttp1.Request.UserAgent           := 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36';
  idHttp1.Request.AcceptEncoding      := 'gzip, deflate';
  idHttp1.Request.AcceptLanguage      := 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4';
  idHttp1.Request.CacheControl        := 'no-cache';
  try
    idHttp1.Post(URL, JsonStreamEnvio, JsonStreamRetorno);
    Result := IdHTTP1.Post(URL, JsonStreamEnvio);
  except
    Result := '{}';
  end;
   JsonStreamEnvio.Free;
   JsonStreamRetorno.Free;
end;

end.
