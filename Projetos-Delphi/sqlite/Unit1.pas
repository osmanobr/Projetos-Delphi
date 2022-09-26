unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Vcl.StdCtrls, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    Button1: TButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    function AtualizaRegistroBDLocal(idMsg: integer): boolean;
    function InsereBDLocal(origem, destino, tipo, msg, data_hora: string;
      status: integer): boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  banco : string;
begin  //criar banco de dados local
  banco := 'db_sqlite.db';
  if not FileExists(banco) then
    begin
      try
        FDConnection1.params.Database:= banco;
        FDConnection1.Connected:= True;
        ShowMessage('BB criado: ' + banco);
        FDQuery1.Close;
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add('CREATE TABLE tb_envios ( id integer NOT NULL, origem text(20), destino text(20), tipo text(20),msg text(5000),data_hora text(30),status integer);');
        FDQuery1.ExecSQL;
      except
        ShowMessage('Não foi possível criar: ' + banco);
      end;
    end;

end;




function TForm1.InsereBDLocal(origem, destino, tipo, msg, data_hora:string; status:integer):boolean;
begin
  if FDConnection1.Connected = True then
    begin
      try
        FDQuery1.Close;
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add(' INSERT INTO tb_envios (id, origem, destino, tipo, msg, data_hora, status) VALUES ((SELECT CASE WHEN max(id) IS NULL THEN 1 ELSE max(id)+1 END AS id FROM tb_envios),''63992893682'',''63992465660'',''TEXTO'',''What is Lorem Ipsum?.'',''28/08/2022 14:50:00'',1); ');
        FDQuery1.execsql;
      except
        ShowMessage('Não foi possível inserir no banco. ');
      end;
    end
  else
    showmessage('Não há conexão com o banco de dados local.')
end;

function TForm1.AtualizaRegistroBDLocal(idMsg:integer):boolean;
begin
  if FDConnection1.Connected = True then
    begin
      try
        FDQuery1.Close;
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add(' UPDATE tb_envios  SET status = 1 WHERE id = '+inttostr(idMsg)+' ');
        FDQuery1.execsql;
      except
        ShowMessage('Não foi possível inserir no banco. ');
      end;
    end
  else
    showmessage('Não há conexão com o banco de dados local.')
end;

end.
