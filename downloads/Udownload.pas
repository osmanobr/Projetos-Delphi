unit Udownload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Winapi.UrlMon, Vcl.Buttons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses System.ZIP;
  function ZipFileDecompress(FZipfile, APath: string): integer;
    var
    z: TZipFile;
  begin
    result := 0;
    z := TZipFile.Create;
    try
    if fileExists(FZipfile) then
    z.Open(FZipfile, zmReadWrite)
    else
    raise exception.Create('Não encontrei: ' + FZipfile);
    z.ExtractAll(APath);
    z.Close;
    result := 1;
    finally
    z.Free;
    end;
  end;

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile),
    0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);

const

  SourceFile = 'https://viatechinfo.com.br/down/DownLoad/CurvaABC.zip';
  DestFile = caminho+'\CurvaABC.zip';

begin
  try


  if not fileexists(caminho+'\CurvaABC.exe') then
     begin
        SpeedButton1.Caption:='Aguarde, baixando aplicativo...';
        SpeedButton1.Enabled:=false;
        SpeedButton1.Repaint;
        if DownloadFile(SourceFile, DestFile) then
        begin
          // A mensagem será exibida após a conclusão do Download.
          if (ZipFileDecompress(caminho+'\CurvaABC.zip',caminho+'\'))>0 then
          begin
             if fileexists(caminho+'\CurvaABC.zip') then
                deletefile(caminho+'\CurvaABC.zip');
            // ShowMessage('Download concluído com sucesso!');
          end;
        end
        else
          ShowMessage('Erro ao baixar o arquivo "CurvaABC"');
        SpeedButton1.Caption:='Curva ABC';
        SpeedButton1.Enabled:=true;
        SpeedButton1.Repaint;
     end
  else
     begin
       WinExec(caminho+'\CurvaABC.exe', SW_SHOW)
     end;
  finally

  end;
end;

end.
