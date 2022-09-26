unit UMae;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    SBConexao: TSpeedButton;
    PannelMain: TPanel;
    procedure SBConexaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses uModulo, uConexao;

{$R *.dfm}

procedure TFrmPrincipal.SBConexaoClick(Sender: TObject);
begin
if not(Assigned(frmConexao)) then
begin
  try
    frmConexao := TfrmConexao.Create(self);
    frmConexao.Parent := PannelMain;
    frmConexao.Showmodal;
  finally
    frmConexao.Free;
  end;

end

end;

end.
