unit ufrmCTEDOCantCADASTRO;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ufrmDefaultCadastro,
  Data.DB,
  ACBrBase,
  ACBrEnterTab,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvStatusBar,
  JvComCtrls,
  JvExControls,
  JvSpeedButton,
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  JvDateTimePicker,
  JvDBDateTimePicker,
  Vcl.StdCtrls,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  JvDBControls,
  JvExStdCtrls,
  JvCombobox,
  JvDBCombobox,
  JvgGroupBox,
  JvBaseEdits,
  JvDBLookup;

type
  TfrmCteDOCANTCadastro = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Panel8: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    XML_CHAVE: TJvDBMaskEdit;
    CNPJCPF: TJvDBMaskEdit;
    IE: TJvDBMaskEdit;
    UF: TJvDBLookupCombo;
    lbUF: TLabel;
    dtsqryUF: TDataSource;
    Label1: TLabel;
    RAZAOSOCIAL: TJvDBMaskEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
      { Private declarations }
  public
      //    FOperacao: Toperacao;
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmCteDOCANTCadastro: TfrmCteDOCANTCadastro;

implementation

{$R *.dfm}

uses
  udtmCTE;

  { TfrmCteOrdemColetaCadastro }

class procedure TfrmCteDOCANTCadastro.Alterar;
begin
  frmCteDOCANTCadastro := TfrmCteDOCANTCadastro.Create(Nil);
  try
    frmCteDOCANTCadastro.FOperacao := TEditar;

    frmCteDOCANTCadastro.ShowModal;
  finally
    FreeAndNil(frmCteDOCANTCadastro);
  end;
end;

procedure TfrmCteDOCANTCadastro.btnCancelarClick(Sender: TObject);
begin
  dtsDefault.DataSet.Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmCteDOCANTCadastro.btnConfirmarClick(Sender: TObject);
begin
  FFecharOK := True;

  try
    case FOperacao of
      TIncluir, TEditar:
        begin
          if dtsDefault.DataSet.State in [ dsInsert, dsEdit ] then
            dtsDefault.DataSet.Post;
        end;
    end;

    Self.Close;
    Self.ModalResult := mrOk;
  except
    on E: Exception do
    begin
      raise Exception.Create('Ocorreu o erro abaixo no processo, favor contactar suporte!' + sLineBreak + sLineBreak + E.Message);
    end;
  end;
end;

class procedure TfrmCteDOCANTCadastro.Novo;
begin
  frmCteDOCANTCadastro := TfrmCteDOCANTCadastro.Create(Nil);
  try
    frmCteDOCANTCadastro.FOperacao := TIncluir;
    frmCteDOCANTCadastro.dtsDefault.DataSet.Append;

    frmCteDOCANTCadastro.ShowModal;
  finally
    FreeAndNil(frmCteDOCANTCadastro);
  end;
end;

end.
