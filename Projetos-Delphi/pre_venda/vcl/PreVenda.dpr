program PreVenda;

uses
  Vcl.Forms,
  UViewPreVenda in 'UViewPreVenda.pas' {FrmPreVenda},
  Vcl.Themes,
  Vcl.Styles,
  UVendedor in 'UVendedor.pas' {FrmVendedor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TFrmPreVenda, FrmPreVenda);
  Application.Run;
end.
