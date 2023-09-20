program VIaGeraMVC;

uses
  Vcl.Forms,
  UMae in 'UMae.pas' {FrmVIaGeraMVC};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmVIaGeraMVC, FrmVIaGeraMVC);
  Application.Run;
end.
