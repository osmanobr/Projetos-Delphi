unit Model.ERP.fabricacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfabricacao = class(TModelBase)

private
    Fid : Integer;
    Fid_fabricacao : Integer;
    Fid_funcionario : Integer;
    Fnome_funcionario : WideString;
    Fvalor_comissao : Double;
    Fid_empresa : Integer;
    Fcancelada : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_fabricacao(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setnome_funcionario(const Value: WideString);
    procedure Setvalor_comissao(const Value: Double);
    procedure Setid_empresa(const Value: Integer);
    procedure Setcancelada(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_fabricacao     : Integer read Fid_fabricacao write Setid_fabricacao;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property nome_funcionario     : WideString read Fnome_funcionario write Setnome_funcionario;
    property valor_comissao     : Double read Fvalor_comissao write Setvalor_comissao;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property cancelada     : WideString read Fcancelada write Setcancelada;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfabricacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfabricacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfabricacao(Model).id;
Self.Fid_fabricacao         := TModelERPfabricacao(Model).id_fabricacao;
Self.Fid_funcionario         := TModelERPfabricacao(Model).id_funcionario;
Self.Fnome_funcionario         := TModelERPfabricacao(Model).nome_funcionario;
Self.Fvalor_comissao         := TModelERPfabricacao(Model).valor_comissao;
Self.Fid_empresa         := TModelERPfabricacao(Model).id_empresa;
Self.Fcancelada         := TModelERPfabricacao(Model).cancelada;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfabricacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfabricacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfabricacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfabricacao.Setid_fabricacao(const Value: Boolean);   
begin                
  Fid_fabricacao := Value;   
end;                 

procedure TModelERPfabricacao.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPfabricacao.Setnome_funcionario(const Value: Boolean);   
begin                
  Fnome_funcionario := Value;   
end;                 

procedure TModelERPfabricacao.Setvalor_comissao(const Value: Boolean);   
begin                
  Fvalor_comissao := Value;   
end;                 

procedure TModelERPfabricacao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPfabricacao.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 


end.
