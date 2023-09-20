unit Model.ERP.plano_conta;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPplanoconta = class(TModelBase)

private
    Fsub_nivel : WideString;
    Fdescricao_subnivel : WideString;

    procedure Setsub_nivel(const Value: WideString);
    procedure Setdescricao_subnivel(const Value: WideString);

public
    property sub_nivel     : WideString read Fsub_nivel write Setsub_nivel;
    property descricao_subnivel     : WideString read Fdescricao_subnivel write Setdescricao_subnivel;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPplanoconta.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPplanoconta) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fsub_nivel         := TModelERPplanoconta(Model).sub_nivel;
Self.Fdescricao_subnivel         := TModelERPplanoconta(Model).descricao_subnivel;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPplanoconta.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPplanoconta.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPplanoconta.Setsub_nivel(const Value: Boolean);   
begin                
  Fsub_nivel := Value;   
end;                 

procedure TModelERPplanoconta.Setdescricao_subnivel(const Value: Boolean);   
begin                
  Fdescricao_subnivel := Value;   
end;                 


end.
