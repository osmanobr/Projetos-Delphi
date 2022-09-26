unit uclassTRANSPORTADORA;

interface

uses
  FireDAC.Comp.Client,
  Forms,
  SysUtils,
  Data.DB,
  System.Classes,
  uclassEMPRESA;

type
  TTRANSINFORMACOES = RECORD
  public
    ID_TRANSPORTADORA, ID_CIDADES_IBGE: Integer;
    RAZAOSOCIAL, NOMEFANTASIA, CPF_CNPJ, IE, EMAIL, ENDERECO, NUMERO, BAIRRO, COMPLEMENTO, CEP, CIDADE, ID_CIDADES_UF, TELEFONE, ID_SITUACAO: String end;

    TTransportadora = class(TObject)private public FInformacoes: TTRANSINFORMACOES;
    procedure Procurar(AID_TRANSPORTADORA: Integer);
    function GetNewID: Integer;
    function GetNewCODIGO: Integer;
  end;

var
  oTRANS: TTransportadora;

implementation

uses
  udtmDefault;

  { TCliente }

procedure TTransportadora.Procurar(AID_TRANSPORTADORA: Integer);
begin
  FInformacoes.ID_TRANSPORTADORA := - 1;
  FInformacoes.RAZAOSOCIAL       := EmptyStr;
  FInformacoes.NOMEFANTASIA      := EmptyStr;
  FInformacoes.CPF_CNPJ          := EmptyStr;
  FInformacoes.IE                := EmptyStr;
  FInformacoes.EMAIL             := EmptyStr;
  FInformacoes.ENDERECO          := EmptyStr;
  FInformacoes.NUMERO            := EmptyStr;
  FInformacoes.BAIRRO            := EmptyStr;
  FInformacoes.COMPLEMENTO       := EmptyStr;
  FInformacoes.CEP               := EmptyStr;
  FInformacoes.CIDADE            := EmptyStr;
  FInformacoes.ID_CIDADES_UF     := EmptyStr;
  FInformacoes.ID_CIDADES_IBGE   := - 1;
  FInformacoes.TELEFONE          := EmptyStr;
  FInformacoes.ID_SITUACAO       := EmptyStr;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text :=
      'SELECT TRANSPORTADORA.*, CIDADES.DESCRICAO AS CIDADE FROM TRANSPORTADORA LEFT JOIN CIDADES ON TRANSPORTADORA.ID_CIDADES_IBGE = CIDADES.ID_CIDADES_IBGE WHERE ID_TRANSPORTADORA = '
      + AID_TRANSPORTADORA.ToString;
    dtmDefault.qryTmp.Open;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      FInformacoes.ID_TRANSPORTADORA := dtmDefault.qryTmp.FieldByName('ID_TRANSPORTADORA').AsInteger;
      FInformacoes.RAZAOSOCIAL       := dtmDefault.qryTmp.FieldByName('RAZAOSOCIAL').AsString.Trim;
      FInformacoes.NOMEFANTASIA      := dtmDefault.qryTmp.FieldByName('NOMEFANTASIA').AsString.Trim;
      FInformacoes.CPF_CNPJ          := dtmDefault.qryTmp.FieldByName('CNPJ').AsString.Trim;
      FInformacoes.IE                := dtmDefault.qryTmp.FieldByName('IE').AsString.Trim;
      FInformacoes.EMAIL             := dtmDefault.qryTmp.FieldByName('EMAIL').AsString.Trim;
      FInformacoes.ENDERECO          := dtmDefault.qryTmp.FieldByName('ENDERECO').AsString.Trim;
      FInformacoes.NUMERO            := dtmDefault.qryTmp.FieldByName('NUMERO').AsString.Trim;
      FInformacoes.BAIRRO            := dtmDefault.qryTmp.FieldByName('BAIRRO').AsString.Trim;
      FInformacoes.COMPLEMENTO       := dtmDefault.qryTmp.FieldByName('COMPLEMENTO').AsString.Trim;
      FInformacoes.CEP               := dtmDefault.qryTmp.FieldByName('CEP').AsString.Trim;
      FInformacoes.CIDADE            := dtmDefault.qryTmp.FieldByName('CIDADE').AsString.Trim;
      FInformacoes.ID_CIDADES_UF     := dtmDefault.qryTmp.FieldByName('ID_CIDADES_UF').AsString.Trim;
      FInformacoes.ID_CIDADES_IBGE   := dtmDefault.qryTmp.FieldByName('ID_CIDADES_IBGE').AsInteger;
      FInformacoes.TELEFONE          := dtmDefault.qryTmp.FieldByName('TELEFONEFIXO').AsString.Trim;
      FInformacoes.ID_SITUACAO       := dtmDefault.qryTmp.FieldByName('ID_ATIVO').AsString;
    end;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TTransportadora.GetNewCODIGO: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_CODIGO) as ID from TRANSPORTADORA WHERE ID_EMPRESA = ' + oEmpresa.ID.ToString;
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[ 0 ].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do codigo da Empresa!');
end;

function TTransportadora.GetNewID: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_TRANSPORTADORA) as ID from TRANSPORTADORA';
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[ 0 ].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do identificador da Empresa!');
end;

initialization

oTRANS := TTransportadora.Create;

finalization

FreeAndNil(oTRANS);

end.
