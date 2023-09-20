program nfseHorse;

uses
  Vcl.Forms,
  Umae in 'Umae.pas' {FrmMae};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMae, FrmMae);
  Application.Run;
end.
