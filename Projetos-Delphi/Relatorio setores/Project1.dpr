program Project1;

uses
  Vcl.Forms,
  UArvoreDepartamentos in 'UArvoreDepartamentos.pas' {FrmArvoreDepartamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmArvoreDepartamentos, FrmArvoreDepartamentos);
  Application.Run;
end.
