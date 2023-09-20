unit Model.ERP.locacao_troca;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocacaotroca = class(TModelBase)

private
    Fid : Integer;
    Fid_troca : Integer;
    Fid_produto : Integer;
    Ftipo : WideString;
    Fquantidade : Double;
    Fvalor_unitario : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_troca(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor_unitario(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_troca     : Integer read Fid_troca write Setid_troca;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property valor_unitario     : Double read Fvalor_unitario write Setvalor_unitario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocacaotroca.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocacaotroca) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocacaotroca(Model).id;
Self.Fid_troca         := TModelERPlocacaotroca(Model).id_troca;
Self.Fid_produto         := TModelERPlocacaotroca(Model).id_produto;
Self.Ftipo         := TModelERPlocacaotroca(Model).tipo;
Self.Fquantidade         := TModelERPlocacaotroca(Model).quantidade;
Self.Fvalor_unitario         := TModelERPlocacaotroca(Model).valor_unitario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocacaotroca.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocacaotroca.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocacaotroca.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocacaotroca.Setid_troca(const Value: Boolean);   
begin                
  Fid_troca := Value;   
end;                 

procedure TModelERPlocacaotroca.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPlocacaotroca.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPlocacaotroca.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPlocacaotroca.Setvalor_unitario(const Value: Boolean);   
begin                
  Fvalor_unitario := Value;   
end;                 


end.
