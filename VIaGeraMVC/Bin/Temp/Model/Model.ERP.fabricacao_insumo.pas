unit Model.ERP.fabricacao_funcionario;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfabricacaofuncionario = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_fabricacao : Integer;
    Fid_insumo : Integer;
    Fnome_insumo : WideString;
    Fquantidade : Double;
    Ftotal_insumo : Double;
    Funidade : WideString;
    Fid_usuario_alteracao : Integer;
    Fcancelada : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_fabricacao(const Value: Integer);
    procedure Setid_insumo(const Value: Integer);
    procedure Setnome_insumo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Settotal_insumo(const Value: Double);
    procedure Setunidade(const Value: WideString);
    procedure Setid_usuario_alteracao(const Value: Integer);
    procedure Setcancelada(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_fabricacao     : Integer read Fid_fabricacao write Setid_fabricacao;
    property id_insumo     : Integer read Fid_insumo write Setid_insumo;
    property nome_insumo     : WideString read Fnome_insumo write Setnome_insumo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property total_insumo     : Double read Ftotal_insumo write Settotal_insumo;
    property unidade     : WideString read Funidade write Setunidade;
    property id_usuario_alteracao     : Integer read Fid_usuario_alteracao write Setid_usuario_alteracao;
    property cancelada     : WideString read Fcancelada write Setcancelada;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfabricacaofuncionario.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfabricacaofuncionario) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfabricacaofuncionario(Model).id;
Self.Fid_empresa         := TModelERPfabricacaofuncionario(Model).id_empresa;
Self.Fid_fabricacao         := TModelERPfabricacaofuncionario(Model).id_fabricacao;
Self.Fid_insumo         := TModelERPfabricacaofuncionario(Model).id_insumo;
Self.Fnome_insumo         := TModelERPfabricacaofuncionario(Model).nome_insumo;
Self.Fquantidade         := TModelERPfabricacaofuncionario(Model).quantidade;
Self.Ftotal_insumo         := TModelERPfabricacaofuncionario(Model).total_insumo;
Self.Funidade         := TModelERPfabricacaofuncionario(Model).unidade;
Self.Fid_usuario_alteracao         := TModelERPfabricacaofuncionario(Model).id_usuario_alteracao;
Self.Fcancelada         := TModelERPfabricacaofuncionario(Model).cancelada;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfabricacaofuncionario.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfabricacaofuncionario.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfabricacaofuncionario.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setid_fabricacao(const Value: Boolean);   
begin                
  Fid_fabricacao := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setid_insumo(const Value: Boolean);   
begin                
  Fid_insumo := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setnome_insumo(const Value: Boolean);   
begin                
  Fnome_insumo := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Settotal_insumo(const Value: Boolean);   
begin                
  Ftotal_insumo := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setid_usuario_alteracao(const Value: Boolean);   
begin                
  Fid_usuario_alteracao := Value;   
end;                 

procedure TModelERPfabricacaofuncionario.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 


end.
