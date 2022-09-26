program GitAPP;

uses
  Vcl.Forms,
  UGitApp in 'UGitApp.pas' {ViaGITBASH};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViaGITBASH, ViaGITBASH);
  Application.Run;
end.
