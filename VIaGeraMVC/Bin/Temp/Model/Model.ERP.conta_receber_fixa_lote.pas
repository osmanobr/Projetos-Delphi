unit Model.ERP.conta_receber_fixa_comissao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceberfixacomissao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresas : Integer;
    Fgerado : Boolean;
    Fenviado : Boolean;
    Fdatahora_gerado : indefinido;
    Fdatahora_enviado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresas(const Value: Integer);
    procedure Setgerado(const Value: Boolean);
    procedure Setenviado(const Value: Boolean);
    procedure Setdatahora_gerado(const Value: indefinido);
    procedure Setdatahora_enviado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresas     : Integer read Fid_empresas write Setid_empresas;
    property gerado     : Boolean read Fgerado write Setgerado;
    property enviado     : Boolean read Fenviado write Setenviado;
    property datahora_gerado     : indefinido read Fdatahora_gerado write Setdatahora_gerado;
    property datahora_enviado     : indefinido read Fdatahora_enviado write Setdatahora_enviado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontareceberfixacomissao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceberfixacomissao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceberfixacomissao(Model).id;
Self.Fid_empresas         := TModelERPcontareceberfixacomissao(Model).id_empresas;
Self.Fgerado         := TModelERPcontareceberfixacomissao(Model).gerado;
Self.Fenviado         := TModelERPcontareceberfixacomissao(Model).enviado;
Self.Fdatahora_gerado         := TModelERPcontareceberfixacomissao(Model).datahora_gerado;
Self.Fdatahora_enviado         := TModelERPcontareceberfixacomissao(Model).datahora_enviado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceberfixacomissao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceberfixacomissao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceberfixacomissao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceberfixacomissao.Setid_empresas(const Value: Boolean);   
begin                
  Fid_empresas := Value;   
end;                 

procedure TModelERPcontareceberfixacomissao.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPcontareceberfixacomissao.Setenviado(const Value: Boolean);   
begin                
  Fenviado := Value;   
end;                 

procedure TModelERPcontareceberfixacomissao.Setdatahora_gerado(const Value: Boolean);   
begin                
  Fdatahora_gerado := Value;   
end;                 

procedure TModelERPcontareceberfixacomissao.Setdatahora_enviado(const Value: Boolean);   
begin                
  Fdatahora_enviado := Value;   
end;                 


end.
