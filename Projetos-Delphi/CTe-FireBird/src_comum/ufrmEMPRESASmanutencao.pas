unit ufrmEMPRESASmanutencao;

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
  ufrmDefaultConsulta,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  ACBrBase,
  ACBrEnterTab,
  Vcl.DBCtrls,
  JvDBControls,
  JvLabel,
  Vcl.Grids,
  Vcl.DBGrids,
  JvExDBGrids,
  JvDBGrid,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  JvExExtCtrls,
  JvImage,
  JvExStdCtrls,
  JvGroupBox,
  JvExControls,
  JvSpeedButton,
  Vcl.Menus,
  JvMenus,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvStatusBar,
  dxGDIPlusClasses, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TfrmEMPRESASmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_EMPRESA: TIntegerField;
    qryDefaultID_REGIME: TIntegerField;
    qryDefaultID_INDICADOR_ATIVIDADE: TIntegerField;
    qryDefaultRAZAOSOCIAL: TStringField;
    qryDefaultNOMEFANTASIA: TStringField;
    qryDefaultCNPJ: TStringField;
    qryDefaultIE_ESTADUAL: TStringField;
    qryDefaultCNAE_FISCAL: TStringField;
    qryDefaultIE_MUNICIPAL: TStringField;
    qryDefaultIE_ESTADUAL_ST: TStringField;
    qryDefaultENDERECO: TStringField;
    qryDefaultNUMERO: TStringField;
    qryDefaultCOMPLEMENTO: TStringField;
    qryDefaultBAIRRO: TStringField;
    qryDefaultID_CIDADES_IBGE: TIntegerField;
    qryDefaultID_CIDADES_UF: TStringField;
    qryDefaultCEP: TStringField;
    qryDefaultTELEFONE: TStringField;
    qryDefaultCELULAR: TStringField;
    qryDefaultEMAIL: TStringField;
    qryDefaultWEBSITE: TStringField;
    qryDefaultDATA_ABERTURA: TDateField;
    qryDefaultCADASTRO_DATA: TSQLTimeStampField;
    qryDefaultALTERACAO_DATA: TSQLTimeStampField;
    qryDefaultRESPONSAVEL: TStringField;
    qryDefaultLOGOTIPO_LOCAL: TStringField;
    qryDefaultCTEOS_ID_SERIE: TIntegerField;
    btnSelecionarEmitente: TJvSpeedButton;
    qryDefaultMDFE_ID_SERIE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionarEmitenteClick(Sender: TObject);
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
  private

      { Private declarations }
  public
      { Public declarations }
  end;

var
  frmEMPRESASmanutencao: TfrmEMPRESASmanutencao;

implementation

{$R *.dfm}

uses
  ufrmEMPRESAScadastro,
  uclassEMPRESA,
  ACBrUtil,
  udtmDefault,System.JSON;


procedure TfrmEMPRESASmanutencao.btnSelecionarEmitenteClick(Sender: TObject);
var
  AMsg: String;
begin
  AMsg := 'O Emitente será: '+sLineBreak +qryDefaultCNPJ.AsString+ sLineBreak+'Continuar?';    //qryDefaultRAZAOSOCIAL

  if Application.MessageBox(PChar(AMsg), 'Aviso!', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;

  oEmpresa.GetEmpresa(qryDefaultID_EMPRESA.AsInteger);

  if oEmpresa.ID > 0 then
  begin
    if oEmpresa.RAZAO_SOCIAL.Trim.Length = 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.CNPJ.Trim.Length = 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.IE.Trim.Length = 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.ENDERECO.Trim.Length = 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.ENDERECO_NUMERO.Trim.Length = 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.BAIRRO.Trim.Length = 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.CEP.Trim.Length = 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.ID_CIDADE_IBGE < 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    if oEmpresa.ID_CIDADE_IBGE < 0 then
    begin
      oEmpresa.Clear;
      raise Exception.Create('Emitente com os dados imcompletos, favor corrigir.');
    end;

    AMsg := 'Emitente iniciado com sucesso !' + sLineBreak + sLineBreak + 'EMITENTE: ' + oEmpresa.RAZAO_SOCIAL;
    Application.MessageBox(PChar(AMsg), 'Aviso!', MB_ICONINFORMATION);
    btnSair.Click;
  end
  else
    Application.MessageBox('Emitente não localizado', 'Aviso!', MB_ICONINFORMATION);

end;

procedure TfrmEMPRESASmanutencao.dtsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  btnSelecionarEmitente.Enabled := Assigned(dtsDefault.DataSet) and (TFDQuery(dtsDefault.DataSet).RecordCount > 0);
end;

procedure TfrmEMPRESASmanutencao.FormCreate(Sender: TObject);
begin
  inherited;
  FormCadastro := TfrmEMPRESAScadastro;

  TabelaNome    := 'EMPRESAS';
  TabelaCpChave := 'ID_EMPRESA';

end;

end.
