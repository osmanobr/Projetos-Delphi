unit Model.ERP.import_produtos_grupos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportprodutosgrupos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fcomissao_avista : Double;
    Fcomissao_aprazo : Double;
    Fcomissao_servico : Double;
    Fdesconto : Double;
    Fobservacao : indefinido;
    Fsenha : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setcomissao_avista(const Value: Double);
    procedure Setcomissao_aprazo(const Value: Double);
    procedure Setcomissao_servico(const Value: Double);
    procedure Setdesconto(const Value: Double);
    procedure Setobservacao(const Value: indefinido);
    procedure Setsenha(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property comissao_avista     : Double read Fcomissao_avista write Setcomissao_avista;
    property comissao_aprazo     : Double read Fcomissao_aprazo write Setcomissao_aprazo;
    property comissao_servico     : Double read Fcomissao_servico write Setcomissao_servico;
    property desconto     : Double read Fdesconto write Setdesconto;
    property observacao     : indefinido read Fobservacao write Setobservacao;
    property senha     : WideString read Fsenha write Setsenha;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportprodutosgrupos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportprodutosgrupos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportprodutosgrupos(Model).id;
Self.Fid_empresa         := TModelERPimportprodutosgrupos(Model).id_empresa;
Self.Fnome         := TModelERPimportprodutosgrupos(Model).nome;
Self.Fcomissao_avista         := TModelERPimportprodutosgrupos(Model).comissao_avista;
Self.Fcomissao_aprazo         := TModelERPimportprodutosgrupos(Model).comissao_aprazo;
Self.Fcomissao_servico         := TModelERPimportprodutosgrupos(Model).comissao_servico;
Self.Fdesconto         := TModelERPimportprodutosgrupos(Model).desconto;
Self.Fobservacao         := TModelERPimportprodutosgrupos(Model).observacao;
Self.Fsenha         := TModelERPimportprodutosgrupos(Model).senha;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportprodutosgrupos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportprodutosgrupos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportprodutosgrupos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setcomissao_avista(const Value: Boolean);   
begin                
  Fcomissao_avista := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setcomissao_aprazo(const Value: Boolean);   
begin                
  Fcomissao_aprazo := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setcomissao_servico(const Value: Boolean);   
begin                
  Fcomissao_servico := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPimportprodutosgrupos.Setsenha(const Value: Boolean);   
begin                
  Fsenha := Value;   
end;                 


end.
