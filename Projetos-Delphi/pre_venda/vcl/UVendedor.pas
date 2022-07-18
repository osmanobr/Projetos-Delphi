unit UVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, UViewPreVenda;

type
  TFrmVendedor = class(TForm)
    EdtMatriculaVendedor: TEdit;
    EdSenhaVendedor: TEdit;
    BBLogar: TBitBtn;
    BBtnVoltar: TBitBtn;
    Login: TStaticText;
    StaticText1: TStaticText;
    procedure BBtnVoltarClick(Sender: TObject);
    procedure BBLogarClick(Sender: TObject);
    procedure EdtMatriculaVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure EdSenhaVendedorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedor: TFrmVendedor;

implementation

{$R *.dfm}

procedure TFrmVendedor.EdtMatriculaVendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     EdSenhaVendedor.SetFocus;
end;

procedure TFrmVendedor.EdSenhaVendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
        BBLogar.SetFocus;
        BBLogar.Click;
     end;
end;

procedure TFrmVendedor.BBLogarClick(Sender: TObject);
begin
  vgIdMatriculaVendedor:= strtoint(EdtMatriculaVendedor.text);
  Close;
end;

procedure TFrmVendedor.BBtnVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
