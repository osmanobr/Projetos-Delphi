program CurvaABC;

uses
  Vcl.Forms,
  UCurvaABC in 'UCurvaABC.pas' {FrmCurvaABC},
  UReport in 'UReport.pas' {FrmReport},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Curva ABC';
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TFrmCurvaABC, FrmCurvaABC);
  Application.Run;
end.
