unit Model.ERP.clientes_alterados;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientesalterados = class(TModelBase)

private
    Fid : Integer;
    Fid_controle_proprio : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fdata_venda : TDateTime;
    Fvalidade : Integer;
    Fdata_vencimento : TDateTime;
    Fid_venda : Integer;
    Fid_maquina : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_controle_proprio(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setdata_venda(const Value: TDateTime);
    procedure Setvalidade(const Value: Integer);
    procedure Setdata_vencimento(const Value: TDateTime);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_maquina(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_controle_proprio     : Integer read Fid_controle_proprio write Setid_controle_proprio;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property data_venda     : TDateTime read Fdata_venda write Setdata_venda;
    property validade     : Integer read Fvalidade write Setvalidade;
    property data_vencimento     : TDateTime read Fdata_vencimento write Setdata_vencimento;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_maquina     : Integer read Fid_maquina write Setid_maquina;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientesalterados.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientesalterados) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientesalterados(Model).id;
Self.Fid_controle_proprio         := TModelERPclientesalterados(Model).id_controle_proprio;
Self.Fid_produto         := TModelERPclientesalterados(Model).id_produto;
Self.Fnome_produto         := TModelERPclientesalterados(Model).nome_produto;
Self.Fquantidade         := TModelERPclientesalterados(Model).quantidade;
Self.Fdata_venda         := TModelERPclientesalterados(Model).data_venda;
Self.Fvalidade         := TModelERPclientesalterados(Model).validade;
Self.Fdata_vencimento         := TModelERPclientesalterados(Model).data_vencimento;
Self.Fid_venda         := TModelERPclientesalterados(Model).id_venda;
Self.Fid_maquina         := TModelERPclientesalterados(Model).id_maquina;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientesalterados.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientesalterados.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientesalterados.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientesalterados.Setid_controle_proprio(const Value: Boolean);   
begin                
  Fid_controle_proprio := Value;   
end;                 

procedure TModelERPclientesalterados.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPclientesalterados.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPclientesalterados.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPclientesalterados.Setdata_venda(const Value: Boolean);   
begin                
  Fdata_venda := Value;   
end;                 

procedure TModelERPclientesalterados.Setvalidade(const Value: Boolean);   
begin                
  Fvalidade := Value;   
end;                 

procedure TModelERPclientesalterados.Setdata_vencimento(const Value: Boolean);   
begin                
  Fdata_vencimento := Value;   
end;                 

procedure TModelERPclientesalterados.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPclientesalterados.Setid_maquina(const Value: Boolean);   
begin                
  Fid_maquina := Value;   
end;                 


end.
