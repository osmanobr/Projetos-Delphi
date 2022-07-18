unit UUpGradeDownGrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmUpgradeDowngrade = class(TForm)
    MemoINI: TMemo;
    LbVersao: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUpgradeDowngrade: TFrmUpgradeDowngrade;

implementation

{$R *.dfm}

procedure TFrmUpgradeDowngrade.FormCreate(Sender: TObject);
begin
LbVersao.Caption := 'Versão ' + DateToStr(FileDateToDateTime(FileAge(Application.ExeName)));
end;

end.
