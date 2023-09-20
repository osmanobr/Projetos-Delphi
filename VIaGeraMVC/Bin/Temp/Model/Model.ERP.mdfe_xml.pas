unit Model.ERP.mdfe_documentos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmdfedocumentos = class(TModelBase)

private
    Fid : Integer;
    Fserie : Integer;
    Fid_venda : Integer;
    Fnum_mdfe : WideString;
    Fdata_emissao : indefinido;
    Fuf_ini : WideString;
    Fuf_per : WideString;
    Fuf_fim : WideString;
    Fmdfe_chave : WideString;
    Fmdfe_protocolo : WideString;
    Fsituacao : WideString;
    Fxml : indefinido;
    Fcontingencia : Boolean;
    Fmdfe_protocolo_canc : WideString;
    Fmdfe_protocolo_ence : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_empresa : Integer;
    Fplaca : WideString;
    Fativo : indefinido;
    Fxml_encerramento : indefinido;
    Ftipo_carga : WideString;
    Fprod_predominante : WideString;
    Fean : WideString;
    Fncm : WideString;

    procedure Setid(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setnum_mdfe(const Value: WideString);
    procedure Setdata_emissao(const Value: indefinido);
    procedure Setuf_ini(const Value: WideString);
    procedure Setuf_per(const Value: WideString);
    procedure Setuf_fim(const Value: WideString);
    procedure Setmdfe_chave(const Value: WideString);
    procedure Setmdfe_protocolo(const Value: WideString);
    procedure Setsituacao(const Value: WideString);
    procedure Setxml(const Value: indefinido);
    procedure Setcontingencia(const Value: Boolean);
    procedure Setmdfe_protocolo_canc(const Value: WideString);
    procedure Setmdfe_protocolo_ence(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_empresa(const Value: Integer);
    procedure Setplaca(const Value: WideString);
    procedure Setativo(const Value: indefinido);
    procedure Setxml_encerramento(const Value: indefinido);
    procedure Settipo_carga(const Value: WideString);
    procedure Setprod_predominante(const Value: WideString);
    procedure Setean(const Value: WideString);
    procedure Setncm(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property serie     : Integer read Fserie write Setserie;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property num_mdfe     : WideString read Fnum_mdfe write Setnum_mdfe;
    property data_emissao     : indefinido read Fdata_emissao write Setdata_emissao;
    property uf_ini     : WideString read Fuf_ini write Setuf_ini;
    property uf_per     : WideString read Fuf_per write Setuf_per;
    property uf_fim     : WideString read Fuf_fim write Setuf_fim;
    property mdfe_chave     : WideString read Fmdfe_chave write Setmdfe_chave;
    property mdfe_protocolo     : WideString read Fmdfe_protocolo write Setmdfe_protocolo;
    property situacao     : WideString read Fsituacao write Setsituacao;
    property xml     : indefinido read Fxml write Setxml;
    property contingencia     : Boolean read Fcontingencia write Setcontingencia;
    property mdfe_protocolo_canc     : WideString read Fmdfe_protocolo_canc write Setmdfe_protocolo_canc;
    property mdfe_protocolo_ence     : WideString read Fmdfe_protocolo_ence write Setmdfe_protocolo_ence;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property placa     : WideString read Fplaca write Setplaca;
    property ativo     : indefinido read Fativo write Setativo;
    property xml_encerramento     : indefinido read Fxml_encerramento write Setxml_encerramento;
    property tipo_carga     : WideString read Ftipo_carga write Settipo_carga;
    property prod_predominante     : WideString read Fprod_predominante write Setprod_predominante;
    property ean     : WideString read Fean write Setean;
    property ncm     : WideString read Fncm write Setncm;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmdfedocumentos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmdfedocumentos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmdfedocumentos(Model).id;
Self.Fserie         := TModelERPmdfedocumentos(Model).serie;
Self.Fid_venda         := TModelERPmdfedocumentos(Model).id_venda;
Self.Fnum_mdfe         := TModelERPmdfedocumentos(Model).num_mdfe;
Self.Fdata_emissao         := TModelERPmdfedocumentos(Model).data_emissao;
Self.Fuf_ini         := TModelERPmdfedocumentos(Model).uf_ini;
Self.Fuf_per         := TModelERPmdfedocumentos(Model).uf_per;
Self.Fuf_fim         := TModelERPmdfedocumentos(Model).uf_fim;
Self.Fmdfe_chave         := TModelERPmdfedocumentos(Model).mdfe_chave;
Self.Fmdfe_protocolo         := TModelERPmdfedocumentos(Model).mdfe_protocolo;
Self.Fsituacao         := TModelERPmdfedocumentos(Model).situacao;
Self.Fxml         := TModelERPmdfedocumentos(Model).xml;
Self.Fcontingencia         := TModelERPmdfedocumentos(Model).contingencia;
Self.Fmdfe_protocolo_canc         := TModelERPmdfedocumentos(Model).mdfe_protocolo_canc;
Self.Fmdfe_protocolo_ence         := TModelERPmdfedocumentos(Model).mdfe_protocolo_ence;
Self.Fid_cliente         := TModelERPmdfedocumentos(Model).id_cliente;
Self.Fnome_cliente         := TModelERPmdfedocumentos(Model).nome_cliente;
Self.Fid_empresa         := TModelERPmdfedocumentos(Model).id_empresa;
Self.Fplaca         := TModelERPmdfedocumentos(Model).placa;
Self.Fativo         := TModelERPmdfedocumentos(Model).ativo;
Self.Fxml_encerramento         := TModelERPmdfedocumentos(Model).xml_encerramento;
Self.Ftipo_carga         := TModelERPmdfedocumentos(Model).tipo_carga;
Self.Fprod_predominante         := TModelERPmdfedocumentos(Model).prod_predominante;
Self.Fean         := TModelERPmdfedocumentos(Model).ean;
Self.Fncm         := TModelERPmdfedocumentos(Model).ncm;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmdfedocumentos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmdfedocumentos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmdfedocumentos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setnum_mdfe(const Value: Boolean);   
begin                
  Fnum_mdfe := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setuf_ini(const Value: Boolean);   
begin                
  Fuf_ini := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setuf_per(const Value: Boolean);   
begin                
  Fuf_per := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setuf_fim(const Value: Boolean);   
begin                
  Fuf_fim := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setmdfe_chave(const Value: Boolean);   
begin                
  Fmdfe_chave := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setmdfe_protocolo(const Value: Boolean);   
begin                
  Fmdfe_protocolo := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setxml(const Value: Boolean);   
begin                
  Fxml := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setcontingencia(const Value: Boolean);   
begin                
  Fcontingencia := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setmdfe_protocolo_canc(const Value: Boolean);   
begin                
  Fmdfe_protocolo_canc := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setmdfe_protocolo_ence(const Value: Boolean);   
begin                
  Fmdfe_protocolo_ence := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setxml_encerramento(const Value: Boolean);   
begin                
  Fxml_encerramento := Value;   
end;                 

procedure TModelERPmdfedocumentos.Settipo_carga(const Value: Boolean);   
begin                
  Ftipo_carga := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setprod_predominante(const Value: Boolean);   
begin                
  Fprod_predominante := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPmdfedocumentos.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 


end.
