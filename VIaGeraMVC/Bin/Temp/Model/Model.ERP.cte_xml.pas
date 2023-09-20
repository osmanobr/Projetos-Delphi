unit Model.ERP.cte_documentos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPctedocumentos = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fcte : WideString;
    Fcte_chave : WideString;
    Fcte_chave_cntg : WideString;
    Fcte_protocolo : WideString;
    Fxml_ret : indefinido;
    Fxml : indefinido;
    Fobs : indefinido;
    Fxml_off : indefinido;
    Fcontingencia : Boolean;
    Fassociacao : Boolean;
    Fcte_protocolo_canc : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setcte(const Value: WideString);
    procedure Setcte_chave(const Value: WideString);
    procedure Setcte_chave_cntg(const Value: WideString);
    procedure Setcte_protocolo(const Value: WideString);
    procedure Setxml_ret(const Value: indefinido);
    procedure Setxml(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setxml_off(const Value: indefinido);
    procedure Setcontingencia(const Value: Boolean);
    procedure Setassociacao(const Value: Boolean);
    procedure Setcte_protocolo_canc(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property cte     : WideString read Fcte write Setcte;
    property cte_chave     : WideString read Fcte_chave write Setcte_chave;
    property cte_chave_cntg     : WideString read Fcte_chave_cntg write Setcte_chave_cntg;
    property cte_protocolo     : WideString read Fcte_protocolo write Setcte_protocolo;
    property xml_ret     : indefinido read Fxml_ret write Setxml_ret;
    property xml     : indefinido read Fxml write Setxml;
    property obs     : indefinido read Fobs write Setobs;
    property xml_off     : indefinido read Fxml_off write Setxml_off;
    property contingencia     : Boolean read Fcontingencia write Setcontingencia;
    property associacao     : Boolean read Fassociacao write Setassociacao;
    property cte_protocolo_canc     : WideString read Fcte_protocolo_canc write Setcte_protocolo_canc;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPctedocumentos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPctedocumentos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPctedocumentos(Model).id;
Self.Fid_venda         := TModelERPctedocumentos(Model).id_venda;
Self.Fid_movimento         := TModelERPctedocumentos(Model).id_movimento;
Self.Fid_cupons         := TModelERPctedocumentos(Model).id_cupons;
Self.Fcte         := TModelERPctedocumentos(Model).cte;
Self.Fcte_chave         := TModelERPctedocumentos(Model).cte_chave;
Self.Fcte_chave_cntg         := TModelERPctedocumentos(Model).cte_chave_cntg;
Self.Fcte_protocolo         := TModelERPctedocumentos(Model).cte_protocolo;
Self.Fxml_ret         := TModelERPctedocumentos(Model).xml_ret;
Self.Fxml         := TModelERPctedocumentos(Model).xml;
Self.Fobs         := TModelERPctedocumentos(Model).obs;
Self.Fxml_off         := TModelERPctedocumentos(Model).xml_off;
Self.Fcontingencia         := TModelERPctedocumentos(Model).contingencia;
Self.Fassociacao         := TModelERPctedocumentos(Model).associacao;
Self.Fcte_protocolo_canc         := TModelERPctedocumentos(Model).cte_protocolo_canc;
Self.Fid_cliente         := TModelERPctedocumentos(Model).id_cliente;
Self.Fnome_cliente         := TModelERPctedocumentos(Model).nome_cliente;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPctedocumentos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPctedocumentos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPctedocumentos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPctedocumentos.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPctedocumentos.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPctedocumentos.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPctedocumentos.Setcte(const Value: Boolean);   
begin                
  Fcte := Value;   
end;                 

procedure TModelERPctedocumentos.Setcte_chave(const Value: Boolean);   
begin                
  Fcte_chave := Value;   
end;                 

procedure TModelERPctedocumentos.Setcte_chave_cntg(const Value: Boolean);   
begin                
  Fcte_chave_cntg := Value;   
end;                 

procedure TModelERPctedocumentos.Setcte_protocolo(const Value: Boolean);   
begin                
  Fcte_protocolo := Value;   
end;                 

procedure TModelERPctedocumentos.Setxml_ret(const Value: Boolean);   
begin                
  Fxml_ret := Value;   
end;                 

procedure TModelERPctedocumentos.Setxml(const Value: Boolean);   
begin                
  Fxml := Value;   
end;                 

procedure TModelERPctedocumentos.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPctedocumentos.Setxml_off(const Value: Boolean);   
begin                
  Fxml_off := Value;   
end;                 

procedure TModelERPctedocumentos.Setcontingencia(const Value: Boolean);   
begin                
  Fcontingencia := Value;   
end;                 

procedure TModelERPctedocumentos.Setassociacao(const Value: Boolean);   
begin                
  Fassociacao := Value;   
end;                 

procedure TModelERPctedocumentos.Setcte_protocolo_canc(const Value: Boolean);   
begin                
  Fcte_protocolo_canc := Value;   
end;                 

procedure TModelERPctedocumentos.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPctedocumentos.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 


end.
