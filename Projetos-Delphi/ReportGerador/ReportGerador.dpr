program ReportGerador;

uses
  Vcl.Forms,
  UMae in 'UMae.pas' {FrmPrincipal},
  Umodulo in 'Umodulo.pas' {frmDataModulo: TDataModule},
  UConexao in 'UConexao.pas' {FrmConexao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmDataModulo, frmDataModulo);
  Application.Run;
end.
