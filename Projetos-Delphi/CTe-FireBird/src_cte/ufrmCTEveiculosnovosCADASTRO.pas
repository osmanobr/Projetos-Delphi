unit ufrmCTEveiculosnovosCADASTRO;

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
  JvBaseEdits;

type
    //TOperacao = (TIncluir, TEditar, TExcluir, TConsulta);
  TfrmCteVeiculosNovosCadastro = class(TfrmDefaultCadastro)
    JvgGroupBox1: TJvgGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    COR: TJvDBMaskEdit;
    VALOR_UNITARIO: TJvDBCalcEdit;
    COR_DESCRICAO: TJvDBMaskEdit;
    CODIGO_MARCA_MODELO: TJvDBMaskEdit;
    CHASSI: TJvDBMaskEdit;
    FRETE_UNITARIO: TJvDBCalcEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
      { Private declarations }
  public
      //FOperacao: Toperacao;
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmCteVeiculosNovosCadastro: TfrmCteVeiculosNovosCadastro;

implementation

{$R *.dfm}

uses
  udtmCTE;

  { TfrmCteOrdemColetaCadastro }

class procedure TfrmCteVeiculosNovosCadastro.Alterar;
begin
  frmCteVeiculosNovosCadastro := TfrmCteVeiculosNovosCadastro.Create(Nil);
  try
    frmCteVeiculosNovosCadastro.FOperacao := TEditar;

    frmCteVeiculosNovosCadastro.ShowModal;
  finally
    FreeAndNil(frmCteVeiculosNovosCadastro);
  end;
end;

procedure TfrmCteVeiculosNovosCadastro.btnCancelarClick(Sender: TObject);
begin
  dtsDefault.DataSet.Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmCteVeiculosNovosCadastro.btnConfirmarClick(Sender: TObject);
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

class procedure TfrmCteVeiculosNovosCadastro.Novo;
begin
  frmCteVeiculosNovosCadastro := TfrmCteVeiculosNovosCadastro.Create(Nil);
  try
    frmCteVeiculosNovosCadastro.FOperacao := TIncluir;
    frmCteVeiculosNovosCadastro.dtsDefault.DataSet.Append;

    frmCteVeiculosNovosCadastro.ShowModal;
  finally
    FreeAndNil(frmCteVeiculosNovosCadastro);
  end;
end;

end.
