unit ufrmCTEordemcoletaCADASTRO;

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
  JvgGroupBox;

type
    //TOperacao = (TIncluir, TEditar, TExcluir, TConsulta);
  TfrmCteOrdemColetaCadastro = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Panel8: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SERIE: TJvDBMaskEdit;
    NUMERO: TJvDBMaskEdit;
    DT_EMISSAO: TJvDBDateTimePicker;
    JvgGroupBox2: TJvgGroupBox;
    CNPJ: TJvDBMaskEdit;
    Label1: TLabel;
    IE: TJvDBMaskEdit;
    Label2: TLabel;
    ID_UF: TDBLookupComboBox;
    Label4: TLabel;
    TELEFONE: TJvDBMaskEdit;
    Label7: TLabel;
    COD_INT_TRANS: TJvDBMaskEdit;
    dtsqryUF: TDataSource;
    DataSource1: TDataSource;
    Label8: TLabel;
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
  frmCteOrdemColetaCadastro: TfrmCteOrdemColetaCadastro;

implementation

{$R *.dfm}

uses
  udtmCTE;

  { TfrmCteOrdemColetaCadastro }

class procedure TfrmCteOrdemColetaCadastro.Alterar;
begin
  frmCteOrdemColetaCadastro := TfrmCteOrdemColetaCadastro.Create(Nil);
  try
    frmCteOrdemColetaCadastro.FOperacao := TEditar;

    frmCteOrdemColetaCadastro.ShowModal;
  finally
    FreeAndNil(frmCteOrdemColetaCadastro);
  end;
end;

procedure TfrmCteOrdemColetaCadastro.btnCancelarClick(Sender: TObject);
begin
  dtsDefault.DataSet.Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmCteOrdemColetaCadastro.btnConfirmarClick(Sender: TObject);
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

class procedure TfrmCteOrdemColetaCadastro.Novo;
begin
  frmCteOrdemColetaCadastro := TfrmCteOrdemColetaCadastro.Create(Nil);
  try
    frmCteOrdemColetaCadastro.FOperacao := TIncluir;
    frmCteOrdemColetaCadastro.dtsDefault.DataSet.Append;

    frmCteOrdemColetaCadastro.ShowModal;
  finally
    FreeAndNil(frmCteOrdemColetaCadastro);
  end;
end;

end.
