unit ufrmDefaultConsulta;

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
  ufrmDefault,
  DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Menus,
  StdCtrls,
  ExtCtrls,
  ShellAPI,
  Vcl.ImgList,
  ACBrBase,
  ACBrEnterTab,
  FireDAC.Stan.Error,
  FireDAC.DApt,
  ufrmDefaultClean,
  JvExControls,
  JvSpeedButton,
  JvExStdCtrls,
  JvGroupBox,
  Vcl.Grids,
  Vcl.DBGrids,
  JvExDBGrids,
  JvDBGrid,
  JvExExtCtrls,
  JvImage,
  ufrmDefaultCadastro,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  JvCsvData,
  Vcl.DBCtrls,
  JvDBControls,
  JvLabel,
  JvMenus,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvStatusBar,
  dxGDIPlusClasses;

type
  TfrmDefaultConsultaClass = class of TfrmDefaultConsulta;
    //TTipoOperacaoConsulta = (tpConsulta,tpManutencao);

    {
     TOperacaoConsulta = record
     private
     procedure Clear;
     public
     //Tipo: TTipoOperacaoConsulta;
     ForcarPost: Boolean;
     ConteudoPesquisa: String;
     ComboIndex: Integer;
     AbrirQuery: Boolean;
     ExibirMenu: Boolean;
     ExibirBoxPesquisa: Boolean;
     PermitirManutencao: Boolean;
     FormCaption: String;
     FormCadastro: TfrmDefaultCadastroClass;
     TabelaFieldKey: String;
     TabelaFieldKey1: String;
     TabelaFieldShow: String;
     Identificador1,Identificador2: Variant;
     SQLPadrao:String;
     SQLOrdem:String;
     Comitar:Boolean;
     end;
    }
  TConsultaOpcoes = record
    BoxPesquisa: Boolean;
    AlteracaoNoGrid: Boolean;
    AbrirQuery: Boolean;
  end;

  TfrmDefaultConsulta = class(TfrmDefault)
    dtsDefault: TDataSource;
    qryDefault: TFDQuery;
    BoxPesquisa: TJvGroupBox;
    pnlComandos: TPanel;
    btnSair: TJvSpeedButton;
    btnAlterar: TJvSpeedButton;
    btnNovo: TJvSpeedButton;
    dbGrid: TJvDBGrid;
    JvImage1: TJvImage;
    Label1: TLabel;
    btnPesquisar: TJvSpeedButton;
    lbTestoPesquisa: TLabel;
    edtTextoPesquisa: TJvMaskEdit;
    btnDeletar: TJvSpeedButton;
    pnlNavigator: TPanel;
    labNavigator: TJvLabel;
    navDefault: TJvDBNavigator;
    btnAtualizar: TJvSpeedButton;
    JvStatusBar1: TJvStatusBar;
    dtstabDefault: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormatFone(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure AUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dbGridDblClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure qryDefaultAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    FTabelaNome   : string;
    FTabelaCpChave: string;
    FFormCadastro : TfrmDefaultCadastroClass;

  protected
    procedure AlinharControles; Virtual;
    procedure AbrirConsulta; Virtual;
    procedure AjustarControles; Virtual;

    property TabelaNome: string read FTabelaNome write FTabelaNome;
    property TabelaCpChave: string read FTabelaCpChave write FTabelaCpChave;
    property FormCadastro: TfrmDefaultCadastroClass read FFormCadastro write FFormCadastro;
  public
    FSQLPadrao : String;
    FSQLOrdem  : String;
    FAbrirQuery: Boolean;
    procedure PosOnShow; Virtual;
    class procedure Manutencao(Sender: TWinControl);
  end;

var
  frmDefaultConsulta: TfrmDefaultConsulta;

implementation

uses
  uFuncoes,
  uclassLOG,
  udtmDefault;

{$R *.dfm}

procedure TfrmDefaultConsulta.AUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if AException is EFDDBEngineException then
  begin
    if EFDDBEngineException(AException).Kind = TFDCommandExceptionKind.ekUKViolated then
      raise exception.Create('Registro Duplicado!!!')
    else
      if EFDDBEngineException(AException).Kind = TFDCommandExceptionKind.ekFKViolated then
        raise exception.Create('Chave Estrangeira não existe!!!')
      else
        raise exception.Create('Error desconhecido ' + sLineBreak + AException.Message);
  end;
end;

procedure TfrmDefaultConsulta.FormatFone(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := FormatarFone(Sender.AsString);
end;

procedure TfrmDefaultConsulta.FormCreate(Sender: TObject);
begin
  FAbrirQuery := True;

  inherited;
end;

procedure TfrmDefaultConsulta.bSairClick(Sender: TObject);
begin
  FFecharOK := True;
  Close;
end;

procedure TfrmDefaultConsulta.btnAtualizarClick(Sender: TObject);
begin
  btnAtualizar.Enabled := False;
  try
    if TFDQuery(dtsDefault.DataSet).SQL.Text.Trim.Length > 0 then
    begin
      try
        dtsDefault.DataSet.Close;
        dtsDefault.DataSet.Open;
      except
      end;
    end;
  finally
    btnAtualizar.Enabled := True;
  end;
end;

procedure TfrmDefaultConsulta.btnNovoClick(Sender: TObject);
var
  ARetorno: TRetornoCadastro;
begin
  if not Assigned(dtstabDefault.DataSet) then
    raise exception.Create('DataSet não foi assinalado no formulário de manutenção, favor corrigir!');

  ARetorno := TfrmDefaultCadastro.incluir(FFormCadastro, FTabelaCpChave);

  if ARetorno.Alterado then
  begin
    AtualizarTabela(qryDefault);
    qryDefault.Locate(TabelaCpChave, ARetorno.Identificador);
  end;
end;

procedure TfrmDefaultConsulta.btnAlterarClick(Sender: TObject);
var
  ARetorno: TRetornoCadastro;
begin
  if not Assigned(dtstabDefault.DataSet) then
    raise exception.Create('DataSet não foi assinalado no formulário de manutenção, favor corrigir!');

  ARetorno := TfrmDefaultCadastro.alterar(FFormCadastro, TabelaCpChave, TFDQuery(dtsDefault.DataSet).FieldByName(TabelaCpChave).Value);

  if ARetorno.Alterado then
  begin
    AtualizarTabela(qryDefault);
    qryDefault.Locate(TabelaCpChave, ARetorno.Identificador);
  end;
end;

procedure TfrmDefaultConsulta.btnDeletarClick(Sender: TObject);
var
  ARetorno: TRetornoCadastro;
begin
  if not Assigned(dtstabDefault.DataSet) then
    raise exception.Create('DataSet não foi assinalado no formulário de manutenção, favor corrigir!');

  ARetorno := TfrmDefaultCadastro.excluir(FFormCadastro, TabelaCpChave, TFDQuery(dtsDefault.DataSet).FieldByName(TabelaCpChave).Value);
  AtualizarTabela(qryDefault);

  if ARetorno.Alterado then
    AtualizarTabela(qryDefault);
end;

procedure TfrmDefaultConsulta.btnPesquisarClick(Sender: TObject);
begin
  AbrirConsulta;
end;

procedure TfrmDefaultConsulta.btnSairClick(Sender: TObject);
begin
  ModalResult := mrCancel;

  Hide;
  Close;
end;

procedure TfrmDefaultConsulta.dbGridDblClick(Sender: TObject);
begin
  if btnAlterar.Enabled then
    btnAlterar.Click;
end;

procedure TfrmDefaultConsulta.dtsDefaultDataChange(Sender: TObject; Field: TField);
var
  ADataSetAssinalado, ContemRegistros: Boolean;
begin
  inherited;

  ADataSetAssinalado := Assigned(dtsDefault.DataSet);

  if ADataSetAssinalado then
    ContemRegistros := TFDQuery(dtsDefault.DataSet).RecordCount > 0
  else
    ContemRegistros := False;

  btnNovo.Enabled      := ADataSetAssinalado;
  btnAlterar.Enabled   := ContemRegistros;
  btnDeletar.Enabled   := ContemRegistros;
  btnAtualizar.Enabled := ADataSetAssinalado;

  if ADataSetAssinalado then
    labNavigator.Caption := FormatFloat('   #0', qryDefault.RecNo) + ' de ' + FormatFloat('#0', qryDefault.RecordCount) + ' Registro(s)   '
  else
    labNavigator.Caption := EmptyStr;
end;

procedure TfrmDefaultConsulta.AbrirConsulta;
begin
  try
    if Self.FSQLPadrao.Trim.Length > 0 then
    begin
      if Assigned(dtsDefault.DataSet) then
      begin
        TFDQuery(dtsDefault.DataSet).Close;
        TFDQuery(dtsDefault.DataSet).SQL.Text := Self.FSQLPadrao + GetCondicaoSQL + Self.FSQLOrdem;
        TFDQuery(dtsDefault.DataSet).Open;
      end
    end;
  except
    on e: exception do
    begin
      raise exception.Create('Ocorreu o erro abaixo ao executar o processo escolhido.' + sLineBreak + e.Message);
    end;
  end;
end;

procedure TfrmDefaultConsulta.AjustarControles;

begin

end;

procedure TfrmDefaultConsulta.FormShow(Sender: TObject);
begin
  inherited;

  PosOnShow;
end;

class procedure TfrmDefaultConsulta.Manutencao(Sender: TWinControl);
begin
  if Assigned(frmDefaultConsulta) then
    FreeAndNil(frmDefaultConsulta);

  frmDefaultConsulta             := Self.Create(Nil);
  frmDefaultConsulta.Align       := alClient;
  frmDefaultConsulta.BorderStyle := bsNone;
  frmDefaultConsulta.Align       := alClient;
  frmDefaultConsulta.BorderStyle := bsNone;
  frmDefaultConsulta.Parent      := Sender;
  frmDefaultConsulta.Show;
end;

procedure TfrmDefaultConsulta.AlinharControles;
begin
    //Alinha
  pnlNavigator.Align := alBottom;
  pnlComandos.Align  := alBottom;
  BoxPesquisa.Align  := alBottom;
  dbGrid.Align       := alClient;

    //SQL Default
  FSQLPadrao := TFDQuery(dtsDefault.DataSet).SQL.Text;
  Application.ProcessMessages;
end;

procedure TfrmDefaultConsulta.PosOnShow;
begin
  AlinharControles;
  AjustarControles;
  if Assigned(dtsDefault.DataSet) then
    TFDQuery(dtsDefault.DataSet).Close
  else
    raise exception.Create('DataSet não foi assinalado, favor conferir!');

  if FAbrirQuery then
    AbrirConsulta;
end;

procedure TfrmDefaultConsulta.qryDefaultAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if Assigned(dtstabDefault.DataSet) then
    if TFDQuery(dtstabDefault.DataSet).SQL.Text.Trim.Length > 0 then
      TFDQuery(dtstabDefault.DataSet).Active := DataSet.Active;
end;

end.
