unit ufrmMensagemEspera;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ExtCtrls,
  StdCtrls,
  JvExControls,
  JvLabel;

type
  TfrmMENSAGEMespera = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    imgIcone: TImage;
    lblMensagem: TJvLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    WindowsList: TTaskWindowList;
  public
  end;

var
  frmMENSAGEMespera: TfrmMENSAGEMespera;

procedure AbrirEspera(AOwner: TComponent; const AMensagem: string; const ATempo: Integer = 0);
procedure FecharEspera;

implementation

{$R *.dfm}

procedure AbrirEspera(AOwner: TComponent; const AMensagem: string; const ATempo: Integer = 0);
begin
  if frmMENSAGEMespera <> nil then
  begin
    if frmMENSAGEMespera.ShowHint then
      frmMENSAGEMespera.Hide;

    frmMENSAGEMespera.lblMensagem.Caption := AMensagem;
    frmMENSAGEMespera.Show;
  end
  else
  begin
    frmMENSAGEMespera                     := TfrmMENSAGEMespera.Create(AOwner);
    frmMENSAGEMespera.WindowsList         := DisableTaskWindows(frmMENSAGEMespera.Handle);
    frmMENSAGEMespera.lblMensagem.Caption := AMensagem;
    frmMENSAGEMespera.Show;
  end;

  frmMENSAGEMespera.Width := 110 + (Length(Trim(AMensagem)) * 8);
  frmMENSAGEMespera.Update;
  frmMENSAGEMespera.BringToFront;
  frmMENSAGEMespera.Position := poOwnerFormCenter;

  Application.ProcessMessages;

  Sleep(ATempo * 1000);
end;

procedure FecharEspera;
begin
  if frmMENSAGEMespera <> nil then
  begin
    if frmMENSAGEMespera.WindowsList <> nil then
      EnableTaskWindows(frmMENSAGEMespera.WindowsList);

    FreeAndNil(frmMENSAGEMespera);
  end;
end;

procedure TfrmMENSAGEMespera.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
end;

end.
