unit Model.ERP.recibo_avulso;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPreciboavulso = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fnome : indefinido;
    Ftelefone : indefinido;
    Fcelular : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Settelefone(const Value: indefinido);
    procedure Setcelular(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome     : indefinido read Fnome write Setnome;
    property telefone     : indefinido read Ftelefone write Settelefone;
    property celular     : indefinido read Fcelular write Setcelular;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPreciboavulso.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPreciboavulso) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPreciboavulso(Model).id;
Self.Fid_empresa         := TModelERPreciboavulso(Model).id_empresa;
Self.Fid_cliente         := TModelERPreciboavulso(Model).id_cliente;
Self.Fnome         := TModelERPreciboavulso(Model).nome;
Self.Ftelefone         := TModelERPreciboavulso(Model).telefone;
Self.Fcelular         := TModelERPreciboavulso(Model).celular;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPreciboavulso.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPreciboavulso.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPreciboavulso.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPreciboavulso.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPreciboavulso.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPreciboavulso.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPreciboavulso.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPreciboavulso.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 


end.
