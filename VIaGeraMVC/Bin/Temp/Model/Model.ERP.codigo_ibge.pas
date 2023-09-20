unit Model.ERP.cobrador;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcobrador = class(TModelBase)

private
    Fuf : WideString;
    Fcodigo : WideString;
    Fnome : WideString;

    procedure Setuf(const Value: WideString);
    procedure Setcodigo(const Value: WideString);
    procedure Setnome(const Value: WideString);

public
    property uf     : WideString read Fuf write Setuf;
    property codigo     : WideString read Fcodigo write Setcodigo;
    property nome     : WideString read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcobrador.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcobrador) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fuf         := TModelERPcobrador(Model).uf;
Self.Fcodigo         := TModelERPcobrador(Model).codigo;
Self.Fnome         := TModelERPcobrador(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcobrador.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcobrador.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcobrador.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPcobrador.Setcodigo(const Value: Boolean);   
begin                
  Fcodigo := Value;   
end;                 

procedure TModelERPcobrador.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
