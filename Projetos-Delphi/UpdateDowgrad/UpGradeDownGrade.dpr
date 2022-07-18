program UpGradeDownGrade;

uses
  Vcl.Forms,
  UUpGradeDownGrade in 'UUpGradeDownGrade.pas' {FrmUpgradeDowngrade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmUpgradeDowngrade, FrmUpgradeDowngrade);
  Application.Run;
end.
