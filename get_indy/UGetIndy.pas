unit UGetIndy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, System.json;

type
  TForm1 = class(TForm)
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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

//  vTextoJson := idHttp1.Get('http://192.168.10.103:1005/ViaKey/v1/getClienteCodigoCnpj?cpfcnpj=07353150000128');
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

end.
