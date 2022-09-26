unit uclassEMPRESA;

interface

uses
  System.SysUtils,
  Forms,
  Winapi.Windows,
  Vcl.Controls,
  FireDAC.Stan.Param,
  DB,
  System.Classes;

type
  TEmitenteClass = class
    FOwner: TComponent;
  private
    FID                  : Integer;
    FCNPJ                : String;
    FRAZAO_SOCIAL        : string;
    FFANTASIA            : string;
    FIE                  : string;
    FIE_ST               : string;
    FIM                  : string;
    FCNAE                : string;
    FLCP116              : string;
    FENDERECO            : string;
    FENDERECO_NUMERO     : string;
    FENDERECO_COMPLEMENTO: string;
    FBAIRRO              : string;
    FCEP                 : string;
    FID_CIDADE_IBGE      : Integer;
    FID_UF               : string;
    FID_UF_IBGE          : Integer;
    FWEBSITE             : String;
    FEMAIL               : String;
    FTELEFONE            : string;
    FRESPONSAVEL         : string;
    FLOGOTIPO_LOCAL      : String;
    FCTE_ID_SERIE        : Integer;
    FCTEOS_ID_SERIE      : Integer;
    FMDFE_ID_SERIE       : Integer;
    FNFE_ID_SERIE        : Integer;
    FNFSE_ISS_ALIQUOTA   : Currency;
    FINDICADOR_ATIVIDADE : Integer;
    FREGIME_TRIBUTARIO   : Integer;
    FSIMPLES_ALIQ_CREDITO: Currency;
    function GetID_UF: string;
    function GetID_UF_IBGE: Integer;
  public
    procedure Clear;
    property ID: Integer read FID;
    property CNPJ: string read FCNPJ;
    property RAZAO_SOCIAL: string read FRAZAO_SOCIAL;
    property FANTASIA: string read FFANTASIA;
    property IE: string read FIE;
    property IE_ST: string read FIE_ST;
    property IM: string read FIM;
    property CNAE: string read FCNAE;
    property LCP116: string read FLCP116;
    property ENDERECO: string read FENDERECO;
    property ENDERECO_NUMERO: string read FENDERECO_NUMERO;
    property ENDERECO_COMPLEMENTO: string read FENDERECO_COMPLEMENTO;
    property BAIRRO: string read FBAIRRO;
    property CEP: string read FCEP;
    property ID_CIDADE_IBGE: Integer read FID_CIDADE_IBGE;
    property ID_UF: string read GetID_UF;
    property ID_UF_IBGE: Integer read GetID_UF_IBGE;
    property WEBSITE: string read FWEBSITE;
    property EMAIL: string read FEMAIL;
    property TELEFONE: string read FTELEFONE;
    property RESPONSAVEL: string read FRESPONSAVEL;
    property LOGOTIPO_LOCAL: string read FLOGOTIPO_LOCAL;
    property CTE_ID_SERIE: Integer read FCTE_ID_SERIE;
    property CTEOS_ID_SERIE: Integer read FCTEOS_ID_SERIE;
    property MDFE_ID_SERIE: Integer read FMDFE_ID_SERIE;
    property NFE_ID_SERIE: Integer read FNFE_ID_SERIE write FNFE_ID_SERIE;
    property NFSE_ISS_ALIQUOTA: Currency read FNFSE_ISS_ALIQUOTA;
    property INDICADOR_ATIVIDADE: Integer read FINDICADOR_ATIVIDADE;
    property REGIME_TRIBUTARIO: Integer read FREGIME_TRIBUTARIO;
    property SIMPLES_ALIQ_CREDITO: Currency read FSIMPLES_ALIQ_CREDITO;
    function GetNewID: Integer;
    function GetID: Integer;
    procedure GetEmpresa(AID_EMPRESA: Integer);
  end;

var
  oEmpresa: TEmitenteClass;

implementation

uses
  udtmDefault,
  ACBrUtil;

  { TEmpresaClass }
procedure TEmitenteClass.GetEmpresa(AID_EMPRESA: Integer);
begin
  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;                  //sempre pegar a 1 não interessa quantos for cadastradas
    dtmDefault.qryTmp.SQL.Text := Format('SELECT * FROM EMPRESA WHERE ID_EMPRESA <> %d', [ 0 ]);
    //dtmDefault.qryTmp.SQL.Text := Format('SELECT * FROM EMPRESA WHERE ID_EMPRESA = %d', [ AID_EMPRESA ]);
    dtmDefault.qryTmp.Open;

    if dtmDefault.qryTmp.IsEmpty then
    begin
      FID                   := - 1;
      FCNPJ                 := EmptyStr;
      FRAZAO_SOCIAL         := EmptyStr;
      FFANTASIA             := EmptyStr;
      FIE                   := EmptyStr;
      FIE_ST                := EmptyStr;
      FIM                   := EmptyStr;
      FCNAE                 := EmptyStr;
      FLCP116               := EmptyStr;
      FENDERECO             := EmptyStr;
      FENDERECO_NUMERO      := EmptyStr;
      FENDERECO_COMPLEMENTO := EmptyStr;
      FBAIRRO               := EmptyStr;
      FCEP                  := EmptyStr;
      FID_CIDADE_IBGE       := - 1;
      FID_UF                := EmptyStr;
      FID_UF_IBGE           := 0;
      FWEBSITE              := EmptyStr;
      FEMAIL                := EmptyStr;
      FTELEFONE             := EmptyStr;
      FRESPONSAVEL          := EmptyStr;
      FLOGOTIPO_LOCAL       := EmptyStr;
      FCTE_ID_SERIE         := - 1;
      FCTEOS_ID_SERIE       := - 1;
      FMDFE_ID_SERIE        := - 1;
      FNFE_ID_SERIE         := - 1;
      FNFSE_ISS_ALIQUOTA    := 0.00;
      FINDICADOR_ATIVIDADE  := - 1;
      FREGIME_TRIBUTARIO    := - 1;
      FSIMPLES_ALIQ_CREDITO := 0.00;

      Application.MessageBox('Empresa não Localizada! Processo "Iniciar Empresa", favor informar ao Suporte!', 'Iniciar Empresa', MB_ICONEXCLAMATION);
    end
    else
    begin
      FID                   := dtmDefault.qryTmp.FieldByName('ID_EMPRESA').AsInteger;
      FRAZAO_SOCIAL         := dtmDefault.qryTmp.FieldByName('RAZAOSOCIAL').AsString.Trim;
      FFANTASIA             := dtmDefault.qryTmp.FieldByName('NOMEFANTASIA').AsString.Trim;
      FCNPJ                 := dtmDefault.qryTmp.FieldByName('CNPJ').AsString.Trim;
      FIE                   := dtmDefault.qryTmp.FieldByName('IE_ESTADUAL').AsString.Trim;
      FIE_ST                := dtmDefault.qryTmp.FieldByName('IE_ESTADUAL_ST').AsString.Trim;
      FIM                   := dtmDefault.qryTmp.FieldByName('IE_MUNICIPAL').AsString.Trim;
      FCNAE                 := dtmDefault.qryTmp.FieldByName('CNAE_FISCAL').AsString.Trim;
      FLCP116               := dtmDefault.qryTmp.FieldByName('NFSE_LCP116').AsString.Trim;
      FENDERECO             := dtmDefault.qryTmp.FieldByName('ENDERECO').AsString.Trim;
      FENDERECO_NUMERO      := dtmDefault.qryTmp.FieldByName('NUMERO').AsString.Trim;
      FENDERECO_COMPLEMENTO := dtmDefault.qryTmp.FieldByName('COMPLEMENTO').AsString.Trim;
      FBAIRRO               := dtmDefault.qryTmp.FieldByName('BAIRRO').AsString.Trim;
      FCEP                  := dtmDefault.qryTmp.FieldByName('CEP').AsString.Trim;
      FID_CIDADE_IBGE       := dtmDefault.qryTmp.FieldByName('ID_CIDADES_IBGE').AsInteger;
      FID_UF                := dtmDefault.qryTmp.FieldByName('ID_CIDADES_UF').AsString.Trim;
      FID_UF_IBGE           := GetID_UF_IBGE;
      FWEBSITE              := dtmDefault.qryTmp.FieldByName('WEBSITE').AsString.Trim;
      FEMAIL                := dtmDefault.qryTmp.FieldByName('EMAIL').AsString.Trim;
      FTELEFONE             := dtmDefault.qryTmp.FieldByName('TELEFONE').AsString.Trim;
      FRESPONSAVEL          := dtmDefault.qryTmp.FieldByName('RESPONSAVEL').AsString.Trim;
      FLOGOTIPO_LOCAL       := dtmDefault.qryTmp.FieldByName('LOGOTIPO_LOCAL').AsString.Trim;
      FCTE_ID_SERIE         := dtmDefault.qryTmp.FieldByName('CTE_ID_SERIE').AsInteger;
      FCTEOS_ID_SERIE       := dtmDefault.qryTmp.FieldByName('CTEOS_ID_SERIE').AsInteger;
      FMDFE_ID_SERIE        := dtmDefault.qryTmp.FieldByName('MDFE_ID_SERIE').AsInteger;
      FNFE_ID_SERIE         := dtmDefault.qryTmp.FieldByName('NFE_ID_SERIE').AsInteger;
      FNFSE_ISS_ALIQUOTA    := dtmDefault.qryTmp.FieldByName('NFSE_PCISSQN').AsCurrency;
      FINDICADOR_ATIVIDADE  := dtmDefault.qryTmp.FieldByName('ID_INDICADOR_ATIVIDADE').AsInteger;
      FREGIME_TRIBUTARIO    := dtmDefault.qryTmp.FieldByName('ID_REGIME').AsInteger;
      FSIMPLES_ALIQ_CREDITO := StrToFloatDef(dtmDefault.qryTmp.FieldByName('SIMPLES_ALIQ_CREDITO').AsString, 0.00);
    end;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

procedure TEmitenteClass.Clear;
begin
  FID                   := - 1;
  FCNPJ                 := EmptyStr;
  FRAZAO_SOCIAL         := '';
  FFANTASIA             := EmptyStr;
  FIE                   := EmptyStr;
  FIE_ST                := EmptyStr;
  FIM                   := EmptyStr;
  FCNAE                 := EmptyStr;
  FLCP116               := EmptyStr;
  FENDERECO             := EmptyStr;
  FENDERECO_NUMERO      := EmptyStr;
  FENDERECO_COMPLEMENTO := EmptyStr;
  FBAIRRO               := EmptyStr;
  FCEP                  := EmptyStr;
  FID_CIDADE_IBGE       := - 1;
  FID_UF                := EmptyStr;
  FID_UF_IBGE           := 0;
  FWEBSITE              := EmptyStr;
  FEMAIL                := EmptyStr;
  FTELEFONE             := EmptyStr;
  FRESPONSAVEL          := EmptyStr;
  FLOGOTIPO_LOCAL       := EmptyStr;
  FCTE_ID_SERIE         := - 1;
  FCTEOS_ID_SERIE       := - 1;
  FMDFE_ID_SERIE        := - 1;
  FNFE_ID_SERIE         := - 1;
  FNFSE_ISS_ALIQUOTA    := 0.00;
  FINDICADOR_ATIVIDADE  := - 1;
  FREGIME_TRIBUTARIO    := - 1;
  FSIMPLES_ALIQ_CREDITO := 0.00;
end;

function TEmitenteClass.GetID: Integer;
begin

    {todo: ajustar}
  if FID < 1 then
    FID := 1;

  if FID < 1 then
    raise Exception.Create('Erro, empresa não foi selecionada.');

  Result := FID;
end;

function TEmitenteClass.GetID_UF: string;
begin
  Result := FID_UF;

  if Result.Trim.Length = 0 then
    raise Exception.Create('Erro!!! Não foi possível estabeler a UF do Emissor');
end;

function TEmitenteClass.GetID_UF_IBGE: Integer;
begin
  Result := 0;

  try
    dtmDefault.qryTmp1.Close;
    dtmDefault.qryTmp1.SQL.Clear;
    dtmDefault.qryTmp1.SQL.Text          := 'select MAX(CODIBGE) from CIDADES_UF where ID_CIDADES_UF = :ID_CIDADES_UF';
    dtmDefault.qryTmp1.Params[ 0 ].Value := GetID_UF;
    dtmDefault.qryTmp1.Open;

    if Not dtmDefault.qryTmp1.IsEmpty then
      Result := dtmDefault.qryTmp1.Fields[ 0 ].AsInteger;
  finally
    dtmDefault.qryTmp1.Close;
  end;

  FID_UF_IBGE := Result;
end;

function TEmitenteClass.GetNewID: Integer;
begin
  Result := 1;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_EMPRESA) as ID from EMPRESA';
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[ 0 ].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;
end;

initialization

oEmpresa := TEmitenteClass.Create;
oEmpresa.Clear;

finalization

FreeAndNil(oEmpresa);

end.
