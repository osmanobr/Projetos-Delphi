unit uclassCTe;

interface

uses
  FireDAC.Comp.Client,
  Forms,
  SysUtils,
  DB,
  system.Classes,
  FireDAC.Stan.Param;

type
  TCTe = class(TObject)
  private
  public
    function GetNEW_ID_CTe: Integer;
    function GetNEW_ID_CTE_EVENTO(vID, vID_SERIE: Integer): Integer;
    function GetNEW_ID_CTE_EVENTO_SEQUENCIA(vID, vID_SERIE: Integer; vTipo: String): Integer;
    function GetNEW_ID_INITILIZACAO: Integer;
    function CheckXMLvalido(vDataHora: TDateTime; vXML_Chave: String; vXML_STRING: WideString; vID, vID_SERIE: Integer): Boolean;
  end;

var
  oCTe: TCTe;

implementation

uses
  udtmDefault,
  uclassEMPRESA,
  udtmCTe;

  { TCTEos }

function TCTe.CheckXMLvalido(vDataHora: TDateTime; vXML_Chave: String; vXML_STRING: WideString; vID, vID_SERIE: Integer): Boolean;
var
  vXML_Arquivo: String;
begin
  Result := False;

  dtmCTe.ACBrCTe.Conhecimentos.Clear;

  if Trim(vXML_STRING) <> '' then
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(vXML_STRING);

  if (dtmCTe.ACBrCTe.Conhecimentos.Count = 0) then
  begin
    vXML_Arquivo := dtmCTe.ACBrCTe.Configuracoes.Arquivos.PathCTe + oEmpresa.CNPJ.Trim + '\CTe\' + FormatDateTime('YYYMM', vDataHora) + '\CTe\' + vXML_Chave.Trim + '-cte.xml';

    if FileExists(vXML_Arquivo) then
    begin
      dtmCTe.ACBrCTe.Conhecimentos.Clear;
      dtmCTe.ACBrCTe.Conhecimentos.LoadFromFile(vXML_Arquivo);
    end;
  end;

  if (dtmCTe.ACBrCTe.Conhecimentos.Count > 0) and (dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.dhRecbto > 0) then
  begin
      //grava no banco o xml para pós consulta
    dtmCTe.updXMLvalidado.ParamByName('ID_CTE').asInteger := vID;
    dtmCTe.updXMLvalidado.ParamByName('ID_SERIE').asInteger := vID_SERIE;
    dtmCTe.updXMLvalidado.ParamByName('ID_EMPRESA').asInteger := oEmpresa.ID;
    dtmCTe.updXMLvalidado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].XML;
    dtmCTe.updXMLvalidado.ExecSQL;

    dtmDefault.cnx_BD.CommitRetaining;

    Result := True;
  end;
end;

function TCTe.GetNEW_ID_CTe: Integer;
var
  vSQL: String;
begin
  try
    vSQL := 'SELECT MAX(ID_CTE) FROM CTE WHERE ID_EMPRESA = %d AND ID_SERIE = %d;';

    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.Open(Format(vSQL, [ oEmpresa.ID, oEmpresa.CTe_ID_SERIE ]));

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
      Result := dtmDefault.qryTmp.Fields[ 0 ].asInteger + 1;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TCTe.GetNEW_ID_CTE_EVENTO(vID, vID_SERIE: Integer): Integer;
var
  vSQL: String;
begin
  try
    vSQL := 'SELECT MAX(ID_EVENTO) FROM CTE_EVENTO WHERE ID_EMPRESA = %d AND ID_CTE = %d AND ID_SERIE = %d';

    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.Open(Format(vSQL, [ oEmpresa.ID, vID, vID_SERIE ]));

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
      Result := dtmDefault.qryTmp.Fields[ 0 ].asInteger + 1;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TCTe.GetNEW_ID_CTE_EVENTO_SEQUENCIA(vID, vID_SERIE: Integer; vTipo: String): Integer;
var
  vSQL: String;
begin
  try
    vSQL := 'SELECT MAX(ID_SEQUENCIA) FROM CTE_EVENTO WHERE ID_EMPRESA = %d AND ID_CTE = %d AND ID_SERIE = %d AND TIPO = %s';

    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.Open(Format(vSQL, [ oEmpresa.ID, vID, vID_SERIE, vTipo.QuotedString ]));

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
      Result := dtmDefault.qryTmp.Fields[ 0 ].asInteger + 1;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TCTe.GetNEW_ID_INITILIZACAO: Integer;
var
  vSQL: String;
begin
  try
    vSQL := 'SELECT MAX(ID_EVENTO) FROM CTE_INUTILIZACAO WHERE ID_EMPRESA = %d;';

    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.Open(Format(vSQL, [ oEmpresa.ID ]));

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
      Result := dtmDefault.qryTmp.Fields[ 0 ].asInteger + 1;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

initialization

oCTe := TCTe.Create;

finalization

FreeAndNil(oCTe);

end.
