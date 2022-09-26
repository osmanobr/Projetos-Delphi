unit ufrmCTEnfeCADASTRO;

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
  TfrmCteNFeCadastro = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Panel8: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    NFE_CHAVE: TJvDBMaskEdit;
    NFE_PIN: TJvDBMaskEdit;
    DT_PREVISAO_ENTREGA: TJvDBDateTimePicker;
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
  frmCteNFeCadastro: TfrmCteNFeCadastro;

implementation

{$R *.dfm}

uses
  udtmCTE;

  { TfrmCteOrdemColetaCadastro }

class procedure TfrmCteNFeCadastro.Alterar;
begin
  frmCteNFeCadastro := TfrmCteNFeCadastro.Create(Nil);
  try
    frmCteNFeCadastro.FOperacao := TEditar;

    frmCteNFeCadastro.ShowModal;
  finally
    FreeAndNil(frmCteNFeCadastro);
  end;
end;

procedure TfrmCteNFeCadastro.btnCancelarClick(Sender: TObject);
begin
  dtsDefault.DataSet.Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmCteNFeCadastro.btnConfirmarClick(Sender: TObject);
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

class procedure TfrmCteNFeCadastro.Novo;
begin
  frmCteNFeCadastro := TfrmCteNFeCadastro.Create(Nil);
  try
    frmCteNFeCadastro.FOperacao := TIncluir;
    frmCteNFeCadastro.dtsDefault.DataSet.Append;

    frmCteNFeCadastro.ShowModal;
  finally
    FreeAndNil(frmCteNFeCadastro);
  end;
end;

end.
