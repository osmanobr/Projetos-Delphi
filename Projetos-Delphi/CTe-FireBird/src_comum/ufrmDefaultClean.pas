unit ufrmDefaultClean;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ufrmDefault,
  Vcl.Graphics,
  Vcl.Menus,
  Vcl.StdCtrls,
  ACBrBase,
  ACBrEnterTab,
  Vcl.ImgList,
  JvExControls,
  JvSpeedButton,
  Vcl.ExtCtrls;

type
  TfrmDefaultClean = class(TfrmDefault)
    pnlComandos: TPanel;
    btnCancelar: TJvSpeedButton;
    btnConfirmar: TJvSpeedButton;
    procedure bConfirmaClick(Sender: TObject);
    procedure bCancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
  public
    FAlterado        : Boolean;
    property Alterado: Boolean read FAlterado write FAlterado;
  end;

var
  frmDefaultClean: TfrmDefaultClean;

implementation

{$R *.dfm}

procedure TfrmDefaultClean.bCancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;

  Alterado  := False;
  FFecharOK := True;

  Close;
end;

procedure TfrmDefaultClean.bConfirmaClick(Sender: TObject);
begin
  FFecharOK := True;
  Alterado  := True;

  Close;
  ModalResult := mrOk;
end;

procedure TfrmDefaultClean.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;

  Alterado  := False;
  FFecharOK := True;

  Close;
end;

procedure TfrmDefaultClean.btnConfirmarClick(Sender: TObject);
begin
  FFecharOK := True;
  Alterado  := True;

  Close;
  ModalResult := mrOk;
end;

procedure TfrmDefaultClean.FormCreate(Sender: TObject);
begin
  inherited;

  Self.Position := poMainFormCenter;
end;

end.
