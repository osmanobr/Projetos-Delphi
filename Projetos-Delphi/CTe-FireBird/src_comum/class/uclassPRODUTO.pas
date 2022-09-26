unit uclassPRODUTO;

interface

uses
  FireDAC.Comp.Client,
  Forms,
  SysUtils,
  Data.DB,
  System.Classes;

type
  TProduto = class(TObject)
  private
  public
    function GetNewID: Integer;
    function GetNewID_CODIGO: Integer;
  end;

var
  oProduto: TProduto;

implementation

uses
  udtmDefault,
  uclassEMPRESA;

  { TProduto }

function TProduto.GetNewID: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_PRODUTO) from PRODUTO';
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[ 0 ].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do identificador do Produto!');
end;

function TProduto.GetNewID_CODIGO: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_CODIGO) from PRODUTO WHERE ID_EMPRESA = ' + oEmpresa.ID.ToString;
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[ 0 ].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do identificador do Produto!');
end;

initialization

oProduto := TProduto.Create;

finalization

FreeAndNil(oProduto);

end.
