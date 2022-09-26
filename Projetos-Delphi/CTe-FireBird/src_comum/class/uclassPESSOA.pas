unit uclassPESSOA;

interface

uses
  FireDAC.Comp.Client,
  Forms,
  SysUtils,
  Data.DB,
  System.Classes,
  uclassEMPRESA;

type
  TPESSOAINFORMACOES = RECORD
  public
    ID_PESSOA, ID_CIDADES_IBGE, ID_TIPO_CONTRIBUITE: Integer;
    RAZAOSOCIAL, NOMEFANTASIA, CPF_CNPJ, IE_RG, IM, SUFRAMA, EMAIL, ENDERECO, NUMERO, BAIRRO, COMPLEMENTO, CEP, ID_CIDADES_UF, CELULAR, TELEFONE, ID_SITUACAO: String end;

    TCPFCONSULTA = RECORD CPF: STRING;
    NOME                     : STRING;
    NASCIMENTO               : TDATE;
    SITUACAO                 : STRING;
    DIGITOVERIFICADOR        : STRING;
    EMISSAOCOMPROVANTE       : STRING;
    DATAINSCRICAO            : STRING;
    CODIGOCONTROLE           : STRING;
    PROCEDURE CLEAR;
  END;

  TCNPJCONSULTA = RECORD
    CNPJ: STRING;
    TIPO: STRING;
    RAZAOSOCIAL: STRING;
    ABERTURA: STRING;
    NOMEFANTASIA: STRING;
    ENDERECO: STRING;
    NUMERO: STRING;
    BAIRRO: STRING;
    COMPLEMENTO: STRING;
    CIDADE_IBGE: Integer;
    UF: STRING;
    CEP: STRING;
    SITUACAO: STRING;
    CNAE: STRING;
    CNAE2: TSTRINGLIST;
    EMAIL: STRING;
    TELEFONE: STRING;

    PROCEDURE CLEAR;
  END;

  TPessoa = class(TObject)
  private
    fInformacoes: TPESSOAINFORMACOES;
  public
    function Procurar(AID_Pessoa: Integer): TPESSOAINFORMACOES;
    function GetNewID: Integer;
  end;

var
  oPessoa: TPessoa;

implementation

uses
  udtmDefault;

  { TCliente }

function TPessoa.Procurar(AID_Pessoa: Integer): TPESSOAINFORMACOES;
begin
  fInformacoes.ID_PESSOA           := - 1;
  fInformacoes.ID_TIPO_CONTRIBUITE := - 1;
  fInformacoes.RAZAOSOCIAL         := EmptyStr;
  fInformacoes.NOMEFANTASIA        := EmptyStr;
  fInformacoes.CPF_CNPJ            := EmptyStr;
  fInformacoes.IE_RG               := EmptyStr;
  fInformacoes.IM                  := EmptyStr;
  fInformacoes.SUFRAMA             := EmptyStr;
  fInformacoes.EMAIL               := EmptyStr;
  fInformacoes.ENDERECO            := EmptyStr;
  fInformacoes.NUMERO              := EmptyStr;
  fInformacoes.BAIRRO              := EmptyStr;
  fInformacoes.COMPLEMENTO         := EmptyStr;
  fInformacoes.CEP                 := EmptyStr;
  fInformacoes.ID_CIDADES_UF       := EmptyStr;
  fInformacoes.ID_CIDADES_IBGE     := - 1;
  fInformacoes.CELULAR             := EmptyStr;
  fInformacoes.TELEFONE            := EmptyStr;
  fInformacoes.ID_SITUACAO         := EmptyStr;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.CLEAR;
    dtmDefault.qryTmp.SQL.Text := 'SELECT * FROM PESSOA WHERE ID_PESSOA = ' + AID_Pessoa.ToString;
    dtmDefault.qryTmp.Open;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      fInformacoes.ID_PESSOA           := dtmDefault.qryTmp.FieldByName('ID_CLIENTE').AsInteger;
      fInformacoes.ID_TIPO_CONTRIBUITE := dtmDefault.qryTmp.FieldByName('ID_TIPO_CONTRIBUINTE').AsInteger;
      fInformacoes.RAZAOSOCIAL         := dtmDefault.qryTmp.FieldByName('RAZAOSOCIAL').AsString.Trim;
      fInformacoes.NOMEFANTASIA        := dtmDefault.qryTmp.FieldByName('NOMEFANTASIA').AsString.Trim;
      fInformacoes.CPF_CNPJ            := dtmDefault.qryTmp.FieldByName('CPF_CNPJ').AsString.Trim;
      fInformacoes.IE_RG               := dtmDefault.qryTmp.FieldByName('IE_RG').AsString.Trim;
      fInformacoes.IM                  := EmptyStr;
      fInformacoes.SUFRAMA             := EmptyStr;
      fInformacoes.EMAIL               := dtmDefault.qryTmp.FieldByName('EMAIL').AsString.Trim;
      fInformacoes.ENDERECO            := dtmDefault.qryTmp.FieldByName('ENDERECO').AsString.Trim;
      fInformacoes.NUMERO              := dtmDefault.qryTmp.FieldByName('NUMERO').AsString.Trim;
      fInformacoes.BAIRRO              := dtmDefault.qryTmp.FieldByName('BAIRRO').AsString.Trim;
      fInformacoes.COMPLEMENTO         := dtmDefault.qryTmp.FieldByName('COMPLEMENTO').AsString.Trim;
      fInformacoes.CEP                 := dtmDefault.qryTmp.FieldByName('CEP').AsString.Trim;
      fInformacoes.ID_CIDADES_UF       := dtmDefault.qryTmp.FieldByName('ID_CIDADES_UF').AsString.Trim;
      fInformacoes.ID_CIDADES_IBGE     := dtmDefault.qryTmp.FieldByName('ID_CIDADES_IBGE').AsInteger;
      fInformacoes.CELULAR             := dtmDefault.qryTmp.FieldByName('CELULAR').AsString.Trim;
      fInformacoes.TELEFONE            := dtmDefault.qryTmp.FieldByName('TELEFONEFIXO').AsString.Trim;
      fInformacoes.ID_SITUACAO         := dtmDefault.qryTmp.FieldByName('ID_SITUACAO').AsString;
    end;

    Result := fInformacoes;
  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TPessoa.GetNewID: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.CLEAR;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_PESSOA) as ID from PESSOA WHERE ID_EMPRESA = ' + oEmpresa.ID.ToString;
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[ 0 ].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do identificador do Cliente!');
end;

  { TCPFConsulta }

procedure TCPFCONSULTA.CLEAR;
begin
  CPF                := EmptyStr;
  NOME               := EmptyStr;
  NASCIMENTO         := 0;
  SITUACAO           := EmptyStr;
  DIGITOVERIFICADOR  := EmptyStr;
  EMISSAOCOMPROVANTE := EmptyStr;
  DATAINSCRICAO      := EmptyStr;
  CODIGOCONTROLE     := EmptyStr;
end;

  { TCNPJConsulta }

procedure TCNPJCONSULTA.CLEAR;
begin
  TIPO         := EmptyStr;
  RAZAOSOCIAL  := EmptyStr;
  ABERTURA     := EmptyStr;
  NOMEFANTASIA := EmptyStr;
  ENDERECO     := EmptyStr;
  NUMERO       := EmptyStr;
  BAIRRO       := EmptyStr;
  COMPLEMENTO  := EmptyStr;
  CIDADE_IBGE  := - 1;
  UF           := EmptyStr;
  CEP          := EmptyStr;
  SITUACAO     := EmptyStr;
  CNAE         := EmptyStr;
  if Assigned(CNAE2) then
    CNAE2.CLEAR;
  EMAIL    := EmptyStr;
  TELEFONE := EmptyStr;
end;

initialization

oPessoa := TPessoa.Create;

finalization

FreeAndNil(oPessoa);

end.
