program ViaGeraDanfe;

uses
  Vcl.Forms,
  UnitMae in 'UnitMae.pas' {frmViaGeraDanfe},
  Vcl.Themes,
  Vcl.Styles,
  FrmDataModulo in 'FrmDataModulo.pas' {Modulo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmViaGeraDanfe, frmViaGeraDanfe);
  Application.CreateForm(TModulo, Modulo);
  Application.Run;
end.
