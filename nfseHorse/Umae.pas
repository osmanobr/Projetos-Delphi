unit Umae;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Horse, Vcl.Dialogs, Horse.Jhonson, System.JSON;

type
  TFrmMae = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMae: TFrmMae;

implementation

{$R *.dfm}

begin
  THorse.Use(Jhonson());


  //endpoint 00
  THorse.Get('/site',
                      procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
                          begin
                            Writeln('Request GET site/');
                            Res.Send('pong');
                          end);

  //endpoint 01
  THorse.Get('/ping',
                      procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
                          begin
                            Writeln('Request GET ping/');
                            Res.Send('pong');
                          end);

  //endpoint 02
  THorse.Get('/clientes',
                          procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
                            var clientes:TJSONArray;
                              begin
                                clientes:=TJSONArray.Create;
                                clientes.add(TJsonObject.Create(TJsonPair.Create('id', '1')));
                                clientes.add(TJsonObject.Create(TJsonPair.Create('venda', '1234')));
                                clientes.add(TJsonObject.Create(TJsonPair.Create('data', '01/02/02')));
                                Writeln('Request GET cliente/');
                                Res.Send<TJSONArray>(clientes);
                              end);

  //endpoint03
  THorse.Post('/ping',
                      procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
                        var
                          LBody: TJSONObject;
                        begin
                          LBody := Req.Body<TJSONObject>;
                          Res.Send<TJSONObject>(LBody);
                        end);



   //log
   THorse.Listen(9000, procedure(Horse : THorse)
    begin
      Writeln('Servidor ouvindo na porta: '+ Horse.Port.ToString);
    end);


end.
